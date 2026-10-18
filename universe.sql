--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: dwarf_planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.dwarf_planet (
    name character varying(30) NOT NULL,
    dwarf_planet_id integer NOT NULL,
    diameter integer,
    age integer
);


ALTER TABLE public.dwarf_planet OWNER TO freecodecamp;

--
-- Name: dwarf_planet_dwarf_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.dwarf_planet_dwarf_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dwarf_planet_dwarf_planet_id_seq OWNER TO freecodecamp;

--
-- Name: dwarf_planet_dwarf_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.dwarf_planet_dwarf_planet_id_seq OWNED BY public.dwarf_planet.dwarf_planet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    diameter integer,
    distance_from_earth integer,
    rotational_speed numeric(8,1),
    description text
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
    diameter integer,
    planet_id integer,
    age integer
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
    name character varying(30) NOT NULL,
    diameter integer,
    is_rocky boolean,
    is_habitable boolean,
    star_id integer,
    age integer
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
    diameter integer,
    galaxy_id integer,
    age integer
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
-- Name: dwarf_planet dwarf_planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf_planet ALTER COLUMN dwarf_planet_id SET DEFAULT nextval('public.dwarf_planet_dwarf_planet_id_seq'::regclass);


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
-- Data for Name: dwarf_planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.dwarf_planet VALUES ('Pluto', 1, 2377, 4500);
INSERT INTO public.dwarf_planet VALUES ('Ceres', 2, 939, 4500);
INSERT INTO public.dwarf_planet VALUES ('Eris', 3, 2326, 4500);
INSERT INTO public.dwarf_planet VALUES ('Haumea', 4, 1632, 4500);
INSERT INTO public.dwarf_planet VALUES ('Makemake', 5, 1430, 4500);
INSERT INTO public.dwarf_planet VALUES ('Gonggong', 6, 1230, 4500);
INSERT INTO public.dwarf_planet VALUES ('Quaoar', 7, 1110, 4500);
INSERT INTO public.dwarf_planet VALUES ('Sedna', 8, 995, 4500);
INSERT INTO public.dwarf_planet VALUES ('Orcus', 9, 910, 4500);
INSERT INTO public.dwarf_planet VALUES ('Salacia', 10, 846, 4500);
INSERT INTO public.dwarf_planet VALUES ('Varda', 11, 740, 4500);
INSERT INTO public.dwarf_planet VALUES ('Varuna', 12, 668, 4500);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 220000, 2537000, 250.0, 'Nearest major galaxy to the Milky Way');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 60000, 2730000, 100.0, 'Spiral galaxy in the Local Group');
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 76000, 23000000, 200.0, 'Grand-design spiral galaxy');
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 49000, 29350000, 350.0, 'Galaxy with a prominent dust lane');
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 170000, 21000000, 200.0, 'Large face-on spiral galaxy');
INSERT INTO public.galaxy VALUES (7, 'Large Magellanic Cloud', 14000, 163000, 80.0, 'Satellite galaxy of the Milky Way');
INSERT INTO public.galaxy VALUES (8, 'Small Magellanic Cloud', 7000, 200000, 60.0, 'Dwarf galaxy near the Milky Way');
INSERT INTO public.galaxy VALUES (9, 'Centaurus A', 97000, 12000000, 200.0, 'Peculiar galaxy with a dust lane');
INSERT INTO public.galaxy VALUES (10, 'Messier 87', 240000, 53500000, 500.0, 'Giant elliptical galaxy');
INSERT INTO public.galaxy VALUES (11, 'Cartwheel', 150000, 500000000, 200.0, 'Ring galaxy shaped by a collision');
INSERT INTO public.galaxy VALUES (12, 'Black Eye', 54000, 17000000, 200.0, 'Spiral galaxy with a dark dust band');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', NULL, 1, NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', 22, 4, 4500);
INSERT INTO public.moon VALUES (3, 'Deimos', 12, 4, 4500);
INSERT INTO public.moon VALUES (4, 'Io', 3643, 5, 4500);
INSERT INTO public.moon VALUES (5, 'Europa', 3122, 5, 4500);
INSERT INTO public.moon VALUES (6, 'Ganymede', 5268, 5, 4500);
INSERT INTO public.moon VALUES (7, 'Callisto', 4821, 5, 4500);
INSERT INTO public.moon VALUES (8, 'Titan', 5150, 6, 4500);
INSERT INTO public.moon VALUES (9, 'Enceladus', 504, 6, 4500);
INSERT INTO public.moon VALUES (10, 'Rhea', 1528, 6, 4500);
INSERT INTO public.moon VALUES (11, 'Iapetus', 1470, 6, 4500);
INSERT INTO public.moon VALUES (12, 'Dione', 1123, 6, 4500);
INSERT INTO public.moon VALUES (13, 'Tethys', 1062, 6, 4500);
INSERT INTO public.moon VALUES (14, 'Mimas', 396, 6, 4500);
INSERT INTO public.moon VALUES (15, 'Titania', 1578, 7, 4500);
INSERT INTO public.moon VALUES (16, 'Oberon', 1523, 7, 4500);
INSERT INTO public.moon VALUES (17, 'Ariel', 1158, 7, 4500);
INSERT INTO public.moon VALUES (18, 'Umbriel', 1169, 7, 4500);
INSERT INTO public.moon VALUES (19, 'Triton', 2707, 8, 4500);
INSERT INTO public.moon VALUES (20, 'Charon', 1212, 1, 4500);
INSERT INTO public.moon VALUES (21, 'Miranda', 472, 7, 4500);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', NULL, NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (2, 'Mercury', 4879, true, false, 1, 4500);
INSERT INTO public.planet VALUES (3, 'Venus', 12104, true, false, 1, 4500);
INSERT INTO public.planet VALUES (4, 'Mars', 6779, true, false, 1, 4500);
INSERT INTO public.planet VALUES (5, 'Jupiter', 139820, false, false, 1, 4500);
INSERT INTO public.planet VALUES (6, 'Saturn', 116460, false, false, 1, 4500);
INSERT INTO public.planet VALUES (7, 'Uranus', 50724, false, false, 1, 4500);
INSERT INTO public.planet VALUES (8, 'Neptune', 49244, false, false, 1, 4500);
INSERT INTO public.planet VALUES (9, 'Kepler-22b', 43000, false, true, 2, 4000);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri b', 12000, true, true, 4, 4800);
INSERT INTO public.planet VALUES (11, 'TRAPPIST-1e', 11600, true, true, 5, 7500);
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1f', 13400, true, false, 5, 7500);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', NULL, 1, NULL);
INSERT INTO public.star VALUES (2, 'Sirius', 2400000, 1, 242);
INSERT INTO public.star VALUES (3, 'Canopus', 71000000, 1, 250);
INSERT INTO public.star VALUES (4, 'Alpha Centauri', 1700000, 1, 4850);
INSERT INTO public.star VALUES (5, 'Betelgeuse', 1200000000, 1, 10);
INSERT INTO public.star VALUES (6, 'Rigel', 79000000, 1, 8);
INSERT INTO public.star VALUES (7, 'Vega', 3700000, 1, 455);
INSERT INTO public.star VALUES (8, 'Polaris', 50000000, 1, 70);
INSERT INTO public.star VALUES (9, 'Procyon', 2000000, 1, 1700);
INSERT INTO public.star VALUES (10, 'Altair', 2300000, 1, 1000);
INSERT INTO public.star VALUES (11, 'Arcturus', 35000000, 1, 7100);
INSERT INTO public.star VALUES (12, 'Spica', 12000000, 1, 12);


--
-- Name: dwarf_planet_dwarf_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.dwarf_planet_dwarf_planet_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, true);


--
-- Name: dwarf_planet dwarf_planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf_planet
    ADD CONSTRAINT dwarf_planet_name_key UNIQUE (name);


--
-- Name: dwarf_planet dwarf_planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf_planet
    ADD CONSTRAINT dwarf_planet_pkey PRIMARY KEY (dwarf_planet_id);


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

