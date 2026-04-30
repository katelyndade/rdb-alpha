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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    games_played integer DEFAULT 0 NOT NULL,
    best_game integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (151, 'user_1777527406040', 0, 0);
INSERT INTO public.users VALUES (152, 'user_1777527406039', 0, 0);
INSERT INTO public.users VALUES (153, 'user_1777527454932', 0, 0);
INSERT INTO public.users VALUES (154, 'user_1777527454931', 0, 0);
INSERT INTO public.users VALUES (155, 'Katelyn', 0, 0);
INSERT INTO public.users VALUES (156, 'user_1777527521300', 0, 0);
INSERT INTO public.users VALUES (157, 'user_1777527521299', 0, 0);
INSERT INTO public.users VALUES (158, 'user_1777527559532', 0, 0);
INSERT INTO public.users VALUES (159, 'user_1777527559531', 0, 0);
INSERT INTO public.users VALUES (160, 'user_1777527581526', 0, 0);
INSERT INTO public.users VALUES (161, 'user_1777527581525', 0, 0);
INSERT INTO public.users VALUES (162, 'user_1777527619763', 0, 0);
INSERT INTO public.users VALUES (163, 'user_1777527619762', 0, 0);
INSERT INTO public.users VALUES (164, 'user_1777527634214', 0, 0);
INSERT INTO public.users VALUES (165, 'user_1777527634213', 0, 0);
INSERT INTO public.users VALUES (166, 'user_1777527646248', 0, 0);
INSERT INTO public.users VALUES (167, 'user_1777527646247', 0, 0);
INSERT INTO public.users VALUES (168, 'user_1777527659551', 0, 0);
INSERT INTO public.users VALUES (169, 'user_1777527659550', 0, 0);
INSERT INTO public.users VALUES (170, 'user_1777527667457', 0, 0);
INSERT INTO public.users VALUES (171, 'user_1777527667456', 0, 0);
INSERT INTO public.users VALUES (172, 'user_1777527673541', 0, 0);
INSERT INTO public.users VALUES (173, 'user_1777527673540', 0, 0);
INSERT INTO public.users VALUES (174, 'user_1777527678881', 0, 0);
INSERT INTO public.users VALUES (175, 'user_1777527678880', 0, 0);
INSERT INTO public.users VALUES (176, 'user_1777527702411', 0, 0);
INSERT INTO public.users VALUES (177, 'user_1777527702410', 0, 0);
INSERT INTO public.users VALUES (178, 'user_1777527737221', 0, 0);
INSERT INTO public.users VALUES (179, 'user_1777527737220', 0, 0);
INSERT INTO public.users VALUES (180, 'user_1777527744208', 0, 0);
INSERT INTO public.users VALUES (181, 'user_1777527744207', 0, 0);
INSERT INTO public.users VALUES (182, 'user_1777527749482', 0, 0);
INSERT INTO public.users VALUES (183, 'user_1777527749481', 0, 0);
INSERT INTO public.users VALUES (184, 'user_1777527891877', 0, 0);
INSERT INTO public.users VALUES (185, 'user_1777527891876', 0, 0);
INSERT INTO public.users VALUES (186, 'user_1777527901414', 0, 0);
INSERT INTO public.users VALUES (187, 'user_1777527901413', 0, 0);
INSERT INTO public.users VALUES (188, 'user_1777527908156', 0, 0);
INSERT INTO public.users VALUES (189, 'user_1777527908155', 0, 0);
INSERT INTO public.users VALUES (190, 'user_1777527913888', 0, 0);
INSERT INTO public.users VALUES (191, 'user_1777527913887', 0, 0);
INSERT INTO public.users VALUES (192, 'user_1777528032795', 0, 0);
INSERT INTO public.users VALUES (193, 'user_1777528032794', 0, 0);
INSERT INTO public.users VALUES (194, 'user_1777528038372', 0, 0);
INSERT INTO public.users VALUES (195, 'user_1777528038371', 0, 0);
INSERT INTO public.users VALUES (196, 'user_1777528043445', 0, 0);
INSERT INTO public.users VALUES (197, 'user_1777528043444', 0, 0);
INSERT INTO public.users VALUES (198, 'user_1777528059560', 0, 0);
INSERT INTO public.users VALUES (199, 'user_1777528059559', 0, 0);
INSERT INTO public.users VALUES (200, 'user_1777528097824', 0, 0);
INSERT INTO public.users VALUES (201, 'user_1777528097823', 0, 0);
INSERT INTO public.users VALUES (202, 'user_1777528108824', 0, 0);
INSERT INTO public.users VALUES (203, 'user_1777528108823', 0, 0);
INSERT INTO public.users VALUES (204, 'user_1777528297467', 0, 0);
INSERT INTO public.users VALUES (205, 'user_1777528297466', 0, 0);
INSERT INTO public.users VALUES (206, 'user_1777528312773', 0, 0);
INSERT INTO public.users VALUES (207, 'user_1777528312772', 0, 0);
INSERT INTO public.users VALUES (208, 'user_1777528319376', 0, 0);
INSERT INTO public.users VALUES (209, 'user_1777528319375', 0, 0);
INSERT INTO public.users VALUES (210, 'user_1777528377371', 0, 0);
INSERT INTO public.users VALUES (211, 'user_1777528377370', 0, 0);
INSERT INTO public.users VALUES (212, 'user_1777528382254', 0, 0);
INSERT INTO public.users VALUES (213, 'user_1777528382253', 0, 0);
INSERT INTO public.users VALUES (214, 'user_1777528388071', 0, 0);
INSERT INTO public.users VALUES (215, 'user_1777528388070', 0, 0);
INSERT INTO public.users VALUES (216, 'user_1777528457611', 0, 0);
INSERT INTO public.users VALUES (217, 'user_1777528457610', 0, 0);
INSERT INTO public.users VALUES (218, 'user_1777528467664', 0, 0);
INSERT INTO public.users VALUES (219, 'user_1777528467663', 0, 0);
INSERT INTO public.users VALUES (220, 'user_1777528492983', 0, 0);
INSERT INTO public.users VALUES (221, 'user_1777528492982', 0, 0);
INSERT INTO public.users VALUES (222, 'user_1777528498044', 0, 0);
INSERT INTO public.users VALUES (223, 'user_1777528498043', 0, 0);
INSERT INTO public.users VALUES (232, 'user_1777528812402', 5, 209);
INSERT INTO public.users VALUES (225, 'user_1777528620469', 2, 0);
INSERT INTO public.users VALUES (224, 'user_1777528620470', 5, 0);
INSERT INTO public.users VALUES (227, 'user_1777528628027', 2, 0);
INSERT INTO public.users VALUES (226, 'user_1777528628028', 5, 0);
INSERT INTO public.users VALUES (229, 'user_1777528664398', 2, 0);
INSERT INTO public.users VALUES (228, 'user_1777528664399', 5, 0);
INSERT INTO public.users VALUES (231, 'user_1777528760906', 2, 39);
INSERT INTO public.users VALUES (230, 'user_1777528760907', 5, 189);
INSERT INTO public.users VALUES (233, 'user_1777528812401', 2, 382);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 233, true);


--
-- Name: users pk_users; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT pk_users PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--

