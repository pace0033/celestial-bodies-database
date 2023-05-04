--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_type character varying(30),
    contains_life boolean,
    distance_in_ly integer
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
    name character varying(30) NOT NULL,
    is_solo boolean,
    eccentricity numeric(5,0),
    planet_id integer
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
-- Name: ocean; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.ocean (
    ocean_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.ocean OWNER TO freecodecamp;

--
-- Name: ocean_ocean_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.ocean_ocean_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ocean_ocean_id_seq OWNER TO freecodecamp;

--
-- Name: ocean_ocean_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.ocean_ocean_id_seq OWNED BY public.ocean.ocean_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_type character varying(30),
    description text,
    star_id integer
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
    name character varying(30) NOT NULL,
    star_type character varying(30),
    radius_in_km integer,
    galaxy_id integer
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: ocean ocean_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ocean ALTER COLUMN ocean_id SET DEFAULT nextval('public.ocean_ocean_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'barred spiral', true, 26996);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'barred spiral', false, 2500000);
INSERT INTO public.galaxy VALUES (3, 'Sagittarius Dwarf Spheroidal', 'elliptical loop-shaped', false, 65000);
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud', 'magellanic spiral', false, 163000);
INSERT INTO public.galaxy VALUES (5, 'Ursa Minor Dwarf', 'dwarf spheroidal', false, 200000);
INSERT INTO public.galaxy VALUES (6, 'Draco Dwarf', 'spheroidal', false, 260000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The Moon', true, 0, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', false, 0, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', false, 0, 4);
INSERT INTO public.moon VALUES (4, 'Io', false, 0, 5);
INSERT INTO public.moon VALUES (5, 'Europa', false, 0, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', false, 0, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', false, 0, 5);
INSERT INTO public.moon VALUES (8, 'Amalthea', false, 0, 5);
INSERT INTO public.moon VALUES (9, 'Himalia', false, 0, 5);
INSERT INTO public.moon VALUES (10, 'Elara', false, 0, 5);
INSERT INTO public.moon VALUES (11, 'Thebe', false, 0, 5);
INSERT INTO public.moon VALUES (12, 'Mimas', false, 0, 6);
INSERT INTO public.moon VALUES (13, 'Enceladus', false, 0, 6);
INSERT INTO public.moon VALUES (14, 'Tethys', false, 0, 6);
INSERT INTO public.moon VALUES (15, 'Dione', false, 0, 6);
INSERT INTO public.moon VALUES (16, 'Rhea', false, 0, 6);
INSERT INTO public.moon VALUES (17, 'Titan', false, 0, 6);
INSERT INTO public.moon VALUES (18, 'Hyperion', false, 0, 6);
INSERT INTO public.moon VALUES (19, 'Iapetus', false, 0, 6);
INSERT INTO public.moon VALUES (20, 'Phoebe', false, 0, 6);


--
-- Data for Name: ocean; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.ocean VALUES (1, 'Atlantic Ocean', 'second largest of the worlds oceans');
INSERT INTO public.ocean VALUES (2, 'Pacific Ocean', 'the largest ocean in the world');
INSERT INTO public.ocean VALUES (3, 'Indian Ocean', 'third largest ocean in the world');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'terrestrial', 'first planet from the Sun', 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'terrestrial', 'second planet from the Sun', 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'terrestrial', 'the home planet of humanity', 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'terrestrial', 'fourth planet from the Sun', 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'gas giant', 'largest planet in the Solar System', 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'gas giant', 'beautiful rings surround Saturn', 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'ice giant', 'eighth planet from the Sun', 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 'ice giant', 'seventh planet from the Sun', 1);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri d', 'exoplanet', 'closest known exoplanet', 7);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri b', 'exoplanet', 'orbits in the habitable zone of Proxima Centauri', 7);
INSERT INTO public.planet VALUES (11, 'Gliese 411 b', 'exoplanet', 'an exoplanet orbiting Lalande 21185', 9);
INSERT INTO public.planet VALUES (12, 'Epsilon Eridani b', 'expoplanet', 'located in the constellation of Eridanus', 8);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'G', 696342, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 'A', 1190342, 1);
INSERT INTO public.star VALUES (3, 'Alpha Andromedae', 'A', 1878390, 2);
INSERT INTO public.star VALUES (4, 'Mirach', 'M', 69570000, 2);
INSERT INTO public.star VALUES (5, 'Canopus', 'A', 50994810, 1);
INSERT INTO public.star VALUES (6, 'Vega', 'A', 1643243, 1);
INSERT INTO public.star VALUES (7, 'Proxima Centauri', 'M', 107277, 1);
INSERT INTO public.star VALUES (8, 'Epsilon Eridani', 'K', 511340, 1);
INSERT INTO public.star VALUES (9, 'Lalande 21185', 'M', 272714, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: ocean_ocean_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.ocean_ocean_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


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
-- Name: ocean ocean_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ocean
    ADD CONSTRAINT ocean_name_key UNIQUE (name);


--
-- Name: ocean ocean_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ocean
    ADD CONSTRAINT ocean_pkey PRIMARY KEY (ocean_id);


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
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

