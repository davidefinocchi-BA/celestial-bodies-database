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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: astronauts; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.astronauts (
    astronauts_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age integer,
    weight integer
);


ALTER TABLE public.astronauts OWNER TO freecodecamp;

--
-- Name: astronauts_astronauts_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.astronauts_astronauts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.astronauts_astronauts_id_seq OWNER TO freecodecamp;

--
-- Name: astronauts_astronauts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.astronauts_astronauts_id_seq OWNED BY public.astronauts.astronauts_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50),
    galaxy_type text,
    age_mln integer NOT NULL,
    distance_al integer NOT NULL,
    magnitudo numeric,
    has_life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    moon_type text,
    age_mln integer NOT NULL,
    distance_al integer NOT NULL,
    magnitudo numeric,
    has_life boolean,
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    planet_type text,
    age_mln integer NOT NULL,
    distance_al integer NOT NULL,
    magnitudo numeric,
    has_life boolean,
    star_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    star_type text,
    age_mln integer NOT NULL,
    distance_al integer NOT NULL,
    magnitudo numeric,
    has_life boolean,
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: astronauts astronauts_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronauts ALTER COLUMN astronauts_id SET DEFAULT nextval('public.astronauts_astronauts_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: astronauts; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.astronauts VALUES (7, 'gianni', NULL, NULL);
INSERT INTO public.astronauts VALUES (8, 'miki', NULL, NULL);
INSERT INTO public.astronauts VALUES (9, 'davide', NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (3, 'andromeda', 'near', 36, 45, 33.5, false);
INSERT INTO public.galaxy VALUES (4, 'cassiopea', 'far', 22, 34, 45.5, false);
INSERT INTO public.galaxy VALUES (5, 'electra', 'very far', 22, 45, 54.5, true);
INSERT INTO public.galaxy VALUES (6, 'google', 'near', 36, 45, 33.5, false);
INSERT INTO public.galaxy VALUES (7, 'metic', 'far', 22, 34, 45.5, false);
INSERT INTO public.galaxy VALUES (8, 'bruum', 'very far', 22, 45, 54.5, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'near', 36, 45, 33.5, false, 1, 'luna');
INSERT INTO public.moon VALUES (2, 'far', 22, 34, 45.5, false, 2, 'maestro');
INSERT INTO public.moon VALUES (3, 'very far', 22, 45, 54.5, true, 3, 'sailor');
INSERT INTO public.moon VALUES (4, 'near', 36, 45, 33.5, false, 1, 'vvvc');
INSERT INTO public.moon VALUES (5, 'far', 22, 34, 45.5, false, 2, 'fffr');
INSERT INTO public.moon VALUES (6, 'very far', 22, 45, 54.5, true, 3, 'sssr');
INSERT INTO public.moon VALUES (7, 'near', 36, 45, 33.5, false, 1, 'tttr');
INSERT INTO public.moon VALUES (8, 'far', 22, 34, 45.5, false, 2, 'dgte');
INSERT INTO public.moon VALUES (9, 'very far', 22, 45, 54.5, true, 3, 'selessr');
INSERT INTO public.moon VALUES (10, 'near', 36, 45, 33.5, false, 1, 'lisj');
INSERT INTO public.moon VALUES (11, 'far', 22, 34, 45.5, false, 2, 'eiwo');
INSERT INTO public.moon VALUES (12, 'very far', 22, 45, 54.5, true, 3, 'kol');
INSERT INTO public.moon VALUES (13, 'near', 36, 45, 33.5, false, 1, 'owji');
INSERT INTO public.moon VALUES (14, 'far', 22, 34, 45.5, false, 2, 'wojo');
INSERT INTO public.moon VALUES (15, 'very far', 22, 45, 54.5, true, 3, 'wpuy');
INSERT INTO public.moon VALUES (16, 'near', 36, 45, 33.5, false, 1, 'spmo');
INSERT INTO public.moon VALUES (17, 'far', 22, 34, 45.5, false, 2, 'iiuo');
INSERT INTO public.moon VALUES (18, 'very far', 22, 45, 54.5, true, 3, 'atey');
INSERT INTO public.moon VALUES (19, 'near', 36, 45, 33.5, false, 1, 'rrdd');
INSERT INTO public.moon VALUES (20, 'far', 22, 34, 45.5, false, 2, 'wojlòhyfo');
INSERT INTO public.moon VALUES (21, 'very far', 22, 45, 54.5, true, 3, 'wkyry');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'near', 36, 45, 33.5, false, 2, 'marte');
INSERT INTO public.planet VALUES (2, 'far', 22, 34, 45.5, false, 3, 'giove');
INSERT INTO public.planet VALUES (3, 'very far', 22, 45, 54.5, true, 4, 'vemere');
INSERT INTO public.planet VALUES (4, 'near', 36, 45, 33.5, false, 4, 'aaa');
INSERT INTO public.planet VALUES (5, 'far', 22, 34, 45.5, false, 2, 'bbb');
INSERT INTO public.planet VALUES (6, 'very far', 22, 45, 54.5, true, 3, 'ccc');
INSERT INTO public.planet VALUES (7, 'near', 36, 45, 33.5, false, 4, 'ddd');
INSERT INTO public.planet VALUES (8, 'far', 22, 34, 45.5, false, 2, 'eee');
INSERT INTO public.planet VALUES (9, 'very far', 22, 45, 54.5, true, 3, 'fff');
INSERT INTO public.planet VALUES (12, 'near', 36, 45, 33.5, false, 4, 'ggg');
INSERT INTO public.planet VALUES (13, 'far', 22, 34, 45.5, false, 2, 'hhh');
INSERT INTO public.planet VALUES (14, 'very far', 22, 45, 54.5, true, 3, 'iii');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'near', 36, 45, 33.5, false, 4, 'gigarossa');
INSERT INTO public.star VALUES (3, 'far', 22, 34, 45.5, false, 5, 'stocazzo');
INSERT INTO public.star VALUES (4, 'very far', 22, 45, 54.5, true, 3, 'ciaociao');
INSERT INTO public.star VALUES (5, 'near', 36, 45, 33.5, false, 4, 'mest');
INSERT INTO public.star VALUES (6, 'far', 22, 34, 45.5, false, 5, 'rest');
INSERT INTO public.star VALUES (7, 'very far', 22, 45, 54.5, true, 3, 'crest');


--
-- Name: astronauts_astronauts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.astronauts_astronauts_id_seq', 9, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: astronauts astronauts_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronauts
    ADD CONSTRAINT astronauts_name_key UNIQUE (name);


--
-- Name: astronauts astronauts_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronauts
    ADD CONSTRAINT astronauts_pkey PRIMARY KEY (astronauts_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

