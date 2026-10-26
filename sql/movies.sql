--
-- PostgreSQL database dump
--

\restrict TSHWvl1ejbSjl5Z6ObIzdcxbxeyhQDJhvUWpKXi1Q1zhEkXcBpFPmzhuTzGbb2y

-- Dumped from database version 18.6 (Postgres.app)
-- Dumped by pg_dump version 18.6 (Postgres.app)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: items; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.items (id, title, description, year, rating, director, country, duration, image, category_id) VALUES (1, 'Интерстеллар', 'Группа исследователей отправляется через космическую червоточину, чтобы найти человечеству новый дом.', 2014, 8.7, 'Кристофер Нолан', 'США · Великобритания', '169 минут', 'images/interstellar.jpg', 1);
INSERT INTO public.items (id, title, description, year, rating, director, country, duration, image, category_id) VALUES (2, 'Начало', 'Специалист по проникновению в чужие сны получает задание внедрить идею в сознание человека.', 2010, 8.8, 'Кристофер Нолан', 'США · Великобритания', '148 минут', 'images/inception.jpeg', 1);
INSERT INTO public.items (id, title, description, year, rating, director, country, duration, image, category_id) VALUES (3, 'Побег из Шоушенка', 'Банкир Энди Дюфрейн оказывается в тюрьме, но не теряет надежды и постепенно меняет жизнь окружающих.', 1994, 9.3, 'Фрэнк Дарабонт', 'США', '142 минуты', 'images/shawshank.jpg', 2);
INSERT INTO public.items (id, title, description, year, rating, director, country, duration, image, category_id) VALUES (4, 'Матрица', 'Программист Нео узнаёт, что привычный мир может быть искусственной реальностью.', 1999, 8.7, 'Лана и Лилли Вачовски', 'США', '136 минут', 'images/matrix.jpeg', 1);
INSERT INTO public.items (id, title, description, year, rating, director, country, duration, image, category_id) VALUES (5, 'Парк Юрского периода', 'На удалённом острове учёные создают парк с динозаврами, но технический сбой превращает экскурсию в борьбу за выживание.', 1993, 8.2, 'Стивен Спилберг', 'США', '127 минут', 'images/jurassic.png', 5);
INSERT INTO public.items (id, title, description, year, rating, director, country, duration, image, category_id) VALUES (6, 'Остров проклятых', 'Два федеральных маршала прибывают на остров, чтобы расследовать исчезновение пациентки психиатрической лечебницы.', 2010, 8.2, 'Мартин Скорсезе', 'США', '138 минут', 'images/shutter.png', 3);


--
-- Name: items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.items_id_seq', 8, true);


--
-- PostgreSQL database dump complete
--

\unrestrict TSHWvl1ejbSjl5Z6ObIzdcxbxeyhQDJhvUWpKXi1Q1zhEkXcBpFPmzhuTzGbb2y



