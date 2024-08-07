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
    round character varying(255) NOT NULL,
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
    name character varying(255) NOT NULL
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

INSERT INTO public.games VALUES (15, 2018, 'Final', 102, 103, 4, 2);
INSERT INTO public.games VALUES (16, 2018, 'Third Place', 104, 105, 2, 0);
INSERT INTO public.games VALUES (17, 2018, 'Semi-Final', 103, 105, 2, 1);
INSERT INTO public.games VALUES (18, 2018, 'Semi-Final', 102, 104, 1, 0);
INSERT INTO public.games VALUES (19, 2018, 'Quarter-Final', 103, 111, 3, 2);
INSERT INTO public.games VALUES (20, 2018, 'Quarter-Final', 105, 113, 2, 0);
INSERT INTO public.games VALUES (21, 2018, 'Quarter-Final', 104, 115, 2, 1);
INSERT INTO public.games VALUES (22, 2018, 'Quarter-Final', 102, 117, 2, 0);
INSERT INTO public.games VALUES (23, 2018, 'Eighth-Final', 105, 119, 2, 1);
INSERT INTO public.games VALUES (24, 2018, 'Eighth-Final', 113, 121, 1, 0);
INSERT INTO public.games VALUES (25, 2018, 'Eighth-Final', 104, 123, 3, 2);
INSERT INTO public.games VALUES (26, 2018, 'Eighth-Final', 115, 125, 2, 0);
INSERT INTO public.games VALUES (27, 2018, 'Eighth-Final', 103, 127, 2, 1);
INSERT INTO public.games VALUES (28, 2018, 'Eighth-Final', 111, 129, 2, 1);
INSERT INTO public.games VALUES (29, 2018, 'Eighth-Final', 117, 131, 2, 1);
INSERT INTO public.games VALUES (30, 2018, 'Eighth-Final', 102, 133, 4, 3);
INSERT INTO public.games VALUES (31, 2014, 'Final', 134, 133, 1, 0);
INSERT INTO public.games VALUES (32, 2014, 'Third Place', 136, 115, 3, 0);
INSERT INTO public.games VALUES (33, 2014, 'Semi-Final', 133, 136, 1, 0);
INSERT INTO public.games VALUES (34, 2014, 'Semi-Final', 134, 115, 7, 1);
INSERT INTO public.games VALUES (35, 2014, 'Quarter-Final', 136, 143, 1, 0);
INSERT INTO public.games VALUES (36, 2014, 'Quarter-Final', 133, 104, 1, 0);
INSERT INTO public.games VALUES (37, 2014, 'Quarter-Final', 115, 119, 2, 1);
INSERT INTO public.games VALUES (38, 2014, 'Quarter-Final', 134, 102, 1, 0);
INSERT INTO public.games VALUES (39, 2014, 'Eighth-Final', 115, 151, 2, 1);
INSERT INTO public.games VALUES (40, 2014, 'Eighth-Final', 119, 117, 2, 0);
INSERT INTO public.games VALUES (41, 2014, 'Eighth-Final', 102, 155, 2, 0);
INSERT INTO public.games VALUES (42, 2014, 'Eighth-Final', 134, 157, 2, 1);
INSERT INTO public.games VALUES (43, 2014, 'Eighth-Final', 136, 125, 2, 1);
INSERT INTO public.games VALUES (44, 2014, 'Eighth-Final', 143, 161, 2, 1);
INSERT INTO public.games VALUES (45, 2014, 'Eighth-Final', 133, 121, 1, 0);
INSERT INTO public.games VALUES (46, 2014, 'Eighth-Final', 104, 165, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (102, 'France');
INSERT INTO public.teams VALUES (103, 'Croatia');
INSERT INTO public.teams VALUES (104, 'Belgium');
INSERT INTO public.teams VALUES (105, 'England');
INSERT INTO public.teams VALUES (111, 'Russia');
INSERT INTO public.teams VALUES (113, 'Sweden');
INSERT INTO public.teams VALUES (115, 'Brazil');
INSERT INTO public.teams VALUES (117, 'Uruguay');
INSERT INTO public.teams VALUES (119, 'Colombia');
INSERT INTO public.teams VALUES (121, 'Switzerland');
INSERT INTO public.teams VALUES (123, 'Japan');
INSERT INTO public.teams VALUES (125, 'Mexico');
INSERT INTO public.teams VALUES (127, 'Denmark');
INSERT INTO public.teams VALUES (129, 'Spain');
INSERT INTO public.teams VALUES (131, 'Portugal');
INSERT INTO public.teams VALUES (133, 'Argentina');
INSERT INTO public.teams VALUES (134, 'Germany');
INSERT INTO public.teams VALUES (136, 'Netherlands');
INSERT INTO public.teams VALUES (143, 'Costa Rica');
INSERT INTO public.teams VALUES (151, 'Chile');
INSERT INTO public.teams VALUES (155, 'Nigeria');
INSERT INTO public.teams VALUES (157, 'Algeria');
INSERT INTO public.teams VALUES (161, 'Greece');
INSERT INTO public.teams VALUES (165, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 46, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 165, true);


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
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

