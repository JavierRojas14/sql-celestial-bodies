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
-- Name: black_holes; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_holes (
    black_holes_id integer NOT NULL,
    name character varying(255) NOT NULL,
    width integer,
    height integer,
    blackness integer
);


ALTER TABLE public.black_holes OWNER TO freecodecamp;

--
-- Name: black_holes_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_holes_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_holes_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_holes_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_holes_black_hole_id_seq OWNED BY public.black_holes.black_holes_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    has_life boolean,
    beautiful boolean,
    referenced boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255) NOT NULL,
    granite_concentration_in_molar numeric(4,2),
    planet_id integer,
    is_spherical boolean
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
    name character varying(255) NOT NULL,
    width integer,
    area integer,
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
    name character varying(255) NOT NULL,
    aliases text NOT NULL,
    has_water boolean,
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
-- Name: black_holes black_holes_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes ALTER COLUMN black_holes_id SET DEFAULT nextval('public.black_holes_black_hole_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


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
-- Data for Name: black_holes; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_holes VALUES (1, 'Alpha', NULL, NULL, NULL);
INSERT INTO public.black_holes VALUES (2, 'Omega', NULL, NULL, NULL);
INSERT INTO public.black_holes VALUES (3, 'Centaurus', NULL, NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', true, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Sirius', false, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Toshte', false, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Pequeña', true, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Solitaria', false, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Cucu', true, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 20.70, 2, NULL);
INSERT INTO public.moon VALUES (2, 'Catalina', 35.00, 1, NULL);
INSERT INTO public.moon VALUES (3, 'Pesquiza', 25.10, 1, NULL);
INSERT INTO public.moon VALUES (4, 'uWU', 1.00, 2, NULL);
INSERT INTO public.moon VALUES (5, 'aCA', 20.00, 3, NULL);
INSERT INTO public.moon VALUES (6, 'Cuca', 23.10, 5, NULL);
INSERT INTO public.moon VALUES (7, 'Pop', 23.00, 2, NULL);
INSERT INTO public.moon VALUES (8, 'Cochi', 12.00, 2, NULL);
INSERT INTO public.moon VALUES (9, 'Pepa', 1.00, 5, NULL);
INSERT INTO public.moon VALUES (10, 'yOSHI', 23.00, 4, NULL);
INSERT INTO public.moon VALUES (11, 'Cuts', 12.00, 2, NULL);
INSERT INTO public.moon VALUES (12, 'Pepe', 4.50, 5, NULL);
INSERT INTO public.moon VALUES (13, 'Kunstmann', 13.60, 1, NULL);
INSERT INTO public.moon VALUES (14, 'Poople', 1.10, 2, NULL);
INSERT INTO public.moon VALUES (15, 'Tashkani', 1.13, 3, NULL);
INSERT INTO public.moon VALUES (16, 'Persephone', 1.20, 4, NULL);
INSERT INTO public.moon VALUES (17, 'Coleman', 22.20, 1, NULL);
INSERT INTO public.moon VALUES (18, 'Kaku', 4.50, 3, NULL);
INSERT INTO public.moon VALUES (19, 'Saber', 1.30, 2, NULL);
INSERT INTO public.moon VALUES (20, 'Rin', 1.40, 3, NULL);
INSERT INTO public.moon VALUES (21, 'Shirou', 1.70, 2, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercurio', 20, 400, 1);
INSERT INTO public.planet VALUES (2, 'Tierra', 10, 100, 2);
INSERT INTO public.planet VALUES (3, 'Venus', 20, 1000, 1);
INSERT INTO public.planet VALUES (4, 'Marte', 10, 10, 3);
INSERT INTO public.planet VALUES (5, 'Jupiter', 10, 50, 2);
INSERT INTO public.planet VALUES (6, 'Saturno', 11, 16, 2);
INSERT INTO public.planet VALUES (7, 'Urano', 100, 10, 1);
INSERT INTO public.planet VALUES (8, 'Neptuno', 123, 123, 1);
INSERT INTO public.planet VALUES (9, 'Plutón', 100, 100, 3);
INSERT INTO public.planet VALUES (10, 'Lady', 10, 10, 2);
INSERT INTO public.planet VALUES (11, 'Gaga', 111, 222, 3);
INSERT INTO public.planet VALUES (12, 'Anthem', 100, 1, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Maria', 'Tres Marias', true, 1);
INSERT INTO public.star VALUES (2, 'Venus', 'Lady Gaga', false, 1);
INSERT INTO public.star VALUES (3, 'Cassiopeia', 'Cass', true, 2);
INSERT INTO public.star VALUES (4, 'Tokischa', 'Toki', true, 2);
INSERT INTO public.star VALUES (5, 'Popi', 'Post', false, 1);
INSERT INTO public.star VALUES (6, 'Cacu', 'Ca', true, 2);


--
-- Name: black_holes_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_holes_black_hole_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: black_holes black_holes_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes
    ADD CONSTRAINT black_holes_pkey PRIMARY KEY (black_holes_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: black_holes unique_black_hole_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes
    ADD CONSTRAINT unique_black_hole_id UNIQUE (black_holes_id);


--
-- Name: galaxy unique_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_id UNIQUE (galaxy_id);


--
-- Name: moon unique_mood_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_mood_id UNIQUE (moon_id);


--
-- Name: planet unique_planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_id UNIQUE (planet_id);


--
-- Name: star unique_star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_id UNIQUE (star_id);


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

