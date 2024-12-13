--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(100) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (65, 2018, 'Final', 165, 166, 4, 2);
INSERT INTO public.games VALUES (66, 2018, 'Third Place', 167, 168, 2, 0);
INSERT INTO public.games VALUES (67, 2018, 'Semi-Final', 166, 168, 2, 1);
INSERT INTO public.games VALUES (68, 2018, 'Semi-Final', 165, 167, 1, 0);
INSERT INTO public.games VALUES (69, 2018, 'Quarter-Final', 166, 169, 3, 2);
INSERT INTO public.games VALUES (70, 2018, 'Quarter-Final', 168, 170, 2, 0);
INSERT INTO public.games VALUES (71, 2018, 'Quarter-Final', 167, 171, 2, 1);
INSERT INTO public.games VALUES (72, 2018, 'Quarter-Final', 165, 172, 2, 0);
INSERT INTO public.games VALUES (73, 2018, 'Eighth-Final', 168, 173, 2, 1);
INSERT INTO public.games VALUES (74, 2018, 'Eighth-Final', 170, 174, 1, 0);
INSERT INTO public.games VALUES (75, 2018, 'Eighth-Final', 167, 175, 3, 2);
INSERT INTO public.games VALUES (76, 2018, 'Eighth-Final', 171, 176, 2, 0);
INSERT INTO public.games VALUES (77, 2018, 'Eighth-Final', 166, 177, 2, 1);
INSERT INTO public.games VALUES (78, 2018, 'Eighth-Final', 169, 178, 2, 1);
INSERT INTO public.games VALUES (79, 2018, 'Eighth-Final', 172, 179, 2, 1);
INSERT INTO public.games VALUES (80, 2018, 'Eighth-Final', 165, 180, 4, 3);
INSERT INTO public.games VALUES (81, 2014, 'Final', 181, 180, 1, 0);
INSERT INTO public.games VALUES (82, 2014, 'Third Place', 182, 171, 3, 0);
INSERT INTO public.games VALUES (83, 2014, 'Semi-Final', 180, 182, 1, 0);
INSERT INTO public.games VALUES (84, 2014, 'Semi-Final', 181, 171, 7, 1);
INSERT INTO public.games VALUES (85, 2014, 'Quarter-Final', 182, 183, 1, 0);
INSERT INTO public.games VALUES (86, 2014, 'Quarter-Final', 180, 167, 1, 0);
INSERT INTO public.games VALUES (87, 2014, 'Quarter-Final', 171, 173, 2, 1);
INSERT INTO public.games VALUES (88, 2014, 'Quarter-Final', 181, 165, 1, 0);
INSERT INTO public.games VALUES (89, 2014, 'Eighth-Final', 171, 184, 2, 1);
INSERT INTO public.games VALUES (90, 2014, 'Eighth-Final', 173, 172, 2, 0);
INSERT INTO public.games VALUES (91, 2014, 'Eighth-Final', 165, 185, 2, 0);
INSERT INTO public.games VALUES (92, 2014, 'Eighth-Final', 181, 186, 2, 1);
INSERT INTO public.games VALUES (93, 2014, 'Eighth-Final', 182, 176, 2, 1);
INSERT INTO public.games VALUES (94, 2014, 'Eighth-Final', 183, 187, 2, 1);
INSERT INTO public.games VALUES (95, 2014, 'Eighth-Final', 180, 174, 1, 0);
INSERT INTO public.games VALUES (96, 2014, 'Eighth-Final', 167, 188, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (165, 'France');
INSERT INTO public.teams VALUES (166, 'Croatia');
INSERT INTO public.teams VALUES (167, 'Belgium');
INSERT INTO public.teams VALUES (168, 'England');
INSERT INTO public.teams VALUES (169, 'Russia');
INSERT INTO public.teams VALUES (170, 'Sweden');
INSERT INTO public.teams VALUES (171, 'Brazil');
INSERT INTO public.teams VALUES (172, 'Uruguay');
INSERT INTO public.teams VALUES (173, 'Colombia');
INSERT INTO public.teams VALUES (174, 'Switzerland');
INSERT INTO public.teams VALUES (175, 'Japan');
INSERT INTO public.teams VALUES (176, 'Mexico');
INSERT INTO public.teams VALUES (177, 'Denmark');
INSERT INTO public.teams VALUES (178, 'Spain');
INSERT INTO public.teams VALUES (179, 'Portugal');
INSERT INTO public.teams VALUES (180, 'Argentina');
INSERT INTO public.teams VALUES (181, 'Germany');
INSERT INTO public.teams VALUES (182, 'Netherlands');
INSERT INTO public.teams VALUES (183, 'Costa Rica');
INSERT INTO public.teams VALUES (184, 'Chile');
INSERT INTO public.teams VALUES (185, 'Nigeria');
INSERT INTO public.teams VALUES (186, 'Algeria');
INSERT INTO public.teams VALUES (187, 'Greece');
INSERT INTO public.teams VALUES (188, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 96, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 188, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: teams teams_team_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_team_id_key UNIQUE (team_id);


--
-- Name: games fk_opponent; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_opponent FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_winner; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_winner FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

