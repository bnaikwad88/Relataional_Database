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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    area integer,
    volume integer,
    age numeric,
    material text,
    has_life boolean,
    has_water boolean
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
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    area integer,
    volume integer,
    age numeric,
    material text,
    has_life boolean,
    has_water boolean
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
-- Name: more_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more_info (
    more_info_id integer NOT NULL,
    object_id integer,
    name character varying(20) NOT NULL,
    description text
);


ALTER TABLE public.more_info OWNER TO freecodecamp;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.more_info_more_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.more_info_more_info_id_seq OWNER TO freecodecamp;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.more_info_more_info_id_seq OWNED BY public.more_info.more_info_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    star_id integer NOT NULL,
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    area integer,
    volume integer,
    age numeric,
    material text,
    has_life boolean,
    has_water boolean
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
    galaxy_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    area integer,
    volume integer,
    age numeric,
    material text,
    has_life boolean,
    has_water boolean
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
-- Name: more_info more_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info ALTER COLUMN more_info_id SET DEFAULT nextval('public.more_info_more_info_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 101, 'Andromeda', 2200000, 14000000, 10000000000.0, 'gas', false, false);
INSERT INTO public.galaxy VALUES (2, 102, 'Triangulum', 600000, 3500000, 13000000000.0, 'gas', false, true);
INSERT INTO public.galaxy VALUES (3, 103, 'Whirlpool', 750000, 4700000, 20000000000.0, 'dust', false, true);
INSERT INTO public.galaxy VALUES (4, 104, 'Cartwheel', 1500000, 9000000, 11000000000.0, 'dust', false, false);
INSERT INTO public.galaxy VALUES (5, 105, 'Milky Way', 1000000, 8000000, 13000000000.0, 'solid', true, true);
INSERT INTO public.galaxy VALUES (6, 106, 'Sombrero', 490000, 3000000, 9000000000.0, 'solid', false, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 'Luna', 37932000, 219600000, 4500000000.0, 'rock', false, true);
INSERT INTO public.moon VALUES (2, 1, 'Phobos', 15480, 71400, 4500000000.0, 'rock', false, false);
INSERT INTO public.moon VALUES (3, 2, 'Deimos', 4954, 14900, 4500000000.0, 'rock', false, false);
INSERT INTO public.moon VALUES (4, 2, 'Io', 4165000, 18600000, 4500000000.0, 'rock', false, false);
INSERT INTO public.moon VALUES (5, 2, 'Europa', 3098000, 14550000, 4500000000.0, 'ice', false, true);
INSERT INTO public.moon VALUES (6, 3, 'Ganymede', 8273000, 76780000, 4500000000.0, 'rock', false, true);
INSERT INTO public.moon VALUES (7, 3, 'Callisto', 7348000, 63540000, 4500000000.0, 'ice', false, true);
INSERT INTO public.moon VALUES (8, 3, 'Titan', 8335000, 71830000, 4500000000.0, 'rock', false, true);
INSERT INTO public.moon VALUES (9, 4, 'Rhea', 2418000, 5730000, 4500000000.0, 'ice', false, true);
INSERT INTO public.moon VALUES (10, 4, 'Iapetus', 2967000, 10400000, 4500000000.0, 'rock', false, false);
INSERT INTO public.moon VALUES (11, 4, 'Dione', 1722000, 2725000, 4500000000.0, 'ice', false, true);
INSERT INTO public.moon VALUES (12, 5, 'Tethys', 1463000, 2142000, 4500000000.0, 'ice', false, true);
INSERT INTO public.moon VALUES (13, 5, 'Enceladus', 802000, 540500, 4500000000.0, 'ice', false, true);
INSERT INTO public.moon VALUES (14, 5, 'Mimas', 497000, 158700, 4500000000.0, 'ice', false, false);
INSERT INTO public.moon VALUES (15, 6, 'Oberon', 3101000, 15200000, 4500000000.0, 'ice', false, true);
INSERT INTO public.moon VALUES (16, 6, 'Titania', 3580000, 23000000, 4500000000.0, 'ice', false, true);
INSERT INTO public.moon VALUES (17, 6, 'Ariel', 1650000, 3725000, 4500000000.0, 'ice', false, true);
INSERT INTO public.moon VALUES (18, 7, 'Umbriel', 2355000, 6290000, 4500000000.0, 'ice', false, true);
INSERT INTO public.moon VALUES (19, 7, 'Triton', 4760000, 18000000, 4500000000.0, 'ice', false, true);
INSERT INTO public.moon VALUES (20, 7, 'Proteus', 551000, 825000, 4500000000.0, 'rock', false, false);


--
-- Data for Name: more_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more_info VALUES (1, 1, 'Nebula1', 'A large cloud of dust and gas in space, often the birthplace of stars.');
INSERT INTO public.more_info VALUES (2, 2, 'BlackHoleX', 'An area in space where the gravitational pull is so strong that even light cannot escape it.');
INSERT INTO public.more_info VALUES (3, 3, 'GalaxyGroup', 'A collection of galaxies bound together by gravity.');
INSERT INTO public.more_info VALUES (4, 4, 'Quasar', 'A very luminous object found in the center of some galaxies, believed to be powered by supermassive black holes.');
INSERT INTO public.more_info VALUES (5, 5, 'ExoplanetY', 'A planet located outside our solar system, orbiting a star other than the Sun.');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 301, 'Mercury', 748000, 6083000, 4500000000.0, 'rock', false, false);
INSERT INTO public.planet VALUES (2, 1, 302, 'Venus', 4602000, 9284300, 4600000000.0, 'rock', false, false);
INSERT INTO public.planet VALUES (3, 1, 303, 'Earth', 5101000, 10832000, 4500000000.0, 'rock', true, true);
INSERT INTO public.planet VALUES (4, 2, 304, 'Mars', 1448000, 1631800, 4500000000.0, 'rock', false, false);
INSERT INTO public.planet VALUES (5, 2, 305, 'Jupiter', 61419000, 140223000, 4600000000.0, 'gas', false, true);
INSERT INTO public.planet VALUES (6, 3, 306, 'Saturn', 42700000, 82713000, 4600000000.0, 'gas', false, true);
INSERT INTO public.planet VALUES (7, 3, 307, 'Uranus', 8083000, 6810000, 4500000000.0, 'ice', false, true);
INSERT INTO public.planet VALUES (8, 3, 308, 'Neptune', 7618000, 6250000, 4500000000.0, 'ice', false, true);
INSERT INTO public.planet VALUES (9, 4, 309, 'Pluto', 167000, 621000, 4500000000.0, 'ice', false, false);
INSERT INTO public.planet VALUES (10, 4, 310, 'Eris', 228000, 874000, 4600000000.0, 'ice', false, false);
INSERT INTO public.planet VALUES (11, 5, 311, 'Ceres', 257000, 434000, 4600000000.0, 'rock', false, false);
INSERT INTO public.planet VALUES (12, 5, 312, 'Haumea', 285000, 507000, 4600000000.0, 'ice', false, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 201, 'Proxima Centauri', 700000, 5000000, 4500000000.0, 'plasma', false, false);
INSERT INTO public.star VALUES (2, 2, 202, 'Sirius', 1500000, 25000000, 300000000.0, 'plasma', false, false);
INSERT INTO public.star VALUES (3, 3, 203, 'Betelgeuse', 80000000, 1500000000, 8000000.0, 'gas', false, true);
INSERT INTO public.star VALUES (4, 4, 204, 'Alpha Centauri', 1000000, 6000000, 5000000000.0, 'plasma', false, false);
INSERT INTO public.star VALUES (5, 5, 205, 'Vega', 300000, 2000000, 600000000.0, 'plasma', false, false);
INSERT INTO public.star VALUES (6, 6, 206, 'Altair', 500000, 4000000, 2000000000.0, 'plasma', false, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.more_info_more_info_id_seq', 5, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: more_info more_info_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_name_key UNIQUE (name);


--
-- Name: more_info more_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_pkey PRIMARY KEY (more_info_id);


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

