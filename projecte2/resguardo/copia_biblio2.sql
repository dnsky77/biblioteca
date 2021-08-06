--
-- PostgreSQL database dump
--

-- Dumped from database version 13.3
-- Dumped by pg_dump version 13.3

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

--
-- Name: pg_trgm; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA public;


--
-- Name: EXTENSION pg_trgm; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_trgm IS 'text similarity measurement and index searching based on trigrams';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: andreu
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO andreu;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: andreu
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO andreu;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: andreu
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: andreu
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO andreu;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: andreu
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO andreu;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: andreu
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: andreu
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO andreu;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: andreu
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO andreu;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: andreu
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: andreu
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO andreu;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: andreu
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO andreu;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: andreu
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO andreu;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: andreu
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: andreu
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO andreu;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: andreu
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: andreu
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO andreu;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: andreu
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO andreu;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: andreu
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: autor_autor; Type: TABLE; Schema: public; Owner: andreu
--

CREATE TABLE public.autor_autor (
    id bigint NOT NULL,
    nombres character varying(50) NOT NULL,
    apellidos character varying(50) NOT NULL,
    nacionalidad character varying(30) NOT NULL,
    edad integer NOT NULL,
    CONSTRAINT autor_autor_edad_check CHECK ((edad >= 0))
);


ALTER TABLE public.autor_autor OWNER TO andreu;

--
-- Name: autor_autor_id_seq; Type: SEQUENCE; Schema: public; Owner: andreu
--

CREATE SEQUENCE public.autor_autor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.autor_autor_id_seq OWNER TO andreu;

--
-- Name: autor_autor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: andreu
--

ALTER SEQUENCE public.autor_autor_id_seq OWNED BY public.autor_autor.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: andreu
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO andreu;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: andreu
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO andreu;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: andreu
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: andreu
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO andreu;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: andreu
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO andreu;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: andreu
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: andreu
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO andreu;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: andreu
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO andreu;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: andreu
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: andreu
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO andreu;

--
-- Name: home_empleados; Type: TABLE; Schema: public; Owner: andreu
--

CREATE TABLE public.home_empleados (
    persona_ptr_id bigint NOT NULL,
    empleo character varying(50) NOT NULL
);


ALTER TABLE public.home_empleados OWNER TO andreu;

--
-- Name: lector_lector; Type: TABLE; Schema: public; Owner: andreu
--

CREATE TABLE public.lector_lector (
    id bigint NOT NULL,
    nombres character varying(50) NOT NULL,
    apellidos character varying(50) NOT NULL,
    nacionalidad character varying(30) NOT NULL,
    edad integer NOT NULL,
    CONSTRAINT lector_lector_edad_check CHECK ((edad >= 0))
);


ALTER TABLE public.lector_lector OWNER TO andreu;

--
-- Name: lector_lector_id_seq; Type: SEQUENCE; Schema: public; Owner: andreu
--

CREATE SEQUENCE public.lector_lector_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lector_lector_id_seq OWNER TO andreu;

--
-- Name: lector_lector_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: andreu
--

ALTER SEQUENCE public.lector_lector_id_seq OWNED BY public.lector_lector.id;


--
-- Name: lector_prestamo; Type: TABLE; Schema: public; Owner: andreu
--

CREATE TABLE public.lector_prestamo (
    id bigint NOT NULL,
    fecha_prestamo date NOT NULL,
    fecha_devolucion date,
    devuelto boolean NOT NULL,
    lector_id bigint NOT NULL,
    libro_id bigint NOT NULL
);


ALTER TABLE public.lector_prestamo OWNER TO andreu;

--
-- Name: lector_prestamo_id_seq; Type: SEQUENCE; Schema: public; Owner: andreu
--

CREATE SEQUENCE public.lector_prestamo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lector_prestamo_id_seq OWNER TO andreu;

--
-- Name: lector_prestamo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: andreu
--

ALTER SEQUENCE public.lector_prestamo_id_seq OWNED BY public.lector_prestamo.id;


--
-- Name: libro_categoria; Type: TABLE; Schema: public; Owner: andreu
--

CREATE TABLE public.libro_categoria (
    id bigint NOT NULL,
    nombre character varying(30) NOT NULL
);


ALTER TABLE public.libro_categoria OWNER TO andreu;

--
-- Name: libro_categoria_id_seq; Type: SEQUENCE; Schema: public; Owner: andreu
--

CREATE SEQUENCE public.libro_categoria_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.libro_categoria_id_seq OWNER TO andreu;

--
-- Name: libro_categoria_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: andreu
--

ALTER SEQUENCE public.libro_categoria_id_seq OWNED BY public.libro_categoria.id;


--
-- Name: libro_libro; Type: TABLE; Schema: public; Owner: andreu
--

CREATE TABLE public.libro_libro (
    id bigint NOT NULL,
    titulo character varying(50) NOT NULL,
    fecha date NOT NULL,
    portada character varying(100),
    visitas integer NOT NULL,
    categoria_id bigint NOT NULL,
    CONSTRAINT libro_libro_visitas_check CHECK ((visitas >= 0))
);


ALTER TABLE public.libro_libro OWNER TO andreu;

--
-- Name: libro_libro_autores; Type: TABLE; Schema: public; Owner: andreu
--

CREATE TABLE public.libro_libro_autores (
    id bigint NOT NULL,
    libro_id bigint NOT NULL,
    autor_id bigint NOT NULL
);


ALTER TABLE public.libro_libro_autores OWNER TO andreu;

--
-- Name: libro_libro_autores_id_seq; Type: SEQUENCE; Schema: public; Owner: andreu
--

CREATE SEQUENCE public.libro_libro_autores_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.libro_libro_autores_id_seq OWNER TO andreu;

--
-- Name: libro_libro_autores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: andreu
--

ALTER SEQUENCE public.libro_libro_autores_id_seq OWNED BY public.libro_libro_autores.id;


--
-- Name: libro_libro_id_seq; Type: SEQUENCE; Schema: public; Owner: andreu
--

CREATE SEQUENCE public.libro_libro_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.libro_libro_id_seq OWNER TO andreu;

--
-- Name: libro_libro_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: andreu
--

ALTER SEQUENCE public.libro_libro_id_seq OWNED BY public.libro_libro.id;


--
-- Name: persona; Type: TABLE; Schema: public; Owner: andreu
--

CREATE TABLE public.persona (
    id bigint NOT NULL,
    full_name character varying(50) NOT NULL,
    pais character varying(30) NOT NULL,
    pasaporte character varying(50) NOT NULL,
    edad integer NOT NULL,
    apelativo character varying(10) NOT NULL,
    CONSTRAINT edad_mayor_18 CHECK ((edad >= 18))
);


ALTER TABLE public.persona OWNER TO andreu;

--
-- Name: persona_id_seq; Type: SEQUENCE; Schema: public; Owner: andreu
--

CREATE SEQUENCE public.persona_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.persona_id_seq OWNER TO andreu;

--
-- Name: persona_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: andreu
--

ALTER SEQUENCE public.persona_id_seq OWNED BY public.persona.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: andreu
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: andreu
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: andreu
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: andreu
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: andreu
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: andreu
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: autor_autor id; Type: DEFAULT; Schema: public; Owner: andreu
--

ALTER TABLE ONLY public.autor_autor ALTER COLUMN id SET DEFAULT nextval('public.autor_autor_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: andreu
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: andreu
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: andreu
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: lector_lector id; Type: DEFAULT; Schema: public; Owner: andreu
--

ALTER TABLE ONLY public.lector_lector ALTER COLUMN id SET DEFAULT nextval('public.lector_lector_id_seq'::regclass);


--
-- Name: lector_prestamo id; Type: DEFAULT; Schema: public; Owner: andreu
--

ALTER TABLE ONLY public.lector_prestamo ALTER COLUMN id SET DEFAULT nextval('public.lector_prestamo_id_seq'::regclass);


--
-- Name: libro_categoria id; Type: DEFAULT; Schema: public; Owner: andreu
--

ALTER TABLE ONLY public.libro_categoria ALTER COLUMN id SET DEFAULT nextval('public.libro_categoria_id_seq'::regclass);


--
-- Name: libro_libro id; Type: DEFAULT; Schema: public; Owner: andreu
--

ALTER TABLE ONLY public.libro_libro ALTER COLUMN id SET DEFAULT nextval('public.libro_libro_id_seq'::regclass);


--
-- Name: libro_libro_autores id; Type: DEFAULT; Schema: public; Owner: andreu
--

ALTER TABLE ONLY public.libro_libro_autores ALTER COLUMN id SET DEFAULT nextval('public.libro_libro_autores_id_seq'::regclass);


--
-- Name: persona id; Type: DEFAULT; Schema: public; Owner: andreu
--

ALTER TABLE ONLY public.persona ALTER COLUMN id SET DEFAULT nextval('public.persona_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: andreu
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: andreu
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: andreu
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add autor	7	add_autor
26	Can change autor	7	change_autor
27	Can delete autor	7	delete_autor
28	Can view autor	7	view_autor
29	Can add categoria	8	add_categoria
30	Can change categoria	8	change_categoria
31	Can delete categoria	8	delete_categoria
32	Can view categoria	8	view_categoria
33	Can add libro	9	add_libro
34	Can change libro	9	change_libro
35	Can delete libro	9	delete_libro
36	Can view libro	9	view_libro
37	Can add prestamo	10	add_prestamo
38	Can change prestamo	10	change_prestamo
39	Can delete prestamo	10	delete_prestamo
40	Can view prestamo	10	view_prestamo
41	Can add lector	11	add_lector
42	Can change lector	11	change_lector
43	Can delete lector	11	delete_lector
44	Can view lector	11	view_lector
45	Can add Persona	12	add_persona
46	Can change Persona	12	change_persona
47	Can delete Persona	12	delete_persona
48	Can view Persona	12	view_persona
49	Can add empleados	13	add_empleados
50	Can change empleados	13	change_empleados
51	Can delete empleados	13	delete_empleados
52	Can view empleados	13	view_empleados
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: andreu
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$260000$z4anA2rxNfHuR6ij2fAZAL$2fDfLWuF392fVP05v15BC967H4a9jtqPIbwGrkeqqGg=	2021-07-31 12:16:53.413974+02	t	andreu			andrew_vab@hotmail.com	t	t	2021-07-30 20:11:24.056574+02
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: andreu
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: andreu
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: autor_autor; Type: TABLE DATA; Schema: public; Owner: andreu
--

COPY public.autor_autor (id, nombres, apellidos, nacionalidad, edad) FROM stdin;
1	Andreu	Anglada	España	28
2	Ana	Pons	España	34
3	Sion	Torres	Española	58
4	Andrew	AngladaPons	España	60
5	Josep	Salord	España	27
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: andreu
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2021-07-31 12:17:11.430846+02	1	Andreu-Anglada	1	[{"added": {}}]	7	1
2	2021-07-31 12:17:22.092738+02	2	Ana-Pons	1	[{"added": {}}]	7	1
3	2021-07-31 12:17:42.557882+02	3	Sion-Torres	1	[{"added": {}}]	7	1
4	2021-07-31 12:18:03.602063+02	4	Andrew-AngladaPons	1	[{"added": {}}]	7	1
5	2021-07-31 12:18:16.357887+02	5	Josep-Salord	1	[{"added": {}}]	7	1
6	2021-07-31 13:44:46.286204+02	1	Drama	1	[{"added": {}}]	8	1
7	2021-07-31 13:44:51.226889+02	2	Suspense	1	[{"added": {}}]	8	1
8	2021-07-31 13:44:56.956433+02	3	Intriga	1	[{"added": {}}]	8	1
9	2021-07-31 13:45:21.962016+02	3	Titulo 1	1	[{"added": {}}]	9	1
10	2021-07-31 13:46:32.08929+02	4	Titulo 2	1	[{"added": {}}]	9	1
11	2021-07-31 13:46:48.094383+02	5	Titulo 3	1	[{"added": {}}]	9	1
12	2021-08-02 19:19:32.730736+02	6	Titulo 4	1	[{"added": {}}]	9	1
13	2021-08-02 19:19:48.008243+02	7	Titulo 5	1	[{"added": {}}]	9	1
14	2021-08-02 19:20:03.754301+02	8	Titulo 6	1	[{"added": {}}]	9	1
15	2021-08-02 19:20:19.191793+02	4	4 - Informatica	1	[{"added": {}}]	8	1
16	2021-08-02 19:20:23.767728+02	5	5 - Novela	1	[{"added": {}}]	8	1
17	2021-08-02 19:20:27.732015+02	6	6 - Fantasia	1	[{"added": {}}]	8	1
18	2021-08-02 19:45:50.645659+02	9	Netflix2	1	[{"added": {}}]	9	1
19	2021-08-02 19:46:10.500867+02	10	Titulo suspense	1	[{"added": {}}]	9	1
20	2021-08-02 19:58:23.263918+02	10	10 - Titulo suspense	2	[{"changed": {"fields": ["Autores"]}}]	9	1
21	2021-08-02 20:51:16.560306+02	1	Juan	1	[{"added": {}}]	11	1
22	2021-08-02 20:51:29.977703+02	2	Maria	1	[{"added": {}}]	11	1
23	2021-08-02 20:52:07.600383+02	3	Karina	1	[{"added": {}}]	11	1
24	2021-08-02 20:52:26.065305+02	4	Tania	1	[{"added": {}}]	11	1
25	2021-08-02 20:52:45.506176+02	1	Netflix2	1	[{"added": {}}]	10	1
26	2021-08-02 20:53:03.999956+02	2	Titulo 4	1	[{"added": {}}]	10	1
27	2021-08-02 20:53:22.863425+02	3	Titulo suspense	1	[{"added": {}}]	10	1
28	2021-08-02 20:54:25.537399+02	4	Netflix2	1	[{"added": {}}]	10	1
29	2021-08-02 21:08:40.865341+02	5	5-Titulo suspense	1	[{"added": {}}]	10	1
30	2021-08-04 20:03:45.630816+02	6	6-Titulo 2	1	[{"added": {}}]	10	1
31	2021-08-04 20:04:09.292703+02	7	7-Titulo 2	1	[{"added": {}}]	10	1
32	2021-08-04 20:04:41.538568+02	8	8-Titulo 4	1	[{"added": {}}]	10	1
33	2021-08-05 19:40:01.312714+02	1	Juana	1	[{"added": {}}]	12	1
34	2021-08-05 19:40:35.97329+02	3	JuanPErez	1	[{"added": {}}]	12	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: andreu
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	autor	autor
8	libro	categoria
9	libro	libro
10	lector	prestamo
11	lector	lector
12	home	persona
13	home	empleados
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: andreu
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-07-30 20:10:27.939215+02
2	auth	0001_initial	2021-07-30 20:10:28.019191+02
3	admin	0001_initial	2021-07-30 20:10:28.041182+02
4	admin	0002_logentry_remove_auto_add	2021-07-30 20:10:28.051183+02
5	admin	0003_logentry_add_action_flag_choices	2021-07-30 20:10:28.057176+02
6	contenttypes	0002_remove_content_type_name	2021-07-30 20:10:28.072172+02
7	auth	0002_alter_permission_name_max_length	2021-07-30 20:10:28.080169+02
8	auth	0003_alter_user_email_max_length	2021-07-30 20:10:28.087167+02
9	auth	0004_alter_user_username_opts	2021-07-30 20:10:28.094172+02
10	auth	0005_alter_user_last_login_null	2021-07-30 20:10:28.101163+02
11	auth	0006_require_contenttypes_0002	2021-07-30 20:10:28.103172+02
12	auth	0007_alter_validators_add_error_messages	2021-07-30 20:10:28.110161+02
13	auth	0008_alter_user_username_max_length	2021-07-30 20:10:28.127155+02
14	auth	0009_alter_user_last_name_max_length	2021-07-30 20:10:28.137151+02
15	auth	0010_alter_group_name_max_length	2021-07-30 20:10:28.145149+02
16	auth	0011_update_proxy_permissions	2021-07-30 20:10:28.152146+02
17	auth	0012_alter_user_first_name_max_length	2021-07-30 20:10:28.158144+02
18	sessions	0001_initial	2021-07-30 20:10:28.173139+02
19	autor	0001_initial	2021-07-31 11:43:40.401748+02
20	libro	0001_initial	2021-07-31 11:43:40.436333+02
21	lector	0001_initial	2021-07-31 11:43:40.459326+02
22	libro	0002_alter_libro_portada	2021-07-31 13:50:08.735521+02
23	libro	0003_alter_libro_categoria	2021-08-02 19:34:04.629593+02
24	lector	0002_alter_prestamo_libro	2021-08-02 20:44:36.953751+02
25	home	0001_initial	2021-08-05 19:33:33.558734+02
26	lector	0003_auto_20210805_1933	2021-08-05 19:33:33.565732+02
27	libro	0004_alter_libro_options	2021-08-05 19:33:33.57073+02
28	home	0002_auto_20210805_1937	2021-08-05 19:37:14.495246+02
29	home	0003_alter_persona_apelativo	2021-08-05 19:39:08.031067+02
30	home	0004_empleados	2021-08-05 19:46:01.245571+02
31	autor	0002_rename_nombre_autor_nombres	2021-08-05 19:55:45.091163+02
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: andreu
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
tbvgvph0pgft80ay0d452ym9odj5am8n	.eJxVjDsOwjAQBe_iGlk2618o6TmDtV6vSQDZUpxUiLuTSCmgfTPz3iLiuoxx7TzHKYuL0OL0uyWkJ9cd5AfWe5PU6jJPSe6KPGiXt5b5dT3cv4MR-7jV5CGDZ3RKAQcFAQx5M-TBGbaGwVoo-qw2kog4BDVYTUhOM6SCRYvPF8INN20:1m9m33:ZhZEDdTWFipk4o5IiOxLwUpbZgV2jR2nf9WKrQiQJmk	2021-08-14 12:16:53.414986+02
\.


--
-- Data for Name: home_empleados; Type: TABLE DATA; Schema: public; Owner: andreu
--

COPY public.home_empleados (persona_ptr_id, empleo) FROM stdin;
\.


--
-- Data for Name: lector_lector; Type: TABLE DATA; Schema: public; Owner: andreu
--

COPY public.lector_lector (id, nombres, apellidos, nacionalidad, edad) FROM stdin;
1	Juan	Carlos	Española	28
2	Maria	Antonia	Colombia	64
3	Karina	Mendoza	Ecuatoriana	45
4	Tania	Juan	Inglaterra	24
\.


--
-- Data for Name: lector_prestamo; Type: TABLE DATA; Schema: public; Owner: andreu
--

COPY public.lector_prestamo (id, fecha_prestamo, fecha_devolucion, devuelto, lector_id, libro_id) FROM stdin;
1	2021-02-23	2021-08-02	t	1	9
2	2021-08-02	\N	f	3	6
3	2021-02-22	2021-08-01	t	2	10
4	2021-08-02	\N	f	4	9
5	2020-09-14	2021-06-15	t	1	10
6	2021-08-24	2021-08-04	t	1	4
7	2021-04-19	2021-08-04	t	2	4
8	2021-04-20	2021-08-04	t	4	6
\.


--
-- Data for Name: libro_categoria; Type: TABLE DATA; Schema: public; Owner: andreu
--

COPY public.libro_categoria (id, nombre) FROM stdin;
1	Drama
2	Suspense
3	Intriga
4	Informatica
5	Novela
6	Fantasia
\.


--
-- Data for Name: libro_libro; Type: TABLE DATA; Schema: public; Owner: andreu
--

COPY public.libro_libro (id, titulo, fecha, portada, visitas, categoria_id) FROM stdin;
3	Titulo 1	2000-01-12		3	1
4	Titulo 2	2021-07-12		4	3
5	Titulo 3	2021-07-31		5	3
6	Titulo 4	2021-07-13		5	1
7	Titulo 5	2021-08-22		4	2
8	Titulo 6	2021-08-02		4	3
9	Netflix2	2021-08-01		4	4
10	Titulo suspense	2021-08-02		3	5
\.


--
-- Data for Name: libro_libro_autores; Type: TABLE DATA; Schema: public; Owner: andreu
--

COPY public.libro_libro_autores (id, libro_id, autor_id) FROM stdin;
1	3	1
2	4	4
3	5	2
4	6	5
5	7	3
6	8	2
7	9	2
8	10	2
9	10	1
10	10	3
\.


--
-- Data for Name: persona; Type: TABLE DATA; Schema: public; Owner: andreu
--

COPY public.persona (id, full_name, pais, pasaporte, edad, apelativo) FROM stdin;
1	Juana	Peru	123214141	33	Juanita
3	JuanPErez	España	12314512412	20	Perez
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: andreu
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: andreu
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: andreu
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: andreu
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: andreu
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: andreu
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: autor_autor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: andreu
--

SELECT pg_catalog.setval('public.autor_autor_id_seq', 5, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: andreu
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 34, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: andreu
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: andreu
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 31, true);


--
-- Name: lector_lector_id_seq; Type: SEQUENCE SET; Schema: public; Owner: andreu
--

SELECT pg_catalog.setval('public.lector_lector_id_seq', 4, true);


--
-- Name: lector_prestamo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: andreu
--

SELECT pg_catalog.setval('public.lector_prestamo_id_seq', 8, true);


--
-- Name: libro_categoria_id_seq; Type: SEQUENCE SET; Schema: public; Owner: andreu
--

SELECT pg_catalog.setval('public.libro_categoria_id_seq', 6, true);


--
-- Name: libro_libro_autores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: andreu
--

SELECT pg_catalog.setval('public.libro_libro_autores_id_seq', 10, true);


--
-- Name: libro_libro_id_seq; Type: SEQUENCE SET; Schema: public; Owner: andreu
--

SELECT pg_catalog.setval('public.libro_libro_id_seq', 10, true);


--
-- Name: persona_id_seq; Type: SEQUENCE SET; Schema: public; Owner: andreu
--

SELECT pg_catalog.setval('public.persona_id_seq', 3, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: andreu
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: andreu
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: andreu
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: andreu
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: andreu
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: andreu
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: andreu
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: andreu
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: andreu
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: andreu
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: andreu
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: andreu
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: autor_autor autor_autor_pkey; Type: CONSTRAINT; Schema: public; Owner: andreu
--

ALTER TABLE ONLY public.autor_autor
    ADD CONSTRAINT autor_autor_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: andreu
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: andreu
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: andreu
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: andreu
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: andreu
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: home_empleados home_empleados_pkey; Type: CONSTRAINT; Schema: public; Owner: andreu
--

ALTER TABLE ONLY public.home_empleados
    ADD CONSTRAINT home_empleados_pkey PRIMARY KEY (persona_ptr_id);


--
-- Name: lector_lector lector_lector_pkey; Type: CONSTRAINT; Schema: public; Owner: andreu
--

ALTER TABLE ONLY public.lector_lector
    ADD CONSTRAINT lector_lector_pkey PRIMARY KEY (id);


--
-- Name: lector_prestamo lector_prestamo_pkey; Type: CONSTRAINT; Schema: public; Owner: andreu
--

ALTER TABLE ONLY public.lector_prestamo
    ADD CONSTRAINT lector_prestamo_pkey PRIMARY KEY (id);


--
-- Name: libro_categoria libro_categoria_pkey; Type: CONSTRAINT; Schema: public; Owner: andreu
--

ALTER TABLE ONLY public.libro_categoria
    ADD CONSTRAINT libro_categoria_pkey PRIMARY KEY (id);


--
-- Name: libro_libro_autores libro_libro_autores_libro_id_autor_id_be0815cf_uniq; Type: CONSTRAINT; Schema: public; Owner: andreu
--

ALTER TABLE ONLY public.libro_libro_autores
    ADD CONSTRAINT libro_libro_autores_libro_id_autor_id_be0815cf_uniq UNIQUE (libro_id, autor_id);


--
-- Name: libro_libro_autores libro_libro_autores_pkey; Type: CONSTRAINT; Schema: public; Owner: andreu
--

ALTER TABLE ONLY public.libro_libro_autores
    ADD CONSTRAINT libro_libro_autores_pkey PRIMARY KEY (id);


--
-- Name: libro_libro libro_libro_pkey; Type: CONSTRAINT; Schema: public; Owner: andreu
--

ALTER TABLE ONLY public.libro_libro
    ADD CONSTRAINT libro_libro_pkey PRIMARY KEY (id);


--
-- Name: persona persona_pais_apelativo_9d282f00_uniq; Type: CONSTRAINT; Schema: public; Owner: andreu
--

ALTER TABLE ONLY public.persona
    ADD CONSTRAINT persona_pais_apelativo_9d282f00_uniq UNIQUE (pais, apelativo);


--
-- Name: persona persona_pkey; Type: CONSTRAINT; Schema: public; Owner: andreu
--

ALTER TABLE ONLY public.persona
    ADD CONSTRAINT persona_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: andreu
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: andreu
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: andreu
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: andreu
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: andreu
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: andreu
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: andreu
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: andreu
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: andreu
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: andreu
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: andreu
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: andreu
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: andreu
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: lector_prestamo_lector_id_a0108599; Type: INDEX; Schema: public; Owner: andreu
--

CREATE INDEX lector_prestamo_lector_id_a0108599 ON public.lector_prestamo USING btree (lector_id);


--
-- Name: lector_prestamo_libro_id_c94b640a; Type: INDEX; Schema: public; Owner: andreu
--

CREATE INDEX lector_prestamo_libro_id_c94b640a ON public.lector_prestamo USING btree (libro_id);


--
-- Name: libro_libro_autores_autor_id_75c78bd2; Type: INDEX; Schema: public; Owner: andreu
--

CREATE INDEX libro_libro_autores_autor_id_75c78bd2 ON public.libro_libro_autores USING btree (autor_id);


--
-- Name: libro_libro_autores_libro_id_f32f518c; Type: INDEX; Schema: public; Owner: andreu
--

CREATE INDEX libro_libro_autores_libro_id_f32f518c ON public.libro_libro_autores USING btree (libro_id);


--
-- Name: libro_libro_categoria_id_5981495f; Type: INDEX; Schema: public; Owner: andreu
--

CREATE INDEX libro_libro_categoria_id_5981495f ON public.libro_libro USING btree (categoria_id);


--
-- Name: libro_titulo_idx; Type: INDEX; Schema: public; Owner: andreu
--

CREATE INDEX libro_titulo_idx ON public.libro_libro USING gin (titulo public.gin_trgm_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: andreu
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: andreu
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: andreu
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: andreu
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: andreu
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: andreu
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: andreu
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: andreu
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: andreu
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_empleados home_empleados_persona_ptr_id_27de5a76_fk_persona_id; Type: FK CONSTRAINT; Schema: public; Owner: andreu
--

ALTER TABLE ONLY public.home_empleados
    ADD CONSTRAINT home_empleados_persona_ptr_id_27de5a76_fk_persona_id FOREIGN KEY (persona_ptr_id) REFERENCES public.persona(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: lector_prestamo lector_prestamo_lector_id_a0108599_fk_lector_lector_id; Type: FK CONSTRAINT; Schema: public; Owner: andreu
--

ALTER TABLE ONLY public.lector_prestamo
    ADD CONSTRAINT lector_prestamo_lector_id_a0108599_fk_lector_lector_id FOREIGN KEY (lector_id) REFERENCES public.lector_lector(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: lector_prestamo lector_prestamo_libro_id_c94b640a_fk_libro_libro_id; Type: FK CONSTRAINT; Schema: public; Owner: andreu
--

ALTER TABLE ONLY public.lector_prestamo
    ADD CONSTRAINT lector_prestamo_libro_id_c94b640a_fk_libro_libro_id FOREIGN KEY (libro_id) REFERENCES public.libro_libro(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: libro_libro_autores libro_libro_autores_autor_id_75c78bd2_fk_autor_autor_id; Type: FK CONSTRAINT; Schema: public; Owner: andreu
--

ALTER TABLE ONLY public.libro_libro_autores
    ADD CONSTRAINT libro_libro_autores_autor_id_75c78bd2_fk_autor_autor_id FOREIGN KEY (autor_id) REFERENCES public.autor_autor(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: libro_libro_autores libro_libro_autores_libro_id_f32f518c_fk_libro_libro_id; Type: FK CONSTRAINT; Schema: public; Owner: andreu
--

ALTER TABLE ONLY public.libro_libro_autores
    ADD CONSTRAINT libro_libro_autores_libro_id_f32f518c_fk_libro_libro_id FOREIGN KEY (libro_id) REFERENCES public.libro_libro(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: libro_libro libro_libro_categoria_id_5981495f_fk_libro_categoria_id; Type: FK CONSTRAINT; Schema: public; Owner: andreu
--

ALTER TABLE ONLY public.libro_libro
    ADD CONSTRAINT libro_libro_categoria_id_5981495f_fk_libro_categoria_id FOREIGN KEY (categoria_id) REFERENCES public.libro_categoria(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

