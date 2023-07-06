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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL,
    age_in_millions_of_years numeric,
    galaxy_types character varying(30)
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
    description text NOT NULL,
    mean_radius_in_km numeric,
    discovery_year integer,
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
    name character varying(30) NOT NULL,
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    planet_types character varying(30),
    star_id integer NOT NULL
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
    description text NOT NULL,
    distance_from_earth integer,
    constellation character varying(30),
    galaxy_id integer NOT NULL
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


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
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'First asteroid', 'This is the first asteroid');
INSERT INTO public.asteroid VALUES (2, 'Second asteroid', 'This is the second asteroid');
INSERT INTO public.asteroid VALUES (3, 'Third asteroid', 'This is the third asteroid');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'First galaxy', 'This is the first galaxy', 6, 'First type');
INSERT INTO public.galaxy VALUES (2, 'Second galaxy', 'This is the second galaxy', 5, 'Second type');
INSERT INTO public.galaxy VALUES (3, 'Third galaxy', 'This is the third galaxy', 4, 'Third type');
INSERT INTO public.galaxy VALUES (4, 'Fourth galaxy', 'This is the fourth galaxy', 3, 'Fourth type');
INSERT INTO public.galaxy VALUES (5, 'Fifth galaxy', 'This is the fifth galaxy', 2, 'Fifth type');
INSERT INTO public.galaxy VALUES (6, 'Sixth galaxy', 'This is the sixth galaxy', 1, 'Sixth type');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'The Moon of the Earth is the only place beyond Earth where humans have set foot.', 1738, 0, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Is the larger of the two moons of Mars.', 11.267, 1877, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Is the smaller of the two moons of Mars.', 6.2, 1877, 4);
INSERT INTO public.moon VALUES (5, 'Europa', 'Is thought to have an iron core, a rocky mantle and an ocean of salty water that may be one of the best places to look for life beyond Earth in our solar system.', 1560, 1610, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'Is the largest moon in our solar system and the only moon with its own magnetic field', 2634, 1610, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 'Is the most heavily cratered object in our solar system', 2410, 1610, 5);
INSERT INTO public.moon VALUES (8, 'Mimas', 'Was discovered by English astronomer William Herschel, using his 40-foot reflector telescope', 198.2, 1789, 6);
INSERT INTO public.moon VALUES (9, 'Enceladus', 'Few worlds in our solar system are as compelling as Enceladus', 252.1, 1789, 6);
INSERT INTO public.moon VALUES (10, 'Tethys', 'Giovanni Cassini discovered Tethys', 533.1, 1684, 6);
INSERT INTO public.moon VALUES (11, 'Dione', 'Giovanni Cassini discovered Dione', 561.4, 1684, 6);
INSERT INTO public.moon VALUES (12, 'Rhea', 'Giovanni Cassini discovered Rhea', 763.8, 1672, 6);
INSERT INTO public.moon VALUES (13, 'Titan', 'Titan is an extraordinary and exceptional world', 2574.73, 1655, 6);
INSERT INTO public.moon VALUES (14, 'Hyperion', 'William Lassell discovered Hyperion', 135, 1848, 6);
INSERT INTO public.moon VALUES (15, 'Iapetus', 'Giovanni Cassini discovered Iapetus', 735.6, 1671, 6);
INSERT INTO public.moon VALUES (16, 'Phoebe', 'Was discovered by American astronomer William Pickering', 106.5, 1899, 6);
INSERT INTO public.moon VALUES (17, 'Janus', 'Is a potato-shaped moon', 89.5, 1966, 6);
INSERT INTO public.moon VALUES (18, 'Epimetheus', 'The name Epimetheus comes from the Greek god Epimetheus who was the brother of Prometheus', 58.1, 1966, 6);
INSERT INTO public.moon VALUES (19, 'Helene', 'Helene was discovered during the Earth ring-plane crossing by J. Lecacheux and others', 17.6, 1980, 6);
INSERT INTO public.moon VALUES (20, 'Telesto', 'Was discovered using ground-based observations by Brad Smith, Harold Reitsema, Stephen Larson and John Fountain', 12.4, 1980, 6);
INSERT INTO public.moon VALUES (21, 'Calypso', 'Was discovered by D. Pascu, P.K. Seidelmann, W. Baum and D. Currie using a ground-based telescope', 10.7, 1980, 6);
INSERT INTO public.moon VALUES (22, 'Atlas', 'Was discovered by R. Terrile and the Voyager 1 team from photographs taken during its encounter with Saturn', 15.1, 1980, 6);
INSERT INTO public.moon VALUES (23, 'Prometheus', 'The Voyager 1 science team discovered Prometheus', 43.1, 1980, 6);
INSERT INTO public.moon VALUES (24, 'Pandora', 'Was discovered by the Voyager 1 science team', 40.7, 1980, 6);
INSERT INTO public.moon VALUES (25, 'Pan', 'Was discovered by M.R. Showalter using images taken by the Voyager 2 spacecraft', 14.1, 1990, 6);
INSERT INTO public.moon VALUES (27, 'Paaliaq', 'Was discovered by Brett J. Gladman, John J. Kavelaars, Jean-Marc Petit, Hans Scholl, Matthew J. Holman, Brian G. Marsden, Phillip D. Nicholson and Joseph A. Burns at the European Southern Observatory in La Silla, Chile', 11, 2000, 6);
INSERT INTO public.moon VALUES (28, 'Tarvos', 'Was discovered by Brett J. Gladman, John J. Kavelaars, Jean-Marc Petit, Hans Scholl, Matthew J. Holman, Brian G. Marsden, Phillip D. Nicholson and Joseph A. Burns using the 3.6 m Canada-France-Hawaii reflector on Mauna Kea, Hawaii, with adaptive optics', 7.5, 2000, 6);
INSERT INTO public.moon VALUES (29, 'Ijiraq', 'Was discovered by Brett J. Gladman, John J. Kavelaars, Jean-Marc Petit, Hans Scholl, Matthew J. Holman, Brian G. Marsden, Phillip D. Nicholson and Joseph A. Burns using the 3.6 m Canada-France-Hawaii reflector on Mauna Kea, Hawaii, with adaptive optics', 6, 2000, 6);
INSERT INTO public.moon VALUES (30, 'Suttungr', 'Was discovered by Brett J. Gladman, John J. Kavelaars, Jean-Marc Petit, Hans Scholl, Matthew J. Holman, Brian G. Marsden, Phillip D. Nicholson and Joseph A. Burns using the 3.6 m Canada-France-Hawaii reflector on Mauna Kea, Hawaii, with adaptive optics', 3.5, 2000, 6);
INSERT INTO public.moon VALUES (31, 'Kiviuq', 'Was discovered by Brett J. Gladman, John J. Kavelaars, Jean-Marc Petit, Hans Scholl, Matthew J. Holman, Brian G. Marsden, Phillip D. Nicholson and Joseph A. Burns at the European Southern Observatory in La Silla, Chile', 8, 2000, 6);
INSERT INTO public.moon VALUES (32, 'Mundilfari', 'Was discovered by Brett J. Gladman, John J. Kavelaars, Jean-Marc Petit, Hans Scholl, Matthew J. Holman, Brian G. Marsden, Phillip D. Nicholson and Joseph A. Burns using the 3.6 m Canada-France-Hawaii reflector on Mauna Kea, Hawaii, with adaptive optics', 3.5, 2000, 6);
INSERT INTO public.moon VALUES (33, 'Albiorix', 'Was discovered by Matthew J. Holman and Timothy B. Spahr, using the 6.5 m reflector telescope at the Fred Lawrence Whipple Observatory on Mt. Hopkins, near Amado, Ariz', 16, 2000, 6);
INSERT INTO public.moon VALUES (34, 'Skathi', 'Was discovered by Brett J. Gladman, John J. Kavelaars, Jean-Marc Petit, Hans Scholl, Matthew J. Holman, Brian G. Marsden, Phillip D. Nicholson and Joseph A. Burns using the 3.6 m Canada-France-Hawaii reflector on Mauna Kea, Hawaii, with adaptive optics', 4, 2000, 6);
INSERT INTO public.moon VALUES (35, 'Erriapus', 'Was discovered by Brett J. Gladman, John J. Kavelaars, Jean-Marc Petit, Hans Scholl, Matthew J. Holman, Brian G. Marsden, Phillip D. Nicholson and Joseph A. Burns at the Mauna Kea Observatory on the island of Hawaii', 5, 2000, 6);
INSERT INTO public.moon VALUES (36, 'Siarnaq', 'Was discovered by Brett J. Gladman, John J. Kavelaars, Jean-Marc Petit, Hans Scholl, Matthew J. Holman, Brian G. Marsden, Phillip D. Nicholson and Joseph A. Burns using the 3.6 m Canada-France-Hawaii reflector on Mauna Kea, Hawaii, with adaptive optics', 20, 2000, 6);
INSERT INTO public.moon VALUES (37, 'Thrymyr', 'Was discovered by Brett J. Gladman, John J. Kavelaars, Jean-Marc Petit, Hans Scholl, Matthew J. Holman, Brian G. Marsden, Phillip D. Nicholson and Joseph A. Burns using the 3.6 m Canada-France-Hawaii reflector on Mauna Kean, Hawaii, with adaptive optics', 3.5, 2000, 6);
INSERT INTO public.moon VALUES (38, 'Narvi', 'Was discovered by Scott S. Sheppard, David C. Jewitt and Jan T. Kleyna', 3.5, 2003, 6);
INSERT INTO public.moon VALUES (39, 'Methone', 'The Cassini Imaging Team discovered Methone', 1.45, 2004, 6);
INSERT INTO public.moon VALUES (40, 'Pallene', 'The Cassini Imaging Team discovered Pallene', 2.22, 2004, 6);
INSERT INTO public.moon VALUES (41, 'Polydeuces', 'Was discovered by the Cassini mission team', 1.3, 2004, 6);
INSERT INTO public.moon VALUES (42, 'Daphnis', 'Was discovered by the Cassini mission team', 3.8, 2005, 6);
INSERT INTO public.moon VALUES (43, 'Aegir', 'Was discovered by Scott S. Sheppard, David L. Jewitt and Jan T. Kleyna using a wide-field camera on the Subaru 8.2 m reflector telescope on Mauna Kea, Hawaii', 3, 2004, 6);
INSERT INTO public.moon VALUES (44, 'Bebhionn', 'Was discovered by Scott S. Sheppard, David C. Jewitt and Jan T. Kleyna using a wide-field camera on the Subaru 8.2 m reflector telescope on Mauna Kea, Hawaii, with orbital elements computed by Brian Marsden', 3, 2004, 6);
INSERT INTO public.moon VALUES (45, 'Bergelmir', 'Was discovered by Scott S. Sheppard, David C. Jewitt and Jan T. Kleynausing a wide-field camera on the Subaru 8.2 m reflector telescope on Mauna Kea, Hawaii', 3, 2004, 6);
INSERT INTO public.moon VALUES (46, 'Bestla', 'Was discovered by Scott S. Sheppard, David C. Jewitt and Jan T. Kleyna, using wide-field camera on the Subaru 8.3 m reflector telescope on Mauna Kea, Hawaii', 3.5, 2004, 6);
INSERT INTO public.moon VALUES (48, 'Fenrir', 'Was discovered by Scott S. Sheppard, David C. Jewitt and Jan T. Kleyna, using wide-field camera on the Subaru 8.3 m reflector telescope on Mauna Kea, Hawaii', 2, 2004, 6);
INSERT INTO public.moon VALUES (50, 'Hati', 'Was discovered by Scott S. Sheppard, David L. Jewitt and Jan T. Kleyna, using wide-field camera on the Subaru 8.3 m reflector telescope on Mauna Kea, Hawaii', 3, 2004, 6);
INSERT INTO public.moon VALUES (51, 'Hyrrokkin', 'Was discovered by Scott S. Sheppard, David C. Jewitt and Jan T. Kleyna, using wide-field camera on the Subaru 8.3 m reflector telescope on Mauna Kea, Hawaii', 4, 2004, 6);
INSERT INTO public.moon VALUES (52, 'Kari', 'Was discovered by Scott S. Sheppard, David C. Jewitt and Jan T. Kleyna, based on data obtained with the Subaru 8.3 m reflector telescope on Mauna Kea, Hawaii', 3.5, 2006, 6);
INSERT INTO public.moon VALUES (53, 'Loge', 'Was discovered by Scott S. Sheppard, David C. Jewitt and Jan T. Kleyna, using the Subaru 8.3 m reflector telescope on Mauna Kea, Hawaii', 3, 2006, 6);
INSERT INTO public.moon VALUES (54, 'Skoll', 'Was discovered by Scott S. Sheppard, David C. Jewitt and Jan T. Kleyna, using the Subaru 8.3 m reflector telescope on Mauna Kea, Hawaii', 3, 2006, 6);
INSERT INTO public.moon VALUES (55, 'Surtur', 'Was discovered by Scott S. Sheppard, David C. Jewitt and Jan T. Kleyna, using the Subaru 8.3 m reflector telescope on Mauna Kea, Hawaii', 3, 2006, 6);
INSERT INTO public.moon VALUES (56, 'Anthe', 'The Cassini Imaging team discovered Anthe', 0.9, 2007, 6);
INSERT INTO public.moon VALUES (57, 'Jarnsaxa', 'Was discovered by Scott S. Sheppard, David C. Jewitt and Jan T. Kleyna, using the Subaru 8.3 m reflector telescope on Mauna Kea, Hawaii', 3, 2006, 6);
INSERT INTO public.moon VALUES (58, 'Greip', 'Was discovered by Scott S. Sheppard, David C. Jewitt and Jan T. Kleyna, using the Subaru 8.3 m reflector telescope on Mauna Kea, Hawaii', 3, 2006, 6);
INSERT INTO public.moon VALUES (59, 'Tarqeq', 'Was discovered by Scott S. Sheppard, David C. Jewitt and Jan T. Kleyna at the Subaru 8.2 m reflector at the Mauna Kea Observatory in Hawaii', 3.5, 2007, 6);
INSERT INTO public.moon VALUES (60, 'Aegaeon', 'The moonlet is too small to be resolved by the cameras of Cassini, so its size cannot be measured directly', 0.33, 2008, 6);
INSERT INTO public.moon VALUES (61, 'Ariel', 'The surface of Ariel appears to be the youngest of all the moons of Uranus', 578.9, 1851, 7);
INSERT INTO public.moon VALUES (62, 'Umbriel', 'Is the darkest of the largest moons of Uranus', 584.7, 1851, 7);
INSERT INTO public.moon VALUES (63, 'Titania', 'Is the largest moon of Uranus', 788.9, 1787, 7);
INSERT INTO public.moon VALUES (64, 'Oberon', 'Is the second largest moon of Uranus', 761.4, 1787, 7);
INSERT INTO public.moon VALUES (65, 'Miranda', 'It was the last moon of Uranus to be discovered', 235.8, 1948, 7);
INSERT INTO public.moon VALUES (66, 'Cordelia', 'It is one of the 10 Uranian satellites discovered by the Voyager science team', 20.1, 1986, 7);
INSERT INTO public.moon VALUES (67, 'Ophelia', 'Is one of the small inner moons of Uranus', 21.4, 1986, 7);
INSERT INTO public.moon VALUES (68, 'Bianca', 'Little is known about it other than its size and orbital characteristics', 25.7, 1986, 7);
INSERT INTO public.moon VALUES (69, 'Cressida', 'Based on its low albedo, its surface probably consists of the dark, unprocessed, carbon-rich material found on the C-class of asteroids', 39.8, 1986, 7);
INSERT INTO public.moon VALUES (70, 'Desdemona', 'Desdemona is the daughter of a Venetian senator', 32, 1986, 7);
INSERT INTO public.moon VALUES (71, 'Juliet', 'It is one of the 10 Uranian satellites discovered by the Voyager science team', 46.8, 1986, 7);
INSERT INTO public.moon VALUES (72, 'Portia', 'Very little is known about the small and fast-moving moon of Uranus Portia', 67.6, 1986, 7);
INSERT INTO public.moon VALUES (73, 'Rosalind', 'Little is known about Rosalind, one of several satellites discovered by Voyager 2 as it flew by Uranus in 1986', 36, 1986, 7);
INSERT INTO public.moon VALUES (74, 'Belinda', 'Little is known about Belinda other than its size and orbital characteristics', 40.3, 1986, 7);
INSERT INTO public.moon VALUES (75, 'Puck', 'Is one of the small inner moons of Uranus', 81, 1985, 7);
INSERT INTO public.moon VALUES (76, 'Caliban', 'Orbits Uranus in the opposite direction from the regular moons and the rotation of the planet itself', 36.4, 1997, 7);
INSERT INTO public.moon VALUES (78, 'Prospero', 'At about 31 miles in diameter, Prospero is a small, dark, irregular moon that orbits Uranus in the opposite direction from the regular satellites and the rotation of the planet itself', 25, 1999, 7);
INSERT INTO public.moon VALUES (79, 'Setebos', 'Is a small, dark moon', 24, 1999, 7);
INSERT INTO public.moon VALUES (80, 'Stephano', 'About 20 miles in diameter, Stephano is a small, dark moon which orbits Uranus in the opposite direction from the regular satellites and the rotation of the planet', 16, 1999, 7);
INSERT INTO public.moon VALUES (81, 'Trinculo', 'About 11 miles in diameter, Trinculo is a small, dark moon orbiting Uranus in the opposite direction from the regular moons and the rotation of the planet', 9.5, 2001, 7);
INSERT INTO public.moon VALUES (82, 'Francisco', 'Is a very small, dark moon which orbits Uranus in the opposite direction from the regular moons and the own rotation of the planet', 11, 2001, 7);
INSERT INTO public.moon VALUES (83, 'Margaret', 'Is considered an irregular moon of Uranus because of the eccentricity and inclination of its orbit, but it is the only such moon that travels in a prograde direction that is, in the same direction as the regular moons and the rotation of the planet about its axis', 10, 2003, 7);
INSERT INTO public.moon VALUES (84, 'Ferdinand', 'Is a very small, dark moon which orbits Uranus at a greater distance than any other known satellite of that planet', 10, 2001, 7);
INSERT INTO public.moon VALUES (85, 'Perdita', 'Was discovered 13 years after its picture was taken by Voyager 2 during the flyby of the spacecraft in 1986', 15, 1999, 7);
INSERT INTO public.moon VALUES (86, 'Mab', 'Is a small, inner moon of Uranus', 12, 2003, 7);
INSERT INTO public.moon VALUES (87, 'Cupid', 'Is one of the inner moons of Uranus, so small and dark that it escaped the notice of Voyager 2 during the visit of the spacecraft in 1986', 9, 2003, 7);
INSERT INTO public.moon VALUES (88, 'Triton', 'Is the largest of the 13 moons of Neptune', 1353, 1846, 8);
INSERT INTO public.moon VALUES (89, 'Nereid', 'It was the last satellite of Neptune to be discovered before the discoveries of Voyager 2 four decades later', 170, 1949, 8);
INSERT INTO public.moon VALUES (90, 'Naiad', 'Was the last moon to be discovered during the Voyager 2 flyby in September 1989', 33, 1989, 8);
INSERT INTO public.moon VALUES (91, 'Thalassa', 'Like Naiad, most likely formed from fragments of the original moons of Neptune, which were smashed by the disturbances caused when the ice giant Neptune captured Triton', 41, 1989, 8);
INSERT INTO public.moon VALUES (92, 'Despina', 'Is a tiny moon located within the faint ring system of Neptune', 78, 1989, 8);
INSERT INTO public.moon VALUES (93, 'Galatea', 'Is another of the tiny moons of Neptune', 88, 1989, 8);
INSERT INTO public.moon VALUES (94, 'Larissa', 'Is another of the small moons found near the faint ring system of Neptune in 1989', 97, 1981, 8);
INSERT INTO public.moon VALUES (95, 'Proteus', 'Was most likely overlooked because it is so dark and the distance between Earth and Neptune is so great', 210, 1989, 8);
INSERT INTO public.moon VALUES (96, 'Halimede', 'Is one of three tiny moons ranging in size from 18 to 24 miles discovered', 31, 2002, 8);
INSERT INTO public.moon VALUES (97, 'Psamathe', 'Is so distant from Neptune it takes almost 26 Earth years to make a single orbit around the ice giant', 20, 2003, 8);
INSERT INTO public.moon VALUES (4, 'Io', 'Is the most volcanically active world in the solar system, with hundreds of volcanoes, some erupting lava fountains dozens of miles high', 1821, 1610, 5);
INSERT INTO public.moon VALUES (26, 'Ymir', 'Was discovered by Brett J. Gladman, John J. Kavelaars, Jean-Marc Petit, Hans Scholl, Matthew J. Holman, Brian G. Marsden, Phillip D. Nicholson and Joseph A. Burns at the European Southern Observatory in La Silla, Chile', 9, 2000, 6);
INSERT INTO public.moon VALUES (47, 'Farbauti', 'Was discovered by Scott S. Sheppard, David C. Jewitt and Jan T. Kleyna, using wide-field camera on the Subaru 8.3 m reflector telescope on Mauna Kea, Hawaii', 2.5, 2004, 6);
INSERT INTO public.moon VALUES (49, 'Fornjot', 'Was discovered by Scott S. Sheppard, David L. Jewitt and Jan T. Kleyna, using wide-field camera on the Subaru 8.3 m reflector telescope on Mauna Kea, Hawaii', 3, 2004, 6);
INSERT INTO public.moon VALUES (77, 'Sycorax', 'With a diameter of about 93 miles, Sycorax is the largest of the irregular moons which orbit Uranus in the opposite direction from the regular moons and the rotation of the planet', 93, 1997, 7);
INSERT INTO public.moon VALUES (98, 'Sao', 'Is one of three tiny moons of Neptune discovered in 2002 using innovative ground-based telescope techniques', 22, 2002, 8);
INSERT INTO public.moon VALUES (99, 'Laomedeia', 'Is one of three tiny moons ranging in size from 18 to 24 miles discovered in 2002', 21, 2002, 8);
INSERT INTO public.moon VALUES (100, 'Neso', 'Very little is known about Neso, another of the extremely distant irregular moons of Neptune', 30, 2002, 8);
INSERT INTO public.moon VALUES (101, 'Hippocamp', 'Is unusually close to a much larger Neptunian moon called Proteus', 17.4, 2013, 8);
INSERT INTO public.moon VALUES (102, 'Charon', 'Was discovered in 1978 when astronomer James Christy noticed images of Pluto were strangely elongated', 606, 1978, 9);
INSERT INTO public.moon VALUES (103, 'Nix', 'Is the inner of the two moons discovered orbiting Pluto in 2005', 22.5, 2005, 9);
INSERT INTO public.moon VALUES (104, 'Hydra', 'Is the outer of the two moons discovered orbiting Pluto in 2005', 27.5, 2005, 9);
INSERT INTO public.moon VALUES (105, 'Kerberos', 'The tiny moon of Pluto Kerberos appears to be smaller than scientists expected and has a highly-reflective surface, counter to predictions prior to the July 2015 flyby of the New Horizons spacecraft of NASA', 7, 2011, 9);
INSERT INTO public.moon VALUES (106, 'Styx', 'The tiny moon of Pluto Styx was uncovered in a Hubble survey searching for potential hazards in advance of the July 2015 New Horizons spacecraft Pluto flyby', 5.5, 2012, 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'The smallest planet in our solar system and the closest to the Sun is only slightly larger than the Moon of the Earth. Mercury is the fastest planet, zipping around the Sun every 88 Earth days.', false, true, 'First planet type', 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Spins slowly in the opposite direction from most planets. A thick atmosphere traps heat in a runaway greenhouse effect, making it the hottest planet in our solar system.', false, true, 'Second planet type', 2);
INSERT INTO public.planet VALUES (3, 'Earth', 'Our home planet is the only place we know of so far that is inhabited by living things. It is also the only planet in our solar system with liquid water on the surface.', true, true, 'Third planet type', 3);
INSERT INTO public.planet VALUES (4, 'Mars', 'Is a dusty, cold, desert world with a very thin atmosphere. There is strong evidence Mars was billions of years ago wetter and warmer, with a thicker atmosphere.', false, true, 'Fourth planet type', 4);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Is more than twice as massive than the other planets of our solar system combined. The giant Great Red spot of the planet is a centuries old storm bigger than Earth.', false, true, 'Fifth planet type', 5);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Adorned with a dazzling, complex system of icy rings, Saturn is unique in our solar system. The other giant planets have rings, but none are as spectacular as the rings of Saturn.', false, true, 'Sixth planet type', 6);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Seventh planet from the Sun rotates at a nearly 90-degree angle from the plane of its orbit. This unique tilt makes Uranus appear to spin on its side.', false, true, 'Seventh planet type', 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'The eighth and most distant major planet orbiting our Sun is dark, cold and whipped by supersonic winds. It was the first planet located through mathematical calculations.', false, true, 'Eighth planet type', 2);
INSERT INTO public.planet VALUES (9, 'Pluto', 'Is a complex world of ice mountains and frozen plains. Once considered the ninth planet, Pluto is the best known of a new class of worlds called dwarf planets.', false, true, 'Ninth planet type', 3);
INSERT INTO public.planet VALUES (10, 'Ceres', 'Makes up almost a third of the total mass of the belt of the asteroid, but it is still far smaller than the Moon of the Earth. Ceres is heavily cratered with large amounts of ice underground.', false, true, 'Tenth planet type', 4);
INSERT INTO public.planet VALUES (11, 'Makemake', 'Is located in the Kuiper Belt, a donut-shaped region of icy bodies beyond the orbit of Neptune. Slightly smaller than Pluto, Makemake is the second-brightest object in the Kuiper Belt as seen from Earth. It takes about 305 Earth years for this dwarf planet to make one trip around the Sun.', false, false, 'Eleventh planet type', 5);
INSERT INTO public.planet VALUES (12, 'Haumea', 'Is roughly the same size as Pluto. It is one of the fastest rotating large objects in our solar system. The fast spin distorts the shape of Haumea, making this dwarf planet look like a football.', false, false, 'Twelvth planet type', 6);
INSERT INTO public.planet VALUES (13, 'Eris', 'Is one of the largest known dwarf planets in our solar system. It is about the same size as Pluto but is three times farther from the Sun.', false, false, 'Thirteenth planet type', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'First star', 'This is the first star', 1, 'First constellation', 1);
INSERT INTO public.star VALUES (2, 'Second star', 'This is the second star', 2, 'Second constellation', 2);
INSERT INTO public.star VALUES (3, 'Third star', 'This is the third star', 3, 'Third constellation', 3);
INSERT INTO public.star VALUES (4, 'Fourth star', 'This is the fourth star', 4, 'Fourth constellation', 4);
INSERT INTO public.star VALUES (5, 'Fifth star', 'This is the fifth star', 5, 'Fifth constellation', 5);
INSERT INTO public.star VALUES (6, 'Sixth star', 'This is the sixth star', 6, 'Sixth constellation', 6);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 106, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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

