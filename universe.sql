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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(255) NOT NULL,
    english_name character varying(255)
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    year_discovered integer NOT NULL,
    description text,
    constellation_id integer
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
    name character varying(255) NOT NULL,
    orbital_period_in_days integer,
    year_discovered integer,
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    is_spherical boolean,
    has_life boolean,
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
    galaxy_id integer,
    temperature_in_celsius numeric,
    radius_compared_to_sun numeric
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
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


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
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (2, 'Andromeda', 'Andromeda');
INSERT INTO public.constellation VALUES (3, 'Ursa Major', 'Great Bear');
INSERT INTO public.constellation VALUES (4, 'Sculptor', 'Sculptor');
INSERT INTO public.constellation VALUES (5, 'Coma Berenices', 'Berenice Hair');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 964, 'It is a spiral galaxy approximately 2.5 million light-years from Earth and the nearest major galaxy to the Milky Way. Its name stems from the area of the sky in which it appears the constellation of Andromeda.', 2);
INSERT INTO public.galaxy VALUES (2, ' Black Eye Galaxy', 1779, 'It has a spectacular dark band of absorbing dust in front of the galaxy bright nucleus, giving rise to its nicknames of the Black Eye or Evil Eye galaxy.', 5);
INSERT INTO public.galaxy VALUES (3, 'Bode Galaxy', 1774, 'It is a spiral galaxy about 12 million light-years away, in the constellation Ursa Major. It was discovered by Johann Elert Bode', 3);
INSERT INTO public.galaxy VALUES (4, 'Milky Way', 1610, 'Galileo was the first to see our galaxy through a telescope in 1610. Given that we are part of it, it is not a part of a constellation, since a constellation is subjective to the point of view', NULL);
INSERT INTO public.galaxy VALUES (5, 'Cartwheel Galaxy', 1941, 'It is a lenticular galaxy and ring galaxy about 500 million light-years away in the constellation Sculptor. It looks like a cartwheel ', 4);
INSERT INTO public.galaxy VALUES (6, 'Cigar Galaxy', 1774, 'It is a starburst galaxy approximately 12 million light-years away in the constellation Ursa Major', 3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 27, -4000, 1);
INSERT INTO public.moon VALUES (2, 'Io', 2, 1610, 4);
INSERT INTO public.moon VALUES (3, 'Europa', 4, 1610, 4);
INSERT INTO public.moon VALUES (4, 'Ganymede', 7, 1610, 4);
INSERT INTO public.moon VALUES (5, 'Callisto', 17, 1610, 4);
INSERT INTO public.moon VALUES (6, 'Amalthea', 1, 1892, 4);
INSERT INTO public.moon VALUES (7, 'Himalia', 251, 1904, 4);
INSERT INTO public.moon VALUES (8, 'Elara', 260, 1905, 4);
INSERT INTO public.moon VALUES (9, 'Pasiphae', 735, 1908, 4);
INSERT INTO public.moon VALUES (10, 'Sinope', 759, 1914, 4);
INSERT INTO public.moon VALUES (11, 'Lysithea', 259, 1938, 4);
INSERT INTO public.moon VALUES (12, 'Carme', 692, 1938, 4);
INSERT INTO public.moon VALUES (13, 'Titan', 16, 1655, 11);
INSERT INTO public.moon VALUES (14, 'Enceladus', 1, 1789, 11);
INSERT INTO public.moon VALUES (15, 'Mimas', 1, 1789, 11);
INSERT INTO public.moon VALUES (16, 'Rhea', 5, 1672, 11);
INSERT INTO public.moon VALUES (17, 'Iapetus', 79, 1671, 11);
INSERT INTO public.moon VALUES (18, 'Dione', 3, 1684, 11);
INSERT INTO public.moon VALUES (19, 'Titania', 9, 1787, 12);
INSERT INTO public.moon VALUES (20, 'Oberon', 14, 1787, 12);
INSERT INTO public.moon VALUES (21, 'Umbriel', 4, 1851, 12);
INSERT INTO public.moon VALUES (22, 'Ariel', 3, 1851, 12);
INSERT INTO public.moon VALUES (23, 'Triton', 6, 1846, 13);
INSERT INTO public.moon VALUES (24, 'Nereid', 360, 1949, 13);
INSERT INTO public.moon VALUES (25, 'Phobos', 0, 1877, 10);
INSERT INTO public.moon VALUES (26, 'Deimos', 1, 1877, 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'The planet that we live on', true, true, 6);
INSERT INTO public.planet VALUES (2, 'Proxima centauri B', 'Proxima Centauri b is approximately 4.24 light-years away from Earth. This makes it the closest known exoplanet to our Solar System. Proxima Centauri is part of the Alpha Centauri star system, which is the closest star system to the Sun.', true, false, 4);
INSERT INTO public.planet VALUES (3, 'Proxima centauri C', 'Proxima Centauri c is an exoplanet orbiting Proxima Centauri, 4.24 light-years away. It has a mass about 7 times that of Earth and orbits every 5.2 years.', true, false, 4);
INSERT INTO public.planet VALUES (4, 'Jupiter', 'Jupiter has at least 79 known moons, including the four largest known as the Galilean moons: Io, Europa, Ganymede, and Callisto.
Ganymede is the largest moon in the Solar System, even larger than the planet Mercury.', false, false, 6);
INSERT INTO public.planet VALUES (5, 'Mercury', 'Closest planet to the Sun, rocky and heavily cratered.', true, false, 6);
INSERT INTO public.planet VALUES (6, 'Venus', 'Second planet from the Sun, known for its thick atmosphere of carbon dioxide.', true, false, 6);
INSERT INTO public.planet VALUES (10, 'Mars', 'Fourth planet from the Sun, known for its reddish appearance due to iron oxide on its surface', true, false, 6);
INSERT INTO public.planet VALUES (11, 'Saturn', 'Description: Known for its extensive ring system made of ice and dust particle', true, false, 6);
INSERT INTO public.planet VALUES (12, 'Uranus', 'Seventh planet from the Sun, with a unique tilted axis that causes extreme seasons.', true, false, 6);
INSERT INTO public.planet VALUES (13, 'Neptune', 'Farthest planet from the Sun, a blue gas giant with strong winds and a great dark spot.', true, false, 6);
INSERT INTO public.planet VALUES (16, 'Aldebaran b', 'A hypothetical planet near Aldebaran.', true, false, 5);
INSERT INTO public.planet VALUES (17, 'Aldebaran c', 'Another hypothetical planet near Aldebaran.', true, false, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Betelgeuse', 4, 3227, 764);
INSERT INTO public.star VALUES (6, 'The Sun', 4, 5500, 1);
INSERT INTO public.star VALUES (2, 'Sirius A', 4, 9667, 1.71);
INSERT INTO public.star VALUES (3, 'Alpha Centauri A', 4, 5518, 1.22);
INSERT INTO public.star VALUES (4, 'Proxima Centauri', 4, 2769, 0.14);
INSERT INTO public.star VALUES (5, 'Aldebaran', 4, 3637, 44.2);


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 26, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 17, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: constellation constellation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_name_key UNIQUE (name);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


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
-- Name: galaxy fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (constellation_id) REFERENCES public.constellation(constellation_id);


--
-- Name: moon fk_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

