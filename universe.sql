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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(40) NOT NULL,
    composition text,
    size numeric,
    is_dangerous boolean
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    population integer NOT NULL,
    has_life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    planet_id integer NOT NULL,
    diameter integer,
    is_habitable boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    star_id integer NOT NULL,
    distance_from_sun numeric,
    has_life boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    galaxy_id integer NOT NULL,
    diameter integer NOT NULL,
    is_habitable boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'Ceres', 'Rock and ice', 939.4, false);
INSERT INTO public.asteroid VALUES (2, 'Vesta', 'Rock', 525.4, false);
INSERT INTO public.asteroid VALUES (3, 'Pallas', 'Rock', 512, false);
INSERT INTO public.asteroid VALUES (4, 'Hygiea', 'Carbonaceous', 434, false);
INSERT INTO public.asteroid VALUES (5, 'Eros', 'S-type', 16.84, true);
INSERT INTO public.asteroid VALUES (6, 'Bennu', 'Carbonaceous', 0.492, false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'A galaxy with our solar system', 100000000, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'A neighborhood', 10000000, true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'A small galaxy within local group', 5000000, true);
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud', 'A nearby galaxy visible to naked eye', 10000, false);
INSERT INTO public.galaxy VALUES (5, 'Small Magellanic Cloud', 'A dwarf galaxy nearby the milky way', 40000, false);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool Galaxy', 'A classical spiral galaxy', 0, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, 3474, false);
INSERT INTO public.moon VALUES (2, 'Phobos', 2, 22, false);
INSERT INTO public.moon VALUES (3, 'Deimos', 2, 12, false);
INSERT INTO public.moon VALUES (4, 'Io', 3, 3643, false);
INSERT INTO public.moon VALUES (5, 'Europa', 3, 3122, false);
INSERT INTO public.moon VALUES (6, 'Ganymede', 3, 5268, false);
INSERT INTO public.moon VALUES (7, 'Callisto', 3, 4821, false);
INSERT INTO public.moon VALUES (8, 'Proxima Centauri b I', 4, 1000, false);
INSERT INTO public.moon VALUES (9, 'Alpha Centauri Bb I', 5, 800, false);
INSERT INTO public.moon VALUES (10, 'Betelgeuse I I', 6, 1500, false);
INSERT INTO public.moon VALUES (11, 'Betelgeuse I II', 6, 1200, false);
INSERT INTO public.moon VALUES (12, 'Betelgeuse II I', 7, 1300, false);
INSERT INTO public.moon VALUES (13, 'Betelgeuse II II', 7, 900, false);
INSERT INTO public.moon VALUES (14, 'Betelgeuse III I', 8, 1100, false);
INSERT INTO public.moon VALUES (15, 'Betelgeuse III II', 8, 850, false);
INSERT INTO public.moon VALUES (16, 'Rigel I I', 9, 2000, false);
INSERT INTO public.moon VALUES (17, 'Rigel II I', 10, 2200, false);
INSERT INTO public.moon VALUES (18, 'Sirius A I', 11, 1800, false);
INSERT INTO public.moon VALUES (19, 'Sirius B I', 12, 1600, false);
INSERT INTO public.moon VALUES (20, 'Sirius B II', 12, 1400, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, 1.0, true);
INSERT INTO public.planet VALUES (2, 'Mars', 1, 1.5, true);
INSERT INTO public.planet VALUES (3, 'VENUS', 1, 0.7, false);
INSERT INTO public.planet VALUES (4, 'Proxima b', 2, 0.05, false);
INSERT INTO public.planet VALUES (5, 'Alpha Centauri Bb', 3, 0.04, false);
INSERT INTO public.planet VALUES (6, 'Betelgeuse', 4, 0.3, false);
INSERT INTO public.planet VALUES (7, 'Betelgeuse II', 4, 0.5, false);
INSERT INTO public.planet VALUES (8, 'Betelgeuse III', 4, 0.7, false);
INSERT INTO public.planet VALUES (9, 'Rigel', 5, 0.6, false);
INSERT INTO public.planet VALUES (10, 'Rigel II', 5, 0.9, false);
INSERT INTO public.planet VALUES (11, 'Sirius A', 6, 0.4, false);
INSERT INTO public.planet VALUES (12, 'Sirius B', 6, 0.6, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 1392000, true);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 2, 200000, false);
INSERT INTO public.star VALUES (3, 'Alpha Centauri', 2, 1700000, true);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 1, 1300000, false);
INSERT INTO public.star VALUES (5, 'Rigel', 3, 1200000, false);
INSERT INTO public.star VALUES (6, 'Sirius', 1, 2400000, true);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


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
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

