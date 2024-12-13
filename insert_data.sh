#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

#emptying rows
echo $($PSQL "TRUNCATE TABLE games, teams")

#read a file 
cat games.csv | while IFS=',' read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS

do
  #INSERT TEAMS TABLE DATA

  # GET WINNER TEAMS
  if [[ $WINNER != "winner" ]]
    then
      WTIM_NAME=$($PSQL "SELECT name FROM teams WHERE name='$WINNER';")
      # If team name is not found
        if [[ -z $WTIM_NAME ]]
          then
            # Insert team name
            INSERT_WTIM_NAME=$($PSQL "INSERT INTO teams (name) VALUES ('$WINNER');")

              # call let's to know
                if [[ $INSERT_WTIM_NAME == "INSERT 0 1" ]]
                  then
                    echo Inserted winner team: $WINNER
                fi
        fi
  fi

  # GET OPPONENT TEAMS
  if [[ $OPPONENT != "opponent" ]]
    then
      OTIM_NAME=$($PSQL "SELECT name FROM teams WHERE name='$OPPONENT';")
      # If team name is not found
        if [[ -z $OTIM_NAME ]]
          then
            # Insert team name
            INSERT_OTIM_NAME=$($PSQL "INSERT INTO teams (name) VALUES ('$OPPONENT');")

              # call let's to know
                if [[ $INSERT_OTIM_NAME == "INSERT 0 1" ]]
                  then
                    echo Inserted opponent team: $OPPONENT
                fi
        fi
  fi

  # INSERT all data from games.csv

  #exclude the column names
  if [[ $YEAR != "year" ]]
    then
      # GET WINNER ID & OPPONENT ID
      WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER';")
      OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT';")

      #INSERT GAMES
      INSERT_GAME=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES ($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS);")
        # CALL Let us know
        if [[ $INSERT_GAME == "INSERT 0 1" ]]
          then
            echo Inserted Year: $YEAR, Round: $ROUND, $WINNER vs $OPPONENT, Score: $WINNER_GOALS : $OPPONENT_GOALS
        fi
  fi

done