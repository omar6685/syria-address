
--
-- PostgreSQL database dump
--

-- Dumped from database version 14.15 (Ubuntu 14.15-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.15 (Ubuntu 14.15-0ubuntu0.22.04.1)

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
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO postgres;

--
-- Name: countries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.countries (
    id bigint NOT NULL,
    "admin0Name_en" character varying,
    "admin0Name_ar" character varying,
    "admin0Pcode" character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.countries OWNER TO postgres;

--
-- Name: countries_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.countries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.countries_id_seq OWNER TO postgres;

--
-- Name: countries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.countries_id_seq OWNED BY public.countries.id;


--
-- Name: districts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.districts (
    id bigint NOT NULL,
    "admin2Name_en" character varying,
    "admin2Name_ar" character varying,
    "admin2Pcode" character varying,
    province_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.districts OWNER TO postgres;

--
-- Name: districts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.districts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.districts_id_seq OWNER TO postgres;

--
-- Name: districts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.districts_id_seq OWNED BY public.districts.id;


--
-- Name: neighbourhoods; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.neighbourhoods (
    id bigint NOT NULL,
    "admin4Name_en" character varying,
    "admin4Name_ar" character varying,
    "admin4Pcode" character varying,
    subdistrict_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.neighbourhoods OWNER TO postgres;

--
-- Name: neighbourhoods_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.neighbourhoods_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.neighbourhoods_id_seq OWNER TO postgres;

--
-- Name: neighbourhoods_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.neighbourhoods_id_seq OWNED BY public.neighbourhoods.id;


--
-- Name: provinces; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.provinces (
    id bigint NOT NULL,
    "admin1Name_en" character varying,
    "admin1Name_ar" character varying,
    "admin1Pcode" character varying,
    country_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.provinces OWNER TO postgres;

--
-- Name: provinces_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.provinces_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.provinces_id_seq OWNER TO postgres;

--
-- Name: provinces_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.provinces_id_seq OWNED BY public.provinces.id;


--
-- Name: reports; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reports (
    id bigint NOT NULL,
    name character varying,
    sar_id character varying,
    priority_en character varying,
    priority_ar character varying,
    ccontent text,
    neighbourhood_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.reports OWNER TO postgres;

--
-- Name: reports_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reports_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reports_id_seq OWNER TO postgres;

--
-- Name: reports_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reports_id_seq OWNED BY public.reports.id;


--
-- Name: roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.roles (
    id bigint NOT NULL,
    name character varying,
    resource_type character varying,
    resource_id bigint,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.roles OWNER TO postgres;

--
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.roles_id_seq OWNER TO postgres;

--
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO postgres;

--
-- Name: subdistricts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subdistricts (
    id bigint NOT NULL,
    "admin3Name_en" character varying,
    "admin3Name_ar" character varying,
    "admin3Pcode" character varying,
    district_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.subdistricts OWNER TO postgres;

--
-- Name: subdistricts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.subdistricts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.subdistricts_id_seq OWNER TO postgres;

--
-- Name: subdistricts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.subdistricts_id_seq OWNED BY public.subdistricts.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp(6) without time zone,
    remember_created_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: users_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_roles (
    user_id bigint,
    role_id bigint
);


ALTER TABLE public.users_roles OWNER TO postgres;

--
-- Name: countries id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.countries ALTER COLUMN id SET DEFAULT nextval('public.countries_id_seq'::regclass);


--
-- Name: districts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.districts ALTER COLUMN id SET DEFAULT nextval('public.districts_id_seq'::regclass);


--
-- Name: neighbourhoods id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.neighbourhoods ALTER COLUMN id SET DEFAULT nextval('public.neighbourhoods_id_seq'::regclass);


--
-- Name: provinces id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.provinces ALTER COLUMN id SET DEFAULT nextval('public.provinces_id_seq'::regclass);


--
-- Name: reports id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reports ALTER COLUMN id SET DEFAULT nextval('public.reports_id_seq'::regclass);


--
-- Name: roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);


--
-- Name: subdistricts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subdistricts ALTER COLUMN id SET DEFAULT nextval('public.subdistricts_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2024-12-24 10:05:58.517341	2024-12-24 10:05:58.517341
\.


--
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.countries (id, "admin0Name_en", "admin0Name_ar", "admin0Pcode", created_at, updated_at) FROM stdin;
1	Syrian Arab Republic	الجمهورية العربية السورية	SY	2024-12-24 14:31:24.498422	2024-12-24 14:31:24.498422
\.


--
-- Data for Name: districts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.districts (id, "admin2Name_en", "admin2Name_ar", "admin2Pcode", province_id, created_at, updated_at) FROM stdin;
1	Damascus	دمشق	SY0100	1	2024-12-24 14:31:24.945573	2024-12-24 14:31:24.945573
2	Jebel Saman	جبل سمعان	SY0200	2	2024-12-24 14:31:24.958294	2024-12-24 14:31:24.958294
3	Al Bab	الباب	SY0202	2	2024-12-24 14:31:24.966804	2024-12-24 14:31:24.966804
4	Afrin	عفرين	SY0203	2	2024-12-24 14:31:24.976061	2024-12-24 14:31:24.976061
5	A'zaz	اعزاز	SY0204	2	2024-12-24 14:31:24.984776	2024-12-24 14:31:24.984776
6	Menbij	منبج	SY0205	2	2024-12-24 14:31:24.993871	2024-12-24 14:31:24.993871
7	Ain Al Arab	عين العرب	SY0206	2	2024-12-24 14:31:25.002821	2024-12-24 14:31:25.002821
8	As-Safira	السفيرة	SY0207	2	2024-12-24 14:31:25.011333	2024-12-24 14:31:25.011333
9	Jarablus	جرابلس	SY0208	2	2024-12-24 14:31:25.020871	2024-12-24 14:31:25.020871
10	Rural Damascus	مركز ريف دمشق	SY0301	3	2024-12-24 14:31:25.029436	2024-12-24 14:31:25.029436
11	Duma	دوما	SY0302	3	2024-12-24 14:31:25.037909	2024-12-24 14:31:25.037909
12	Al Qutayfah	القطيفة	SY0303	3	2024-12-24 14:31:25.048994	2024-12-24 14:31:25.048994
13	At Tall	التل	SY0304	3	2024-12-24 14:31:25.058056	2024-12-24 14:31:25.058056
14	Yabroud	يبرود	SY0305	3	2024-12-24 14:31:25.067227	2024-12-24 14:31:25.067227
15	An Nabk	النبك	SY0306	3	2024-12-24 14:31:25.07528	2024-12-24 14:31:25.07528
16	Az-Zabdani	الزبداني	SY0307	3	2024-12-24 14:31:25.083987	2024-12-24 14:31:25.083987
17	Qatana	قطنا	SY0308	3	2024-12-24 14:31:25.092157	2024-12-24 14:31:25.092157
18	Darayya	داريا	SY0309	3	2024-12-24 14:31:25.101223	2024-12-24 14:31:25.101223
19	Homs	مركز حمص	SY0401	4	2024-12-24 14:31:25.109795	2024-12-24 14:31:25.109795
20	Al-Qusayr	القصير	SY0402	4	2024-12-24 14:31:25.119563	2024-12-24 14:31:25.119563
21	Tall Kalakh	تلكلخ	SY0403	4	2024-12-24 14:31:25.128837	2024-12-24 14:31:25.128837
22	Ar-Rastan	الرستن	SY0404	4	2024-12-24 14:31:25.138909	2024-12-24 14:31:25.138909
23	Tadmor	تدمر	SY0405	4	2024-12-24 14:31:25.148422	2024-12-24 14:31:25.148422
24	Al Makhrim	المخرم	SY0406	4	2024-12-24 14:31:25.156504	2024-12-24 14:31:25.156504
25	Hama	مركز حماة	SY0501	5	2024-12-24 14:31:25.167156	2024-12-24 14:31:25.167156
26	As-Suqaylabiyah	السقيلبية	SY0502	5	2024-12-24 14:31:25.177747	2024-12-24 14:31:25.177747
27	As-Salamiyeh	السلمية	SY0503	5	2024-12-24 14:31:25.186878	2024-12-24 14:31:25.186878
28	Masyaf	مصياف	SY0504	5	2024-12-24 14:31:25.197302	2024-12-24 14:31:25.197302
29	Muhradah	محردة	SY0505	5	2024-12-24 14:31:25.207295	2024-12-24 14:31:25.207295
30	Lattakia	مركز اللاذقية	SY0600	6	2024-12-24 14:31:25.216291	2024-12-24 14:31:25.216291
31	Jablah	جبلة	SY0602	6	2024-12-24 14:31:25.224569	2024-12-24 14:31:25.224569
32	Al-Haffa	الحفة	SY0603	6	2024-12-24 14:31:25.23316	2024-12-24 14:31:25.23316
33	Al-Qardaha	القرداحة	SY0604	6	2024-12-24 14:31:25.242534	2024-12-24 14:31:25.242534
34	Idleb	مركز إدلب	SY0700	7	2024-12-24 14:31:25.25186	2024-12-24 14:31:25.25186
35	Al Ma'ra	معرة النعمان	SY0702	7	2024-12-24 14:31:25.260894	2024-12-24 14:31:25.260894
36	Harim	حارم	SY0703	7	2024-12-24 14:31:25.269892	2024-12-24 14:31:25.269892
37	Jisr-Ash-Shugur	جسر الشغور	SY0704	7	2024-12-24 14:31:25.278468	2024-12-24 14:31:25.278468
38	Ariha	أريحا	SY0705	7	2024-12-24 14:31:25.287621	2024-12-24 14:31:25.287621
39	Al-Hasakeh	مركز الحسكة	SY0800	8	2024-12-24 14:31:25.29625	2024-12-24 14:31:25.29625
40	Quamishli	القامشلي	SY0802	8	2024-12-24 14:31:25.305111	2024-12-24 14:31:25.305111
41	Al-Malikeyyeh	المالكية	SY0803	8	2024-12-24 14:31:25.317508	2024-12-24 14:31:25.317508
42	Ras Al Ain	رأس العين	SY0804	8	2024-12-24 14:31:25.326242	2024-12-24 14:31:25.326242
43	Deir-ez-Zor	مركز دير الزور	SY0901	9	2024-12-24 14:31:25.335404	2024-12-24 14:31:25.335404
44	Abu Kamal	البوكمال	SY0902	9	2024-12-24 14:31:25.343607	2024-12-24 14:31:25.343607
45	Al Mayadin	الميادين	SY0903	9	2024-12-24 14:31:25.352428	2024-12-24 14:31:25.352428
46	Tartous	مركز طرطوس	SY1000	10	2024-12-24 14:31:25.360402	2024-12-24 14:31:25.360402
47	Banyas	بانياس	SY1002	10	2024-12-24 14:31:25.370358	2024-12-24 14:31:25.370358
48	Safita	صافيتا	SY1003	10	2024-12-24 14:31:25.379054	2024-12-24 14:31:25.379054
49	Dreikish	دريكيش	SY1004	10	2024-12-24 14:31:25.388769	2024-12-24 14:31:25.388769
50	Sheikh Badr	الشيخ بدر	SY1005	10	2024-12-24 14:31:25.413493	2024-12-24 14:31:25.413493
51	Qadmous	القدموس	SY1006	10	2024-12-24 14:31:25.424768	2024-12-24 14:31:25.424768
52	Ar-Raqqa	مركز الرقة	SY1101	11	2024-12-24 14:31:25.435606	2024-12-24 14:31:25.435606
53	Tell Abiad	تل أبيض	SY1102	11	2024-12-24 14:31:25.45211	2024-12-24 14:31:25.45211
54	Ath-Thawrah	الثورة	SY1103	11	2024-12-24 14:31:25.472684	2024-12-24 14:31:25.472684
55	Dar'a	درعا	SY1200	12	2024-12-24 14:31:25.499782	2024-12-24 14:31:25.499782
56	As-Sanamayn	الصنمين	SY1202	12	2024-12-24 14:31:25.535713	2024-12-24 14:31:25.535713
57	Izra'	ازرع	SY1203	12	2024-12-24 14:31:25.563508	2024-12-24 14:31:25.563508
58	As-Sweida	مركز السويداء	SY1300	13	2024-12-24 14:31:25.593488	2024-12-24 14:31:25.593488
59	Salkhad	صلخد	SY1302	13	2024-12-24 14:31:25.617966	2024-12-24 14:31:25.617966
60	Shahba	شهبا	SY1303	13	2024-12-24 14:31:25.627404	2024-12-24 14:31:25.627404
61	Quneitra	مركز القنيطرة	SY1400	14	2024-12-24 14:31:25.646796	2024-12-24 14:31:25.646796
62	Al Fiq	فيق	SY1402	14	2024-12-24 14:31:25.655014	2024-12-24 14:31:25.655014
\.


--
-- Data for Name: neighbourhoods; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.neighbourhoods (id, "admin4Name_en", "admin4Name_ar", "admin4Pcode", subdistrict_id, created_at, updated_at) FROM stdin;
1	Msherfet Tall Makssour	مشرفة تل مكسور	C8708	10	2024-12-24 14:31:33.594945	2024-12-24 14:31:33.594945
2	Al Abaweh	العبوية	C8709	10	2024-12-24 14:31:33.607853	2024-12-24 14:31:33.607853
3	Tal Hu	تلهو	C8710	38	2024-12-24 14:31:33.618806	2024-12-24 14:31:33.618806
4	Rasm Al Hellw	رسم الحلو	C8711	38	2024-12-24 14:31:33.629174	2024-12-24 14:31:33.629174
5	Mazraeat Abu Abdu	مرزعة أبو عبدة	C8712	39	2024-12-24 14:31:33.643818	2024-12-24 14:31:33.643818
6	Rasm Al Aeish	رسم العيش	C8713	39	2024-12-24 14:31:33.654183	2024-12-24 14:31:33.654183
7	Kharbet Kwaies	خربة كويس	C8714	37	2024-12-24 14:31:33.664303	2024-12-24 14:31:33.664303
8	Umm Adaseh	أم عدسة	C8715	4	2024-12-24 14:31:33.673658	2024-12-24 14:31:33.673658
9	Bakhgh	بخجة	C8716	17	2024-12-24 14:31:33.682733	2024-12-24 14:31:33.682733
10	Qabajok	كاباجوك	C8717	33	2024-12-24 14:31:33.691435	2024-12-24 14:31:33.691435
11	Al-Hamek	الحامك	C8718	35	2024-12-24 14:31:33.700494	2024-12-24 14:31:33.700494
12	Doret Baberi Foukanee	درة بابيري فوقاني	C8719	31	2024-12-24 14:31:33.709154	2024-12-24 14:31:33.709154
13	Mazzeaet Al Sadsseh	المزرعة السادسة	C8720	31	2024-12-24 14:31:33.72067	2024-12-24 14:31:33.72067
14	Joub Al Hammam	جب الحمام	C8721	31	2024-12-24 14:31:33.730683	2024-12-24 14:31:33.730683
15	Mazzraah Al Thaltheh	المزرعة الثالثة	C8722	31	2024-12-24 14:31:33.739045	2024-12-24 14:31:33.739045
16	Al Ulohh	العلوة	C8723	32	2024-12-24 14:31:33.748792	2024-12-24 14:31:33.748792
17	Mazzeaet Al Reef	مزرعة الريف	C8736	14	2024-12-24 14:31:33.758751	2024-12-24 14:31:33.758751
18	Small Arbid	عربيد صغير	C8739	14	2024-12-24 14:31:33.768646	2024-12-24 14:31:33.768646
19	Al Malkeeh	المالكية	C8740	11	2024-12-24 14:31:33.778405	2024-12-24 14:31:33.778405
20	Al Homerah	الحميرة	C8741	36	2024-12-24 14:31:33.787722	2024-12-24 14:31:33.787722
21	Al-Dafi	الدافي	C8742	35	2024-12-24 14:31:33.797998	2024-12-24 14:31:33.797998
22	Al-Eabidat	العبيدات	C8743	35	2024-12-24 14:31:33.807593	2024-12-24 14:31:33.807593
23	Balek	باليك	C8744	35	2024-12-24 14:31:33.816728	2024-12-24 14:31:33.816728
24	Musallamiyeh	المسلمية	C1003	2	2024-12-24 14:31:33.825656	2024-12-24 14:31:33.825656
25	Esan	عسان	C1004	2	2024-12-24 14:31:33.834676	2024-12-24 14:31:33.834676
26	Thabiyeh	الذهبية	C1005	2	2024-12-24 14:31:33.843561	2024-12-24 14:31:33.843561
27	Saqlaya	صقلايا	C1006	2	2024-12-24 14:31:33.86444	2024-12-24 14:31:33.86444
28	Tal Shgheib	تل شغيب	C1008	2	2024-12-24 14:31:33.908076	2024-12-24 14:31:33.908076
29	Abtin	عبطين	C1009	2	2024-12-24 14:31:33.918233	2024-12-24 14:31:33.918233
30	Haddadin	حدادين	C1010	2	2024-12-24 14:31:33.928395	2024-12-24 14:31:33.928395
31	Tal Sheer Simaan	تل شعير سمعان	C1011	2	2024-12-24 14:31:33.938605	2024-12-24 14:31:33.938605
32	Hreibel	حريبل	C1012	2	2024-12-24 14:31:33.949375	2024-12-24 14:31:33.949375
33	Wdeihi	الوضيحي	C1013	2	2024-12-24 14:31:33.959534	2024-12-24 14:31:33.959534
34	Hilan	حيلان	C1014	2	2024-12-24 14:31:33.969026	2024-12-24 14:31:33.969026
35	Khan tuman	خان طومان	C1015	2	2024-12-24 14:31:33.979683	2024-12-24 14:31:33.979683
36	Little Kafr	كفر صغير	C1016	2	2024-12-24 14:31:33.989744	2024-12-24 14:31:33.989744
37	Maratet Elmosalamiyeh	معراتة المسلمية	C1017	2	2024-12-24 14:31:34.002946	2024-12-24 14:31:34.002946
38	Qarras	قراص	C1018	2	2024-12-24 14:31:34.016989	2024-12-24 14:31:34.016989
39	Qanater	القناطر	C1019	3	2024-12-24 14:31:34.029115	2024-12-24 14:31:34.029115
40	Tuwama	التوامة	C1020	3	2024-12-24 14:31:34.039746	2024-12-24 14:31:34.039746
41	Babka	بابكة	C1021	3	2024-12-24 14:31:34.050072	2024-12-24 14:31:34.050072
42	Sahara	السحارة	C1023	3	2024-12-24 14:31:34.061763	2024-12-24 14:31:34.061763
43	Oweijel	عويجل	C1024	3	2024-12-24 14:31:34.071945	2024-12-24 14:31:34.071945
44	Batbu	باتبو	C1025	3	2024-12-24 14:31:34.084116	2024-12-24 14:31:34.084116
45	Abin Samaan	ابين سمعان	C1026	3	2024-12-24 14:31:34.094468	2024-12-24 14:31:34.094468
46	Little Orm	أورم الصغرى	C1027	3	2024-12-24 14:31:34.104934	2024-12-24 14:31:34.104934
47	Tadil	تديل	C1028	3	2024-12-24 14:31:34.115189	2024-12-24 14:31:34.115189
48	Big Orm	أورم الكبرى	C1029	3	2024-12-24 14:31:34.124791	2024-12-24 14:31:34.124791
49	Abzemo	الابزمو	C1030	3	2024-12-24 14:31:34.13497	2024-12-24 14:31:34.13497
50	Sheikh Ali	الشيخ علي	C1031	3	2024-12-24 14:31:34.143818	2024-12-24 14:31:34.143818
51	Jeineh	الجينة	C1032	3	2024-12-24 14:31:34.153503	2024-12-24 14:31:34.153503
52	Kafr Amma	كفر عمة	C1033	3	2024-12-24 14:31:34.163772	2024-12-24 14:31:34.163772
53	Kafr Naha	كفر ناها	C1034	3	2024-12-24 14:31:34.173532	2024-12-24 14:31:34.173532
54	Kafr Karmin	كفر كرمين	C1035	3	2024-12-24 14:31:34.183324	2024-12-24 14:31:34.183324
55	Kafr Naseh Elatareb	كفر ناصح الاتارب	C1036	3	2024-12-24 14:31:34.193115	2024-12-24 14:31:34.193115
56	Kafr Taal	كفر تعال	C1037	3	2024-12-24 14:31:34.203561	2024-12-24 14:31:34.203561
57	Maaret Atarib	معارة اتارب	C1038	3	2024-12-24 14:31:34.214116	2024-12-24 14:31:34.214116
58	Kafr Aleppo	كفر حلب	C1039	3	2024-12-24 14:31:34.227468	2024-12-24 14:31:34.227468
59	Western Kafr Jum	كفر جوم غربية	C1040	3	2024-12-24 14:31:34.24153	2024-12-24 14:31:34.24153
60	Kafr Noran	كفر نوران	C1041	3	2024-12-24 14:31:34.25575	2024-12-24 14:31:34.25575
61	Rasm Eljahsh	رسم الجحش	C1042	4	2024-12-24 14:31:34.271245	2024-12-24 14:31:34.271245
62	Aabad	اعبد	C1043	4	2024-12-24 14:31:34.299136	2024-12-24 14:31:34.299136
63	Batranah	بطرانة	C1044	4	2024-12-24 14:31:34.314915	2024-12-24 14:31:34.314915
64	Eliyeh	علية	C1045	4	2024-12-24 14:31:34.332351	2024-12-24 14:31:34.332351
65	Tabara Elksheir	تبارة الخشير	C1046	4	2024-12-24 14:31:34.350647	2024-12-24 14:31:34.350647
66	Jeb Elkhafi Simaan	جب الخفي سمعان	C1047	4	2024-12-24 14:31:34.368073	2024-12-24 14:31:34.368073
67	Abu Rweil	أبو رويل	C1048	4	2024-12-24 14:31:34.383591	2024-12-24 14:31:34.383591
68	Jeb Eleis	جب عليص	C1049	4	2024-12-24 14:31:34.399222	2024-12-24 14:31:34.399222
69	Tal Masih	تل ماسح	C1050	4	2024-12-24 14:31:34.414051	2024-12-24 14:31:34.414051
70	Establat	اصطبلات	C1051	4	2024-12-24 14:31:34.432605	2024-12-24 14:31:34.432605
71	Sayah - Sayah Thahriyeh	الصياح_صياح ظاهرية	C1052	4	2024-12-24 14:31:34.450406	2024-12-24 14:31:34.450406
72	Um Elamad Qabli	أم العمد قبلي	C1053	4	2024-12-24 14:31:34.47116	2024-12-24 14:31:34.47116
73	Numaniyeh	النعمانية	C1054	4	2024-12-24 14:31:34.492481	2024-12-24 14:31:34.492481
74	Um Tmakh Samaan	أم طماخ سمعان	C1055	4	2024-12-24 14:31:34.515076	2024-12-24 14:31:34.515076
75	Um Elhoteh	أم الهوته	C1056	4	2024-12-24 14:31:34.537827	2024-12-24 14:31:34.537827
76	Arjel	ارجل	C1057	4	2024-12-24 14:31:34.562945	2024-12-24 14:31:34.562945
77	Hmeidi	الحميدي	C1059	4	2024-12-24 14:31:34.580015	2024-12-24 14:31:34.580015
78	Tal Hattabat Semaan	تل حطابات سمعان	C1060	4	2024-12-24 14:31:34.604631	2024-12-24 14:31:34.604631
79	Deir Saliba	دير صليبة	C1061	4	2024-12-24 14:31:34.624919	2024-12-24 14:31:34.624919
80	Tal Hawasid - Hanuteh	تل حواصيد_حانوتة	C1062	4	2024-12-24 14:31:34.642021	2024-12-24 14:31:34.642021
81	Burda	بردة	C1063	4	2024-12-24 14:31:34.665679	2024-12-24 14:31:34.665679
82	Um Jrein	أم جرين	C1064	4	2024-12-24 14:31:34.683117	2024-12-24 14:31:34.683117
83	Um Elkaramel	أم الكراميل	C1065	4	2024-12-24 14:31:34.699348	2024-12-24 14:31:34.699348
84	Tal Ahmar	تل احمر	C1066	4	2024-12-24 14:31:34.715864	2024-12-24 14:31:34.715864
85	Big Oweinat	عوينات كبيرة	C1067	4	2024-12-24 14:31:34.735239	2024-12-24 14:31:34.735239
86	Rajm Omeirat	رجم عميرات	C1068	4	2024-12-24 14:31:34.752959	2024-12-24 14:31:34.752959
87	Um Tinet Simaan	أم تينة سمعان	C1069	4	2024-12-24 14:31:34.7677	2024-12-24 14:31:34.7677
88	Tal Sabha	تل صبحة	C1070	4	2024-12-24 14:31:34.781832	2024-12-24 14:31:34.781832
89	Tal Aqareb	تل عقارب	C1071	4	2024-12-24 14:31:34.797837	2024-12-24 14:31:34.797837
90	Batha	بطحة	C1072	4	2024-12-24 14:31:34.813015	2024-12-24 14:31:34.813015
91	Oleis	عليص	C1073	4	2024-12-24 14:31:34.842988	2024-12-24 14:31:34.842988
92	Andan Elsheikh	عندان الشيخ	C1074	4	2024-12-24 14:31:34.869489	2024-12-24 14:31:34.869489
93	Hayyaniyeh	الحيانية	C1075	4	2024-12-24 14:31:34.900929	2024-12-24 14:31:34.900929
94	Ballas	بلاس	C1076	4	2024-12-24 14:31:34.95085	2024-12-24 14:31:34.95085
95	Shweihet Ellahib	شويحة اللهيب	C1077	4	2024-12-24 14:31:34.97151	2024-12-24 14:31:34.97151
96	Tarfawi	طرفاوي	C1078	4	2024-12-24 14:31:34.988944	2024-12-24 14:31:34.988944
97	Saeebiyeh	صعيبية	C1079	4	2024-12-24 14:31:35.005226	2024-12-24 14:31:35.005226
98	Mansura	المنصورة	C1080	4	2024-12-24 14:31:35.023811	2024-12-24 14:31:35.023811
99	Big Bayaa	بياعة كبيرة	C1081	4	2024-12-24 14:31:35.05314	2024-12-24 14:31:35.05314
100	Big Bweideh	بويضة كبيرة	C1082	4	2024-12-24 14:31:35.070664	2024-12-24 14:31:35.070664
101	Rasm Elsafa	رسم الصفا	C1083	4	2024-12-24 14:31:35.085897	2024-12-24 14:31:35.085897
102	Um Qrun - Um Jaran	أم قرون_أم جرن	C1084	4	2024-12-24 14:31:35.102582	2024-12-24 14:31:35.102582
103	Sfira	صفيرة	C1085	4	2024-12-24 14:31:35.120466	2024-12-24 14:31:35.120466
104	Anu Mreir	أبو مرير	C1086	4	2024-12-24 14:31:35.13407	2024-12-24 14:31:35.13407
105	Um Graf	أم غراف	C1087	4	2024-12-24 14:31:35.146562	2024-12-24 14:31:35.146562
106	Shweihet Elbu Issa	شويحة البو عيسى	C1088	4	2024-12-24 14:31:35.159281	2024-12-24 14:31:35.159281
107	Mintar	المنطار	C1089	4	2024-12-24 14:31:35.172101	2024-12-24 14:31:35.172101
108	Eastern Atshana	عطشانة شرقية	C1090	4	2024-12-24 14:31:35.188929	2024-12-24 14:31:35.188929
109	Um Gobar	أم غبار	C1091	4	2024-12-24 14:31:35.203053	2024-12-24 14:31:35.203053
110	Hilwiyeh	حلوية	C1092	4	2024-12-24 14:31:35.216738	2024-12-24 14:31:35.216738
111	Western Atshana	عطشانة غربية	C1093	4	2024-12-24 14:31:35.229648	2024-12-24 14:31:35.229648
112	Rasm Elmofakker - Hilu Mofakker	رسم المفكر_حلو مفكر	C1094	4	2024-12-24 14:31:35.240958	2024-12-24 14:31:35.240958
113	Um Aj	أم عج	C1095	4	2024-12-24 14:31:35.252832	2024-12-24 14:31:35.252832
114	Um Wadi	أم وادي	C1096	4	2024-12-24 14:31:35.265034	2024-12-24 14:31:35.265034
115	Jafr Mansur Simaan	جفر منصور سمعان	C1097	4	2024-12-24 14:31:35.275686	2024-12-24 14:31:35.275686
116	Littler Bayaa	بياعة صغيرة	C1098	4	2024-12-24 14:31:35.287438	2024-12-24 14:31:35.287438
117	Hamidiyeh	حميدية	C1099	4	2024-12-24 14:31:35.299468	2024-12-24 14:31:35.299468
118	Little Bweideh	بويضة صغيرة	C1100	4	2024-12-24 14:31:35.3091	2024-12-24 14:31:35.3091
119	Nuwara	نوارة	C1101	4	2024-12-24 14:31:35.319424	2024-12-24 14:31:35.319424
120	Wadi Elsonue	وادي الصنوع	C1102	4	2024-12-24 14:31:35.330191	2024-12-24 14:31:35.330191
121	Wadi Eldibis	وادي الدبس	C1103	4	2024-12-24 14:31:35.3413	2024-12-24 14:31:35.3413
122	Hazani	هزاني	C1104	4	2024-12-24 14:31:35.352071	2024-12-24 14:31:35.352071
123	Marhamiya	مرحمية	C1105	4	2024-12-24 14:31:35.362922	2024-12-24 14:31:35.362922
124	Kafr Eibesh	كفر إيبش	C1106	4	2024-12-24 14:31:35.373449	2024-12-24 14:31:35.373449
125	Mashrafet Elbuwaiditein	مشرفة البويضتين	C1107	4	2024-12-24 14:31:35.384224	2024-12-24 14:31:35.384224
126	Majas	مجاص	C1108	4	2024-12-24 14:31:35.395267	2024-12-24 14:31:35.395267
127	Qaree Elghazal	قرع الغزال	C1109	4	2024-12-24 14:31:35.406803	2024-12-24 14:31:35.406803
128	Masih	ماسح	C1110	4	2024-12-24 14:31:35.417988	2024-12-24 14:31:35.417988
129	Big Madayen	مداين الكبير	C1111	4	2024-12-24 14:31:35.430817	2024-12-24 14:31:35.430817
130	Kafr Obeid	كفر عبيد	C1112	4	2024-12-24 14:31:35.441992	2024-12-24 14:31:35.441992
131	Mashrafet Arjol	مشرفة ارجل	C1113	4	2024-12-24 14:31:35.452507	2024-12-24 14:31:35.452507
132	Maqtal Elzaydi	مقتل الزيدي	C1114	4	2024-12-24 14:31:35.462869	2024-12-24 14:31:35.462869
133	Hober	هوبر	C1115	4	2024-12-24 14:31:35.473357	2024-12-24 14:31:35.473357
134	Kulet Elbweider	كولة البويدر	C1116	4	2024-12-24 14:31:35.4845	2024-12-24 14:31:35.4845
135	Mashrafet Elmarij	مشرفة المريج	C1117	4	2024-12-24 14:31:35.497047	2024-12-24 14:31:35.497047
136	Mreiqes	مريقص	C1118	4	2024-12-24 14:31:35.507163	2024-12-24 14:31:35.507163
137	Ghaytal - Ghaythal	غيطل_غيظل	C1119	4	2024-12-24 14:31:35.519159	2024-12-24 14:31:35.519159
138	Sheikh Castle	قلعة الشيخ	C1120	4	2024-12-24 14:31:35.530724	2024-12-24 14:31:35.530724
139	Andan	عندان	C1121	5	2024-12-24 14:31:35.541503	2024-12-24 14:31:35.541503
140	Tiyara	تيارة	C1122	5	2024-12-24 14:31:35.551787	2024-12-24 14:31:35.551787
141	Jeb Ghabsheh	جب غبشة	C1123	5	2024-12-24 14:31:35.560825	2024-12-24 14:31:35.560825
142	Sifa	صفة	C1124	5	2024-12-24 14:31:35.569904	2024-12-24 14:31:35.569904
143	Bashkwi Samaan	باشكوي سمعان	C1125	5	2024-12-24 14:31:35.579356	2024-12-24 14:31:35.579356
144	Tamura	الطامورة	C1126	5	2024-12-24 14:31:35.587977	2024-12-24 14:31:35.587977
145	Hayyan	حيان	C1127	5	2024-12-24 14:31:35.597581	2024-12-24 14:31:35.597581
146	Sheikh Zayat	شيخ زيات	C1128	5	2024-12-24 14:31:35.606529	2024-12-24 14:31:35.606529
147	Shamer	شامر	C1129	5	2024-12-24 14:31:35.615397	2024-12-24 14:31:35.615397
148	Afrin	عفرين	C1131	5	2024-12-24 14:31:35.623679	2024-12-24 14:31:35.623679
149	Yaqed Eladas	ياقد العدس	C1132	5	2024-12-24 14:31:35.63308	2024-12-24 14:31:35.63308
150	Muqbia	مقبلة	C1133	5	2024-12-24 14:31:35.642433	2024-12-24 14:31:35.642433
151	Kafr Hamra	كفر حمرة	C1134	5	2024-12-24 14:31:35.653126	2024-12-24 14:31:35.653126
152	Kafr Bssin	كفر بسين	C1135	5	2024-12-24 14:31:35.665038	2024-12-24 14:31:35.665038
153	Maaret Elartiq	معارة الأرتيق	C1136	5	2024-12-24 14:31:35.676674	2024-12-24 14:31:35.676674
154	Fah	فاح	C1137	5	2024-12-24 14:31:35.689532	2024-12-24 14:31:35.689532
155	Zarzita	زرزيتا	C1138	6	2024-12-24 14:31:35.701252	2024-12-24 14:31:35.701252
156	Hur	حور	C1140	6	2024-12-24 14:31:35.711451	2024-12-24 14:31:35.711451
157	Bshantara	بشنطرة	C1141	6	2024-12-24 14:31:35.722154	2024-12-24 14:31:35.722154
158	Arhab	ارحاب	C1142	6	2024-12-24 14:31:35.732735	2024-12-24 14:31:35.732735
159	Tqad	تقاد	C1143	6	2024-12-24 14:31:35.745545	2024-12-24 14:31:35.745545
160	Anjara	عنجارة	C1144	6	2024-12-24 14:31:35.756565	2024-12-24 14:31:35.756565
161	Bishqatine	بشقاتين	C1145	6	2024-12-24 14:31:35.769351	2024-12-24 14:31:35.769351
162	Hoteh	الهوتة	C1146	6	2024-12-24 14:31:35.783329	2024-12-24 14:31:35.783329
163	Bsartun	بسرطون	C1147	6	2024-12-24 14:31:35.796716	2024-12-24 14:31:35.796716
164	Majbineh	مجبينة	C1148	6	2024-12-24 14:31:35.807983	2024-12-24 14:31:35.807983
165	Kafrantin	كفرانتين	C1149	6	2024-12-24 14:31:35.820624	2024-12-24 14:31:35.820624
166	Qabtan Eljabal	قبتان الجبل	C1150	6	2024-12-24 14:31:35.840248	2024-12-24 14:31:35.840248
167	Zyare Semaan	زيارة سمعان	C1151	7	2024-12-24 14:31:35.87038	2024-12-24 14:31:35.87038
168	Hmeira	حميرة	C1152	7	2024-12-24 14:31:35.922097	2024-12-24 14:31:35.922097
169	Barqum	برقوم	C1153	7	2024-12-24 14:31:35.935073	2024-12-24 14:31:35.935073
170	Berna	برنة	C1154	7	2024-12-24 14:31:35.948622	2024-12-24 14:31:35.948622
171	Sheikh Ahmed	الشيخ احمد	C1155	7	2024-12-24 14:31:35.960498	2024-12-24 14:31:35.960498
172	Zmar	زمار	C1156	7	2024-12-24 14:31:35.973326	2024-12-24 14:31:35.973326
173	Big Othmaniya	عثمانية كبيرة	C1157	7	2024-12-24 14:31:35.986875	2024-12-24 14:31:35.986875
174	Tal Heddiyeh	تل حدية	C1158	7	2024-12-24 14:31:36.00068	2024-12-24 14:31:36.00068
175	Um Atba	أم عتبة	C1159	7	2024-12-24 14:31:36.016951	2024-12-24 14:31:36.016951
176	Abad	اباد	C1160	7	2024-12-24 14:31:36.030908	2024-12-24 14:31:36.030908
177	Tal Bajer	تل باجر	C1161	7	2024-12-24 14:31:36.041521	2024-12-24 14:31:36.041521
178	Rasm Eliss	رسم العيس	C1162	7	2024-12-24 14:31:36.056929	2024-12-24 14:31:36.056929
179	Banes	بانص	C1163	7	2024-12-24 14:31:36.072665	2024-12-24 14:31:36.072665
180	Arada	عرادة	C1164	7	2024-12-24 14:31:36.088276	2024-12-24 14:31:36.088276
181	Talafeh	طلافح	C1165	7	2024-12-24 14:31:36.104403	2024-12-24 14:31:36.104403
182	Jeb Kas	جب كاس	C1166	7	2024-12-24 14:31:36.118643	2024-12-24 14:31:36.118643
183	Zeitan	زيتان	C1167	7	2024-12-24 14:31:36.13571	2024-12-24 14:31:36.13571
184	Jazraya	جزرايا	C1168	7	2024-12-24 14:31:36.150415	2024-12-24 14:31:36.150415
185	Bawabiyeh	بوابية	C1169	7	2024-12-24 14:31:36.167036	2024-12-24 14:31:36.167036
186	Tal Allush	تل علوش	C1171	7	2024-12-24 14:31:36.183571	2024-12-24 14:31:36.183571
187	Hawir Elis	حوير العيس	C1172	7	2024-12-24 14:31:36.199031	2024-12-24 14:31:36.199031
188	Tal Mamu	تل ممو	C1173	7	2024-12-24 14:31:36.21603	2024-12-24 14:31:36.21603
189	Qamari	قماري	C1174	7	2024-12-24 14:31:36.23427	2024-12-24 14:31:36.23427
190	Kusniya	كوسنيا	C1175	7	2024-12-24 14:31:36.254353	2024-12-24 14:31:36.254353
191	Kassibeh	كسيبة	C1176	7	2024-12-24 14:31:36.271396	2024-12-24 14:31:36.271396
192	Tleilat	تليلات	C1177	8	2024-12-24 14:31:36.289498	2024-12-24 14:31:36.289498
193	Dalama	دلامة	C1178	8	2024-12-24 14:31:36.305872	2024-12-24 14:31:36.305872
194	Jamimeh	جميمة	C1179	8	2024-12-24 14:31:36.321965	2024-12-24 14:31:36.321965
195	Tal Dadine	تل دادين	C1180	8	2024-12-24 14:31:36.337458	2024-12-24 14:31:36.337458
196	Iss	العيس	C1181	8	2024-12-24 14:31:36.354381	2024-12-24 14:31:36.354381
197	Maryuda	مريودة	C1183	8	2024-12-24 14:31:36.371193	2024-12-24 14:31:36.371193
198	Makhala	مكحلة	C1184	8	2024-12-24 14:31:36.388613	2024-12-24 14:31:36.388613
199	Mreimin Simaan	مريمين سمعان	C1185	8	2024-12-24 14:31:36.405985	2024-12-24 14:31:36.405985
200	Nayrabiyeh	النيربية	C1186	9	2024-12-24 14:31:36.421823	2024-12-24 14:31:36.421823
201	Sosyan	سوسيان	C1187	9	2024-12-24 14:31:36.437861	2024-12-24 14:31:36.437861
202	Bazagha	بزاعة	C1188	9	2024-12-24 14:31:36.45502	2024-12-24 14:31:36.45502
203	Shaala	شعالة	C1189	9	2024-12-24 14:31:36.471388	2024-12-24 14:31:36.471388
204	Su Sinbat	سو سنباط	C1190	9	2024-12-24 14:31:36.487462	2024-12-24 14:31:36.487462
205	Hazwan	حزوان	C1191	9	2024-12-24 14:31:36.503807	2024-12-24 14:31:36.503807
206	Borj	البرج	C1192	9	2024-12-24 14:31:36.519205	2024-12-24 14:31:36.519205
207	Maqri	المقري	C1193	9	2024-12-24 14:31:36.533338	2024-12-24 14:31:36.533338
208	Aabad	اعبد	C1194	9	2024-12-24 14:31:36.54668	2024-12-24 14:31:36.54668
209	Sheikh Jarrah	شيخ جراح	C1195	9	2024-12-24 14:31:36.558448	2024-12-24 14:31:36.558448
210	Sheikh Elwan	شيخ علوان	C1196	9	2024-12-24 14:31:36.571968	2024-12-24 14:31:36.571968
211	Suran	صوران	C1197	9	2024-12-24 14:31:36.583862	2024-12-24 14:31:36.583862
212	Hadath	حدث	C1198	9	2024-12-24 14:31:36.597609	2024-12-24 14:31:36.597609
213	Tal Jerji	تل جرجي	C1199	9	2024-12-24 14:31:36.608718	2024-12-24 14:31:36.608718
214	Saflaniyeh	سفلانية	C1200	9	2024-12-24 14:31:36.624099	2024-12-24 14:31:36.624099
215	Um Elamad Elbab	أم العمد الباب	C1201	9	2024-12-24 14:31:36.639845	2024-12-24 14:31:36.639845
216	Big Sarja	سرجة كبيرة	C1203	9	2024-12-24 14:31:36.655357	2024-12-24 14:31:36.655357
217	Olan	عولان	C1204	9	2024-12-24 14:31:36.669257	2024-12-24 14:31:36.669257
218	Tal Rahhal	تل رحال	C1205	9	2024-12-24 14:31:36.682758	2024-12-24 14:31:36.682758
219	Shdud	شدود	C1206	9	2024-12-24 14:31:36.694497	2024-12-24 14:31:36.694497
220	Sheikh Kif	الشيخ كيف	C1207	9	2024-12-24 14:31:36.706666	2024-12-24 14:31:36.706666
221	Qemmet Daghelbash	قمة داغلباش	C1208	9	2024-12-24 14:31:36.720877	2024-12-24 14:31:36.720877
222	Qabasin	قباسين	C1209	9	2024-12-24 14:31:36.734471	2024-12-24 14:31:36.734471
223	Mran	مران	C1210	9	2024-12-24 14:31:36.749704	2024-12-24 14:31:36.749704
224	Qdeiran	قديران	C1211	9	2024-12-24 14:31:36.76424	2024-12-24 14:31:36.76424
225	Waqqah	وقاح	C1212	9	2024-12-24 14:31:36.777773	2024-12-24 14:31:36.777773
226	Noman	نعمان	C1213	9	2024-12-24 14:31:36.789608	2024-12-24 14:31:36.789608
227	Qubbet Elsheikh	قبة الشيخ	C1214	9	2024-12-24 14:31:36.801972	2024-12-24 14:31:36.801972
228	Arran	عران	C1215	10	2024-12-24 14:31:36.815408	2024-12-24 14:31:36.815408
229	Abu Jabbar	أبو جبار	C1216	10	2024-12-24 14:31:36.831177	2024-12-24 14:31:36.831177
230	Kita	الكيطة	C1217	10	2024-12-24 14:31:36.845013	2024-12-24 14:31:36.845013
231	Abu Taltal	أبو طلطل	C1218	10	2024-12-24 14:31:36.857801	2024-12-24 14:31:36.857801
232	Big Amya	عمية كبيرة	C1220	10	2024-12-24 14:31:36.869965	2024-12-24 14:31:36.869965
233	Deir Qaq	دير قاق	C1221	10	2024-12-24 14:31:36.880893	2024-12-24 14:31:36.880893
234	Toman	طومان	C1222	10	2024-12-24 14:31:36.892278	2024-12-24 14:31:36.892278
235	Kherbet Kiyar	خربة كيار	C1223	10	2024-12-24 14:31:36.904372	2024-12-24 14:31:36.904372
236	Um Khorzet Elbab	أم خرزة الباب	C1224	10	2024-12-24 14:31:36.918117	2024-12-24 14:31:36.918117
237	Biret Elbab	البيرة الباب	C1225	10	2024-12-24 14:31:36.930962	2024-12-24 14:31:36.930962
238	Oweishiyeh	عويشية	C1226	10	2024-12-24 14:31:36.943233	2024-12-24 14:31:36.943233
239	Sarhan	سرحان	C1227	10	2024-12-24 14:31:36.954968	2024-12-24 14:31:36.954968
240	Eisheh	عيشة	C1228	10	2024-12-24 14:31:36.967183	2024-12-24 14:31:36.967183
241	Sheikh Dan	شيخ دن	C1229	10	2024-12-24 14:31:36.979507	2024-12-24 14:31:36.979507
242	Barlahin	برلهين	C1230	10	2024-12-24 14:31:36.991925	2024-12-24 14:31:36.991925
243	Btoshiyet Elbab	بطوشية الباب	C1231	10	2024-12-24 14:31:37.005152	2024-12-24 14:31:37.005152
244	Qatar	قطر	C1232	10	2024-12-24 14:31:37.019845	2024-12-24 14:31:37.019845
245	Qasr Elbreij	قصر البريج	C1233	10	2024-12-24 14:31:37.034084	2024-12-24 14:31:37.034084
246	Magharet Abu Jabbar	مغارة أبو جبار	C1234	10	2024-12-24 14:31:37.047724	2024-12-24 14:31:37.047724
247	Big Fikha	فيخة كبيرة	C1235	10	2024-12-24 14:31:37.05993	2024-12-24 14:31:37.05993
248	Hazaza	حزازة	C1236	11	2024-12-24 14:31:37.073347	2024-12-24 14:31:37.073347
249	Zubayda	زبيدة	C1237	11	2024-12-24 14:31:37.086605	2024-12-24 14:31:37.086605
250	Tal Ayub	تل أيوب	C1238	11	2024-12-24 14:31:37.099883	2024-12-24 14:31:37.099883
251	Um Elmara	أم المرا	C1239	11	2024-12-24 14:31:37.11348	2024-12-24 14:31:37.11348
252	Akula	عاكولة	C1241	11	2024-12-24 14:31:37.124761	2024-12-24 14:31:37.124761
253	Big Hmeimeh	حميمة كبيرة	C1242	11	2024-12-24 14:31:37.136614	2024-12-24 14:31:37.136614
254	Southern Rasm Elharmal	رسم الحرمل الجنوبي	C1243	11	2024-12-24 14:31:37.147428	2024-12-24 14:31:37.147428
255	Um Zleila	أم زليلة	C1244	11	2024-12-24 14:31:37.158739	2024-12-24 14:31:37.158739
256	Little Hmeimeh	حميمة صغيرة	C1245	11	2024-12-24 14:31:37.171093	2024-12-24 14:31:37.171093
257	Mabuja	مبعوجة	C1246	11	2024-12-24 14:31:37.183932	2024-12-24 14:31:37.183932
258	Waqf	الوقف	C1247	12	2024-12-24 14:31:37.19719	2024-12-24 14:31:37.19719
259	Sandi	صندي	C1248	12	2024-12-24 14:31:37.207497	2024-12-24 14:31:37.207497
260	Matmana	المتمنة	C1249	12	2024-12-24 14:31:37.221003	2024-12-24 14:31:37.221003
261	Hleisa	حليصة	C1251	12	2024-12-24 14:31:37.232628	2024-12-24 14:31:37.232628
262	Haji Wali	حاجي ولي	C1252	12	2024-12-24 14:31:37.246683	2024-12-24 14:31:37.246683
263	Haji Kusa	حاجي كوسة	C1253	12	2024-12-24 14:31:37.257418	2024-12-24 14:31:37.257418
264	Misannah Bab	المسنة الباب	C1254	12	2024-12-24 14:31:37.271857	2024-12-24 14:31:37.271857
265	Shawa	شاوة	C1255	12	2024-12-24 14:31:37.28555	2024-12-24 14:31:37.28555
266	Jbine	جبين	C1256	12	2024-12-24 14:31:37.299296	2024-12-24 14:31:37.299296
267	Nahda	النهضة	C1257	12	2024-12-24 14:31:37.311614	2024-12-24 14:31:37.311614
268	Tal Mizab	تل ميزاب	C1258	12	2024-12-24 14:31:37.322701	2024-12-24 14:31:37.322701
269	Tweiran	طويران	C1259	12	2024-12-24 14:31:37.336262	2024-12-24 14:31:37.336262
270	Ameriyeh	العامرية	C1260	12	2024-12-24 14:31:37.349589	2024-12-24 14:31:37.349589
271	Silsileh	سلسلة	C1261	12	2024-12-24 14:31:37.36136	2024-12-24 14:31:37.36136
272	Khalilieyh	خليلية	C1262	12	2024-12-24 14:31:37.372991	2024-12-24 14:31:37.372991
273	Tlilet Elbab	تليلة الباب	C1263	12	2024-12-24 14:31:37.385296	2024-12-24 14:31:37.385296
274	Atharia	الأثرية	C1264	12	2024-12-24 14:31:37.397962	2024-12-24 14:31:37.397962
275	Um Elthadaya Mamli	أم الثدايا_ماملي	C1265	12	2024-12-24 14:31:37.413293	2024-12-24 14:31:37.413293
276	Zalaf	زلف	C1266	12	2024-12-24 14:31:37.4246	2024-12-24 14:31:37.4246
277	Tal Eisheh	تل عيشة	C1267	12	2024-12-24 14:31:37.436783	2024-12-24 14:31:37.436783
278	Zyaret Elbab	زيارة الباب	C1268	12	2024-12-24 14:31:37.448506	2024-12-24 14:31:37.448506
279	Tal Elhawa	تل الهوى	C1269	12	2024-12-24 14:31:37.459035	2024-12-24 14:31:37.459035
280	Ayyasha	عياشة	C1270	12	2024-12-24 14:31:37.469586	2024-12-24 14:31:37.469586
281	Tal Atieh	تل عطية	C1271	12	2024-12-24 14:31:37.48148	2024-12-24 14:31:37.48148
282	Bab Laymun	باب ليمون	C1272	12	2024-12-24 14:31:37.4921	2024-12-24 14:31:37.4921
283	Hadabat	هضبات	C1273	12	2024-12-24 14:31:37.502879	2024-12-24 14:31:37.502879
284	Karsanli	كرسنلي	C1274	12	2024-12-24 14:31:37.514023	2024-12-24 14:31:37.514023
285	Qantaret Elbab	قنطرة الباب	C1275	12	2024-12-24 14:31:37.524098	2024-12-24 14:31:37.524098
286	Big Arbid	عربيد كبير	C1277	13	2024-12-24 14:31:37.534761	2024-12-24 14:31:37.534761
287	Sheikh Ahmed	شيخ أحمد	C1278	13	2024-12-24 14:31:37.545382	2024-12-24 14:31:37.545382
288	Tiba Elesm	طيبة الاسم	C1279	13	2024-12-24 14:31:37.555509	2024-12-24 14:31:37.555509
289	Jbul	الجبول	C1280	13	2024-12-24 14:31:37.565965	2024-12-24 14:31:37.565965
290	Um Arkileh	أم أركيلة	C1281	13	2024-12-24 14:31:37.578501	2024-12-24 14:31:37.578501
291	Jaberiyeh	الجابرية	C1282	13	2024-12-24 14:31:37.590408	2024-12-24 14:31:37.590408
292	Halabiyeh	الحلبية	C1283	13	2024-12-24 14:31:37.601852	2024-12-24 14:31:37.601852
293	Mufliseh	المفلسة	C1284	13	2024-12-24 14:31:37.612336	2024-12-24 14:31:37.612336
294	Ein Eljamajmeh	عين الجماجمة	C1285	13	2024-12-24 14:31:37.62302	2024-12-24 14:31:37.62302
295	Rasm Elabed	رسم العبد	C1287	13	2024-12-24 14:31:37.634057	2024-12-24 14:31:37.634057
296	Efesh	عفش	C1288	13	2024-12-24 14:31:37.644333	2024-12-24 14:31:37.644333
297	Tal Maksur	تل مكسور	C1289	13	2024-12-24 14:31:37.654357	2024-12-24 14:31:37.654357
298	Dikwaneh	دكوانة	C1290	13	2024-12-24 14:31:37.664304	2024-12-24 14:31:37.664304
299	Sein	السين	C1291	13	2024-12-24 14:31:37.673733	2024-12-24 14:31:37.673733
300	Tal Sabeen	تل سبعين	C1292	13	2024-12-24 14:31:37.684651	2024-12-24 14:31:37.684651
301	Tal Ahmar Elbab	تل احمر الباب	C1293	13	2024-12-24 14:31:37.695391	2024-12-24 14:31:37.695391
302	Western Kweires	كويرس غربي	C1295	13	2024-12-24 14:31:37.706004	2024-12-24 14:31:37.706004
303	Kaskis	كصكيص	C1296	13	2024-12-24 14:31:37.717926	2024-12-24 14:31:37.717926
304	Wadeeah	وديعة	C1298	13	2024-12-24 14:31:37.73162	2024-12-24 14:31:37.73162
305	Tal Hattabat Elbab	تل حطابات الباب	C1299	14	2024-12-24 14:31:37.743253	2024-12-24 14:31:37.743253
306	Little Abu Jadha	أبو جدحة صغير	C1300	14	2024-12-24 14:31:37.754994	2024-12-24 14:31:37.754994
307	Zaaraya	زعرايا	C1301	14	2024-12-24 14:31:37.766832	2024-12-24 14:31:37.766832
308	Tal Elsus - Abu Sus	تل السوس_أبو سوس	C1302	14	2024-12-24 14:31:37.777193	2024-12-24 14:31:37.777193
309	Tabara Madi	تبارة ماضي	C1303	14	2024-12-24 14:31:37.787548	2024-12-24 14:31:37.787548
310	Bijan Elbab	بيجان الباب	C1304	14	2024-12-24 14:31:37.798109	2024-12-24 14:31:37.798109
311	Abu Jadha Salma	أبو جدحة_صلمة	C1305	14	2024-12-24 14:31:37.808743	2024-12-24 14:31:37.808743
312	Jruf	جروف	C1306	14	2024-12-24 14:31:37.81896	2024-12-24 14:31:37.81896
313	Rasm Elkrum	رسم الكروم	C1307	14	2024-12-24 14:31:37.82878	2024-12-24 14:31:37.82878
314	Rasm Elkbar - Kherbet Zaaraya	رسم الكبار_خربة زعرايا	C1308	14	2024-12-24 14:31:37.838003	2024-12-24 14:31:37.838003
315	Kayariyeh	الكيارية	C1310	14	2024-12-24 14:31:37.847862	2024-12-24 14:31:37.847862
316	Um Elamad Rasm Elharmal	أم العمد رسم الحرمل	C1311	14	2024-12-24 14:31:37.857851	2024-12-24 14:31:37.857851
317	Rasm Elkibir - Ilkana	رسم الكبير_علكانة	C1312	14	2024-12-24 14:31:37.867692	2024-12-24 14:31:37.867692
318	Rasm Abbud	رسم عبود	C1313	14	2024-12-24 14:31:37.877811	2024-12-24 14:31:37.877811
319	Rasm Elsheikh	رسم الشيخ	C1314	14	2024-12-24 14:31:37.88862	2024-12-24 14:31:37.88862
320	Rasm Elkhabbaz	رسم الخباز	C1315	14	2024-12-24 14:31:37.898248	2024-12-24 14:31:37.898248
321	Ahmadia	أحمدية	C1316	14	2024-12-24 14:31:37.910797	2024-12-24 14:31:37.910797
322	Sharbaa	شربع	C1317	14	2024-12-24 14:31:37.920658	2024-12-24 14:31:37.920658
323	Manatir Elsifer	مناطير الصفر	C1318	14	2024-12-24 14:31:37.930715	2024-12-24 14:31:37.930715
324	Mazbura	مزبورة	C1319	14	2024-12-24 14:31:37.939867	2024-12-24 14:31:37.939867
325	Nasr Allah	نصر الله	C1320	14	2024-12-24 14:31:37.949987	2024-12-24 14:31:37.949987
326	Njara	نجارة	C1321	14	2024-12-24 14:31:37.960645	2024-12-24 14:31:37.960645
327	Little Sukariyeh	سكرية صغيرة	C1322	15	2024-12-24 14:31:37.970323	2024-12-24 14:31:37.970323
328	Hota	حوتة	C1323	15	2024-12-24 14:31:37.980857	2024-12-24 14:31:37.980857
329	Mazrufeh	المزروفة	C1324	15	2024-12-24 14:31:37.990574	2024-12-24 14:31:37.990574
330	Hjeileh - Elbab	الحجلية- الباب	C1325	15	2024-12-24 14:31:38.000948	2024-12-24 14:31:38.000948
331	Omyaniye - Korhyok	العميانة_كورهيوك	C1326	15	2024-12-24 14:31:38.011842	2024-12-24 14:31:38.011842
332	Jurneyyeh	الجرنية	C1327	15	2024-12-24 14:31:38.021908	2024-12-24 14:31:38.021908
333	Olasha	أولاشة	C1328	15	2024-12-24 14:31:38.032987	2024-12-24 14:31:38.032987
334	Kreidiyeh	الكريدية	C1330	15	2024-12-24 14:31:38.042516	2024-12-24 14:31:38.042516
335	Ilan	ايلان	C1331	15	2024-12-24 14:31:38.052523	2024-12-24 14:31:38.052523
336	Sunbula - Saboyran	السنبلة_صابويران	C1332	15	2024-12-24 14:31:38.064833	2024-12-24 14:31:38.064833
420	Qorna	قورنة	C1418	17	2024-12-24 14:31:38.972329	2024-12-24 14:31:38.972329
337	Jeb Eldam Elbab	جب الدم الباب	C1333	15	2024-12-24 14:31:38.074705	2024-12-24 14:31:38.074705
338	Wadi - Little Jqal	الوادي_جقال صغير	C1334	15	2024-12-24 14:31:38.086064	2024-12-24 14:31:38.086064
339	Jeb Sultan	جب سلطان	C1335	15	2024-12-24 14:31:38.096095	2024-12-24 14:31:38.096095
340	Thalabiyeh - Big Jqal	الثعلبية_جقال كبير	C1336	15	2024-12-24 14:31:38.105428	2024-12-24 14:31:38.105428
341	Jeb Naassan	جب نعسان	C1337	15	2024-12-24 14:31:38.115541	2024-12-24 14:31:38.115541
342	Oruba Bab - Arab Wiran	العروبة الباب_عرب ويران	C1338	15	2024-12-24 14:31:38.125081	2024-12-24 14:31:38.125081
343	Big Sukariyeh	سكرية كبيرة	C1339	15	2024-12-24 14:31:38.135406	2024-12-24 14:31:38.135406
344	Jablet Elhamra	جبلة الحمرة	C1340	15	2024-12-24 14:31:38.145282	2024-12-24 14:31:38.145282
345	Um Shakif	أم شكيف	C1341	15	2024-12-24 14:31:38.154758	2024-12-24 14:31:38.154758
346	Um Adae Ajami	أم عدسةعجمي	C1342	15	2024-12-24 14:31:38.164574	2024-12-24 14:31:38.164574
347	Shdar	شدار	C1343	15	2024-12-24 14:31:38.173364	2024-12-24 14:31:38.173364
348	Shweiha	شويحة	C1344	15	2024-12-24 14:31:38.182295	2024-12-24 14:31:38.182295
349	Tarhin	ترحين	C1345	15	2024-12-24 14:31:38.192257	2024-12-24 14:31:38.192257
350	Barshaya	برشايا	C1346	15	2024-12-24 14:31:38.20146	2024-12-24 14:31:38.20146
351	Little Tafreeah	تفريعة صغيرة	C1347	15	2024-12-24 14:31:38.211917	2024-12-24 14:31:38.211917
352	Bir Tafreeah	تفريعة كبيرة	C1348	15	2024-12-24 14:31:38.221344	2024-12-24 14:31:38.221344
353	Big Nabata	نباتة كبيرة	C1349	15	2024-12-24 14:31:38.231195	2024-12-24 14:31:38.231195
354	Madiq Bu Azar	مضيق بو غاز	C1350	15	2024-12-24 14:31:38.240876	2024-12-24 14:31:38.240876
355	Bablit	بابليت	C1351	16	2024-12-24 14:31:38.250941	2024-12-24 14:31:38.250941
356	Eskan	اسكان	C1352	16	2024-12-24 14:31:38.259745	2024-12-24 14:31:38.259745
357	Abin - Efrin	ابين- عفرين	C1353	16	2024-12-24 14:31:38.269306	2024-12-24 14:31:38.269306
358	Burj Haydar	برج حيدر	C1354	16	2024-12-24 14:31:38.278856	2024-12-24 14:31:38.278856
359	Tellef	تللف	C1355	16	2024-12-24 14:31:38.287458	2024-12-24 14:31:38.287458
360	Shawarghet Eljoz	شوارغة الجوز	C1356	16	2024-12-24 14:31:38.299005	2024-12-24 14:31:38.299005
361	Shawarghet Elarz	شوارغة الأرز	C1357	16	2024-12-24 14:31:38.308666	2024-12-24 14:31:38.308666
362	Ziyara Afrin	الزيارة عفرين	C1358	16	2024-12-24 14:31:38.319454	2024-12-24 14:31:38.319454
363	Sheikh Eldeir	شيخ الدير	C1359	16	2024-12-24 14:31:38.329973	2024-12-24 14:31:38.329973
364	Jalbal	جلبل	C1360	16	2024-12-24 14:31:38.339222	2024-12-24 14:31:38.339222
365	Oqayba	عقيبة	C1361	16	2024-12-24 14:31:38.364664	2024-12-24 14:31:38.364664
366	Hawa	الهوى	C1362	16	2024-12-24 14:31:38.404812	2024-12-24 14:31:38.404812
367	Tharifa	الظريفة	C1363	16	2024-12-24 14:31:38.414797	2024-12-24 14:31:38.414797
368	Khaldiyet Afrin	خالدية عفرين	C1364	16	2024-12-24 14:31:38.424192	2024-12-24 14:31:38.424192
369	Khadraa	الخضراء	C1365	16	2024-12-24 14:31:38.435252	2024-12-24 14:31:38.435252
370	Enab	اناب	C1367	16	2024-12-24 14:31:38.445273	2024-12-24 14:31:38.445273
371	Nireh	النيرة	C1368	16	2024-12-24 14:31:38.455718	2024-12-24 14:31:38.455718
372	Bseileh	البصلية	C1369	16	2024-12-24 14:31:38.464988	2024-12-24 14:31:38.464988
373	Ein Dara	عين دارة	C1370	16	2024-12-24 14:31:38.474184	2024-12-24 14:31:38.474184
374	Baselhaya	باصلحايا	C1371	16	2024-12-24 14:31:38.483058	2024-12-24 14:31:38.483058
375	Bteita	بتيتة	C1372	16	2024-12-24 14:31:38.492548	2024-12-24 14:31:38.492548
376	Baee	باعي	C1373	16	2024-12-24 14:31:38.501667	2024-12-24 14:31:38.501667
377	Basufan	باصوفان	C1374	16	2024-12-24 14:31:38.510652	2024-12-24 14:31:38.510652
378	Brad	براد	C1375	16	2024-12-24 14:31:38.519791	2024-12-24 14:31:38.519791
379	Basuta	باسوطة	C1376	16	2024-12-24 14:31:38.52913	2024-12-24 14:31:38.52913
380	Burj Abdallah	برج عبد الله	C1377	16	2024-12-24 14:31:38.538708	2024-12-24 14:31:38.538708
381	Ghazawiyet Afrin	غزاوية عفرين	C1378	16	2024-12-24 14:31:38.549339	2024-12-24 14:31:38.549339
382	Zahrat Elhayat	زهرةالحياة	C1379	16	2024-12-24 14:31:38.558641	2024-12-24 14:31:38.558641
383	Kabashin	كباشين	C1380	16	2024-12-24 14:31:38.567497	2024-12-24 14:31:38.567497
384	Kawkabeh	كوكبة	C1381	16	2024-12-24 14:31:38.576233	2024-12-24 14:31:38.576233
385	Kimar	كيمار	C1382	16	2024-12-24 14:31:38.584735	2024-12-24 14:31:38.584735
386	Fafertein	فافرتين	C1383	16	2024-12-24 14:31:38.593386	2024-12-24 14:31:38.593386
387	Marata	معراتة	C1384	16	2024-12-24 14:31:38.601669	2024-12-24 14:31:38.601669
388	Kafrshil	كفرشيل	C1385	16	2024-12-24 14:31:38.61091	2024-12-24 14:31:38.61091
389	Mreimin Afrin	مريمين عفرين	C1386	16	2024-12-24 14:31:38.619199	2024-12-24 14:31:38.619199
390	Qarzihel	قرزيحل	C1387	16	2024-12-24 14:31:38.627809	2024-12-24 14:31:38.627809
391	Kafr Batra	كفر بطرة	C1388	16	2024-12-24 14:31:38.6364	2024-12-24 14:31:38.6364
392	Kafr Zeid	كفر زيد	C1389	16	2024-12-24 14:31:38.644561	2024-12-24 14:31:38.644561
393	Kafir	كفير	C1390	16	2024-12-24 14:31:38.654272	2024-12-24 14:31:38.654272
394	Samha Kilani	السمحة_كيلانلي	C1392	17	2024-12-24 14:31:38.664885	2024-12-24 14:31:38.664885
395	Oba Beik Oba Basi	أوبة_بيك أوبه باسي	C1393	17	2024-12-24 14:31:38.674694	2024-12-24 14:31:38.674694
396	Khader	خضر	C1394	17	2024-12-24 14:31:38.686175	2024-12-24 14:31:38.686175
397	Obudan	عبودان	C1395	17	2024-12-24 14:31:38.696899	2024-12-24 14:31:38.696899
398	Sharqan	شرقان	C1396	17	2024-12-24 14:31:38.707061	2024-12-24 14:31:38.707061
399	Abel	أبل	C1397	17	2024-12-24 14:31:38.716661	2024-12-24 14:31:38.716661
400	Dik	الديك	C1398	17	2024-12-24 14:31:38.725273	2024-12-24 14:31:38.725273
401	Deir Hasan	دير حسن	C1399	17	2024-12-24 14:31:38.735001	2024-12-24 14:31:38.735001
402	Sara	السعرة	C1400	17	2024-12-24 14:31:38.745009	2024-12-24 14:31:38.745009
403	Yabseh	اليابسة	C1401	17	2024-12-24 14:31:38.781486	2024-12-24 14:31:38.781486
404	Hajeb - Qash Ogli	الحاجب_قاش أوغلي	C1402	17	2024-12-24 14:31:38.799073	2024-12-24 14:31:38.799073
405	Ras Ahmar	الرأس الأحمر	C1403	17	2024-12-24 14:31:38.807661	2024-12-24 14:31:38.807661
406	Khalil - Khleilak	الخليل_خليلاك	C1404	17	2024-12-24 14:31:38.815499	2024-12-24 14:31:38.815499
407	Sagher - Sagher Oba Si	صاغر_صاغر أوبه سي	C1405	17	2024-12-24 14:31:38.823358	2024-12-24 14:31:38.823358
408	Za'ra	زعرة	C1406	17	2024-12-24 14:31:38.832025	2024-12-24 14:31:38.832025
409	Bali - Koy	بالي_كوي	C1407	17	2024-12-24 14:31:38.840267	2024-12-24 14:31:38.840267
410	Ali Elatrash - Olikar	علي الأطرش_عليكار	C1408	17	2024-12-24 14:31:38.848745	2024-12-24 14:31:38.848745
411	Okan	عوكان	C1409	17	2024-12-24 14:31:38.859122	2024-12-24 14:31:38.859122
412	Sheikh Khoraz	شيخ خورز	C1410	17	2024-12-24 14:31:38.868804	2024-12-24 14:31:38.868804
413	Ashani	عشاني	C1411	17	2024-12-24 14:31:38.879759	2024-12-24 14:31:38.879759
414	Tafla	الطفلة	C1412	17	2024-12-24 14:31:38.892593	2024-12-24 14:31:38.892593
415	Mudallala Afrin - Eastern Kotanly	المدللة عفرين_كوتانلي شرقي	C1413	17	2024-12-24 14:31:38.904932	2024-12-24 14:31:38.904932
416	Marwiyeh	المروية	C1414	17	2024-12-24 14:31:38.92071	2024-12-24 14:31:38.92071
417	Qotan	قوطان	C1415	17	2024-12-24 14:31:38.934737	2024-12-24 14:31:38.934737
418	Qastal Miqdad	قسطل مقداد	C1416	17	2024-12-24 14:31:38.946862	2024-12-24 14:31:38.946862
419	Hozan	هوزان	C1417	17	2024-12-24 14:31:38.960488	2024-12-24 14:31:38.960488
421	Sheikh Abel Rahman	شيخ عبد الرحمن	C1419	18	2024-12-24 14:31:38.98535	2024-12-24 14:31:38.98535
422	Haj Eskandar	حاج اسكندر	C1420	18	2024-12-24 14:31:38.996775	2024-12-24 14:31:38.996775
423	Jum Afrin	جوم عفرين	C1421	18	2024-12-24 14:31:39.011888	2024-12-24 14:31:39.011888
424	Ramadiyeh	رمادية	C1422	18	2024-12-24 14:31:39.023164	2024-12-24 14:31:39.023164
425	Dakhm	الضخم	C1423	18	2024-12-24 14:31:39.0364	2024-12-24 14:31:39.0364
426	Jalma	جلمة	C1424	18	2024-12-24 14:31:39.050796	2024-12-24 14:31:39.050796
427	Jalaq	جلق	C1425	18	2024-12-24 14:31:39.064275	2024-12-24 14:31:39.064275
428	Hamam	الحمام	C1427	18	2024-12-24 14:31:39.078708	2024-12-24 14:31:39.078708
429	Burj Kmush	برج كموش	C1428	18	2024-12-24 14:31:39.091325	2024-12-24 14:31:39.091325
430	Ras Elosud - Qarablish	راس الأسود_قراباش	C1429	18	2024-12-24 14:31:39.105101	2024-12-24 14:31:39.105101
431	Tal Hamo	تل حمو	C1430	18	2024-12-24 14:31:39.119304	2024-12-24 14:31:39.119304
432	Upper Diwan	ديوان فوقاني	C1431	18	2024-12-24 14:31:39.13282	2024-12-24 14:31:39.13282
433	Kharzan	خرزان	C1432	18	2024-12-24 14:31:39.144496	2024-12-24 14:31:39.144496
434	Tal Slur	تل سلور	C1433	18	2024-12-24 14:31:39.155975	2024-12-24 14:31:39.155975
435	Bayada - Jendris	البياضة - جنديرس	C1434	18	2024-12-24 14:31:39.17844	2024-12-24 14:31:39.17844
436	Deir Ballut	دير بلوط	C1435	18	2024-12-24 14:31:39.191715	2024-12-24 14:31:39.191715
437	Western Khaltan	خلطان غربي	C1436	18	2024-12-24 14:31:39.205448	2024-12-24 14:31:39.205448
438	Western Eshkab	اشكان غربي	C1437	18	2024-12-24 14:31:39.219404	2024-12-24 14:31:39.219404
439	Zanda	زندة	C1438	18	2024-12-24 14:31:39.230675	2024-12-24 14:31:39.230675
440	Nisriyeh	النسرية	C1439	18	2024-12-24 14:31:39.241019	2024-12-24 14:31:39.241019
441	Fasha	الفسحة	C1440	18	2024-12-24 14:31:39.253383	2024-12-24 14:31:39.253383
442	Eastern Eshkan	اشكان شرقي	C1441	18	2024-12-24 14:31:39.266188	2024-12-24 14:31:39.266188
443	Upper Kafardali	كفردلي فوقاني	C1442	18	2024-12-24 14:31:39.277257	2024-12-24 14:31:39.277257
444	Upper Marwana	مروانة فوقاني	C1443	18	2024-12-24 14:31:39.287586	2024-12-24 14:31:39.287586
445	Upper Maskeh	مسكة فوقاني	C1444	18	2024-12-24 14:31:39.300212	2024-12-24 14:31:39.300212
446	Kordan	كوردان	C1445	18	2024-12-24 14:31:39.311595	2024-12-24 14:31:39.311595
447	Freiriyeh	فريرية	C1446	18	2024-12-24 14:31:39.322547	2024-12-24 14:31:39.322547
448	Koran Jandris	كوران جنديرس	C1447	18	2024-12-24 14:31:39.336916	2024-12-24 14:31:39.336916
449	Lower Kafardali	كفردلي تحتاني	C1448	18	2024-12-24 14:31:39.348331	2024-12-24 14:31:39.348331
450	Kafr Safra	كفر صفرة	C1449	18	2024-12-24 14:31:39.358389	2024-12-24 14:31:39.358389
451	Shyukh - Sheikh Oba Si	الشيوخ_شيخ أوبه سي	C1450	19	2024-12-24 14:31:39.368672	2024-12-24 14:31:39.368672
452	Ghizlan - Jilani	الغزلان_جيلاني	C1451	19	2024-12-24 14:31:39.3796	2024-12-24 14:31:39.3796
453	Hamshu - Hamashtlak	حمشو_حمشتلك	C1452	19	2024-12-24 14:31:39.388868	2024-12-24 14:31:39.388868
454	Sheikh Mohammed	شيخ محمد	C1453	19	2024-12-24 14:31:39.399006	2024-12-24 14:31:39.399006
455	Dawdaw	ضوضو	C1454	19	2024-12-24 14:31:39.408889	2024-12-24 14:31:39.408889
456	Haj Khalil	حاج خليل	C1455	19	2024-12-24 14:31:39.419901	2024-12-24 14:31:39.419901
457	Darwishiyeh	الدرويشية	C1456	19	2024-12-24 14:31:39.430009	2024-12-24 14:31:39.430009
458	Maamel - Oshagi	المعامل_أوشاغي	C1457	19	2024-12-24 14:31:39.439908	2024-12-24 14:31:39.439908
459	Aaliaa - Ali Baski	العلياء_علي بسكي	C1458	19	2024-12-24 14:31:39.449978	2024-12-24 14:31:39.449978
460	Batra	البتراء	C1459	19	2024-12-24 14:31:39.459254	2024-12-24 14:31:39.459254
461	Murtafiah	المرتفعة_قودة كوي	C1460	19	2024-12-24 14:31:39.468353	2024-12-24 14:31:39.468353
462	Omar - Omar Oshaghi	عمر_عمر أوشاغي	C1461	19	2024-12-24 14:31:39.478022	2024-12-24 14:31:39.478022
463	Raee - Jobanli	الراعي_جوبانلي	C1462	19	2024-12-24 14:31:39.486845	2024-12-24 14:31:39.486845
464	Hajman	حجمان	C1463	19	2024-12-24 14:31:39.49628	2024-12-24 14:31:39.49628
465	Taqiyeh - Kamrash	الطاقية_كمرش	C1464	19	2024-12-24 14:31:39.505432	2024-12-24 14:31:39.505432
466	Barband	بربند	C1465	19	2024-12-24 14:31:39.515798	2024-12-24 14:31:39.515798
467	Upper Dhak - Upper Kolyan	الضحاك فوقاني_كوليان فوقاني	C1466	19	2024-12-24 14:31:39.524876	2024-12-24 14:31:39.524876
468	Almadar	علمدار	C1467	19	2024-12-24 14:31:39.534778	2024-12-24 14:31:39.534778
469	Bilaliyeh - Blaliko	بلالية_بلاليكو	C1468	19	2024-12-24 14:31:39.544706	2024-12-24 14:31:39.544706
470	Tholathiyeh	الثلاثية	C1469	19	2024-12-24 14:31:39.553618	2024-12-24 14:31:39.553618
471	Little Siwan - Little Jaqmaq	الصوان الصغير_جقمق صغير	C1470	19	2024-12-24 14:31:39.565133	2024-12-24 14:31:39.565133
472	Birein - Jtal Qoyo	البئرين_جتال قويو	C1471	19	2024-12-24 14:31:39.575242	2024-12-24 14:31:39.575242
473	Thadi - Mamali	الثدي_مامالي	C1472	19	2024-12-24 14:31:39.586386	2024-12-24 14:31:39.586386
474	Beit Adin	بيت عدين	C1473	19	2024-12-24 14:31:39.601295	2024-12-24 14:31:39.601295
475	Lower Dhak - Kolyan	الضحاك التحتاني_كوليان	C1474	19	2024-12-24 14:31:39.613122	2024-12-24 14:31:39.613122
476	Jablieh - Tag Obeh Si	الجبلية_طاغ أوبه سي	C1475	19	2024-12-24 14:31:39.625108	2024-12-24 14:31:39.625108
477	Janjaleh	جنجلة	C1476	19	2024-12-24 14:31:39.638651	2024-12-24 14:31:39.638651
478	Jalqama	جلقمة	C1477	19	2024-12-24 14:31:39.651443	2024-12-24 14:31:39.651443
479	Big Siwan	الصوان الكبير	C1478	19	2024-12-24 14:31:39.667355	2024-12-24 14:31:39.667355
480	Ada	ادة	C1479	19	2024-12-24 14:31:39.680272	2024-12-24 14:31:39.680272
481	Qalam - Bandrak	القلم_بندرك	C1480	19	2024-12-24 14:31:39.692727	2024-12-24 14:31:39.692727
482	Atman	عطمان	C1481	19	2024-12-24 14:31:39.703817	2024-12-24 14:31:39.703817
483	Shankal	شنكل	C1482	19	2024-12-24 14:31:39.717036	2024-12-24 14:31:39.717036
484	Talleh - Zarkani	الطلة_زركانلي	C1483	19	2024-12-24 14:31:39.731726	2024-12-24 14:31:39.731726
485	Hjeij - Haji Kanli	الحجيج_حجي كانلي	C1485	19	2024-12-24 14:31:39.744313	2024-12-24 14:31:39.744313
486	Omsiya - Donbaly	الأمسية_دونبللي	C1486	19	2024-12-24 14:31:39.76712	2024-12-24 14:31:39.76712
487	Musiyeh - Oba Si	موسيه_أوبه سي	C1487	19	2024-12-24 14:31:39.795081	2024-12-24 14:31:39.795081
488	Meidan Ekbis	ميدان أكبس	C1488	19	2024-12-24 14:31:39.82003	2024-12-24 14:31:39.82003
489	Halil - Holilo	هليل_هوليلو	C1489	19	2024-12-24 14:31:39.841892	2024-12-24 14:31:39.841892
490	Kusan	كوسان	C1490	19	2024-12-24 14:31:39.858814	2024-12-24 14:31:39.858814
491	Masikan	ماسيكان	C1491	19	2024-12-24 14:31:39.877939	2024-12-24 14:31:39.877939
492	Koran Afrin	كوران عفرين	C1492	19	2024-12-24 14:31:39.890234	2024-12-24 14:31:39.890234
493	Jiman	جمان	C1493	20	2024-12-24 14:31:39.902707	2024-12-24 14:31:39.902707
494	Deir Siwan	ديرصوان	C1494	20	2024-12-24 14:31:39.916039	2024-12-24 14:31:39.916039
495	Dama - Ayki Dam	دامة_أيكي دام	C1495	20	2024-12-24 14:31:39.929432	2024-12-24 14:31:39.929432
496	Big Bostan	البستان الكبير	C1496	20	2024-12-24 14:31:39.948927	2024-12-24 14:31:39.948927
497	Tal Elosud	تل الاسود	C1498	20	2024-12-24 14:31:39.961832	2024-12-24 14:31:39.961832
498	Zaytuneh	زيتونة	C1499	20	2024-12-24 14:31:39.972894	2024-12-24 14:31:39.972894
499	Yiji	اليجي	C1500	20	2024-12-24 14:31:39.984784	2024-12-24 14:31:39.984784
500	Little Hallubi	حلوبي صغير	C1501	20	2024-12-24 14:31:39.994509	2024-12-24 14:31:39.994509
501	Mhabbaba - Naz Oshaghi	المحببة_ناز أوشاغي	C1502	20	2024-12-24 14:31:40.010695	2024-12-24 14:31:40.010695
502	Bayaa	البياعة	C1503	20	2024-12-24 14:31:40.022348	2024-12-24 14:31:40.022348
503	Big Hallubi	حلوبي كبير	C1504	20	2024-12-24 14:31:40.033352	2024-12-24 14:31:40.033352
504	Maydan Afrin	الميدان عفرين	C1505	20	2024-12-24 14:31:40.043489	2024-12-24 14:31:40.043489
505	Doraq	دوراقا	C1506	20	2024-12-24 14:31:40.053708	2024-12-24 14:31:40.053708
506	Bafelyun	بافليون	C1507	20	2024-12-24 14:31:40.064432	2024-12-24 14:31:40.064432
507	Ser - Sarnjak	السعر_سعرنجاك	C1508	20	2024-12-24 14:31:40.075289	2024-12-24 14:31:40.075289
508	Qarra	القارة	C1509	20	2024-12-24 14:31:40.092703	2024-12-24 14:31:40.092703
509	Omariyeh Afrin	العمرية عفرين	C1510	20	2024-12-24 14:31:40.102881	2024-12-24 14:31:40.102881
510	Amud	العمود	C1511	20	2024-12-24 14:31:40.117794	2024-12-24 14:31:40.117794
511	Ali Bazan	علي بازان	C1512	20	2024-12-24 14:31:40.127755	2024-12-24 14:31:40.127755
512	Big Dib	الديب الكبير	C1513	20	2024-12-24 14:31:40.139785	2024-12-24 14:31:40.139785
513	Qastal	القسطل	C1514	20	2024-12-24 14:31:40.157247	2024-12-24 14:31:40.157247
514	Doha	الضحى	C1515	20	2024-12-24 14:31:40.170364	2024-12-24 14:31:40.170364
515	Little Dib	الديب الصغير	C1516	20	2024-12-24 14:31:40.17977	2024-12-24 14:31:40.17977
516	Sim Omariyeh	السيم_العمرية	C1517	20	2024-12-24 14:31:40.192281	2024-12-24 14:31:40.192281
517	Kafr Janna	كفر جنة	C1518	20	2024-12-24 14:31:40.204904	2024-12-24 14:31:40.204904
518	Qatireh	قطيرة	C1519	20	2024-12-24 14:31:40.215887	2024-12-24 14:31:40.215887
519	Mashaala	مشعلة	C1520	20	2024-12-24 14:31:40.225991	2024-12-24 14:31:40.225991
520	Qastal Jend	قسطل جند	C1521	20	2024-12-24 14:31:40.236345	2024-12-24 14:31:40.236345
521	Kafroum	كفرروم	C1522	20	2024-12-24 14:31:40.246837	2024-12-24 14:31:40.246837
522	Marsawa	مرساوا	C1523	20	2024-12-24 14:31:40.257319	2024-12-24 14:31:40.257319
523	Qatmet Efrin	قاطمة عفرين	C1524	20	2024-12-24 14:31:40.267535	2024-12-24 14:31:40.267535
524	Tal Elthaaleb - Sheikh Jqali	تل الثعالب_شيخ جقاللي	C1526	21	2024-12-24 14:31:40.278154	2024-12-24 14:31:40.278154
525	Khazafiyeh - Qorret Matlaq	خزفية_قرة متلق	C1527	21	2024-12-24 14:31:40.288288	2024-12-24 14:31:40.288288
526	Anqala	انقلة	C1528	21	2024-12-24 14:31:40.298954	2024-12-24 14:31:40.298954
527	Sinnara	سنارة	C1529	21	2024-12-24 14:31:40.309581	2024-12-24 14:31:40.309581
528	Mazineh - Aranda	المزينة_أرندة	C1530	21	2024-12-24 14:31:40.32047	2024-12-24 14:31:40.32047
529	Darmash - Darmashkanli	درمش_درمشكانلي	C1531	21	2024-12-24 14:31:40.330739	2024-12-24 14:31:40.330739
530	Wadi Elthaalab - Lower Jqal	وادي الثعالب_جقال تحتاني	C1532	21	2024-12-24 14:31:40.340566	2024-12-24 14:31:40.340566
531	Maghar - Maghar Jeq	مغار_مغار جق	C1533	21	2024-12-24 14:31:40.352527	2024-12-24 14:31:40.352527
532	Mostakan	مستكان	C1534	21	2024-12-24 14:31:40.363215	2024-12-24 14:31:40.363215
533	Bermaja	برماجة	C1535	22	2024-12-24 14:31:40.373125	2024-12-24 14:31:40.373125
534	Surra - Kobak	الصرة_كوباك	C1536	22	2024-12-24 14:31:40.382793	2024-12-24 14:31:40.382793
535	Ashur	عاشور	C1537	22	2024-12-24 14:31:40.392069	2024-12-24 14:31:40.392069
536	Hamu Raju	حمو راجو	C1538	22	2024-12-24 14:31:40.401496	2024-12-24 14:31:40.401496
537	Shorba	الشوربة	C1539	22	2024-12-24 14:31:40.410411	2024-12-24 14:31:40.410411
538	Sherkan - Sherkanli	شيركان_شيركانلي	C1540	22	2024-12-24 14:31:40.420338	2024-12-24 14:31:40.420338
539	Haj Qassem	حاج قاسم	C1541	22	2024-12-24 14:31:40.429637	2024-12-24 14:31:40.429637
540	Big Dar	دار كبير	C1542	22	2024-12-24 14:31:40.438767	2024-12-24 14:31:40.438767
541	Amiriya - Meirkan	الأميرية_ميركان	C1543	22	2024-12-24 14:31:40.447375	2024-12-24 14:31:40.447375
542	Jomrokiyeh	الجمركية	C1544	22	2024-12-24 14:31:40.456574	2024-12-24 14:31:40.456574
543	Yatimeh - Oksozli	اليتيمة_أوكسوزلي	C1545	22	2024-12-24 14:31:40.465455	2024-12-24 14:31:40.465455
544	Maasara - Maasaret Jaq	المعصرة_معصرةجق	C1546	22	2024-12-24 14:31:40.474427	2024-12-24 14:31:40.474427
545	Abraz	أبرز	C1547	22	2024-12-24 14:31:40.486168	2024-12-24 14:31:40.486168
546	Awlad El Arab - Arab Oshagi	أولاد العرب_عرب أوشاغي	C1548	22	2024-12-24 14:31:40.498326	2024-12-24 14:31:40.498326
547	Anbar	أنبار	C1549	22	2024-12-24 14:31:40.508338	2024-12-24 14:31:40.508338
548	Smal	السمال	C1550	22	2024-12-24 14:31:40.519076	2024-12-24 14:31:40.519076
549	Jazruniyeh	الجزرونية	C1551	22	2024-12-24 14:31:40.532608	2024-12-24 14:31:40.532608
550	Mazuleh - Rotanli	المعزولة_روطانلي	C1553	22	2024-12-24 14:31:40.545409	2024-12-24 14:31:40.545409
551	Sheikh Aqraa - Kilo	الشيخ الأقرع_كيلو	C1554	22	2024-12-24 14:31:40.554981	2024-12-24 14:31:40.554981
552	Yakhur - Ayki Yakhur	ياخور_أيكي أخور	C1555	22	2024-12-24 14:31:40.564836	2024-12-24 14:31:40.564836
553	Sijraz	سيجراز	C1556	23	2024-12-24 14:31:40.575202	2024-12-24 14:31:40.575202
554	Shmarekh	شمارخ	C1557	23	2024-12-24 14:31:40.585427	2024-12-24 14:31:40.585427
555	Tatiyeh	طاطية	C1558	23	2024-12-24 14:31:40.59565	2024-12-24 14:31:40.59565
556	Talil Elsham	تليل الشام	C1559	23	2024-12-24 14:31:40.605508	2024-12-24 14:31:40.605508
557	Ferziyeh	الفيرزية	C1560	23	2024-12-24 14:31:40.614837	2024-12-24 14:31:40.614837
558	Salama	السلامة	C1561	23	2024-12-24 14:31:40.623882	2024-12-24 14:31:40.623882
559	Jarez	جارز	C1562	23	2024-12-24 14:31:40.632755	2024-12-24 14:31:40.632755
560	Al-Malikeyyeh	المالكية	C1563	23	2024-12-24 14:31:40.641045	2024-12-24 14:31:40.641045
561	Krum	الكروم	C1565	23	2024-12-24 14:31:40.65306	2024-12-24 14:31:40.65306
562	Shamarin	شمارين	C1566	23	2024-12-24 14:31:40.662128	2024-12-24 14:31:40.662128
563	Kafr Khasher	كفر خاشر	C1567	23	2024-12-24 14:31:40.6716	2024-12-24 14:31:40.6716
564	Kafr Kalbein	كفر كلبين	C1568	23	2024-12-24 14:31:40.681427	2024-12-24 14:31:40.681427
565	Manaq	منق	C1569	23	2024-12-24 14:31:40.6903	2024-12-24 14:31:40.6903
566	Maraanaz	مرعناز	C1570	23	2024-12-24 14:31:40.699661	2024-12-24 14:31:40.699661
567	Yahmul	يحمول	C1571	23	2024-12-24 14:31:40.708363	2024-12-24 14:31:40.708363
568	Niddeh	ندة	C1572	23	2024-12-24 14:31:40.716902	2024-12-24 14:31:40.716902
569	Nayara	نيارة	C1573	23	2024-12-24 14:31:40.725607	2024-12-24 14:31:40.725607
570	Maarin	معرين	C1574	23	2024-12-24 14:31:40.734744	2024-12-24 14:31:40.734744
571	Kaljibrin	كلجبرين	C1575	23	2024-12-24 14:31:40.74293	2024-12-24 14:31:40.74293
572	Khalfatli	خلفتلي	C1576	24	2024-12-24 14:31:40.75348	2024-12-24 14:31:40.75348
573	Bhorta	بحورته	C1577	24	2024-12-24 14:31:40.763481	2024-12-24 14:31:40.763481
574	Aziziyeh	العزيزية	C1578	24	2024-12-24 14:31:40.771957	2024-12-24 14:31:40.771957
575	Zayadiyeh	زيادية	C1579	24	2024-12-24 14:31:40.78322	2024-12-24 14:31:40.78322
576	Bayada - Aq Burhan	البياضية_آق برهان	C1580	24	2024-12-24 14:31:40.792577	2024-12-24 14:31:40.792577
577	Baruz	باروزة	C1582	24	2024-12-24 14:31:40.801749	2024-12-24 14:31:40.801749
578	Bleikha	بليخة	C1583	24	2024-12-24 14:31:40.811376	2024-12-24 14:31:40.811376
579	Abla	عبلة	C1584	24	2024-12-24 14:31:40.821109	2024-12-24 14:31:40.821109
580	Hardana	الحردانة	C1585	24	2024-12-24 14:31:40.830745	2024-12-24 14:31:40.830745
581	Dweir Elhawa	دوير الهوا	C1586	24	2024-12-24 14:31:40.839962	2024-12-24 14:31:40.839962
582	Oweilin	عويلين	C1587	24	2024-12-24 14:31:40.849629	2024-12-24 14:31:40.849629
583	Sandara	صندرة	C1588	24	2024-12-24 14:31:40.858598	2024-12-24 14:31:40.858598
584	Tweis	طويس	C1589	24	2024-12-24 14:31:40.867796	2024-12-24 14:31:40.867796
585	Taanah	طعانة	C1590	24	2024-12-24 14:31:40.877551	2024-12-24 14:31:40.877551
586	Dweidan	دوديان	C1591	24	2024-12-24 14:31:40.890085	2024-12-24 14:31:40.890085
587	Tal Sheer Aazaz	تل شعير اعزاز	C1592	24	2024-12-24 14:31:40.899351	2024-12-24 14:31:40.899351
588	Bgheidine	بغيدين	C1593	24	2024-12-24 14:31:40.90936	2024-12-24 14:31:40.90936
589	Eastern Tal Aar	تل عار شرقية	C1594	24	2024-12-24 14:31:40.919019	2024-12-24 14:31:40.919019
590	Western Tal Aar	تل عار غربية	C1595	24	2024-12-24 14:31:40.929774	2024-12-24 14:31:40.929774
591	Samuqet Aazaz	سموقة اعزاز	C1596	24	2024-12-24 14:31:40.939078	2024-12-24 14:31:40.939078
592	Dabeq	دابق	C1597	24	2024-12-24 14:31:40.94896	2024-12-24 14:31:40.94896
593	Eskar	اكسار	C1598	24	2024-12-24 14:31:40.957931	2024-12-24 14:31:40.957931
594	Masudiyeh	المسعودية	C1599	24	2024-12-24 14:31:40.966824	2024-12-24 14:31:40.966824
595	Jakkeh	جكة	C1600	24	2024-12-24 14:31:40.975093	2024-12-24 14:31:40.975093
596	Eastern Tal Battal	تل بطال شرقي	C1601	24	2024-12-24 14:31:40.984574	2024-12-24 14:31:40.984574
597	Tat Hims	طاط حمس	C1602	24	2024-12-24 14:31:40.993615	2024-12-24 14:31:40.993615
598	Ghorur	غرور	C1603	24	2024-12-24 14:31:41.003389	2024-12-24 14:31:41.003389
599	Ein Elosud	عين الاسود	C1604	24	2024-12-24 14:31:41.013063	2024-12-24 14:31:41.013063
600	Turkman Bareh	تركمان بارح	C1605	24	2024-12-24 14:31:41.022269	2024-12-24 14:31:41.022269
601	Teltana	تلتانة	C1606	24	2024-12-24 14:31:41.031872	2024-12-24 14:31:41.031872
602	Ghoz	الغوز	C1607	24	2024-12-24 14:31:41.041392	2024-12-24 14:31:41.041392
603	Gheilaniyeh	الغيلانية	C1608	24	2024-12-24 14:31:41.050337	2024-12-24 14:31:41.050337
604	Kaeebeh	كعيبة	C1609	24	2024-12-24 14:31:41.059895	2024-12-24 14:31:41.059895
605	Kardish	كدريش	C1610	24	2024-12-24 14:31:41.071137	2024-12-24 14:31:41.071137
606	Qabtan	قبتان	C1611	24	2024-12-24 14:31:41.082815	2024-12-24 14:31:41.082815
607	Qorra Mazraa	قره مزرعة	C1612	24	2024-12-24 14:31:41.092201	2024-12-24 14:31:41.092201
608	Qazam - Qesset Jak	قزم_قصه جك	C1613	24	2024-12-24 14:31:41.102795	2024-12-24 14:31:41.102795
609	Ghaytun	غيطون	C1614	24	2024-12-24 14:31:41.112198	2024-12-24 14:31:41.112198
610	Wash	واش	C1615	24	2024-12-24 14:31:41.121266	2024-12-24 14:31:41.121266
611	Qaar Kalbein	قعر كلبين	C1616	24	2024-12-24 14:31:41.130908	2024-12-24 14:31:41.130908
612	Tal Jbine	تل جبين	C1617	25	2024-12-24 14:31:41.140917	2024-12-24 14:31:41.140917
613	Tellejar	تلعجار	C1618	25	2024-12-24 14:31:41.151017	2024-12-24 14:31:41.151017
614	Tanab	تنب	C1619	25	2024-12-24 14:31:41.161105	2024-12-24 14:31:41.161105
615	Deir Jmal	دير جمال	C1620	25	2024-12-24 14:31:41.170486	2024-12-24 14:31:41.170486
616	Tatemrash	طاطمراش	C1622	25	2024-12-24 14:31:41.180013	2024-12-24 14:31:41.180013
617	Ahras	احرص	C1623	25	2024-12-24 14:31:41.18973	2024-12-24 14:31:41.18973
618	Sheikh Issa	الشيخ عيسى	C1624	25	2024-12-24 14:31:41.199483	2024-12-24 14:31:41.199483
619	Kashtaar	كشتعار	C1625	25	2024-12-24 14:31:41.20807	2024-12-24 14:31:41.20807
620	Kafrnaya	كفرنايا	C1626	25	2024-12-24 14:31:41.224418	2024-12-24 14:31:41.224418
621	Masqan	مسقان	C1627	25	2024-12-24 14:31:41.234996	2024-12-24 14:31:41.234996
622	Kafr Naseh Tal Refaat	كفر ناصح تل رفعت	C1628	25	2024-12-24 14:31:41.24452	2024-12-24 14:31:41.24452
623	Asanbal	اسنبل	C1629	26	2024-12-24 14:31:41.253419	2024-12-24 14:31:41.253419
624	Saed - Qlsroj	الساعد_قولسروج	C1630	26	2024-12-24 14:31:41.262585	2024-12-24 14:31:41.262585
625	Harbal	حربل	C1631	26	2024-12-24 14:31:41.27193	2024-12-24 14:31:41.27193
626	Tlaline	تلالين	C1632	26	2024-12-24 14:31:41.281444	2024-12-24 14:31:41.281444
627	Alsayed Ali	السيد علي	C1633	26	2024-12-24 14:31:41.291951	2024-12-24 14:31:41.291951
628	Hosniyeh - Hsajek	الحسنية_حساجك	C1634	26	2024-12-24 14:31:41.301842	2024-12-24 14:31:41.301842
629	Tal Madeeq	تل مضيق	C1635	26	2024-12-24 14:31:41.312519	2024-12-24 14:31:41.312519
630	Hiwar Elnahr	حوار النهر	C1636	26	2024-12-24 14:31:41.322304	2024-12-24 14:31:41.322304
631	Hissiyeh	الحصية	C1637	26	2024-12-24 14:31:41.331756	2024-12-24 14:31:41.331756
632	Telqraq	تلقراح	C1638	26	2024-12-24 14:31:41.340757	2024-12-24 14:31:41.340757
633	Qaramel	قرامل	C1639	26	2024-12-24 14:31:41.350289	2024-12-24 14:31:41.350289
634	Fafin	فافين	C1640	26	2024-12-24 14:31:41.361664	2024-12-24 14:31:41.361664
635	Maratet Um Hosh	معراتة أم حوش	C1641	26	2024-12-24 14:31:41.370989	2024-12-24 14:31:41.370989
636	Kafr Elward	كفر الورد	C1642	26	2024-12-24 14:31:41.380997	2024-12-24 14:31:41.380997
637	Wahshiyeh	وحشية	C1644	26	2024-12-24 14:31:41.390578	2024-12-24 14:31:41.390578
638	Big Zawraq	زوق الكبير	C1645	27	2024-12-24 14:31:41.400349	2024-12-24 14:31:41.400349
639	Zahraa	الزهراء	C1646	27	2024-12-24 14:31:41.40967	2024-12-24 14:31:41.40967
640	Hardatnin	حردتنين	C1647	27	2024-12-24 14:31:41.419536	2024-12-24 14:31:41.419536
641	Burj Elqas	برج القاص	C1648	27	2024-12-24 14:31:41.428958	2024-12-24 14:31:41.428958
642	Byanun	بيانون	C1649	27	2024-12-24 14:31:41.438688	2024-12-24 14:31:41.438688
643	Bashmra	باشمرة	C1650	27	2024-12-24 14:31:41.4512	2024-12-24 14:31:41.4512
644	Retyan	رتيان	C1651	27	2024-12-24 14:31:41.461876	2024-12-24 14:31:41.461876
645	Kafin	كفين	C1652	27	2024-12-24 14:31:41.471208	2024-12-24 14:31:41.471208
646	Maarset Elkhan	معرسة الخان	C1653	27	2024-12-24 14:31:41.481577	2024-12-24 14:31:41.481577
647	Mayasa	مياسة	C1654	27	2024-12-24 14:31:41.492112	2024-12-24 14:31:41.492112
648	Mayer	ماير	C1656	27	2024-12-24 14:31:41.501807	2024-12-24 14:31:41.501807
649	Yarobiyeh	اليعربية	C1657	28	2024-12-24 14:31:41.51478	2024-12-24 14:31:41.51478
650	Zayzafun - Ekdeh	الزيزفون_إيكدة	C1658	28	2024-12-24 14:31:41.525055	2024-12-24 14:31:41.525055
651	Dweibeq	دويبق	C1659	28	2024-12-24 14:31:41.535093	2024-12-24 14:31:41.535093
652	Shweirin	شويرين	C1660	28	2024-12-24 14:31:41.54888	2024-12-24 14:31:41.54888
653	Hiwar Kalas	حوار كلس	C1661	28	2024-12-24 14:31:41.55941	2024-12-24 14:31:41.55941
654	Jdideh	الجديدة	C1662	28	2024-12-24 14:31:41.569414	2024-12-24 14:31:41.569414
655	Baraghideh	براغيدة	C1663	28	2024-12-24 14:31:41.579008	2024-12-24 14:31:41.579008
656	Rael	راعل	C1665	28	2024-12-24 14:31:41.588175	2024-12-24 14:31:41.588175
657	Thaheriya Azaz	الظاهرية أعزاز	C1666	28	2024-12-24 14:31:41.597137	2024-12-24 14:31:41.597137
658	Ehteimlat	احتيملات	C1667	28	2024-12-24 14:31:41.60655	2024-12-24 14:31:41.60655
659	Odaya	العدية	C1668	28	2024-12-24 14:31:41.615626	2024-12-24 14:31:41.615626
660	Albil	البل	C1669	28	2024-12-24 14:31:41.624341	2024-12-24 14:31:41.624341
661	Mreigel	مريغل	C1670	28	2024-12-24 14:31:41.633488	2024-12-24 14:31:41.633488
662	Kafr Barja	كفر بارجة	C1671	28	2024-12-24 14:31:41.642364	2024-12-24 14:31:41.642364
663	Kafra	كفرة	C1672	28	2024-12-24 14:31:41.651274	2024-12-24 14:31:41.651274
664	Kafrshush	كفرشوش	C1673	28	2024-12-24 14:31:41.662726	2024-12-24 14:31:41.662726
665	Rasm Elmashrafeh	رسم المشرفة	C1674	29	2024-12-24 14:31:41.672787	2024-12-24 14:31:41.672787
666	Kherbet Elhsan	خربة الحصان	C1675	29	2024-12-24 14:31:41.684018	2024-12-24 14:31:41.684018
667	Tal Yasti	تل ياسطي	C1676	29	2024-12-24 14:31:41.695586	2024-12-24 14:31:41.695586
668	Btoshiyet Manbaj	بطوشية منبج	C1677	29	2024-12-24 14:31:41.704907	2024-12-24 14:31:41.704907
669	Asaliyeh	عسلية	C1678	29	2024-12-24 14:31:41.71551	2024-12-24 14:31:41.71551
670	Farat	الفارات	C1679	29	2024-12-24 14:31:41.725834	2024-12-24 14:31:41.725834
671	Kherbet Elsheyab	خربة الشياب	C1680	29	2024-12-24 14:31:41.736663	2024-12-24 14:31:41.736663
672	Um Jlud	أم جلود	C1681	29	2024-12-24 14:31:41.749285	2024-12-24 14:31:41.749285
673	Little Osajli	عوسجلي صغير	C1682	29	2024-12-24 14:31:41.762583	2024-12-24 14:31:41.762583
674	Big Arab Hasan	عرب حسن كبير	C1683	29	2024-12-24 14:31:41.773749	2024-12-24 14:31:41.773749
675	Jeb Elqader	جب القادر	C1684	29	2024-12-24 14:31:41.78603	2024-12-24 14:31:41.78603
676	Um Jalal	أم جلال	C1685	29	2024-12-24 14:31:41.798238	2024-12-24 14:31:41.798238
677	Toq Elkhalil	طوق الخليل	C1686	29	2024-12-24 14:31:41.811402	2024-12-24 14:31:41.811402
678	Big Osajli	عوسجلي كبير	C1687	29	2024-12-24 14:31:41.825528	2024-12-24 14:31:41.825528
679	Dandaniya	دندنية	C1688	29	2024-12-24 14:31:41.838895	2024-12-24 14:31:41.838895
680	Tal Rafei	تل رفيع	C1689	29	2024-12-24 14:31:41.852538	2024-12-24 14:31:41.852538
681	Jeb Makhzum	جب مخزوم	C1690	29	2024-12-24 14:31:41.866312	2024-12-24 14:31:41.866312
682	Twal	طوال	C1691	29	2024-12-24 14:31:41.879823	2024-12-24 14:31:41.879823
683	Biret Manbaj	البيرة منبج	C1692	29	2024-12-24 14:31:41.891832	2024-12-24 14:31:41.891832
684	Amudiyeh	عامودية	C1693	29	2024-12-24 14:31:41.904678	2024-12-24 14:31:41.904678
685	Tal Abu Jadha - Tayara	تل أبو جدحة_طيارة	C1694	29	2024-12-24 14:31:41.918002	2024-12-24 14:31:41.918002
686	Jeb Elhamam Sultan	جب الحمام سلطان	C1695	29	2024-12-24 14:31:41.929883	2024-12-24 14:31:41.929883
687	Khishfet Um Adaseh	خشفة ام عدسة	C1696	29	2024-12-24 14:31:41.940712	2024-12-24 14:31:41.940712
688	Jeb Elthor - Akrash	جب الثور_عكرش	C1697	29	2024-12-24 14:31:41.952377	2024-12-24 14:31:41.952377
689	Um Khorzet Manbaj	أم خرزة منبج	C1698	29	2024-12-24 14:31:41.965447	2024-12-24 14:31:41.965447
690	Anzawiyeh Manbaj	عنزاوية منبج	C1699	29	2024-12-24 14:31:41.978076	2024-12-24 14:31:41.978076
691	Um Elsateh	أم السطح	C1700	29	2024-12-24 14:31:41.989258	2024-12-24 14:31:41.989258
692	Jeb Abyad	جب ابيض	C1701	29	2024-12-24 14:31:41.999369	2024-12-24 14:31:41.999369
693	Jamusiyeh	جاموسية	C1702	29	2024-12-24 14:31:42.01355	2024-12-24 14:31:42.01355
694	Jeb Elkhafi - Manbaj	جب الخفي_منبج	C1703	29	2024-12-24 14:31:42.024162	2024-12-24 14:31:42.024162
695	Rafeeah	رفيعة	C1704	29	2024-12-24 14:31:42.035246	2024-12-24 14:31:42.035246
696	Tlilet Manbaj	تليلة منبج	C1705	29	2024-12-24 14:31:42.046089	2024-12-24 14:31:42.046089
697	Big Jeb Elkalb	جب الكلب كبير	C1706	29	2024-12-24 14:31:42.055548	2024-12-24 14:31:42.055548
698	Boyer	بوير	C1707	29	2024-12-24 14:31:42.067072	2024-12-24 14:31:42.067072
699	Kherbet Massi	خربة ماصي	C1708	29	2024-12-24 14:31:42.078199	2024-12-24 14:31:42.078199
700	Kherbet Nafakh	خربة نفخ	C1709	29	2024-12-24 14:31:42.088164	2024-12-24 14:31:42.088164
701	Omriyeh	عمرية	C1710	29	2024-12-24 14:31:42.098687	2024-12-24 14:31:42.098687
702	Tal Akhdar	تل اخضر	C1711	29	2024-12-24 14:31:42.109138	2024-12-24 14:31:42.109138
703	Hamduniyeh	الحمدونية	C1712	29	2024-12-24 14:31:42.120185	2024-12-24 14:31:42.120185
704	Abu Jrin Manbaj	أبو جرين منبج	C1713	29	2024-12-24 14:31:42.130591	2024-12-24 14:31:42.130591
705	Bir Kello	بئر خللو	C1714	29	2024-12-24 14:31:42.140318	2024-12-24 14:31:42.140318
706	Saan Elghazal - Buz Kij	سعن الغزال_بوز كيج	C1715	29	2024-12-24 14:31:42.151006	2024-12-24 14:31:42.151006
707	Khirfan	خرفان	C1716	29	2024-12-24 14:31:42.159831	2024-12-24 14:31:42.159831
708	Dadat	دادات	C1717	29	2024-12-24 14:31:42.173464	2024-12-24 14:31:42.173464
709	Zornaqal	زونقل	C1719	29	2024-12-24 14:31:42.186443	2024-12-24 14:31:42.186443
710	Saidiyeh	سعيدية	C1720	29	2024-12-24 14:31:42.200098	2024-12-24 14:31:42.200098
711	Sultahiyeh	سلطانية	C1721	29	2024-12-24 14:31:42.212014	2024-12-24 14:31:42.212014
712	Jeb Elarus	جب العروس	C1722	29	2024-12-24 14:31:42.223805	2024-12-24 14:31:42.223805
713	Mahsana - Bak Weiran	المحسنة_باك ويران	C1723	29	2024-12-24 14:31:42.236494	2024-12-24 14:31:42.236494
714	Little Hamam	حمام صغير	C1724	29	2024-12-24 14:31:42.248894	2024-12-24 14:31:42.248894
715	Himar Jis	حيمر جيس	C1725	29	2024-12-24 14:31:42.261288	2024-12-24 14:31:42.261288
716	Um Adase Near Manbaj	أم عدسة قرب منبج	C1726	29	2024-12-24 14:31:42.27352	2024-12-24 14:31:42.27352
717	Hamran	الحمران	C1727	29	2024-12-24 14:31:42.286068	2024-12-24 14:31:42.286068
718	Halisiyeh	حليسية	C1728	29	2024-12-24 14:31:42.299903	2024-12-24 14:31:42.299903
719	Ein Elnakhil	عين النخيل	C1729	29	2024-12-24 14:31:42.313122	2024-12-24 14:31:42.313122
720	Um Adaset Elfarat	أم عدسة الفارات	C1730	29	2024-12-24 14:31:42.325268	2024-12-24 14:31:42.325268
721	Big Hayyeh	حية كبيرة	C1731	29	2024-12-24 14:31:42.335804	2024-12-24 14:31:42.335804
722	Little Arbaa	أربعة صغيرة	C1732	29	2024-12-24 14:31:42.349456	2024-12-24 14:31:42.349456
723	Little Kharufiyeh	خاروفية صغيرة	C1733	29	2024-12-24 14:31:42.360334	2024-12-24 14:31:42.360334
724	Um Myal Jafatlak	أم ميال جفتلك	C1734	29	2024-12-24 14:31:42.370639	2024-12-24 14:31:42.370639
725	Sghireh	صغيرة	C1735	29	2024-12-24 14:31:42.383074	2024-12-24 14:31:42.383074
726	Um Myal Miri	أم ميال ميري	C1736	29	2024-12-24 14:31:42.393089	2024-12-24 14:31:42.393089
727	Sayada	صيادة	C1737	29	2024-12-24 14:31:42.403983	2024-12-24 14:31:42.403983
728	Mankubeh	المنكوبة	C1738	29	2024-12-24 14:31:42.414671	2024-12-24 14:31:42.414671
729	Rasm Elakhdar	رسم الأخضر	C1739	29	2024-12-24 14:31:42.424044	2024-12-24 14:31:42.424044
730	Abu Mandil	ابو منديل	C1740	29	2024-12-24 14:31:42.434481	2024-12-24 14:31:42.434481
731	Jota	جوتة	C1741	29	2024-12-24 14:31:42.444006	2024-12-24 14:31:42.444006
732	Ratwaniyeh	راطونية	C1742	29	2024-12-24 14:31:42.453756	2024-12-24 14:31:42.453756
733	Shweihet Kheznawi	شويحة خزناوي	C1743	29	2024-12-24 14:31:42.463272	2024-12-24 14:31:42.463272
734	Janat Saleh Eltayyeb	جناة صالح الطيب	C1744	29	2024-12-24 14:31:42.472679	2024-12-24 14:31:42.472679
735	Janat Abu Jadha Jarkas	جناة ابو جدحةجركس	C1745	29	2024-12-24 14:31:42.481939	2024-12-24 14:31:42.481939
736	Um Edam	أم عظام	C1746	29	2024-12-24 14:31:42.489663	2024-12-24 14:31:42.489663
737	Shanhasa	شنهصة	C1747	29	2024-12-24 14:31:42.500899	2024-12-24 14:31:42.500899
738	Kabiret Manbaj - Bashli	الكبيرة منبج_باشلي	C1748	29	2024-12-24 14:31:42.510616	2024-12-24 14:31:42.510616
739	Big Tahna	طحنة كبيرة	C1749	29	2024-12-24 14:31:42.520001	2024-12-24 14:31:42.520001
740	Sheikh Yehya	شيخ يحيى	C1750	29	2024-12-24 14:31:42.529693	2024-12-24 14:31:42.529693
741	Abu Tawil	أبو طويل	C1751	29	2024-12-24 14:31:42.538361	2024-12-24 14:31:42.538361
742	Little Hayyeh	حية صغيرة	C1752	29	2024-12-24 14:31:42.548807	2024-12-24 14:31:42.548807
743	Safi	صافي	C1753	29	2024-12-24 14:31:42.560647	2024-12-24 14:31:42.560647
744	Big Kharufiyeh	خاروفية كبيرة	C1754	29	2024-12-24 14:31:42.570622	2024-12-24 14:31:42.570622
745	Hajar Abyad	الحجر الأبيض	C1755	29	2024-12-24 14:31:42.581158	2024-12-24 14:31:42.581158
746	Big Jern	جرن كبير	C1756	29	2024-12-24 14:31:42.591392	2024-12-24 14:31:42.591392
747	Abu Kahf	أبو كهف	C1757	29	2024-12-24 14:31:42.602351	2024-12-24 14:31:42.602351
748	Arnabiet Doshan	ارنبية_دوشان	C1758	29	2024-12-24 14:31:42.613852	2024-12-24 14:31:42.613852
749	Big Abu Jadha	أبو جدحة كبير	C1759	29	2024-12-24 14:31:42.624733	2024-12-24 14:31:42.624733
750	Tayha	تايهة	C1760	29	2024-12-24 14:31:42.648781	2024-12-24 14:31:42.648781
751	Little Jern	جرن صغير	C1761	29	2024-12-24 14:31:42.659565	2024-12-24 14:31:42.659565
752	Oshrieh	أوشرية	C1762	29	2024-12-24 14:31:42.67276	2024-12-24 14:31:42.67276
753	Lower Majra	مجرى تحتاني	C1763	29	2024-12-24 14:31:42.686452	2024-12-24 14:31:42.686452
754	Hudhud	هدهد	C1764	29	2024-12-24 14:31:42.700002	2024-12-24 14:31:42.700002
755	Mgheirat	مغيرات	C1765	29	2024-12-24 14:31:42.71182	2024-12-24 14:31:42.71182
756	Manther Eljarf	مناظر الجرف	C1766	29	2024-12-24 14:31:42.723075	2024-12-24 14:31:42.723075
757	Karsan	كرسان	C1768	29	2024-12-24 14:31:42.733986	2024-12-24 14:31:42.733986
758	Qanat Elghrra	قناة الغرة	C1769	29	2024-12-24 14:31:42.745815	2024-12-24 14:31:42.745815
759	Mostarihet Jafatlak	مستريحة جفتلك	C1770	29	2024-12-24 14:31:42.757397	2024-12-24 14:31:42.757397
760	Qatmet Manbaj - Qatma	قاطمة منبج_قطمة	C1771	29	2024-12-24 14:31:42.771671	2024-12-24 14:31:42.771671
761	Manilla Asaad	منلا اسعد	C1772	29	2024-12-24 14:31:42.782491	2024-12-24 14:31:42.782491
762	Upper Majra	مجرى فوقاني	C1773	29	2024-12-24 14:31:42.793738	2024-12-24 14:31:42.793738
763	Middle Warideh	وريدة المركز	C1774	29	2024-12-24 14:31:42.805374	2024-12-24 14:31:42.805374
764	Mashrafet Elbweir	مشرفة البوير	C1775	29	2024-12-24 14:31:42.8158	2024-12-24 14:31:42.8158
765	Nahliya - Nahliya	نحلية_ناحلية	C1776	29	2024-12-24 14:31:42.827518	2024-12-24 14:31:42.827518
766	Nejem Castle	قلعة نجم	C1777	29	2024-12-24 14:31:42.836927	2024-12-24 14:31:42.836927
767	Muqbilet Elbireh	مقبلة البيرة	C1778	29	2024-12-24 14:31:42.850397	2024-12-24 14:31:42.850397
768	Bir Quraa	قرعة كبيرة	C1779	29	2024-12-24 14:31:42.861515	2024-12-24 14:31:42.861515
769	Little Madneh	مدنة صغير	C1780	29	2024-12-24 14:31:42.872708	2024-12-24 14:31:42.872708
770	Big Madneh	مدنة كبيرة	C1781	29	2024-12-24 14:31:42.883937	2024-12-24 14:31:42.883937
771	Big Mohtaraq	محترق كبير	C1782	29	2024-12-24 14:31:42.895186	2024-12-24 14:31:42.895186
772	Big Kaber - Big Kaberjeh	كابر كبير_كابرجة كبيرة	C1783	29	2024-12-24 14:31:42.904347	2024-12-24 14:31:42.904347
773	Little Mohtaraq	محترق صغير	C1784	29	2024-12-24 14:31:42.913429	2024-12-24 14:31:42.913429
774	Qaber Imu	قبر إيمو	C1785	29	2024-12-24 14:31:42.922101	2024-12-24 14:31:42.922101
775	Labda - Milo Yran	لابدة_ميلو يران	C1786	29	2024-12-24 14:31:42.932186	2024-12-24 14:31:42.932186
776	Maqtala	مقتلة	C1787	29	2024-12-24 14:31:42.941018	2024-12-24 14:31:42.941018
777	Moruh Manbaj	مروح منبج	C1788	29	2024-12-24 14:31:42.951397	2024-12-24 14:31:42.951397
778	Moaysera	معيصرة	C1789	29	2024-12-24 14:31:42.960909	2024-12-24 14:31:42.960909
779	Little Kaber - Little Kaberjeh	كابر صغير_كابرجة صغيرة	C1790	29	2024-12-24 14:31:42.970406	2024-12-24 14:31:42.970406
780	Qabab Bonyeh - Qarajleh	قبب بنية_قراجلة	C1791	29	2024-12-24 14:31:42.980476	2024-12-24 14:31:42.980476
781	Big Maqtaa Elhajar	مقطع حجر كبير	C1792	29	2024-12-24 14:31:42.990184	2024-12-24 14:31:42.990184
782	Middle Majra	مجرى وسطاني	C1793	29	2024-12-24 14:31:43.002567	2024-12-24 14:31:43.002567
783	Little Maqtaa Elhajar	مقطع الحجر صغير	C1794	29	2024-12-24 14:31:43.014914	2024-12-24 14:31:43.014914
784	Miloyran	ميلويران	C1795	29	2024-12-24 14:31:43.026536	2024-12-24 14:31:43.026536
785	Himar Labda	حيمر لابدة	C1796	30	2024-12-24 14:31:43.038465	2024-12-24 14:31:43.038465
786	Khofiyet Abu Qalqal	خفية أبو قلقل	C1797	30	2024-12-24 14:31:43.049856	2024-12-24 14:31:43.049856
787	Kherbet Elashra	خربة العشرة	C1799	30	2024-12-24 14:31:43.06215	2024-12-24 14:31:43.06215
788	Halula	حالولة	C1800	30	2024-12-24 14:31:43.077064	2024-12-24 14:31:43.077064
789	Jdidet Faras	جديدة فرس	C1801	30	2024-12-24 14:31:43.089965	2024-12-24 14:31:43.089965
790	Jeb Elbashama	جب النشامة	C1802	30	2024-12-24 14:31:43.10246	2024-12-24 14:31:43.10246
791	Um Jern Manbaj	أم جرن منبج	C1803	30	2024-12-24 14:31:43.114335	2024-12-24 14:31:43.114335
792	Jeb Elkajli	جب الكجلي	C1804	30	2024-12-24 14:31:43.125661	2024-12-24 14:31:43.125661
793	Big Hama	حما كبير	C1805	30	2024-12-24 14:31:43.137723	2024-12-24 14:31:43.137723
794	Shjif Dahabiyeh	شجيف ذهبية	C1806	30	2024-12-24 14:31:43.148701	2024-12-24 14:31:43.148701
795	Jeifiyet Elmashi	جعيفية الماشي	C1807	30	2024-12-24 14:31:43.160593	2024-12-24 14:31:43.160593
796	Hizeh	الحيزة	C1808	30	2024-12-24 14:31:43.171589	2024-12-24 14:31:43.171589
797	Sakawiyeh	سكاوية	C1809	30	2024-12-24 14:31:43.186022	2024-12-24 14:31:43.186022
798	Big Ghorra	غرة كبيرة	C1810	30	2024-12-24 14:31:43.201465	2024-12-24 14:31:43.201465
799	Jeb Eltawil	جب الطويل	C1811	30	2024-12-24 14:31:43.215029	2024-12-24 14:31:43.215029
800	Kherbet Elsawda Manbaj	خربة السودة منبج	C1812	30	2024-12-24 14:31:43.228284	2024-12-24 14:31:43.228284
801	Big Sandaliyeh	صندلية كبيرة	C1813	30	2024-12-24 14:31:43.240761	2024-12-24 14:31:43.240761
802	Kherbet Elrus	خربة الروس	C1814	30	2024-12-24 14:31:43.252687	2024-12-24 14:31:43.252687
803	Little Ghorra	غرة صغيرة	C1815	30	2024-12-24 14:31:43.264277	2024-12-24 14:31:43.264277
804	Kherbet Bashar	خربة بشار	C1816	30	2024-12-24 14:31:43.277002	2024-12-24 14:31:43.277002
805	Jeb Nahid	جب ناهد	C1817	30	2024-12-24 14:31:43.290986	2024-12-24 14:31:43.290986
806	Southern Tal Arish	تل عريش جنوبي	C1818	30	2024-12-24 14:31:43.304388	2024-12-24 14:31:43.304388
807	Jeb Hassan Agha	جب حسن آغا	C1819	30	2024-12-24 14:31:43.318396	2024-12-24 14:31:43.318396
808	Kherbet Zamala	خربة زمالة	C1820	30	2024-12-24 14:31:43.330217	2024-12-24 14:31:43.330217
809	Kherbet Khaled	خربة خالد	C1821	30	2024-12-24 14:31:43.341272	2024-12-24 14:31:43.341272
810	Jeb Hamza	جب حمزة	C1822	30	2024-12-24 14:31:43.352916	2024-12-24 14:31:43.352916
811	Jeb Sheikh Obeid	جب شيخ عبيد	C1823	30	2024-12-24 14:31:43.364173	2024-12-24 14:31:43.364173
812	Lower Qana	قنا تحتاني	C1824	30	2024-12-24 14:31:43.379079	2024-12-24 14:31:43.379079
813	Northern Qana	قنا شمالي	C1825	30	2024-12-24 14:31:43.392389	2024-12-24 14:31:43.392389
814	Qanaqebli	قناقبلي	C1826	30	2024-12-24 14:31:43.404934	2024-12-24 14:31:43.404934
815	Walia - Akirdali	والية_اكيردالي	C1827	30	2024-12-24 14:31:43.41682	2024-12-24 14:31:43.41682
816	Mahshiet Eltawahin	محشية الطواحين	C1828	30	2024-12-24 14:31:43.429135	2024-12-24 14:31:43.429135
817	Qokhar	قوخار	C1829	30	2024-12-24 14:31:43.441506	2024-12-24 14:31:43.441506
818	Big Fors	فرس كبير	C1830	30	2024-12-24 14:31:43.45446	2024-12-24 14:31:43.45446
819	Little Quraa	قرعة صغيرة	C1831	30	2024-12-24 14:31:43.465439	2024-12-24 14:31:43.465439
820	Mahshiet Elsheikh Obeid	محشية الشيخ عبيد	C1832	30	2024-12-24 14:31:43.477005	2024-12-24 14:31:43.477005
821	Little Fors	فرس صغير	C1833	30	2024-12-24 14:31:43.489225	2024-12-24 14:31:43.489225
822	Qeshlet Yusef Basha	قشلة يوسف باشا	C1834	30	2024-12-24 14:31:43.500163	2024-12-24 14:31:43.500163
823	Nmuqbilet Hassan Agha	مقبلة حسن آغا	C1835	30	2024-12-24 14:31:43.511783	2024-12-24 14:31:43.511783
824	Madinet Sad Tishrine	مدينة سد تشرين	C1836	30	2024-12-24 14:31:43.524228	2024-12-24 14:31:43.524228
825	Noaimeh	نعيمة	C1837	30	2024-12-24 14:31:43.535793	2024-12-24 14:31:43.535793
826	Kherbet Barguth	خربة برغوث	C1838	31	2024-12-24 14:31:43.546742	2024-12-24 14:31:43.546742
827	Jeb Madi	جب ماضي	C1839	31	2024-12-24 14:31:43.560344	2024-12-24 14:31:43.560344
828	Hadidi	حديدي	C1840	31	2024-12-24 14:31:43.57267	2024-12-24 14:31:43.57267
829	Rasm Elahmar	رسم الأحمر	C1841	31	2024-12-24 14:31:43.584685	2024-12-24 14:31:43.584685
830	Upper Nasriyeh	الناصرية فوقاني	C1842	31	2024-12-24 14:31:43.597955	2024-12-24 14:31:43.597955
831	Rasm Elmasatiha	رسم المسطاحة	C1843	31	2024-12-24 14:31:43.606966	2024-12-24 14:31:43.606966
832	Big Aruda	عارودة كبير	C1844	31	2024-12-24 14:31:43.617017	2024-12-24 14:31:43.617017
833	Ghadini	غديني	C1845	31	2024-12-24 14:31:43.627118	2024-12-24 14:31:43.627118
834	Little Aruda	عارودة صغيرة	C1846	31	2024-12-24 14:31:43.636721	2024-12-24 14:31:43.636721
835	Jeb Qahwa	جب قهوة	C1847	31	2024-12-24 14:31:43.647244	2024-12-24 14:31:43.647244
836	Ajuziyeh	العاجوزية	C1848	31	2024-12-24 14:31:43.656339	2024-12-24 14:31:43.656339
837	Jdidet Elhomor	جديدة الحمر	C1849	31	2024-12-24 14:31:43.666429	2024-12-24 14:31:43.666429
838	Ashini	عشيني	C1850	31	2024-12-24 14:31:43.676718	2024-12-24 14:31:43.676718
839	Kherbet Elkhathdraf	خربة الخذراف	C1851	31	2024-12-24 14:31:43.686986	2024-12-24 14:31:43.686986
840	Big Rasm Elharmal	رسم الحرمل الكبير	C1852	31	2024-12-24 14:31:43.696465	2024-12-24 14:31:43.696465
841	Um Rsum	أم رسوم	C1853	31	2024-12-24 14:31:43.705649	2024-12-24 14:31:43.705649
842	Jdidet Mistaha	جديدة مسطاحة	C1854	31	2024-12-24 14:31:43.718358	2024-12-24 14:31:43.718358
843	Ras El Ein Homor	رأس العين حمر	C1855	31	2024-12-24 14:31:43.729352	2024-12-24 14:31:43.729352
844	Northern Jeb Abyad	جب ابيض شمالي	C1856	31	2024-12-24 14:31:43.73925	2024-12-24 14:31:43.73925
845	Abaja	عباجة	C1857	31	2024-12-24 14:31:43.750802	2024-12-24 14:31:43.750802
846	Sheikh Abyad	شيخ ابيض	C1858	31	2024-12-24 14:31:43.762005	2024-12-24 14:31:43.762005
847	Mamura - Mahdum	المعمورة_المهدوم	C1859	31	2024-12-24 14:31:43.772958	2024-12-24 14:31:43.772958
848	Rummana	رمانة	C1860	31	2024-12-24 14:31:43.783531	2024-12-24 14:31:43.783531
849	Um Tinet Manbaj	أم تينة منبج	C1861	31	2024-12-24 14:31:43.795333	2024-12-24 14:31:43.795333
850	Big Jarrah	جراح كبير	C1862	31	2024-12-24 14:31:43.806611	2024-12-24 14:31:43.806611
851	Sikhni	سخني	C1863	31	2024-12-24 14:31:43.81932	2024-12-24 14:31:43.81932
852	Abu Hanaya	أبو حنايا	C1864	31	2024-12-24 14:31:43.830585	2024-12-24 14:31:43.830585
853	Shash Hamdan	شاش حمدان	C1865	31	2024-12-24 14:31:43.842466	2024-12-24 14:31:43.842466
854	Janat Salameh	جناة سلامة	C1866	31	2024-12-24 14:31:43.855007	2024-12-24 14:31:43.855007
855	Little Western Rasm Elkhamis	رسم الخميس غربي صغير	C1867	31	2024-12-24 14:31:43.866254	2024-12-24 14:31:43.866254
856	Jeb Elhamam Mestaha	جب الحمام مسطاحة	C1868	31	2024-12-24 14:31:43.878749	2024-12-24 14:31:43.878749
857	Rasm Eljis	رسم الجيس	C1869	31	2024-12-24 14:31:43.89357	2024-12-24 14:31:43.89357
858	Tal Aber	تل عابر	C1870	31	2024-12-24 14:31:43.904794	2024-12-24 14:31:43.904794
859	Abu Maqbara	أبو مقبرة	C1871	31	2024-12-24 14:31:43.916472	2024-12-24 14:31:43.916472
860	Atshana Jeb Mirri	عطشانة جب ميري	C1872	31	2024-12-24 14:31:43.929505	2024-12-24 14:31:43.929505
861	Rasm Abbud Jaftalak	رسم عبود جفتلك	C1873	31	2024-12-24 14:31:43.94197	2024-12-24 14:31:43.94197
862	Jeb Khamis	جب خميس	C1874	31	2024-12-24 14:31:43.955774	2024-12-24 14:31:43.955774
863	Jeb Hamad Elshlal	جب حمد الشلال	C1875	31	2024-12-24 14:31:43.967581	2024-12-24 14:31:43.967581
864	Kasra	الكسرة	C1876	31	2024-12-24 14:31:43.983235	2024-12-24 14:31:43.983235
865	Um Adase Khalilieh	أم عدسة خليلية	C1877	31	2024-12-24 14:31:43.995267	2024-12-24 14:31:43.995267
866	Dakhireh	دخيرة	C1878	31	2024-12-24 14:31:44.010231	2024-12-24 14:31:44.010231
867	Atireh	عطيرة	C1879	31	2024-12-24 14:31:44.022957	2024-12-24 14:31:44.022957
868	Khofiyet Elhomor	خفية الحمر	C1880	31	2024-12-24 14:31:44.035353	2024-12-24 14:31:44.035353
869	Khan Elhomor	خان الحمر	C1881	31	2024-12-24 14:31:44.046201	2024-12-24 14:31:44.046201
870	Rasm Elhamam Miri	رسم الحمام ميري	C1882	31	2024-12-24 14:31:44.057069	2024-12-24 14:31:44.057069
871	Big Arbaa	أربعة كبيرة	C1883	31	2024-12-24 14:31:44.070449	2024-12-24 14:31:44.070449
872	Big Sheib Elhomor	شعيب الحمركبير	C1884	31	2024-12-24 14:31:44.085324	2024-12-24 14:31:44.085324
873	Jafr Mansur Manbaj	جفر منصور منبج	C1885	31	2024-12-24 14:31:44.099324	2024-12-24 14:31:44.099324
874	Mahsana Khefseh	المحسنة خفسة	C1886	31	2024-12-24 14:31:44.112445	2024-12-24 14:31:44.112445
875	Talhuthan	تلحوذان	C1887	31	2024-12-24 14:31:44.128566	2024-12-24 14:31:44.128566
876	Little Habbuba	حبوبة صغيرة	C1888	31	2024-12-24 14:31:44.141427	2024-12-24 14:31:44.141427
877	Shajra	شجرة	C1889	31	2024-12-24 14:31:44.153661	2024-12-24 14:31:44.153661
878	Kherbet Salameh	خربة سلامة	C1890	31	2024-12-24 14:31:44.166308	2024-12-24 14:31:44.166308
879	Tal Hassan	تل حسان	C1891	31	2024-12-24 14:31:44.178061	2024-12-24 14:31:44.178061
880	Tal Aakuleh	تل عاكولة	C1892	31	2024-12-24 14:31:44.189564	2024-12-24 14:31:44.189564
881	Dreisiyeh	دريسية	C1893	31	2024-12-24 14:31:44.201717	2024-12-24 14:31:44.201717
882	Tal Aswad	تل اسود	C1895	31	2024-12-24 14:31:44.214278	2024-12-24 14:31:44.214278
883	Big Eastern Rasm Elkhamis	رسم الخميس شرقي كبير	C1896	31	2024-12-24 14:31:44.227145	2024-12-24 14:31:44.227145
884	Kisumeh	الكيصومة	C1897	31	2024-12-24 14:31:44.30266	2024-12-24 14:31:44.30266
885	Jfeiret Ghazal	جفيرة غزال	C1898	31	2024-12-24 14:31:45.241823	2024-12-24 14:31:45.241823
886	Kherbet Shihab	خربة شهاب	C1899	31	2024-12-24 14:31:45.255774	2024-12-24 14:31:45.255774
887	Tabara Kalash	تبارة كلش	C1900	31	2024-12-24 14:31:45.268292	2024-12-24 14:31:45.268292
888	Big Drubiyeh	الدروبية كبيرة	C1901	31	2024-12-24 14:31:45.279822	2024-12-24 14:31:45.279822
889	Big Habbuba	حبوبة كبيرة	C1902	31	2024-12-24 14:31:45.290712	2024-12-24 14:31:45.290712
890	Lala Mohammed	لاله محمد	C1903	31	2024-12-24 14:31:45.303333	2024-12-24 14:31:45.303333
891	Kiyariya	كيارية	C1904	31	2024-12-24 14:31:45.318126	2024-12-24 14:31:45.318126
892	Big Qobab	قبب كبير	C1905	31	2024-12-24 14:31:45.33245	2024-12-24 14:31:45.33245
893	Mazyunet Eljaberi	مزيونة الجابري	C1906	31	2024-12-24 14:31:45.343863	2024-12-24 14:31:45.343863
894	Mazyunet Elhomor	مزيونة الحمر	C1907	31	2024-12-24 14:31:45.356595	2024-12-24 14:31:45.356595
895	Big Maarada	معرضة كبيرة	C1908	31	2024-12-24 14:31:45.366974	2024-12-24 14:31:45.366974
896	Majmaa Mbaqer Maskana	مجمع مباقر مسكنة	C1909	31	2024-12-24 14:31:45.37671	2024-12-24 14:31:45.37671
897	Little Qobab	قبب صغير	C1910	31	2024-12-24 14:31:45.386312	2024-12-24 14:31:45.386312
898	Qasr Hadleh	قصر هدلة	C1912	31	2024-12-24 14:31:45.395256	2024-12-24 14:31:45.395256
899	Qasr Sallum - Tannuza	قصر سلوم_طنوزة	C1915	31	2024-12-24 14:31:45.406459	2024-12-24 14:31:45.406459
900	Mashrafet Qurb Khifseh - Elhamed	مشرفة قرب خفسة_الحامض	C1916	31	2024-12-24 14:31:45.416827	2024-12-24 14:31:45.416827
901	Rasm Elbokhar	رسم البوخر	C1917	32	2024-12-24 14:31:45.428166	2024-12-24 14:31:45.428166
902	Tal Totun	تل توتون	C1918	32	2024-12-24 14:31:45.438604	2024-12-24 14:31:45.438604
903	Hamra	الحمرة	C1919	32	2024-12-24 14:31:45.448169	2024-12-24 14:31:45.448169
904	Big Raddeh	ردة كبيرة	C1920	32	2024-12-24 14:31:45.457264	2024-12-24 14:31:45.457264
905	Southern Jdeiah	جنوب جديعة	C1921	32	2024-12-24 14:31:45.46684	2024-12-24 14:31:45.46684
906	Kherbet Salib	خربة صليب	C1922	32	2024-12-24 14:31:45.476227	2024-12-24 14:31:45.476227
907	Neimiyeh	النعيمية	C1923	32	2024-12-24 14:31:45.485721	2024-12-24 14:31:45.485721
908	Muftahiyeh	المفتاحية	C1924	32	2024-12-24 14:31:45.494961	2024-12-24 14:31:45.494961
909	Hurriyeh	الحرية	C1925	32	2024-12-24 14:31:45.504773	2024-12-24 14:31:45.504773
910	Shahda	الشهداء	C1926	32	2024-12-24 14:31:45.514925	2024-12-24 14:31:45.514925
911	Samuqet Manbaj	سموقة منبج	C1927	32	2024-12-24 14:31:45.525232	2024-12-24 14:31:45.525232
912	Jeb Elhamam Jtala	جب الحمام جتالة	C1928	32	2024-12-24 14:31:45.535731	2024-12-24 14:31:45.535731
913	Rajm Elaqraa	رجم الأقرع	C1929	32	2024-12-24 14:31:45.548168	2024-12-24 14:31:45.548168
914	Khan Elshaar	خان الشعر	C1930	32	2024-12-24 14:31:45.563393	2024-12-24 14:31:45.563393
915	Ras El Ein Bumane	رأس العين البومانع	C1931	32	2024-12-24 14:31:45.576267	2024-12-24 14:31:45.576267
916	Babiri - Lower Babiri	بابيري_بابيري تحتاني	C1932	32	2024-12-24 14:31:45.58666	2024-12-24 14:31:45.58666
917	Qawas	قواص	C1934	32	2024-12-24 14:31:45.596803	2024-12-24 14:31:45.596803
918	Madinet Elghar	مدينة الغار	C1935	32	2024-12-24 14:31:45.607328	2024-12-24 14:31:45.607328
919	Qantarra - Qantaret Kikan	القنطرة_قنطرة كيكان	C1936	33	2024-12-24 14:31:45.617903	2024-12-24 14:31:45.617903
920	Zarafet Zarafik	زرافة_زرافيك	C1937	33	2024-12-24 14:31:45.628485	2024-12-24 14:31:45.628485
921	Upper Khaldiyeh - Upper Tahtak	خالدية فوقاني_تحتك فوقاني	C1939	33	2024-12-24 14:31:45.63897	2024-12-24 14:31:45.63897
922	Sharan	شران	C1940	33	2024-12-24 14:31:45.649344	2024-12-24 14:31:45.649344
923	Lower Tal Abyad - Lower Bozhyuk	تل ابيض تحتاني_بوزهيوك تحتاني	C1941	33	2024-12-24 14:31:45.65915	2024-12-24 14:31:45.65915
924	Big Salama - Big Danquz	سلامة كبير_دونقوز كبير	C1942	33	2024-12-24 14:31:45.669266	2024-12-24 14:31:45.669266
925	Gharib	غريب	C1943	33	2024-12-24 14:31:45.679521	2024-12-24 14:31:45.679521
926	Little Salameh - Little Danquz	سلامة صغير_دونقوز صغير	C1944	33	2024-12-24 14:31:45.688988	2024-12-24 14:31:45.688988
927	Lower Jbeileh - Qorrat Quri	جبيلة تحتاني_قرة قوري	C1945	33	2024-12-24 14:31:45.697791	2024-12-24 14:31:45.697791
928	Lower Tal Elhajar - Tashluk	تل الحجر تحتاني_طاشلوك	C1947	33	2024-12-24 14:31:45.705953	2024-12-24 14:31:45.705953
929	Zobar - Zorabi	زوبار_زورابي	C1948	33	2024-12-24 14:31:45.717977	2024-12-24 14:31:45.717977
930	Tal Hajib	تل حاجب	C1949	33	2024-12-24 14:31:45.728304	2024-12-24 14:31:45.728304
931	Upper Beith Lehem - Etweiran	بيت لحم فوقاني_إيتويران	C1950	33	2024-12-24 14:31:45.737808	2024-12-24 14:31:45.737808
932	Tal Ghazal	تل غزال	C1951	33	2024-12-24 14:31:45.748009	2024-12-24 14:31:45.748009
933	Lower Beith Lehem - Etweiran	بيت لحم تحتاني__إيتويران	C1952	33	2024-12-24 14:31:45.757498	2024-12-24 14:31:45.757498
934	Maydan - Kork Kitan	الميدان_كورك كيتان	C1953	33	2024-12-24 14:31:45.76689	2024-12-24 14:31:45.76689
935	Firazdaq - Arsalan Tash	الفرزدق_أرسلان طاش	C1954	33	2024-12-24 14:31:45.775678	2024-12-24 14:31:45.775678
936	Upper Tal Hajar	تل حجر فوقاني	C1955	33	2024-12-24 14:31:45.784911	2024-12-24 14:31:45.784911
937	Oruba - Kor Ali	عروبة_كور علي	C1956	33	2024-12-24 14:31:45.793593	2024-12-24 14:31:45.793593
938	Big Ein Elbat	عين البط كبير	C1957	33	2024-12-24 14:31:45.80333	2024-12-24 14:31:45.80333
939	Tafsh - Tafsho	طفش_طفشو	C1958	33	2024-12-24 14:31:45.812561	2024-12-24 14:31:45.812561
940	Bir Omar	بئر عمر	C1959	33	2024-12-24 14:31:45.821393	2024-12-24 14:31:45.821393
941	Joban - Sheikh Joban	جوبان_الشيخ جوبان	C1960	33	2024-12-24 14:31:45.830598	2024-12-24 14:31:45.830598
942	Bijan Tramk	بيجان_ترمك	C1961	33	2024-12-24 14:31:45.838685	2024-12-24 14:31:45.838685
943	Nabaa - Korbinar	النبعة_كوربينار	C1962	33	2024-12-24 14:31:45.846783	2024-12-24 14:31:45.846783
944	Hazineh	حزينة	C1963	33	2024-12-24 14:31:45.861179	2024-12-24 14:31:45.861179
945	Jil Jilak	جيل_جيلك	C1964	33	2024-12-24 14:31:45.871053	2024-12-24 14:31:45.871053
946	Natheriyeh - Koran	الناظرية_كوران	C1965	33	2024-12-24 14:31:45.884118	2024-12-24 14:31:45.884118
947	Babn - Boban	بابان_بوبان	C1966	33	2024-12-24 14:31:45.898848	2024-12-24 14:31:45.898848
948	Kharab Nas	خراب ناس	C1967	33	2024-12-24 14:31:45.910198	2024-12-24 14:31:45.910198
949	Kharan Kort	خراب كورت	C1968	33	2024-12-24 14:31:45.922469	2024-12-24 14:31:45.922469
950	Thahireh - Bil Weiran	ظهيرة_بيل ويران	C1969	33	2024-12-24 14:31:45.93376	2024-12-24 14:31:45.93376
951	Ayoubiyeh - Karoz	الأيوبية_كاروز	C1970	33	2024-12-24 14:31:45.945887	2024-12-24 14:31:45.945887
952	Ghassaniyeh - Qorret Halanj	الغسانية_قرة حلنج	C1971	33	2024-12-24 14:31:45.959115	2024-12-24 14:31:45.959115
953	Upper Jbeileh - Qorrat Quri	جبيلة فوقاني_قرة قوري	C1972	33	2024-12-24 14:31:45.972079	2024-12-24 14:31:45.972079
954	Shoruq - Holaqi	الشروق_هولاقي	C1973	33	2024-12-24 14:31:45.984743	2024-12-24 14:31:45.984743
955	Aziziyeh - Moman Azu	عزيزية_مومان عزو	C1974	33	2024-12-24 14:31:45.995166	2024-12-24 14:31:45.995166
956	Estiqama	الاستقامة_كوربا	C1975	33	2024-12-24 14:31:46.009678	2024-12-24 14:31:46.009678
957	Hbab - Yadi Qawi	الحباب_ يدي قوي	C1976	33	2024-12-24 14:31:46.021089	2024-12-24 14:31:46.021089
958	Zogher	زوغر	C1977	33	2024-12-24 14:31:46.031066	2024-12-24 14:31:46.031066
959	Big Doha - Big Qabajeq	دوحة كبير_قباجق كبير	C1978	33	2024-12-24 14:31:46.044029	2024-12-24 14:31:46.044029
960	Upper Sift - Siftek	سفت فوقاني_سفتك	C1979	33	2024-12-24 14:31:46.057293	2024-12-24 14:31:46.057293
961	Sus - Susan	صوص_صوصان	C1980	33	2024-12-24 14:31:46.070932	2024-12-24 14:31:46.070932
962	Big Mazraet Sofi	مزرعة صوفي كبير	C1981	33	2024-12-24 14:31:46.082847	2024-12-24 14:31:46.082847
963	Mazraet Elamud	مزرعة العامود	C1982	33	2024-12-24 14:31:46.094813	2024-12-24 14:31:46.094813
964	Qantarte Beith Serri	قنطرة بيت سري	C1983	33	2024-12-24 14:31:46.104884	2024-12-24 14:31:46.104884
965	Qarruf	قروف	C1985	33	2024-12-24 14:31:46.115378	2024-12-24 14:31:46.115378
966	Makhraj	مخرج	C1986	33	2024-12-24 14:31:46.126811	2024-12-24 14:31:46.126811
967	Morshed Morshed Binar	مرشد مرشد بينار	C1987	33	2024-12-24 14:31:46.136823	2024-12-24 14:31:46.136823
968	Naf Karab - Karabnaf	ناف كرب_كربناف	C1988	33	2024-12-24 14:31:46.147767	2024-12-24 14:31:46.147767
969	Qola	قولا	C1990	33	2024-12-24 14:31:46.157297	2024-12-24 14:31:46.157297
970	Karb Karbalak	كرب_كربلك	C1991	33	2024-12-24 14:31:46.166734	2024-12-24 14:31:46.166734
971	Kas Kaskan	كأس_كاسكان	C1992	33	2024-12-24 14:31:46.175637	2024-12-24 14:31:46.175637
972	Shakriyeh - Mashko	الشاكرية_مشكو	C1994	34	2024-12-24 14:31:46.184431	2024-12-24 14:31:46.184431
973	Jebnet	جبنة	C1995	34	2024-12-24 14:31:46.192619	2024-12-24 14:31:46.192619
974	Oweina	عوينة	C1996	34	2024-12-24 14:31:46.204303	2024-12-24 14:31:46.204303
975	Rajabiyeh - Middle Qojli	رجبية_قوجلي وسط	C1997	34	2024-12-24 14:31:46.21441	2024-12-24 14:31:46.21441
976	Big Duwara - Jraqli	الدوارة الكبيرة_جارقلي	C1998	34	2024-12-24 14:31:46.224386	2024-12-24 14:31:46.224386
977	Sawaniyet - Qamlaq	صوانية_قملق	C1999	34	2024-12-24 14:31:46.234545	2024-12-24 14:31:46.234545
978	Seif Ali	سيف علي	C2000	34	2024-12-24 14:31:46.244421	2024-12-24 14:31:46.244421
979	Kherbet Atu	خربة عطو	C2001	34	2024-12-24 14:31:46.254037	2024-12-24 14:31:46.254037
980	Upper Shyookh	شيوخ فوقاني	C2002	34	2024-12-24 14:31:46.264489	2024-12-24 14:31:46.264489
981	Wawiyeh - Jaql Wabran	الواوية_جقل وبران	C2003	34	2024-12-24 14:31:46.275452	2024-12-24 14:31:46.275452
982	Big Jeb Faraj	جب فرج كبير	C2004	34	2024-12-24 14:31:46.286831	2024-12-24 14:31:46.286831
983	Upper Dar Elbaz	دار الباز فوقاني	C2005	34	2024-12-24 14:31:46.298689	2024-12-24 14:31:46.298689
984	Taala	تعلا	C2006	34	2024-12-24 14:31:46.306894	2024-12-24 14:31:46.306894
985	Tal Amar Ein El Arab	تل أحمر عين العرب	C2008	34	2024-12-24 14:31:46.316955	2024-12-24 14:31:46.316955
986	Dadi - Dada Li	دادي_دادة لي	C2009	34	2024-12-24 14:31:46.32656	2024-12-24 14:31:46.32656
987	Billeh	بلة	C2010	34	2024-12-24 14:31:46.336654	2024-12-24 14:31:46.336654
988	Darb Elnob	درب النوب	C2011	34	2024-12-24 14:31:46.349044	2024-12-24 14:31:46.349044
989	Shehama - Bandar	الشهامة_بندر	C2012	34	2024-12-24 14:31:46.360105	2024-12-24 14:31:46.360105
990	Hifyana - Bugas	الحفيانة_بوغاز	C2013	34	2024-12-24 14:31:46.370645	2024-12-24 14:31:46.370645
991	Shamaliyeh - Boraz Ogli	الشمالية_بوراز أوغلي	C2014	34	2024-12-24 14:31:46.380815	2024-12-24 14:31:46.380815
992	Tal Elebar	تل العبر	C2015	34	2024-12-24 14:31:46.390464	2024-12-24 14:31:46.390464
993	Khalil - Khalijak	خليل_خليلجك	C2016	34	2024-12-24 14:31:46.400173	2024-12-24 14:31:46.400173
994	Mazdalfa - Bistek	مزدلفة_بستك	C2017	34	2024-12-24 14:31:46.409423	2024-12-24 14:31:46.409423
995	Hilala - Middle Kord	هلالة_كرد وسطاني	C2018	34	2024-12-24 14:31:46.419519	2024-12-24 14:31:46.419519
996	Qanaya	قناية	C2019	34	2024-12-24 14:31:46.429225	2024-12-24 14:31:46.429225
997	Qubbeh	قبة	C2020	34	2024-12-24 14:31:46.439236	2024-12-24 14:31:46.439236
998	Upper Qurran	قران فوقاني	C2021	34	2024-12-24 14:31:46.449458	2024-12-24 14:31:46.449458
999	Ramilet Elhenno	رميلة_الحنو	C2022	35	2024-12-24 14:31:46.459976	2024-12-24 14:31:46.459976
1000	Ramala	رمالة	C2023	35	2024-12-24 14:31:46.470615	2024-12-24 14:31:46.470615
1001	Tal Elbanat	تل البنات	C2024	35	2024-12-24 14:31:46.479721	2024-12-24 14:31:46.479721
1002	Lower Tarmak - Lower Tarmak Sheikhan	ترمك تحتاني_ترمك شيخان تحتاني	C2025	35	2024-12-24 14:31:46.488459	2024-12-24 14:31:46.488459
1003	Tal Elakhdar - Lower Koktaba	تل الاخضر_كوكتبة تحتاني	C2026	35	2024-12-24 14:31:46.500908	2024-12-24 14:31:46.500908
1004	Barakeh - Dweirek	البركة_دوبيرك	C2027	35	2024-12-24 14:31:46.511438	2024-12-24 14:31:46.511438
1005	Toq - Toqli	الطوق_طوقلي	C2028	35	2024-12-24 14:31:46.521886	2024-12-24 14:31:46.521886
1006	Safwaniyeh	الصفوانية_كورتك شيخان	C2029	35	2024-12-24 14:31:46.532681	2024-12-24 14:31:46.532681
1007	Athamiya - Eastern Krana	الأعظمية_كرانة شرقي	C2030	35	2024-12-24 14:31:46.543406	2024-12-24 14:31:46.543406
1008	Baroudiyeh	البارودية	C2031	35	2024-12-24 14:31:46.553726	2024-12-24 14:31:46.553726
1009	Assad - Aslan Koy	الأسد_آصلان كوي	C2032	35	2024-12-24 14:31:46.564974	2024-12-24 14:31:46.564974
1010	Tiba Ein Arab	الطيبة عين العرب	C2033	35	2024-12-24 14:31:46.574595	2024-12-24 14:31:46.574595
1011	Ras El Ein Qabli	رأس العين قبلي	C2034	35	2024-12-24 14:31:46.585531	2024-12-24 14:31:46.585531
1012	Um Tleil	أم تليل	C2035	35	2024-12-24 14:31:46.595861	2024-12-24 14:31:46.595861
1013	Bir Bakkar	بئر بكار	C2036	35	2024-12-24 14:31:46.606032	2024-12-24 14:31:46.606032
1014	Khan Mamid - Khan Mohammed	خان ماميد_خان محمد	C2037	35	2024-12-24 14:31:46.616083	2024-12-24 14:31:46.616083
1015	Jaadet Elsamawat	جعدة السمعاوات	C2039	35	2024-12-24 14:31:46.625477	2024-12-24 14:31:46.625477
1016	Kharab Elasheq - Kharab Ishq	خراب العاشق_خراب عشق	C2040	35	2024-12-24 14:31:46.634845	2024-12-24 14:31:46.634845
1017	Western Kharab Sehrij	خراب صهريج غربية	C2041	35	2024-12-24 14:31:46.64347	2024-12-24 14:31:46.64347
1018	Kherbet Eljamal	خربة الجمل	C2042	35	2024-12-24 14:31:46.655709	2024-12-24 14:31:46.655709
1019	Seifiyeh	سيفية	C2043	35	2024-12-24 14:31:46.665717	2024-12-24 14:31:46.665717
1020	Bir Dalleh	بئر دلة	C2044	35	2024-12-24 14:31:46.677583	2024-12-24 14:31:46.677583
1021	Eskeif - Koshkar	اسكيف_كوشكار	C2045	35	2024-12-24 14:31:46.687252	2024-12-24 14:31:46.687252
1022	Eastern Shallal - Eastern Jokhar	شلال شرقي_جوخر شرقي	C2046	35	2024-12-24 14:31:46.697392	2024-12-24 14:31:46.697392
1023	Qaderiyeh	القادرية	C2047	35	2024-12-24 14:31:46.707051	2024-12-24 14:31:46.707051
1024	Bathiyeh - Kardoshan	البعثية_كردوشان	C2048	35	2024-12-24 14:31:46.717409	2024-12-24 14:31:46.717409
1025	Tuwabiyeh - Kubet Rab	التوابية_كبة رب	C2049	35	2024-12-24 14:31:46.726809	2024-12-24 14:31:46.726809
1026	Bir Amaa	بئر الأعمى	C2050	35	2024-12-24 14:31:46.736122	2024-12-24 14:31:46.736122
1027	Bir Eldam	بئر الدم	C2051	35	2024-12-24 14:31:46.74593	2024-12-24 14:31:46.74593
1028	Bir Hsu - Kherbet Kalye	بئر حسو_خربة كلايع	C2052	35	2024-12-24 14:31:46.755877	2024-12-24 14:31:46.755877
1029	Kharkhari	خرخري	C2053	35	2024-12-24 14:31:46.766314	2024-12-24 14:31:46.766314
1030	Nuhassiyeh - Qazani	النحاسية_قازاني	C2054	35	2024-12-24 14:31:46.774738	2024-12-24 14:31:46.774738
1031	Big Dabaa	ضبعة كبيرة	C2055	35	2024-12-24 14:31:46.783472	2024-12-24 14:31:46.783472
1032	Damman - Western Krana	الدمام_كرانة غربي	C2056	35	2024-12-24 14:31:46.794846	2024-12-24 14:31:46.794846
1033	Saharij Eljabal	صهاريج الجبل	C2057	35	2024-12-24 14:31:46.804629	2024-12-24 14:31:46.804629
1034	Sanaa	صنع	C2058	35	2024-12-24 14:31:46.814781	2024-12-24 14:31:46.814781
1035	Hafyan	حفيان	C2059	35	2024-12-24 14:31:46.825297	2024-12-24 14:31:46.825297
1036	Sfit	صفيط	C2060	35	2024-12-24 14:31:46.834956	2024-12-24 14:31:46.834956
1037	Jorat - Jor Tank	الجورات_جور تانك	C2061	35	2024-12-24 14:31:46.845385	2024-12-24 14:31:46.845385
1038	Halanja	حلنجة	C2062	35	2024-12-24 14:31:46.854114	2024-12-24 14:31:46.854114
1039	Jableh - Berdag	الجبلة_برداغ	C2063	35	2024-12-24 14:31:46.86291	2024-12-24 14:31:46.86291
1040	Ibrahimiya - Upper Koktaba	ابراهيمية_كوكتبة فوقاني	C2064	35	2024-12-24 14:31:46.871803	2024-12-24 14:31:46.871803
1041	Shakif	شكيف	C2065	35	2024-12-24 14:31:46.88172	2024-12-24 14:31:46.88172
1042	Sheikh Ghali	شيخ غالي	C2066	35	2024-12-24 14:31:46.892258	2024-12-24 14:31:46.892258
1043	Hamdun	حمدون	C2067	35	2024-12-24 14:31:46.90157	2024-12-24 14:31:46.90157
1044	Jalabiyeh	الجلبية	C2068	35	2024-12-24 14:31:46.911449	2024-12-24 14:31:46.911449
1045	Duwadiyeh Kik Dada	الداوودية_كيك دادا	C2069	35	2024-12-24 14:31:46.920582	2024-12-24 14:31:46.920582
1046	Golan - Qurret Qawaqez	جولان_قرة قوزاق	C2070	35	2024-12-24 14:31:46.930388	2024-12-24 14:31:46.930388
1047	Marufa - Sakuleh	المعروفة_صايكولة	C2071	35	2024-12-24 14:31:46.941802	2024-12-24 14:31:46.941802
1048	Western Shallal - Western Jokhar	شلال غربي_جوخر غربي	C2072	35	2024-12-24 14:31:46.952091	2024-12-24 14:31:46.952091
1049	Kherbet Elkafer - Kawer Khrab	خربة الكافر_كاور خراب	C2073	35	2024-12-24 14:31:46.962027	2024-12-24 14:31:46.962027
1050	Zreik	زريك	C2075	35	2024-12-24 14:31:46.972027	2024-12-24 14:31:46.972027
1051	Darb Eltakht	درب التخت	C2076	35	2024-12-24 14:31:46.981547	2024-12-24 14:31:46.981547
1052	Okuwa - Upper Oj Qardash	الأخوة_أوج قارداش فوقاني	C2077	35	2024-12-24 14:31:46.990515	2024-12-24 14:31:46.990515
1053	Haql - Bujaq	الحقل_بوجاق	C2078	35	2024-12-24 14:31:47.00059	2024-12-24 14:31:47.00059
1054	Saq	ساق	C2079	35	2024-12-24 14:31:47.010668	2024-12-24 14:31:47.010668
1055	Sahm - Shish	السهم_شيش	C2080	35	2024-12-24 14:31:47.019767	2024-12-24 14:31:47.019767
1056	Sayyeda Khatuniyeh	السيدة_خاتونية	C2081	35	2024-12-24 14:31:47.029499	2024-12-24 14:31:47.029499
1057	Siyaha - Western Saykul	السياحة_صايكول غربي	C2082	35	2024-12-24 14:31:47.038298	2024-12-24 14:31:47.038298
1058	Abu Daameh al Massoudieh	أبو دعمة_المسعودية	C2083	35	2024-12-24 14:31:47.049581	2024-12-24 14:31:47.049581
1059	Omariyeh - Omrek	العمرية_أومرك	C2084	35	2024-12-24 14:31:47.058203	2024-12-24 14:31:47.058203
1060	Big Khushkhash	خشخاش كبير	C2085	35	2024-12-24 14:31:47.067422	2024-12-24 14:31:47.067422
1061	Little Khushkhash	خشخاش صغير	C2086	35	2024-12-24 14:31:47.075437	2024-12-24 14:31:47.075437
1062	Bab Elhadid - Damer Qabusi	باب الحديد_دامر قابوسي	C2087	35	2024-12-24 14:31:47.088296	2024-12-24 14:31:47.088296
1063	Kharufiyeh - Burj Battan	الخاروفية_برج بطان	C2088	35	2024-12-24 14:31:47.099771	2024-12-24 14:31:47.099771
1064	Bir Rash - Kiktan	بئر رش_كيتكان	C2089	35	2024-12-24 14:31:47.110403	2024-12-24 14:31:47.110403
1065	Khrus	خروص	C2090	35	2024-12-24 14:31:47.120762	2024-12-24 14:31:47.120762
1066	Safriyeh	سفرية	C2091	35	2024-12-24 14:31:47.131209	2024-12-24 14:31:47.131209
1067	Bir Obedo - Bir Abdel Rahman	بئر عبيدو_بئرعبد الرحمن	C2092	35	2024-12-24 14:31:47.140935	2024-12-24 14:31:47.140935
1068	Dandushan	دندوشان	C2093	35	2024-12-24 14:31:47.151205	2024-12-24 14:31:47.151205
1069	Bir Mahalli	بئر محلي	C2094	35	2024-12-24 14:31:47.16134	2024-12-24 14:31:47.16134
1070	Mattin	متين	C2096	35	2024-12-24 14:31:47.170529	2024-12-24 14:31:47.170529
1071	Nur Ali	نور علي	C2097	35	2024-12-24 14:31:47.180364	2024-12-24 14:31:47.180364
1072	Hyala - Kweik	هيالة_كويك	C2098	35	2024-12-24 14:31:47.190343	2024-12-24 14:31:47.190343
1073	Big Kamit - Big Kojeh Kamit	كميت كبيرة_كوجه كميت كبيرة	C2099	35	2024-12-24 14:31:47.199149	2024-12-24 14:31:47.199149
1074	Wadi Elnur - Kur Wadin	وادي النور_كور وادين	C2100	35	2024-12-24 14:31:47.207629	2024-12-24 14:31:47.207629
1075	Upper Mawa - Upper Khanik	مأوى فوقاني_خانيك فوقاني	C2101	35	2024-12-24 14:31:47.216643	2024-12-24 14:31:47.216643
1076	Upper Fajer	فجر فوقاني	C2102	35	2024-12-24 14:31:47.228549	2024-12-24 14:31:47.228549
1077	Masrab	مسرب	C2103	35	2024-12-24 14:31:47.238308	2024-12-24 14:31:47.238308
1078	Kufyan	كوفيان	C2104	35	2024-12-24 14:31:47.247813	2024-12-24 14:31:47.247813
1079	Yaramaz	ياراماز	C2105	35	2024-12-24 14:31:47.25703	2024-12-24 14:31:47.25703
1080	Mitras	متراس	C2106	35	2024-12-24 14:31:47.267629	2024-12-24 14:31:47.267629
1081	Mweileh	مويلح	C2107	35	2024-12-24 14:31:47.277089	2024-12-24 14:31:47.277089
1082	Milheh	ملحة	C2108	35	2024-12-24 14:31:47.286169	2024-12-24 14:31:47.286169
1083	Kreidan	كريدان	C2109	35	2024-12-24 14:31:47.296195	2024-12-24 14:31:47.296195
1084	Northern Qasaq	قصق شمالي	C2110	35	2024-12-24 14:31:47.305234	2024-12-24 14:31:47.305234
1085	Mand - Mandak	مند_مندك	C2111	35	2024-12-24 14:31:47.314656	2024-12-24 14:31:47.314656
1086	Mansiyeh	منسية	C2112	35	2024-12-24 14:31:47.327329	2024-12-24 14:31:47.327329
1087	Monif	منيف	C2113	35	2024-12-24 14:31:47.339721	2024-12-24 14:31:47.339721
1088	Qolana	قولانة	C2114	35	2024-12-24 14:31:47.353717	2024-12-24 14:31:47.353717
1089	Kerak	كرك	C2115	35	2024-12-24 14:31:47.364535	2024-12-24 14:31:47.364535
1090	Hadid Castle	قلعة حديد	C2116	35	2024-12-24 14:31:47.374813	2024-12-24 14:31:47.374813
1091	Naqut	ناقوط	C2117	35	2024-12-24 14:31:47.390646	2024-12-24 14:31:47.390646
1092	Rash Castle	قلعة رش	C2118	35	2024-12-24 14:31:47.40297	2024-12-24 14:31:47.40297
1093	Mazghana	مزغنة	C2119	35	2024-12-24 14:31:47.41378	2024-12-24 14:31:47.41378
1094	Moruh Ein Elarab	مروح عين العرب	C2120	35	2024-12-24 14:31:47.424102	2024-12-24 14:31:47.424102
1095	Qrat	قراط	C2121	35	2024-12-24 14:31:47.434903	2024-12-24 14:31:47.434903
1096	Mil	ميل	C2122	35	2024-12-24 14:31:47.444442	2024-12-24 14:31:47.444442
1097	Rayan	ريان	C2123	36	2024-12-24 14:31:47.454566	2024-12-24 14:31:47.454566
1098	Um Elamad Alsafira	أم العمد السفيرة	C2124	36	2024-12-24 14:31:47.466513	2024-12-24 14:31:47.466513
1099	Tal Hasel	تل حاصل	C2125	36	2024-12-24 14:31:47.477096	2024-12-24 14:31:47.477096
1100	Htani	الحتاني	C2126	36	2024-12-24 14:31:47.487591	2024-12-24 14:31:47.487591
1101	Zaalana	زعلانة	C2128	36	2024-12-24 14:31:47.498557	2024-12-24 14:31:47.498557
1102	Balat	بلاط	C2129	36	2024-12-24 14:31:47.509336	2024-12-24 14:31:47.509336
1103	Aqraba	عقربة	C2130	36	2024-12-24 14:31:47.520584	2024-12-24 14:31:47.520584
1104	Hekleh	حكلة	C2131	36	2024-12-24 14:31:47.529692	2024-12-24 14:31:47.529692
1105	Aqrabuz	عقربوز	C2132	36	2024-12-24 14:31:47.54005	2024-12-24 14:31:47.54005
1106	Tal Alam	تل علم	C2133	36	2024-12-24 14:31:47.552145	2024-12-24 14:31:47.552145
1107	Tal Abur	تل عابور	C2134	36	2024-12-24 14:31:47.563678	2024-12-24 14:31:47.563678
1108	Baydura	بيدورة	C2135	36	2024-12-24 14:31:47.575036	2024-12-24 14:31:47.575036
1109	Jalghum	جلغوم	C2136	36	2024-12-24 14:31:47.585324	2024-12-24 14:31:47.585324
1110	Tal Aran	تل عرن	C2137	36	2024-12-24 14:31:47.595844	2024-12-24 14:31:47.595844
1111	Smad	صماد	C2138	36	2024-12-24 14:31:47.605668	2024-12-24 14:31:47.605668
1112	Habshiyeh	حبشية	C2139	36	2024-12-24 14:31:47.615193	2024-12-24 14:31:47.615193
1113	Burj Elrumman	برج الرمان	C2140	36	2024-12-24 14:31:47.624558	2024-12-24 14:31:47.624558
1114	Emeiriyeh	العميرية	C2141	36	2024-12-24 14:31:47.634409	2024-12-24 14:31:47.634409
1115	Abu Sfeita	أبو صفيطة	C2142	36	2024-12-24 14:31:47.644758	2024-12-24 14:31:47.644758
1116	Bashkwi Safira	باشكوي سفيرة	C2143	36	2024-12-24 14:31:47.653828	2024-12-24 14:31:47.653828
1117	Abu Dreikha Al Safira	أبو دريخة السفيرة	C2144	36	2024-12-24 14:31:47.662759	2024-12-24 14:31:47.662759
1118	Terkan	تركان	C2145	36	2024-12-24 14:31:47.670964	2024-12-24 14:31:47.670964
1119	Ein Assan	عين عسان	C2146	36	2024-12-24 14:31:47.679913	2024-12-24 14:31:47.679913
1120	Tal Establ	تل اصطبل	C2147	36	2024-12-24 14:31:47.691064	2024-12-24 14:31:47.691064
1121	Um Amud	ام عامود	C2148	36	2024-12-24 14:31:47.702124	2024-12-24 14:31:47.702124
1122	Abu Jrin Al-Safira	أبو جرين السفيرة	C2149	36	2024-12-24 14:31:47.71236	2024-12-24 14:31:47.71236
1123	Jafret Elhos	جفرة الحص	C2150	36	2024-12-24 14:31:47.721958	2024-12-24 14:31:47.721958
1124	Jalaghim	جلاغيم	C2151	36	2024-12-24 14:31:47.731447	2024-12-24 14:31:47.731447
1125	Radwaniyeh	رضوانية	C2152	36	2024-12-24 14:31:47.740619	2024-12-24 14:31:47.740619
1126	Ein Sabel	عين سابل	C2153	36	2024-12-24 14:31:47.751932	2024-12-24 14:31:47.751932
1127	Hweijeineh	حويجينة	C2155	36	2024-12-24 14:31:47.762526	2024-12-24 14:31:47.762526
1128	Zanyan	زنيان	C2156	36	2024-12-24 14:31:47.771917	2024-12-24 14:31:47.771917
1129	Tata	طاط	C2157	36	2024-12-24 14:31:47.782172	2024-12-24 14:31:47.782172
1130	Jneid	جنيد	C2158	36	2024-12-24 14:31:47.792095	2024-12-24 14:31:47.792095
1131	Masyadeh	مصيدة	C2159	36	2024-12-24 14:31:47.801736	2024-12-24 14:31:47.801736
1132	Qabtin	قبتين	C2160	36	2024-12-24 14:31:47.810945	2024-12-24 14:31:47.810945
1133	Fajdan	فجدان	C2161	36	2024-12-24 14:31:47.819646	2024-12-24 14:31:47.819646
1134	Kabara	كبارة	C2162	36	2024-12-24 14:31:47.828827	2024-12-24 14:31:47.828827
1135	Qasir Elward	قصير الورد	C2163	36	2024-12-24 14:31:47.841731	2024-12-24 14:31:47.841731
1136	Jeb Elali	جب العلي	C2164	37	2024-12-24 14:31:47.852509	2024-12-24 14:31:47.852509
1137	Jeb Qassem	جب جاسم	C2165	37	2024-12-24 14:31:47.863579	2024-12-24 14:31:47.863579
1138	Big Hajjara	حجارة كبيرة	C2166	37	2024-12-24 14:31:47.873988	2024-12-24 14:31:47.873988
1139	Jeb Elamaa	جب الاعمى	C2167	37	2024-12-24 14:31:47.884167	2024-12-24 14:31:47.884167
1140	Raheb	راهب	C2168	37	2024-12-24 14:31:47.894793	2024-12-24 14:31:47.894793
1141	Ramleh	رملة	C2170	37	2024-12-24 14:31:47.905089	2024-12-24 14:31:47.905089
1142	Rasm Elnafal	رسم النفل	C2171	37	2024-12-24 14:31:47.914627	2024-12-24 14:31:47.914627
1143	Rasm Elsayaleh	رسم السيالة	C2172	37	2024-12-24 14:31:47.924931	2024-12-24 14:31:47.924931
1144	Rasm Hamad	رسم حمد	C2173	37	2024-12-24 14:31:47.934645	2024-12-24 14:31:47.934645
1145	Zabad	زبد	C2174	37	2024-12-24 14:31:47.944893	2024-12-24 14:31:47.944893
1146	Big Shallala	شلالة كبيرة	C2175	37	2024-12-24 14:31:47.956376	2024-12-24 14:31:47.956376
1147	Abda Musa	عبده موسى	C2176	37	2024-12-24 14:31:47.966315	2024-12-24 14:31:47.966315
1148	Hawaz	هواز	C2177	37	2024-12-24 14:31:47.975973	2024-12-24 14:31:47.975973
1149	Harbikeh	هربكية	C2178	37	2024-12-24 14:31:47.986734	2024-12-24 14:31:47.986734
1150	Qleiah	قليعة	C2179	37	2024-12-24 14:31:48.001043	2024-12-24 14:31:48.001043
1151	Um Jern Elsafira	أم جرن السفبرة	C2180	38	2024-12-24 14:31:48.013759	2024-12-24 14:31:48.013759
1152	Smeiriyeh	السميرية	C2181	38	2024-12-24 14:31:48.024219	2024-12-24 14:31:48.024219
1153	Ziraa	زراعة	C2182	38	2024-12-24 14:31:48.034282	2024-12-24 14:31:48.034282
1154	Jaara	جعارة	C2183	38	2024-12-24 14:31:48.044221	2024-12-24 14:31:48.044221
1155	Burj Azawi	برج عزاوي	C2184	39	2024-12-24 14:31:48.053906	2024-12-24 14:31:48.053906
1156	Diman	ديمان	C2186	38	2024-12-24 14:31:48.063545	2024-12-24 14:31:48.063545
1157	Sadaaya	صدعايا	C2187	38	2024-12-24 14:31:48.072456	2024-12-24 14:31:48.072456
1158	Bluzeh	بلوزة	C2188	38	2024-12-24 14:31:48.082398	2024-12-24 14:31:48.082398
1159	Qteirat	قتيطرات	C2189	38	2024-12-24 14:31:48.091987	2024-12-24 14:31:48.091987
1160	Tiba Safira	الطيبة سفيرة	C2190	39	2024-12-24 14:31:48.101781	2024-12-24 14:31:48.101781
1161	Rasm Omeish	رسم عميش	C2191	39	2024-12-24 14:31:48.111779	2024-12-24 14:31:48.111779
1162	Tal Anbar	تل عنبر	C2192	39	2024-12-24 14:31:48.120643	2024-12-24 14:31:48.120643
1163	Burj Elsama	برج الساما	C2193	39	2024-12-24 14:31:48.129606	2024-12-24 14:31:48.129606
1164	Lower Jeb Antash	جب انطاش تحتاني	C2194	39	2024-12-24 14:31:48.138845	2024-12-24 14:31:48.138845
1165	Shur	سحور	C2195	39	2024-12-24 14:31:48.150364	2024-12-24 14:31:48.150364
1166	Upper Jeb Antash	جب انطاش فوقاني	C2196	39	2024-12-24 14:31:48.161241	2024-12-24 14:31:48.161241
1167	Suyan	سويان	C2197	39	2024-12-24 14:31:48.171591	2024-12-24 14:31:48.171591
1168	Jarmakiyeh	الجرمكية	C2198	39	2024-12-24 14:31:48.181461	2024-12-24 14:31:48.181461
1169	Hawir Elhus	حوير الحص	C2199	39	2024-12-24 14:31:48.190703	2024-12-24 14:31:48.190703
1170	Abu Abdeh	أبو عبدة	C2200	39	2024-12-24 14:31:48.200609	2024-12-24 14:31:48.200609
1171	Ubu Getteh	ابو غتة	C2201	39	2024-12-24 14:31:48.210317	2024-12-24 14:31:48.210317
1172	Abu Jlus	أبو جلوس	C2203	39	2024-12-24 14:31:48.219908	2024-12-24 14:31:48.219908
1173	Jeb Tineh	جب تينة	C2204	39	2024-12-24 14:31:48.23024	2024-12-24 14:31:48.23024
1174	Rabeeah Elhanuteh	ربيعة الحانوتة	C2205	39	2024-12-24 14:31:48.239469	2024-12-24 14:31:48.239469
1175	Bisheh	بيشة	C2206	39	2024-12-24 14:31:48.250197	2024-12-24 14:31:48.250197
1176	Maktaba	مكتبة	C2207	39	2024-12-24 14:31:48.259734	2024-12-24 14:31:48.259734
1177	Madrasa	مدرسة	C2208	39	2024-12-24 14:31:48.270399	2024-12-24 14:31:48.270399
1178	Kafr Hoot	كفر حوت	C2209	39	2024-12-24 14:31:48.27991	2024-12-24 14:31:48.27991
1179	Mgheirat Shibli	مغيرات شبلي	C2210	39	2024-12-24 14:31:48.288594	2024-12-24 14:31:48.288594
1180	Manaaya	منعايا	C2211	39	2024-12-24 14:31:48.30177	2024-12-24 14:31:48.30177
1181	Marbaat Bisha	مربعة بيشة	C2212	39	2024-12-24 14:31:48.314145	2024-12-24 14:31:48.314145
1182	Tal Elamara	تل العمارة	C2213	40	2024-12-24 14:31:48.324262	2024-12-24 14:31:48.324262
1183	Halawanji	حلونجي	C2214	40	2024-12-24 14:31:48.334458	2024-12-24 14:31:48.334458
1184	Hjeileh - Jrables	الحجلية - جرابلس	C2215	40	2024-12-24 14:31:48.344467	2024-12-24 14:31:48.344467
1185	Lower Bir	البير التحتاني	C2216	40	2024-12-24 14:31:48.354496	2024-12-24 14:31:48.354496
1186	Dabis	الدابس	C2217	40	2024-12-24 14:31:48.363633	2024-12-24 14:31:48.363633
1187	Maghayer - Qorq Mghar	المغاير_قرق مغار	C2218	40	2024-12-24 14:31:48.372674	2024-12-24 14:31:48.372674
1188	Halawaniyeh	الحلوانية	C2219	40	2024-12-24 14:31:48.382371	2024-12-24 14:31:48.382371
1189	Zoghra	زوغرة	C2220	40	2024-12-24 14:31:48.392242	2024-12-24 14:31:48.392242
1190	Thahr Elmaghayer	ظهر المغاير	C2221	40	2024-12-24 14:31:48.40206	2024-12-24 14:31:48.40206
1191	Treikhem	طريخم	C2222	40	2024-12-24 14:31:48.411397	2024-12-24 14:31:48.411397
1192	Lower Um Rotha	أم روثة تحتاني	C2223	40	2024-12-24 14:31:48.420521	2024-12-24 14:31:48.420521
1193	Jamel	الجامل	C2224	40	2024-12-24 14:31:48.429428	2024-12-24 14:31:48.429428
1194	Upper Um Rotha	أم روثة فوقاني	C2225	40	2024-12-24 14:31:48.437149	2024-12-24 14:31:48.437149
1195	Lower Jrables	جرابلس تحتاني	C2226	40	2024-12-24 14:31:48.449117	2024-12-24 14:31:48.449117
1196	Um Sosa	أم سوسة	C2228	40	2024-12-24 14:31:48.459339	2024-12-24 14:31:48.459339
1197	Himar	حيمر	C2229	40	2024-12-24 14:31:48.4691	2024-12-24 14:31:48.4691
1198	Sreisat	صريصات	C2230	40	2024-12-24 14:31:48.478854	2024-12-24 14:31:48.478854
1199	Hadra - Big Baldaq	الحاضرة_بلدق كبير	C2231	40	2024-12-24 14:31:48.487952	2024-12-24 14:31:48.487952
1200	Mahsana - Mahsanli	المحسنة_محسنلي	C2232	40	2024-12-24 14:31:48.497289	2024-12-24 14:31:48.497289
1201	Ein El-Bayda	عين البيضا	C2233	10	2024-12-24 14:31:48.506204	2024-12-24 14:31:48.506204
1202	Big Majra	مجرى كبير	C2235	40	2024-12-24 14:31:48.515032	2024-12-24 14:31:48.515032
1203	Yusef Elbeik	يوسف بك	C2236	40	2024-12-24 14:31:48.523256	2024-12-24 14:31:48.523256
1204	Qirata	قيراطة	C2237	40	2024-12-24 14:31:48.531576	2024-12-24 14:31:48.531576
1205	Marma Elhajar	مرمى الحجر	C2238	40	2024-12-24 14:31:48.540969	2024-12-24 14:31:48.540969
1206	Little Majra	مجرى صغير	C2239	40	2024-12-24 14:31:48.550249	2024-12-24 14:31:48.550249
1207	Mazaalah	مزعلة	C2240	40	2024-12-24 14:31:48.559118	2024-12-24 14:31:48.559118
1208	Qandariya	قندرية	C2241	40	2024-12-24 14:31:48.568381	2024-12-24 14:31:48.568381
1209	Arab Azzah	عرب عزة	C2242	41	2024-12-24 14:31:48.579121	2024-12-24 14:31:48.579121
1210	Hfeira	حفيرة	C2243	41	2024-12-24 14:31:48.594912	2024-12-24 14:31:48.594912
1211	Tal Elhajar - Tal Elahamar	تل الحجر_تل الاحمر	C2244	41	2024-12-24 14:31:48.605789	2024-12-24 14:31:48.605789
1212	Tal Ali - Karbajli	تل علي_كربجلي	C2245	41	2024-12-24 14:31:48.615977	2024-12-24 14:31:48.615977
1213	Bilis	بيليس	C2246	41	2024-12-24 14:31:48.626924	2024-12-24 14:31:48.626924
1214	Kuliyeh	الكلية	C2247	41	2024-12-24 14:31:48.639807	2024-12-24 14:31:48.639807
1215	Sheineh	شعينة	C2248	41	2024-12-24 14:31:48.651647	2024-12-24 14:31:48.651647
1216	Hajar Elabyad	حجر الابيض	C2249	41	2024-12-24 14:31:48.661213	2024-12-24 14:31:48.661213
1217	Ghassaniyeh - Jrables	الغسانية جرابلس	C2251	41	2024-12-24 14:31:48.671109	2024-12-24 14:31:48.671109
1218	Forsan - Sabahiler	الفرسان_سباهيلر	C2252	41	2024-12-24 14:31:48.680496	2024-12-24 14:31:48.680496
1219	Sheib	الشعيب	C2253	41	2024-12-24 14:31:48.69018	2024-12-24 14:31:48.69018
1220	Qadi Jrables	القاضي جرابلس	C2254	41	2024-12-24 14:31:48.700094	2024-12-24 14:31:48.700094
1221	Sabuniyeh	الصابونية	C2255	41	2024-12-24 14:31:48.709386	2024-12-24 14:31:48.709386
1222	Little Arab Hasan	عرب حسن صغير	C2256	41	2024-12-24 14:31:48.718224	2024-12-24 14:31:48.718224
1223	Thaheriya Jrables	الظاهرية جرابلس	C2257	41	2024-12-24 14:31:48.726502	2024-12-24 14:31:48.726502
1224	Hmeireh - Ashkaji	الحميرة_آشكجي	C2258	41	2024-12-24 14:31:48.73472	2024-12-24 14:31:48.73472
1225	Sweida - Qorret Tashli	السويدة_قرة طاشلي	C2259	41	2024-12-24 14:31:48.745828	2024-12-24 14:31:48.745828
1226	Tal Aghbar - Tal Elagher	تل أغبر_تل الاغر	C2260	41	2024-12-24 14:31:48.755234	2024-12-24 14:31:48.755234
1227	Shahid	الشهيد	C2261	41	2024-12-24 14:31:48.76482	2024-12-24 14:31:48.76482
1228	Jeb Eldam Jrables	جب الدم جرابلس	C2262	41	2024-12-24 14:31:48.77391	2024-12-24 14:31:48.77391
1229	Qubbet Elturkman	قبة التركمان	C2263	41	2024-12-24 14:31:48.783284	2024-12-24 14:31:48.783284
1230	Big Nabgha	نبغة كبيرة	C2264	41	2024-12-24 14:31:48.791954	2024-12-24 14:31:48.791954
1231	Big Mortafaa	مرتفع كبير	C2265	41	2024-12-24 14:31:48.801425	2024-12-24 14:31:48.801425
1232	Ghanameh	غنمة	C2266	41	2024-12-24 14:31:48.811407	2024-12-24 14:31:48.811407
1233	Big Qantara	قنطرة كبيرة	C2267	41	2024-12-24 14:31:48.820516	2024-12-24 14:31:48.820516
1234	Lilawa	ليلوة	C2268	41	2024-12-24 14:31:48.830868	2024-12-24 14:31:48.830868
1235	Jeb Elsafa	جب الصفا	C6304	13	2024-12-24 14:31:48.840386	2024-12-24 14:31:48.840386
1236	Mujamaa Hettin	مجمع حطين	C6305	32	2024-12-24 14:31:48.849985	2024-12-24 14:31:48.849985
1237	Seifat	سيفات	C6322	2	2024-12-24 14:31:48.859596	2024-12-24 14:31:48.859596
1238	Azzan	عزان	C6323	2	2024-12-24 14:31:48.868833	2024-12-24 14:31:48.868833
1239	Rasm Assan	رسم عسان	C6324	38	2024-12-24 14:31:48.878617	2024-12-24 14:31:48.878617
1240	Dweir Elzaytun	دوير الزيتون	C6325	2	2024-12-24 14:31:48.894162	2024-12-24 14:31:48.894162
1241	Bakat	الباكات	C6326	4	2024-12-24 14:31:48.903722	2024-12-24 14:31:48.903722
1242	Mashrafet Elhallaj	مشرفة الحلاج	C6327	4	2024-12-24 14:31:48.913505	2024-12-24 14:31:48.913505
1243	Gharirifeh	غريريفة	C6328	4	2024-12-24 14:31:48.923559	2024-12-24 14:31:48.923559
1244	Abu Elmajaher	ابو المجاهر	C6329	4	2024-12-24 14:31:48.93384	2024-12-24 14:31:48.93384
1245	Ein Elgharf	عين الغرف	C6330	4	2024-12-24 14:31:48.943237	2024-12-24 14:31:48.943237
1246	Babis	بابيص	C6331	5	2024-12-24 14:31:48.952915	2024-12-24 14:31:48.952915
1247	Naqqarin	نقارين	C6332	5	2024-12-24 14:31:48.962803	2024-12-24 14:31:48.962803
1248	Tal Tawil	تل طويل	C6333	16	2024-12-24 14:31:48.971813	2024-12-24 14:31:48.971813
1249	Arshaf	ارشاف	C6334	24	2024-12-24 14:31:48.981554	2024-12-24 14:31:48.981554
1250	Um Elsafa	أم الصفا	C6335	29	2024-12-24 14:31:48.990981	2024-12-24 14:31:48.990981
1251	Kherbet Tweini	خربة تويني	C6336	30	2024-12-24 14:31:49.000811	2024-12-24 14:31:49.000811
1252	Rasm Elfaleh	رسم الفالح	C6337	31	2024-12-24 14:31:49.01051	2024-12-24 14:31:49.01051
1253	Aridiyeh	العريضية	C6338	31	2024-12-24 14:31:49.019265	2024-12-24 14:31:49.019265
1254	Aziziyeh	العزيزية	C6339	32	2024-12-24 14:31:49.028123	2024-12-24 14:31:49.028123
1255	Minas	ميناس	C6340	33	2024-12-24 14:31:49.039858	2024-12-24 14:31:49.039858
1256	Kalmad	كلمد	C6341	33	2024-12-24 14:31:49.049579	2024-12-24 14:31:49.049579
1257	Kharab Rasset	خراب رست	C6342	33	2024-12-24 14:31:49.059353	2024-12-24 14:31:49.059353
1258	Habs	حبس	C6343	37	2024-12-24 14:31:49.069657	2024-12-24 14:31:49.069657
1259	Sarj Fare	سرج فارع	C6344	38	2024-12-24 14:31:49.081272	2024-12-24 14:31:49.081272
1260	Rasim Sahrij	رسم صهريج	C6392	7	2024-12-24 14:31:49.090399	2024-12-24 14:31:49.090399
1261	Zuraikat	الزريقات	C6393	16	2024-12-24 14:31:49.100839	2024-12-24 14:31:49.100839
1262	Muarset Khateeb	معرستة الخطيب	C6394	16	2024-12-24 14:31:49.11072	2024-12-24 14:31:49.11072
1263	Kafrmeez	كفرميز	C6395	16	2024-12-24 14:31:49.12116	2024-12-24 14:31:49.12116
1264	Zfnek	زفنك	C6396	17	2024-12-24 14:31:49.130877	2024-12-24 14:31:49.130877
1265	Hmlak-Hmelek	حملك-حميلك	C6397	18	2024-12-24 14:31:49.140797	2024-12-24 14:31:49.140797
1266	Tatara-Tataranli	تاتارا-تاتارانلي	C6398	18	2024-12-24 14:31:49.15043	2024-12-24 14:31:49.15043
1267	Lower-Marwana	مروانة تحتاني	C6399	18	2024-12-24 14:31:49.15861	2024-12-24 14:31:49.15861
1268	Mazraet Shlu	مزرعة شلو	C6400	22	2024-12-24 14:31:49.167	2024-12-24 14:31:49.167
1269	Arab-Shekho	عرب شيخو	C6401	22	2024-12-24 14:31:49.175269	2024-12-24 14:31:49.175269
1270	Shekh Bilal	شيخ بلال	C6402	19	2024-12-24 14:31:49.189725	2024-12-24 14:31:49.189725
1271	Haidar Obasi	حيدر أوبه سي	C6403	19	2024-12-24 14:31:49.200141	2024-12-24 14:31:49.200141
1272	Hasan Klkawi	حسن كلكاوي	C6404	19	2024-12-24 14:31:49.210802	2024-12-24 14:31:49.210802
1273	Alwardya	الوردية	C6405	21	2024-12-24 14:31:49.220691	2024-12-24 14:31:49.220691
1274	Kalanli	كلانلي	C6406	21	2024-12-24 14:31:49.263768	2024-12-24 14:31:49.263768
1275	Zarak	زرك	C6407	34	2024-12-24 14:31:49.28405	2024-12-24 14:31:49.28405
1276	Zur Maghar	زور مغار	C6408	34	2024-12-24 14:31:49.295451	2024-12-24 14:31:49.295451
1277	Zarkutak	زركوتك	C6409	34	2024-12-24 14:31:49.305697	2024-12-24 14:31:49.305697
1278	Kantari	قنطري	C6410	35	2024-12-24 14:31:49.316451	2024-12-24 14:31:49.316451
1279	Magharbatin	مغربتين	C6411	35	2024-12-24 14:31:49.326754	2024-12-24 14:31:49.326754
1280	Madyuneh	مديونة	C6412	9	2024-12-24 14:31:49.336437	2024-12-24 14:31:49.336437
1281	Eastern-Thalja	ثلجة شرقية	C6413	15	2024-12-24 14:31:49.346595	2024-12-24 14:31:49.346595
1282	Aasimiyah	عاصمية	C6414	13	2024-12-24 14:31:49.356572	2024-12-24 14:31:49.356572
1283	Tal Naam	تل نعام	C6415	36	2024-12-24 14:31:49.365822	2024-12-24 14:31:49.365822
1284	Salihyah	الصالحية	C6416	36	2024-12-24 14:31:49.374497	2024-12-24 14:31:49.374497
1285	Kafr Kar	كفركار	C6417	38	2024-12-24 14:31:49.386891	2024-12-24 14:31:49.386891
1286	Tal Maled	تل مالد	C6418	26	2024-12-24 14:31:49.396995	2024-12-24 14:31:49.396995
1287	Sandaf	صندف	C6419	26	2024-12-24 14:31:49.407003	2024-12-24 14:31:49.407003
1288	Em Al-Qura	أم القرى	C6420	26	2024-12-24 14:31:49.416511	2024-12-24 14:31:49.416511
1289	Qazal	قزل/غزل	C6421	28	2024-12-24 14:31:49.425744	2024-12-24 14:31:49.425744
1290	Harjalah	حرجلة	C6422	28	2024-12-24 14:31:49.435732	2024-12-24 14:31:49.435732
1291	Dalha	دلحة	C6423	28	2024-12-24 14:31:49.444623	2024-12-24 14:31:49.444623
1292	Halazon	الحلزون	C6424	3	2024-12-24 14:31:49.45386	2024-12-24 14:31:49.45386
1293	Tal Msebin	تل مصيبين	C6425	5	2024-12-24 14:31:49.463851	2024-12-24 14:31:49.463851
1294	Kafr Dael	كفر داعل	C6426	2	2024-12-24 14:31:49.473112	2024-12-24 14:31:49.473112
1295	Sheikh Najjar	الشيخ نجار	C6427	2	2024-12-24 14:31:49.4828	2024-12-24 14:31:49.4828
1296	Khan Al-Asal	خان العسل	C6428	2	2024-12-24 14:31:49.491467	2024-12-24 14:31:49.491467
1297	Al-Mallah	الملاح	C6429	2	2024-12-24 14:31:49.501394	2024-12-24 14:31:49.501394
1298	Hamidiyet Al-Shadad	حامدية الشداد	C6430	4	2024-12-24 14:31:49.509958	2024-12-24 14:31:49.509958
1299	Om Adas Fars	أم عدس فرس	C6431	29	2024-12-24 14:31:49.518862	2024-12-24 14:31:49.518862
1300	Qanat Shekh Tabbash	قناة الشيخ طباش	C6432	29	2024-12-24 14:31:49.531283	2024-12-24 14:31:49.531283
1301	Bab Alsalameh	باب السلامة	C6669	23	2024-12-24 14:31:49.542259	2024-12-24 14:31:49.542259
1302	Mezanaz	ميزناز	C6679	3	2024-12-24 14:31:49.55268	2024-12-24 14:31:49.55268
1303	Arnaz	أرناز	C6680	3	2024-12-24 14:31:49.564349	2024-12-24 14:31:49.564349
1304	jab abyad	جب ابيض	C6681	4	2024-12-24 14:31:49.574288	2024-12-24 14:31:49.574288
1305	Balenta	بلنتا	C6682	6	2024-12-24 14:31:49.584553	2024-12-24 14:31:49.584553
1306	Khirbet Al-Zeeb	خربة الذئب	C6683	15	2024-12-24 14:31:49.594402	2024-12-24 14:31:49.594402
1307	Al-Atawieh	العطاوية	C6684	31	2024-12-24 14:31:49.604074	2024-12-24 14:31:49.604074
1308	Tal Al-Maaz	تل المعز	C6685	31	2024-12-24 14:31:49.613702	2024-12-24 14:31:49.613702
1309	Al-Rawda	الروضة	C6686	31	2024-12-24 14:31:49.622858	2024-12-24 14:31:49.622858
1310	Al-Samyieh	السامية	C6687	31	2024-12-24 14:31:49.631759	2024-12-24 14:31:49.631759
1311	Juqur Gharbi	جوقر غربي	C6688	33	2024-12-24 14:31:49.641501	2024-12-24 14:31:49.641501
1312	Al Monbateh	المنبطح	C6711	4	2024-12-24 14:31:49.651173	2024-12-24 14:31:49.651173
1313	Al Jwaim	الجويم	C6714	32	2024-12-24 14:31:49.66149	2024-12-24 14:31:49.66149
1314	Al Faysaliyeh	الفيصلية	C6717	31	2024-12-24 14:31:49.673489	2024-12-24 14:31:49.673489
1315	Um Hajra	أم حجرة	C6722	32	2024-12-24 14:31:49.684463	2024-12-24 14:31:49.684463
1316	Jbab Al Masudeyeh	جباب المسعودية	C6727	31	2024-12-24 14:31:49.694064	2024-12-24 14:31:49.694064
1317	Kharayej Deham	خرايج دحم	C6745	31	2024-12-24 14:31:49.704998	2024-12-24 14:31:49.704998
1318	Al Mashrafah	المشرفة	C6746	31	2024-12-24 14:31:49.714597	2024-12-24 14:31:49.714597
1319	Al Zakieh	الزاكية	C6748	31	2024-12-24 14:31:49.724041	2024-12-24 14:31:49.724041
1320	Rasm Addawali	رسم الدوالي	C6751	31	2024-12-24 14:31:49.733826	2024-12-24 14:31:49.733826
1321	Ajel	عاجل	C6753	3	2024-12-24 14:31:49.743465	2024-12-24 14:31:49.743465
1322	Mansourah	منصورة	C6754	2	2024-12-24 14:31:49.753076	2024-12-24 14:31:49.753076
1323	Bala	بالا	C6756	6	2024-12-24 14:31:49.763361	2024-12-24 14:31:49.763361
1324	Small Maarada	معرضة صغيرة	C6761	31	2024-12-24 14:31:49.773012	2024-12-24 14:31:49.773012
1325	shiha	شيحة	C6763	31	2024-12-24 14:31:49.784055	2024-12-24 14:31:49.784055
1326	Mashhad	مشهد	C6764	6	2024-12-24 14:31:49.794967	2024-12-24 14:31:49.794967
1327	Deir Samaan	دير سمعان	C6766	6	2024-12-24 14:31:49.804421	2024-12-24 14:31:49.804421
1328	Zamka	زمكا	C6770	15	2024-12-24 14:31:49.815257	2024-12-24 14:31:49.815257
1329	Kafr Ghan	كفرغان	C6781	28	2024-12-24 14:31:49.831133	2024-12-24 14:31:49.831133
1330	Al Harsh	الهرش	C7221	4	2024-12-24 14:31:49.844848	2024-12-24 14:31:49.844848
1331	Umm Ad Daqq	ام دق	C7222	4	2024-12-24 14:31:49.858274	2024-12-24 14:31:49.858274
1332	Umm Rujum	ام رجوم	C7223	4	2024-12-24 14:31:49.871604	2024-12-24 14:31:49.871604
1333	Batushiyah	بطوشية	C7224	4	2024-12-24 14:31:49.884225	2024-12-24 14:31:49.884225
1334	Tall Fa	تل فا	C7229	4	2024-12-24 14:31:49.896953	2024-12-24 14:31:49.896953
1335	Umm Sanabil	ام سلاسل	C7232	4	2024-12-24 14:31:49.910153	2024-12-24 14:31:49.910153
1336	Abu Jurah	ابو جورة	C7235	4	2024-12-24 14:31:49.92299	2024-12-24 14:31:49.92299
1337	Hamidiyat	حمديات	C7237	4	2024-12-24 14:31:49.935899	2024-12-24 14:31:49.935899
1338	Jubb al Abed	جب العبد	C7239	4	2024-12-24 14:31:49.949112	2024-12-24 14:31:49.949112
1339	Judaydah	جديدة	C7242	37	2024-12-24 14:31:49.962905	2024-12-24 14:31:49.962905
1340	Ziyarah	زيارة	C7243	4	2024-12-24 14:31:49.975967	2024-12-24 14:31:49.975967
1341	Qtita	القطيط	C7245	31	2024-12-24 14:31:49.988656	2024-12-24 14:31:49.988656
1342	Umm Umoud	ام عمود	C7252	4	2024-12-24 14:31:50.000369	2024-12-24 14:31:50.000369
1343	Awed	عويد	C7253	4	2024-12-24 14:31:50.0152	2024-12-24 14:31:50.0152
1344	Khirbet as Sab'	خربة السبع	C7256	31	2024-12-24 14:31:50.032246	2024-12-24 14:31:50.032246
1345	Rasem al Kar	رسم الكر	C7260	37	2024-12-24 14:31:50.04627	2024-12-24 14:31:50.04627
1346	Khirbet Muhsin	خربة محسن	C7261	32	2024-12-24 14:31:50.061342	2024-12-24 14:31:50.061342
1347	Al Mazraah	المزرعة	C7262	37	2024-12-24 14:31:50.075864	2024-12-24 14:31:50.075864
1348	Rasm al Bisas	رسم البسس	C7263	39	2024-12-24 14:31:50.088962	2024-12-24 14:31:50.088962
1349	Al Baqat	الباقات	C7264	39	2024-12-24 14:31:50.103365	2024-12-24 14:31:50.103365
1350	Rasm Ghunaymah	رسم غنيمة	C7265	37	2024-12-24 14:31:50.118633	2024-12-24 14:31:50.118633
1351	Rujaylah	رجيلة	C7268	4	2024-12-24 14:31:50.13396	2024-12-24 14:31:50.13396
1352	Rasm Shawkan	رسم شوكان	C7269	39	2024-12-24 14:31:50.149756	2024-12-24 14:31:50.149756
1353	Al Hamra	الحمرا	C7272	32	2024-12-24 14:31:50.165553	2024-12-24 14:31:50.165553
1354	Dandan	دندن	C7273	32	2024-12-24 14:31:50.180792	2024-12-24 14:31:50.180792
1355	Jubb as Samiriyah	جب السميرية	C7275	38	2024-12-24 14:31:50.197559	2024-12-24 14:31:50.197559
1356	Jubb al Tinah	جب التينة	C7276	38	2024-12-24 14:31:50.210171	2024-12-24 14:31:50.210171
1357	Rasm as Sahrij	رسم الصهريج	C7277	38	2024-12-24 14:31:50.223346	2024-12-24 14:31:50.223346
1358	Qurayhah	قريحة	C7278	4	2024-12-24 14:31:50.235711	2024-12-24 14:31:50.235711
1359	Ayn Abu Nasrah	عين ابو نصرة	C7279	4	2024-12-24 14:31:50.252534	2024-12-24 14:31:50.252534
1360	Azzira	عزيرة	C7299	38	2024-12-24 14:31:50.268012	2024-12-24 14:31:50.268012
1361	Wadi as Saghir	وادي الصغير	C7301	8	2024-12-24 14:31:50.283068	2024-12-24 14:31:50.283068
1362	Al Khalidiyah	الخالدية الخفسة	C7307	31	2024-12-24 14:31:50.29786	2024-12-24 14:31:50.29786
1363	Qaddarah	قدارة	C7321	2	2024-12-24 14:31:50.312329	2024-12-24 14:31:50.312329
1364	Khanat Assan	خانة عسان	C7323	2	2024-12-24 14:31:50.325788	2024-12-24 14:31:50.325788
1365	Al Buhayrah	البحيرة	C7327	2	2024-12-24 14:31:50.340605	2024-12-24 14:31:50.340605
1366	Al Karayn	الكرين	C7328	13	2024-12-24 14:31:50.353034	2024-12-24 14:31:50.353034
1367	Al Kadar	الكدر	C7331	2	2024-12-24 14:31:50.367605	2024-12-24 14:31:50.367605
1368	Al Kasarah	الكسارة	C7333	2	2024-12-24 14:31:50.382079	2024-12-24 14:31:50.382079
1369	Al Aziziyah	العزيزية	C7334	36	2024-12-24 14:31:50.397003	2024-12-24 14:31:50.397003
1370	Al Amiriyyah	العامرية جبل سمعان	C7335	2	2024-12-24 14:31:50.410361	2024-12-24 14:31:50.410361
1371	Zabida	زبيدة	C7336	11	2024-12-24 14:31:50.421908	2024-12-24 14:31:50.421908
1372	Kafr joum sharki	كفر جوم شرقي	C7337	7	2024-12-24 14:31:50.432565	2024-12-24 14:31:50.432565
1373	Al Mughir	المغير	C7342	2	2024-12-24 14:31:50.44576	2024-12-24 14:31:50.44576
1374	Al Radwan	الرضوان	C7348	3	2024-12-24 14:31:50.45696	2024-12-24 14:31:50.45696
1375	Qaroutiyah	قريطية	C7350	36	2024-12-24 14:31:50.469495	2024-12-24 14:31:50.469495
1376	Zuhrat Madain	زهرة مدائن	C7355	2	2024-12-24 14:31:50.482478	2024-12-24 14:31:50.482478
1377	Ayn al Asafeer	عين العصافير	C7356	2	2024-12-24 14:31:50.493002	2024-12-24 14:31:50.493002
1378	Khirbet Khirs	خربة خريس	C7357	2	2024-12-24 14:31:50.503612	2024-12-24 14:31:50.503612
1379	Abu shu'aylam	ابو شعيلم	C7358	2	2024-12-24 14:31:50.514514	2024-12-24 14:31:50.514514
1380	Jamiyat al Rahal	جمعية الرحال	C7359	3	2024-12-24 14:31:50.524884	2024-12-24 14:31:50.524884
1381	Turaydim	طريديم	C7360	36	2024-12-24 14:31:50.534832	2024-12-24 14:31:50.534832
1382	An Nakrurah	النكرورة	C7364	36	2024-12-24 14:31:50.545257	2024-12-24 14:31:50.545257
1383	Al Aziza	العزيزة	C7368	2	2024-12-24 14:31:50.554883	2024-12-24 14:31:50.554883
1384	Al Rahsidin	الراشدين	C7369	2	2024-12-24 14:31:50.564264	2024-12-24 14:31:50.564264
1385	Bir Shallal Gharbi	بير شلال غربي	C7386	35	2024-12-24 14:31:50.573419	2024-12-24 14:31:50.573419
1386	Rashidiyat Al Khafas	رشيدية الخفسة	C7388	31	2024-12-24 14:31:50.582961	2024-12-24 14:31:50.582961
1387	Jamiyat Azar	جمعية عازار	C7393	6	2024-12-24 14:31:50.591901	2024-12-24 14:31:50.591901
1388	Ard al Hamra	ارض الحمرا	C7401	2	2024-12-24 14:31:50.617376	2024-12-24 14:31:50.617376
1389	Al Jazira	الجزيرة	C7406	2	2024-12-24 14:31:50.638131	2024-12-24 14:31:50.638131
1390	Arne	عرنة	C7410	35	2024-12-24 14:31:50.657933	2024-12-24 14:31:50.657933
1391	Talat al Ghali	تلة الغالي	C7414	2	2024-12-24 14:31:50.671103	2024-12-24 14:31:50.671103
1392	Buashtulka	بشتولكة	C7422	35	2024-12-24 14:31:50.682277	2024-12-24 14:31:50.682277
1393	Merdas	مرداس	C7429	35	2024-12-24 14:31:50.693131	2024-12-24 14:31:50.693131
1394	Jamiyat al Maari	جمعية المعري	C7430	6	2024-12-24 14:31:50.704182	2024-12-24 14:31:50.704182
1395	Bakdana	بكدانا	C7431	6	2024-12-24 14:31:50.714024	2024-12-24 14:31:50.714024
1396	Seqawl	صيقول	C7433	35	2024-12-24 14:31:50.721849	2024-12-24 14:31:50.721849
1397	Al Zakieh Al Khafsef	الزكية الخفسة	C7434	29	2024-12-24 14:31:50.730774	2024-12-24 14:31:50.730774
1398	Wuradaya	ورودية	C7438	9	2024-12-24 14:31:50.739788	2024-12-24 14:31:50.739788
1399	Al Ma'badiyah	المعبدية	C7440	5	2024-12-24 14:31:50.748376	2024-12-24 14:31:50.748376
1400	Shaykh Sulayman	شيخ سليمان	C7441	6	2024-12-24 14:31:50.755798	2024-12-24 14:31:50.755798
1401	Halisah	حليسة	C7442	9	2024-12-24 14:31:50.764535	2024-12-24 14:31:50.764535
1402	Hajj Hassan	حج حسان	C7443	9	2024-12-24 14:31:50.773552	2024-12-24 14:31:50.773552
1403	Handarat	حندرات	C7444	2	2024-12-24 14:31:50.787505	2024-12-24 14:31:50.787505
1404	Darkale	الداكرلي	C7446	9	2024-12-24 14:31:50.797314	2024-12-24 14:31:50.797314
1405	Ghabiyah	غابية	C7449	35	2024-12-24 14:31:50.806826	2024-12-24 14:31:50.806826
1406	Khan Hufrah	خان حفرة	C7450	9	2024-12-24 14:31:50.816877	2024-12-24 14:31:50.816877
1407	Jbeileh	جبيلة	C7452	2	2024-12-24 14:31:50.826718	2024-12-24 14:31:50.826718
1408	Banastour	بنسطور	C7453	27	2024-12-24 14:31:50.835898	2024-12-24 14:31:50.835898
1409	Al Shiyara	الشيارة	C7454	35	2024-12-24 14:31:50.84515	2024-12-24 14:31:50.84515
1410	Babinnis	بابينص	C7455	2	2024-12-24 14:31:50.85485	2024-12-24 14:31:50.85485
1411	Dayr Antah	دير انطة	C7456	9	2024-12-24 14:31:50.864211	2024-12-24 14:31:50.864211
1412	Rumaylat	رميلات	C7457	35	2024-12-24 14:31:50.873555	2024-12-24 14:31:50.873555
1413	Bir abu Tinah	بير ابو تينة	C7458	35	2024-12-24 14:31:50.882848	2024-12-24 14:31:50.882848
1414	Al Daham	الدحام	C7459	35	2024-12-24 14:31:50.894748	2024-12-24 14:31:50.894748
1415	Jadid Al Thahik	جديدة الضاخك	C7460	35	2024-12-24 14:31:50.903728	2024-12-24 14:31:50.903728
1416	Fiha as Segira	فيخة صغيرة	C7461	10	2024-12-24 14:31:50.913553	2024-12-24 14:31:50.913553
1417	Al Misat	المصعات	C7463	35	2024-12-24 14:31:50.925647	2024-12-24 14:31:50.925647
1418	Al Hajj Ibrahim	الحج ابراهيم	C7464	35	2024-12-24 14:31:50.936002	2024-12-24 14:31:50.936002
1419	Kaft Nabu	كفر نبو	C7465	16	2024-12-24 14:31:50.945716	2024-12-24 14:31:50.945716
1420	Al Azraq	الازرق	C7466	9	2024-12-24 14:31:50.954353	2024-12-24 14:31:50.954353
1421	Shikkar	شكار	C7467	35	2024-12-24 14:31:50.964473	2024-12-24 14:31:50.964473
1422	Al Khashkashat	الخشخشات	C7468	9	2024-12-24 14:31:50.973096	2024-12-24 14:31:50.973096
1423	Khirbet Duwayr	خربة الدوير	C7470	9	2024-12-24 14:31:50.983533	2024-12-24 14:31:50.983533
1424	Naqout	ناقوط	C7471	35	2024-12-24 14:31:50.994186	2024-12-24 14:31:50.994186
1425	Talal Al-Enab	تلال العنب	C7473	9	2024-12-24 14:31:51.004516	2024-12-24 14:31:51.004516
1426	Wasitiyah Maree	وسيطية مارع	C7474	26	2024-12-24 14:31:51.015017	2024-12-24 14:31:51.015017
1427	Bir Quraydan	بير قريدان	C7475	35	2024-12-24 14:31:51.025189	2024-12-24 14:31:51.025189
1428	Miserefe	مصيرفة	C7476	24	2024-12-24 14:31:51.034728	2024-12-24 14:31:51.034728
1429	Al Kharab	الخراب	C7478	24	2024-12-24 14:31:51.045921	2024-12-24 14:31:51.045921
1430	Mahfazah	محفظة	C7479	35	2024-12-24 14:31:51.055115	2024-12-24 14:31:51.055115
1431	Mezraat Hewarin	مزرعة حوارين	C7480	26	2024-12-24 14:31:51.064041	2024-12-24 14:31:51.064041
1432	Ajami	عجمي	C7481	15	2024-12-24 14:31:51.076528	2024-12-24 14:31:51.076528
1433	Bash Quyu	باش كويو	C7482	35	2024-12-24 14:31:51.087215	2024-12-24 14:31:51.087215
1434	Arifiyah	عريفية	C7483	15	2024-12-24 14:31:51.097312	2024-12-24 14:31:51.097312
1435	Ash Sharqiyat	شرقيات	C7484	9	2024-12-24 14:31:51.106887	2024-12-24 14:31:51.106887
1436	Tuwainiyah	طويحينة	C7487	24	2024-12-24 14:31:51.116402	2024-12-24 14:31:51.116402
1437	Aliwe Al Zur	عليوي الزور	C7488	35	2024-12-24 14:31:51.125911	2024-12-24 14:31:51.125911
1438	Koban	كوبان	C7490	18	2024-12-24 14:31:51.135856	2024-12-24 14:31:51.135856
1439	Beit Misto	بيت مستو	C7492	24	2024-12-24 14:31:51.14516	2024-12-24 14:31:51.14516
1440	Qantarah	قنطارة	C7494	35	2024-12-24 14:31:51.154393	2024-12-24 14:31:51.154393
1441	Sufaytah	صفيطة	C7496	35	2024-12-24 14:31:51.164231	2024-12-24 14:31:51.164231
1442	Khirbet Azarbah	خربة زربة	C7498	35	2024-12-24 14:31:51.173643	2024-12-24 14:31:51.173643
1443	Tuba	طوبا	C7500	35	2024-12-24 14:31:51.182264	2024-12-24 14:31:51.182264
1444	Al Salihiyah Maree	الصالحية مارع	C7502	24	2024-12-24 14:31:51.191135	2024-12-24 14:31:51.191135
1445	Shraqi \\ Qarah Shuki	شراقي/ قره شوكي	C7503	29	2024-12-24 14:31:51.200325	2024-12-24 14:31:51.200325
1446	Sakif	سكيف	C7505	35	2024-12-24 14:31:51.209151	2024-12-24 14:31:51.209151
1447	Hiyanali	حينالي	C7506	35	2024-12-24 14:31:51.223554	2024-12-24 14:31:51.223554
1448	Jalabiyah	جلبية	C7508	35	2024-12-24 14:31:51.233354	2024-12-24 14:31:51.233354
1449	Shuwayhah	سويحة	C7509	15	2024-12-24 14:31:51.24132	2024-12-24 14:31:51.24132
1450	Mazraat as Sumbulah	مزرعة السنبلة	C7510	15	2024-12-24 14:31:51.251027	2024-12-24 14:31:51.251027
1451	Mezraat Hemmo	مزرعة حمو	C7514	9	2024-12-24 14:31:51.259313	2024-12-24 14:31:51.259313
1452	Al Jumaliyah	الجميلة	C7515	16	2024-12-24 14:31:51.268456	2024-12-24 14:31:51.268456
1453	Buslijah	بصلجة	C7520	41	2024-12-24 14:31:51.27916	2024-12-24 14:31:51.27916
1454	Kantara Ma'abatli	القنطرة معبطلي	C7522	22	2024-12-24 14:31:51.287311	2024-12-24 14:31:51.287311
1455	Serkaneyeh Qibli	سركانية قبلي	C7523	35	2024-12-24 14:31:51.297277	2024-12-24 14:31:51.297277
1456	Sahuljuk	سحولجك	C7524	21	2024-12-24 14:31:51.306266	2024-12-24 14:31:51.306266
1457	Khirbet Ayyoush	خربة عيوش	C7526	29	2024-12-24 14:31:51.315444	2024-12-24 14:31:51.315444
1458	Bir Jaff	بير جف	C7527	35	2024-12-24 14:31:51.324285	2024-12-24 14:31:51.324285
1459	Qasaq	قصق	C7528	35	2024-12-24 14:31:51.332871	2024-12-24 14:31:51.332871
1460	Khodan	خودان	C7533	35	2024-12-24 14:31:51.340447	2024-12-24 14:31:51.340447
1461	Raqas Tahtani	رقاص تحتاني	C7539	35	2024-12-24 14:31:51.351939	2024-12-24 14:31:51.351939
1462	Munif	منيف	C7540	35	2024-12-24 14:31:51.361471	2024-12-24 14:31:51.361471
1463	Kharab Burghul	خراب برغل	C7542	35	2024-12-24 14:31:51.37096	2024-12-24 14:31:51.37096
1464	Qirata kurda	قيراطة كردا	C7545	35	2024-12-24 14:31:51.380308	2024-12-24 14:31:51.380308
1465	Kayfun	كيفون	C7548	35	2024-12-24 14:31:51.390155	2024-12-24 14:31:51.390155
1466	Judaydah Ma'arin	جديدة معرين	C7549	23	2024-12-24 14:31:51.399362	2024-12-24 14:31:51.399362
1467	Qirat	قيراط	C7550	35	2024-12-24 14:31:51.408066	2024-12-24 14:31:51.408066
1468	Raqas al Fawqani	رقاص فوقاني	C7551	35	2024-12-24 14:31:51.417599	2024-12-24 14:31:51.417599
1469	Al Muwass	المواس	C7554	40	2024-12-24 14:31:51.426474	2024-12-24 14:31:51.426474
1470	Huwayjat atalawi	حويجة التلاوي	C7556	35	2024-12-24 14:31:51.435615	2024-12-24 14:31:51.435615
1471	Khirbet tall Shair	خربة تل شعير	C7559	24	2024-12-24 14:31:51.446149	2024-12-24 14:31:51.446149
1472	Karri	كري	C7567	19	2024-12-24 14:31:51.454763	2024-12-24 14:31:51.454763
1473	Khanik Tahtani	خانيك تحتاني	C7569	35	2024-12-24 14:31:51.463209	2024-12-24 14:31:51.463209
1474	Mezraat Shahin	مزرعة شاهين	C7572	24	2024-12-24 14:31:51.471662	2024-12-24 14:31:51.471662
1475	Hurik	حريك	C7575	35	2024-12-24 14:31:51.480142	2024-12-24 14:31:51.480142
1476	Zinar Qel	زنار قل	C7584	35	2024-12-24 14:31:51.491602	2024-12-24 14:31:51.491602
1477	Qahirat Al-Ghandoura	قاهرة الغندورة	C7585	41	2024-12-24 14:31:51.500667	2024-12-24 14:31:51.500667
1478	Khrabah	خرابة	C7588	35	2024-12-24 14:31:51.509595	2024-12-24 14:31:51.509595
1479	Tutanik	توتانيك	C7592	35	2024-12-24 14:31:51.518089	2024-12-24 14:31:51.518089
1480	Dulaym	الدليم	C7593	40	2024-12-24 14:31:51.527461	2024-12-24 14:31:51.527461
1481	Kajar Tahtani	غجر تحتاني	C7595	35	2024-12-24 14:31:51.536143	2024-12-24 14:31:51.536143
1482	Bir Geni	بير خاني	C7596	35	2024-12-24 14:31:51.544817	2024-12-24 14:31:51.544817
1483	Al Tafiliyah	الطفيلية	C7598	41	2024-12-24 14:31:51.553792	2024-12-24 14:31:51.553792
1484	Altun Weran	التون ويران	C7602	35	2024-12-24 14:31:51.562913	2024-12-24 14:31:51.562913
1485	Az Zahrah	الزهرة	C7605	12	2024-12-24 14:31:51.572698	2024-12-24 14:31:51.572698
1486	Khirbet Bashir	خربة بشير	C7607	12	2024-12-24 14:31:51.584164	2024-12-24 14:31:51.584164
1487	Muhalmiyah	ملحمية	C7609	41	2024-12-24 14:31:51.594682	2024-12-24 14:31:51.594682
1488	Mazraat Haydar Pasha	مزرعة حيدر باشا	C7610	41	2024-12-24 14:31:51.604656	2024-12-24 14:31:51.604656
1489	Al Burhaniyah	البرهانية	C7611	41	2024-12-24 14:31:51.6138	2024-12-24 14:31:51.6138
1490	Sarbhoor	سربحور	C7618	33	2024-12-24 14:31:51.622212	2024-12-24 14:31:51.622212
1491	Ras Al Joz	راس الجوز	C7619	41	2024-12-24 14:31:51.63464	2024-12-24 14:31:51.63464
1492	Jamiq	جمك	C7621	34	2024-12-24 14:31:51.644469	2024-12-24 14:31:51.644469
1493	Byt Hajj Kanu	بيت حج كانو	C7624	41	2024-12-24 14:31:51.655171	2024-12-24 14:31:51.655171
1494	Qurdinye	قرديني	C7625	34	2024-12-24 14:31:51.665449	2024-12-24 14:31:51.665449
1495	Ayn Al Bayda	عين البيضا	C7629	40	2024-12-24 14:31:51.674825	2024-12-24 14:31:51.674825
1496	Tahtik Tahtani	تحتيك تحتاني	C7633	33	2024-12-24 14:31:51.68469	2024-12-24 14:31:51.68469
1497	Sharabati	شرباتي	C7636	33	2024-12-24 14:31:51.694617	2024-12-24 14:31:51.694617
1498	Midane	ميدانة	C7637	34	2024-12-24 14:31:51.703883	2024-12-24 14:31:51.703883
1499	Berman	بيرمان	C7638	33	2024-12-24 14:31:51.713679	2024-12-24 14:31:51.713679
1500	Biresh	بريش	C7639	33	2024-12-24 14:31:51.722726	2024-12-24 14:31:51.722726
1501	Jolaqi	جولاقي	C7640	17	2024-12-24 14:31:51.733004	2024-12-24 14:31:51.733004
1502	Koshik	كوشيك	C7641	33	2024-12-24 14:31:51.743301	2024-12-24 14:31:51.743301
1503	Qalanjat Weran	قلنجات ويران	C7651	33	2024-12-24 14:31:51.751506	2024-12-24 14:31:51.751506
1504	Henkoush	حنكوش	C7656	34	2024-12-24 14:31:51.760661	2024-12-24 14:31:51.760661
1505	Zerawik	زرويك	C7659	33	2024-12-24 14:31:51.768786	2024-12-24 14:31:51.768786
1506	Derika Kitikan	ديبرك كيتكان	C7660	33	2024-12-24 14:31:51.779889	2024-12-24 14:31:51.779889
1507	Tall Shair	تل شعير	C7665	40	2024-12-24 14:31:51.789321	2024-12-24 14:31:51.789321
1508	Girmoz	جرموز	C7666	33	2024-12-24 14:31:51.798747	2024-12-24 14:31:51.798747
1509	Diberek Kaytikan	دايبرك كايتيكان	C7674	33	2024-12-24 14:31:51.807899	2024-12-24 14:31:51.807899
1510	Derbazina	درابزين	C7677	34	2024-12-24 14:31:51.816853	2024-12-24 14:31:51.816853
1511	Qerat Mazraa	قره مزرعة	C7683	33	2024-12-24 14:31:51.825464	2024-12-24 14:31:51.825464
1512	Kawkajat	كوكجات	C7684	33	2024-12-24 14:31:51.834638	2024-12-24 14:31:51.834638
1513	Sitti	ستي	C7689	33	2024-12-24 14:31:51.844144	2024-12-24 14:31:51.844144
1514	Kharabal	خرابال	C7692	33	2024-12-24 14:31:51.853171	2024-12-24 14:31:51.853171
1515	Bustabbah	بوستبة	C7693	33	2024-12-24 14:31:51.861873	2024-12-24 14:31:51.861873
1516	Jumharran	جمحران	C7694	33	2024-12-24 14:31:51.870807	2024-12-24 14:31:51.870807
1517	Abkat	ابكت	C7697	34	2024-12-24 14:31:51.881416	2024-12-24 14:31:51.881416
1518	Jaban	جبان	C7702	33	2024-12-24 14:31:51.889271	2024-12-24 14:31:51.889271
1519	Kurtuk	كرتك	C7703	33	2024-12-24 14:31:51.898371	2024-12-24 14:31:51.898371
1520	Juma' Ali	جمعة علي	C7705	33	2024-12-24 14:31:51.906639	2024-12-24 14:31:51.906639
1521	Dakmatash	دكماتاش	C7710	34	2024-12-24 14:31:51.921599	2024-12-24 14:31:51.921599
1522	Hijtar	حجتار	C7715	33	2024-12-24 14:31:51.931113	2024-12-24 14:31:51.931113
1523	Al-Qantara \\ Kikan	القنطرة / كيكان	C7716	33	2024-12-24 14:31:51.940057	2024-12-24 14:31:51.940057
1524	Julbik	جلبيك	C7719	33	2024-12-24 14:31:51.949947	2024-12-24 14:31:51.949947
1525	Sifika Tahtani	صفيق تحتاني	C7722	33	2024-12-24 14:31:51.959316	2024-12-24 14:31:51.959316
1526	Bubana Bekok	بابانا بيكوك	C7723	33	2024-12-24 14:31:51.9713	2024-12-24 14:31:51.9713
1527	Khirbet Zaydan	خربة زيدان	C7883	31	2024-12-24 14:31:51.981879	2024-12-24 14:31:51.981879
1528	Summaqieh	سماقية	C7891	4	2024-12-24 14:31:51.991798	2024-12-24 14:31:51.991798
1529	Andareen	الاندرين	C7892	4	2024-12-24 14:31:52.003946	2024-12-24 14:31:52.003946
1530	Al-Salihiyeh	الصليحية	C7894	4	2024-12-24 14:31:52.014993	2024-12-24 14:31:52.014993
1531	Ubaysan	عبيسان	C7897	37	2024-12-24 14:31:52.026193	2024-12-24 14:31:52.026193
1532	Rasm El-Burj	رسم البرج	C7900	4	2024-12-24 14:31:52.037251	2024-12-24 14:31:52.037251
1533	Al Aziziyeh	العزيزية	C7902	37	2024-12-24 14:31:52.04757	2024-12-24 14:31:52.04757
1534	Rajem As-Sawan	رجم الصوان	C7906	37	2024-12-24 14:31:52.061783	2024-12-24 14:31:52.061783
1535	Al-Mashrafa	المشيرفة	C7908	31	2024-12-24 14:31:52.074266	2024-12-24 14:31:52.074266
1536	Rasm Al-Hamam	رسم الحمام	C7913	37	2024-12-24 14:31:52.094211	2024-12-24 14:31:52.094211
1537	Al-Athami	العظامي	C7919	37	2024-12-24 14:31:52.10947	2024-12-24 14:31:52.10947
1538	Um Khan	ام خان	C7922	4	2024-12-24 14:31:52.128201	2024-12-24 14:31:52.128201
1539	Darayab Al-Wawi	دريب الواوي	C7925	37	2024-12-24 14:31:52.143986	2024-12-24 14:31:52.143986
1540	Al-Rashadieh	الرشادية	C7933	37	2024-12-24 14:31:52.160612	2024-12-24 14:31:52.160612
1541	jakiya	جعکیة	C7934	4	2024-12-24 14:31:52.182966	2024-12-24 14:31:52.182966
1542	Rasm Al-Kabbara	رسم الكبارة	C7937	37	2024-12-24 14:31:52.19963	2024-12-24 14:31:52.19963
1543	Kharbil	خربيل	C7939	37	2024-12-24 14:31:52.215681	2024-12-24 14:31:52.215681
1544	Jeb Awad	جب عواد	C7942	37	2024-12-24 14:31:52.232978	2024-12-24 14:31:52.232978
1545	Hamadaniyeh	حمدانية	C7943	37	2024-12-24 14:31:52.248924	2024-12-24 14:31:52.248924
1546	Duwaur Hawtah	دوير الهوتة	C7944	4	2024-12-24 14:31:52.264168	2024-12-24 14:31:52.264168
1547	Rasm Al-Harmal	رسم الحرمل	C7945	4	2024-12-24 14:31:52.278074	2024-12-24 14:31:52.278074
1548	Little Hajjara	حجارة الصغيرة	C7947	37	2024-12-24 14:31:52.293537	2024-12-24 14:31:52.293537
1549	Um Miyal	ام ميال	C7948	37	2024-12-24 14:31:52.307318	2024-12-24 14:31:52.307318
1550	Burj Subaynah	برج سبينة	C7950	39	2024-12-24 14:31:52.321438	2024-12-24 14:31:52.321438
1551	Kharbet Al-Touba	خربة الطوبا	C7956	37	2024-12-24 14:31:52.339907	2024-12-24 14:31:52.339907
1552	Marbaat Salloum	معربة سلوم	C7960	39	2024-12-24 14:31:52.35183	2024-12-24 14:31:52.35183
1553	Magharah	المغارة	C7965	37	2024-12-24 14:31:52.363533	2024-12-24 14:31:52.363533
1554	Sardaah	سرداح	C7966	37	2024-12-24 14:31:52.37473	2024-12-24 14:31:52.37473
1555	Akkil	عقيل	C7969	37	2024-12-24 14:31:52.386514	2024-12-24 14:31:52.386514
1556	Hayyat Saghira	حيات صغيرة	C7971	37	2024-12-24 14:31:52.397311	2024-12-24 14:31:52.397311
1557	Rasm Askar	رسم عسكر	C7974	37	2024-12-24 14:31:52.406866	2024-12-24 14:31:52.406866
1558	Wassita	وسيطة	C7978	7	2024-12-24 14:31:52.417529	2024-12-24 14:31:52.417529
1559	Shuraymah	شريمة	C7979	37	2024-12-24 14:31:52.427109	2024-12-24 14:31:52.427109
1560	Atshana	عطشانة	C7980	37	2024-12-24 14:31:52.437904	2024-12-24 14:31:52.437904
1561	Hayyat	حيات	C7981	37	2024-12-24 14:31:52.448622	2024-12-24 14:31:52.448622
1562	Kharbet Khanaser	خربة خنيصر	C7983	37	2024-12-24 14:31:52.457885	2024-12-24 14:31:52.457885
1563	Um Establ	ام اصطبل	C7985	39	2024-12-24 14:31:52.466818	2024-12-24 14:31:52.466818
1564	Rasem Al-Karkour	رسم القرقور	C7986	39	2024-12-24 14:31:52.47528	2024-12-24 14:31:52.47528
1565	Rwayheb	رويهب	C7988	37	2024-12-24 14:31:52.483984	2024-12-24 14:31:52.483984
1566	Rasm Faleh	رسم فالح	C7989	32	2024-12-24 14:31:52.496205	2024-12-24 14:31:52.496205
1567	Sanabel	سنابل	C7992	4	2024-12-24 14:31:52.505919	2024-12-24 14:31:52.505919
1568	Basalah	باصلة	C7993	39	2024-12-24 14:31:52.515633	2024-12-24 14:31:52.515633
1569	Sarja	سرجة	C7995	4	2024-12-24 14:31:52.525862	2024-12-24 14:31:52.525862
1570	Big Jaddaa (Al-Karameh)	جداع كبيرة / الكرمة	C7997	32	2024-12-24 14:31:52.535601	2024-12-24 14:31:52.535601
1571	AL bouduna	بندوقة	C7999	31	2024-12-24 14:31:52.546003	2024-12-24 14:31:52.546003
1572	Big Mawalih	موالح كبيرة	C8001	31	2024-12-24 14:31:52.555736	2024-12-24 14:31:52.555736
1573	Kafr Haddad	كفر حداد	C8003	8	2024-12-24 14:31:52.565314	2024-12-24 14:31:52.565314
1574	Judaydeh	الجديدة	C8004	39	2024-12-24 14:31:52.575639	2024-12-24 14:31:52.575639
1575	Kherbet Al-Ma'Ajir	خربة المعاجير	C8005	38	2024-12-24 14:31:52.585583	2024-12-24 14:31:52.585583
1576	Batushyah	البطوشية	C8008	31	2024-12-24 14:31:52.599637	2024-12-24 14:31:52.599637
1577	Aziziyeh	عزيزية	C8009	8	2024-12-24 14:31:52.60967	2024-12-24 14:31:52.60967
1578	Little Mawalih	موالح الصغيرة	C8010	31	2024-12-24 14:31:52.619035	2024-12-24 14:31:52.619035
1579	Tallet Al-Arbeen	تل الاربعين	C8011	4	2024-12-24 14:31:52.627853	2024-12-24 14:31:52.627853
1580	Al-Mdawrah	المدورة	C8013	4	2024-12-24 14:31:52.636488	2024-12-24 14:31:52.636488
1581	Rasm El-Hamam Gharbi	رسم الحمام الغربي	C8016	31	2024-12-24 14:31:52.649128	2024-12-24 14:31:52.649128
1582	Al-Fariyah (Tall Al-Ghurab)	الفرعية / تل الغراب	C8017	31	2024-12-24 14:31:52.659212	2024-12-24 14:31:52.659212
1583	Qanawi	قناوي	C8019	31	2024-12-24 14:31:52.669426	2024-12-24 14:31:52.669426
1584	Kherbet Al-Muzn	خربة المزن	C8022	31	2024-12-24 14:31:52.680876	2024-12-24 14:31:52.680876
1585	Kherbet Al- Thib	خربة الطيب	C8023	31	2024-12-24 14:31:52.692671	2024-12-24 14:31:52.692671
1586	Sukkariyeh	سكرية	C8024	32	2024-12-24 14:31:52.702393	2024-12-24 14:31:52.702393
1587	Al-Fares	الفارس	C8025	4	2024-12-24 14:31:52.712505	2024-12-24 14:31:52.712505
1588	Rasm El-Ghazal	رسم الغزال	C8026	32	2024-12-24 14:31:52.723471	2024-12-24 14:31:52.723471
1589	Joret Jheish	جواز الجحاش	C8027	4	2024-12-24 14:31:52.738012	2024-12-24 14:31:52.738012
1590	Kherbet Hassun	خربة حسن	C8028	31	2024-12-24 14:31:52.752762	2024-12-24 14:31:52.752762
1591	Kherbet Hajj Abidan	خربة حج عبدن	C8030	31	2024-12-24 14:31:52.766542	2024-12-24 14:31:52.766542
1592	Shgheidleh	شغيدلة	C8032	8	2024-12-24 14:31:52.778329	2024-12-24 14:31:52.778329
1593	Rasm Elsheikh	رسم الشيخ	C8033	4	2024-12-24 14:31:52.792951	2024-12-24 14:31:52.792951
1594	Andnaniyeh	اندنانية	C8034	36	2024-12-24 14:31:52.805033	2024-12-24 14:31:52.805033
1595	Wadihah Al-Jadidah	الوديهة الجديدة	C8037	32	2024-12-24 14:31:52.816993	2024-12-24 14:31:52.816993
1596	Samajliyeh	الصمجلية	C8040	31	2024-12-24 14:31:52.834304	2024-12-24 14:31:52.834304
1597	Khalsah	خلصة	C8046	7	2024-12-24 14:31:52.847841	2024-12-24 14:31:52.847841
1598	Sabiqiyah	السابقية	C8047	2	2024-12-24 14:31:52.861532	2024-12-24 14:31:52.861532
1599	Nafiyah	النافعية	C8049	31	2024-12-24 14:31:52.872414	2024-12-24 14:31:52.872414
1600	Al Huweiz	الحويز	C8054	2	2024-12-24 14:31:52.883356	2024-12-24 14:31:52.883356
1601	Littile Jarrah	جراح الصغير	C8056	31	2024-12-24 14:31:52.89567	2024-12-24 14:31:52.89567
1602	Reif Al-Muhandiseen	ريف المهندسين	C8057	7	2024-12-24 14:31:52.906642	2024-12-24 14:31:52.906642
1603	Qutbiyeh	قطبيه	C8059	13	2024-12-24 14:31:52.91755	2024-12-24 14:31:52.91755
1604	Nasriyeh	ناصرية	C8060	36	2024-12-24 14:31:52.928459	2024-12-24 14:31:52.928459
1605	Burayjah	بربجة	C8061	13	2024-12-24 14:31:52.938322	2024-12-24 14:31:52.938322
1606	Khalidiyeh	الخالدية	C8062	2	2024-12-24 14:31:52.948813	2024-12-24 14:31:52.948813
1607	Khirbet Marata	خربة معراتة	C8063	2	2024-12-24 14:31:52.957867	2024-12-24 14:31:52.957867
1608	Jameyt Al-Arman	جمعية الأرمن	C8065	3	2024-12-24 14:31:52.967996	2024-12-24 14:31:52.967996
1609	Shurfah	الشرفة	C8066	2	2024-12-24 14:31:52.977913	2024-12-24 14:31:52.977913
1610	Al-Kalariyah	الكلارية	C8067	2	2024-12-24 14:31:52.987467	2024-12-24 14:31:52.987467
1611	Hikma	الحكمة	C8068	2	2024-12-24 14:31:52.999648	2024-12-24 14:31:52.999648
1612	Al-Jmeiliah	الجميلية	C8070	13	2024-12-24 14:31:53.010186	2024-12-24 14:31:53.010186
1613	Bi'r Shallal Sharqi	بير شلال شرقي	C8074	35	2024-12-24 14:31:53.020069	2024-12-24 14:31:53.020069
1614	Shweileikh	شويليخ	C8075	14	2024-12-24 14:31:53.029581	2024-12-24 14:31:53.029581
1615	Arbeed Al-Jadedeh \\ Ayn Al-Hanash	جديدة عربين / عين الحنش	C8076	13	2024-12-24 14:31:53.041263	2024-12-24 14:31:53.041263
1616	Jeb Al-Kalab	جب الكلب	C8079	13	2024-12-24 14:31:53.050655	2024-12-24 14:31:53.050655
1617	Shweihneh	شويحنة	C8081	2	2024-12-24 14:31:53.059878	2024-12-24 14:31:53.059878
1618	Tanuzah	تنوزة	C8082	13	2024-12-24 14:31:53.068879	2024-12-24 14:31:53.068879
1619	Jameyt Al-Hadi	جمعية الهادي	C8083	6	2024-12-24 14:31:53.077922	2024-12-24 14:31:53.077922
1620	Sreib	سريب	C8084	14	2024-12-24 14:31:53.08803	2024-12-24 14:31:53.08803
1621	Qasemiyeh	قاسمية	C8085	6	2024-12-24 14:31:53.097554	2024-12-24 14:31:53.097554
1622	Rasm Elkema	رسم الكما	C8086	14	2024-12-24 14:31:53.107068	2024-12-24 14:31:53.107068
1623	Salloum	السلوم	C8087	6	2024-12-24 14:31:53.117339	2024-12-24 14:31:53.117339
1624	Mkelbis	مكلبيس	C8088	6	2024-12-24 14:31:53.128102	2024-12-24 14:31:53.128102
1625	Tal Taanah	تل طعانة	C8089	5	2024-12-24 14:31:53.137856	2024-12-24 14:31:53.137856
1626	Tall Bijan	تل بيجان	C8090	10	2024-12-24 14:31:53.152495	2024-12-24 14:31:53.152495
1627	Rasm Al-Alam	رسم العالم	C8091	10	2024-12-24 14:31:53.164892	2024-12-24 14:31:53.164892
1628	Ajuziyeh	العجوزية	C8093	10	2024-12-24 14:31:53.176691	2024-12-24 14:31:53.176691
1629	Abbudiyah	العبودية	C8094	10	2024-12-24 14:31:53.188065	2024-12-24 14:31:53.188065
1630	Kharbit Shatir	خربة الشاطر	C8095	35	2024-12-24 14:31:53.198955	2024-12-24 14:31:53.198955
1631	Mushrafet Abu Jabar	مشرفة ابو جبر	C8096	10	2024-12-24 14:31:53.209678	2024-12-24 14:31:53.209678
1632	Al-Brij	البريج	C8098	2	2024-12-24 14:31:53.219778	2024-12-24 14:31:53.219778
1633	Multaffeh	الملتفتة	C8099	10	2024-12-24 14:31:53.230561	2024-12-24 14:31:53.230561
1634	Kherbet Al-Jahesh	خربة الجحاش	C8100	10	2024-12-24 14:31:53.241113	2024-12-24 14:31:53.241113
1635	Tanbor	طنبور	C8101	9	2024-12-24 14:31:53.252231	2024-12-24 14:31:53.252231
1636	Ein Al-Jahesh	عين الجحاش	C8102	10	2024-12-24 14:31:53.26338	2024-12-24 14:31:53.26338
1637	Al Hlaqa	الحلاقة	C8104	10	2024-12-24 14:31:53.27333	2024-12-24 14:31:53.27333
1638	Big Hamiyr	الحيمر كبيرة	C8105	35	2024-12-24 14:31:53.284965	2024-12-24 14:31:53.284965
1639	Little Sarja	سرجة صغيرة	C8106	9	2024-12-24 14:31:53.294483	2024-12-24 14:31:53.294483
1640	Mansura - Tadaf	المنصورة (تادف)	C8107	10	2024-12-24 14:31:53.302935	2024-12-24 14:31:53.302935
1641	Al Dourea	الدرعية	C8108	9	2024-12-24 14:31:53.315751	2024-12-24 14:31:53.315751
1642	Al Jawm	الجوم	C8109	35	2024-12-24 14:31:53.326344	2024-12-24 14:31:53.326344
1643	Al Bayda	البيضا	C8110	35	2024-12-24 14:31:53.335742	2024-12-24 14:31:53.335742
1644	Al Mustarihah	المستريحة	C8111	29	2024-12-24 14:31:53.344925	2024-12-24 14:31:53.344925
1645	Kar awidani	كر اوضاني	C8112	35	2024-12-24 14:31:53.354225	2024-12-24 14:31:53.354225
1646	Ramla	الرملة	C8113	35	2024-12-24 14:31:53.363571	2024-12-24 14:31:53.363571
1647	Jubb as Safa	جب الصفا	C8114	35	2024-12-24 14:31:53.372185	2024-12-24 14:31:53.372185
1648	Qatoura	قاطورة	C8116	6	2024-12-24 14:31:53.383085	2024-12-24 14:31:53.383085
1649	Jubb Al-Kiradeh	جب الكيرادة	C8117	35	2024-12-24 14:31:53.393869	2024-12-24 14:31:53.393869
1650	Little Hamar	حمر الصغيرة	C8118	35	2024-12-24 14:31:53.404059	2024-12-24 14:31:53.404059
1651	Abu Safayan	أبو صفيان	C8119	35	2024-12-24 14:31:53.417246	2024-12-24 14:31:53.417246
1652	Shamawiyah	شماوية	C8120	10	2024-12-24 14:31:53.428841	2024-12-24 14:31:53.428841
1653	Sheikh Aqil	الشيخ عقيل	C8121	27	2024-12-24 14:31:53.437913	2024-12-24 14:31:53.437913
1654	Kranah al-Gharbi	كرانة غربي	C8122	35	2024-12-24 14:31:53.448122	2024-12-24 14:31:53.448122
1655	Burj Slaiman	برج سليمان	C8123	16	2024-12-24 14:31:53.461239	2024-12-24 14:31:53.461239
1656	Dbsiyeh	دبسية	C8124	35	2024-12-24 14:31:53.47234	2024-12-24 14:31:53.47234
1657	Maazuleh	معزولة	C8125	10	2024-12-24 14:31:53.482614	2024-12-24 14:31:53.482614
1658	Abu Zendin	أبو الزندين	C8126	9	2024-12-24 14:31:53.492982	2024-12-24 14:31:53.492982
1659	Kharbashieh	خربشية	C8127	9	2024-12-24 14:31:53.502722	2024-12-24 14:31:53.502722
1660	Kafr Tunah	كفر طونة	C8129	2	2024-12-24 14:31:53.513064	2024-12-24 14:31:53.513064
1661	Dukan	دوكان	C8130	18	2024-12-24 14:31:53.522787	2024-12-24 14:31:53.522787
1662	Hleisah	حليسة	C8131	2	2024-12-24 14:31:53.532178	2024-12-24 14:31:53.532178
1663	Ghuz	غوز	C8132	9	2024-12-24 14:31:53.540818	2024-12-24 14:31:53.540818
1664	Abu Majed	أبو ماجد	C8133	35	2024-12-24 14:31:53.551355	2024-12-24 14:31:53.551355
1665	Little Fikha	فيخة الصغيرة	C8134	10	2024-12-24 14:31:53.561016	2024-12-24 14:31:53.561016
1666	Mhamadia	محمودية	C8135	18	2024-12-24 14:31:53.571011	2024-12-24 14:31:53.571011
1667	Tal Susin	تل سوسين	C8136	2	2024-12-24 14:31:53.580176	2024-12-24 14:31:53.580176
1668	Al-Salhabiya	السلحبية	C8137	35	2024-12-24 14:31:53.589842	2024-12-24 14:31:53.589842
1669	Kafr Qares	كفر قارص	C8138	2	2024-12-24 14:31:53.599869	2024-12-24 14:31:53.599869
1670	Hebsawi	الحبصاوي	C8139	35	2024-12-24 14:31:53.61229	2024-12-24 14:31:53.61229
1671	Hasin	حاسين	C8140	26	2024-12-24 14:31:53.622051	2024-12-24 14:31:53.622051
1672	Beir Khadim	بير خادم	C8141	35	2024-12-24 14:31:53.631165	2024-12-24 14:31:53.631165
1673	Hassani	حساني	C8142	10	2024-12-24 14:31:53.639912	2024-12-24 14:31:53.639912
1674	Kufair	الكفير	C8143	9	2024-12-24 14:31:53.648664	2024-12-24 14:31:53.648664
1675	Lawahijeh	اللواحجة	C8144	10	2024-12-24 14:31:53.656912	2024-12-24 14:31:53.656912
1676	Awasi	العواصي	C8145	10	2024-12-24 14:31:53.665971	2024-12-24 14:31:53.665971
1677	Zalaqah	زلقة	C8146	18	2024-12-24 14:31:53.675292	2024-12-24 14:31:53.675292
1678	Janf Al-Ahmar	جنف الأحمر	C8147	35	2024-12-24 14:31:53.684258	2024-12-24 14:31:53.684258
1679	Ali Shamari	علي الشمري	C8148	35	2024-12-24 14:31:53.694844	2024-12-24 14:31:53.694844
1680	Brat	برات	C8149	9	2024-12-24 14:31:53.704096	2024-12-24 14:31:53.704096
1681	Hajilar	حجلار	C8150	18	2024-12-24 14:31:53.714768	2024-12-24 14:31:53.714768
1682	Abu Ka'ab	أبو كعب	C8151	18	2024-12-24 14:31:53.723697	2024-12-24 14:31:53.723697
1683	Wardyah	وردية	C8152	26	2024-12-24 14:31:53.731949	2024-12-24 14:31:53.731949
1684	Dana	دانا	C8154	9	2024-12-24 14:31:53.740427	2024-12-24 14:31:53.740427
1685	Zwaian	زويان	C8155	9	2024-12-24 14:31:53.752802	2024-12-24 14:31:53.752802
1686	Baflur	بفلور	C8156	18	2024-12-24 14:31:53.762731	2024-12-24 14:31:53.762731
1687	Zarzur	زرزور	C8157	9	2024-12-24 14:31:53.772424	2024-12-24 14:31:53.772424
1688	Tal Jijan	تل جيجان	C8158	24	2024-12-24 14:31:53.782147	2024-12-24 14:31:53.782147
1689	Qila	قيلة	C8160	18	2024-12-24 14:31:53.791667	2024-12-24 14:31:53.791667
1690	Khureibah/Qurbe	خريبة / قربة	C8161	18	2024-12-24 14:31:53.803722	2024-12-24 14:31:53.803722
1691	Khalilieyh	خليلية	C8163	9	2024-12-24 14:31:53.813758	2024-12-24 14:31:53.813758
1692	AL Ajami	العجمي	C8165	15	2024-12-24 14:31:53.823336	2024-12-24 14:31:53.823336
1693	Hikageh	هيكجة	C8166	18	2024-12-24 14:31:53.833282	2024-12-24 14:31:53.833282
1694	Qasf Qibli	قصف القبلي	C8168	35	2024-12-24 14:31:53.844525	2024-12-24 14:31:53.844525
1695	Jeb El-barazi	جب البرازي	C8169	15	2024-12-24 14:31:53.854156	2024-12-24 14:31:53.854156
1696	Tall Turin	تل تورين	C8170	15	2024-12-24 14:31:53.864093	2024-12-24 14:31:53.864093
1697	Abu Hayj	ابوهيج	C8171	15	2024-12-24 14:31:53.872123	2024-12-24 14:31:53.872123
1698	Jubb Al-Asi	جب العاصي	C8173	24	2024-12-24 14:31:53.880461	2024-12-24 14:31:53.880461
1699	Kundurli	كندرلي	C8175	15	2024-12-24 14:31:53.888635	2024-12-24 14:31:53.888635
1700	Shaima	شيما	C8176	35	2024-12-24 14:31:53.902457	2024-12-24 14:31:53.902457
1701	Deir Meshmesh	دير مشمش	C8178	16	2024-12-24 14:31:53.912878	2024-12-24 14:31:53.912878
1702	Talatayna 	تلاتينة	C8179	24	2024-12-24 14:31:53.922697	2024-12-24 14:31:53.922697
1703	Kawikli	قاوقلي	C8182	15	2024-12-24 14:31:53.933088	2024-12-24 14:31:53.933088
1704	Haji Hasanli	حجي حسنلي	C8184	18	2024-12-24 14:31:53.942984	2024-12-24 14:31:53.942984
1705	Mseibin(Al-Bab)	مصيبين (الباب)	C8185	15	2024-12-24 14:31:53.952361	2024-12-24 14:31:53.952361
1706	Qanat Ash Sheikh \\ Haj Abdin	قناة الشخ / حج عابدين	C8186	29	2024-12-24 14:31:53.962968	2024-12-24 14:31:53.962968
1707	Damarjik	دمرجيك	C8188	35	2024-12-24 14:31:53.972199	2024-12-24 14:31:53.972199
1708	Al-Alqamiyeh	العلقمية	C8189	25	2024-12-24 14:31:53.98186	2024-12-24 14:31:53.98186
1709	Kafr Antun	كفر أنطون	C8190	25	2024-12-24 14:31:53.991635	2024-12-24 14:31:53.991635
1710	Tel baluni	تل بلونة	C8191	25	2024-12-24 14:31:54.001341	2024-12-24 14:31:54.001341
1711	Nawaja	نواجة	C8192	29	2024-12-24 14:31:54.01065	2024-12-24 14:31:54.01065
1712	Shaikh Naser	شيخ ناصر	C8194	15	2024-12-24 14:31:54.019732	2024-12-24 14:31:54.019732
1713	Ein Daqnah	عين دقنة	C8195	25	2024-12-24 14:31:54.028213	2024-12-24 14:31:54.028213
1714	Shbiran	شابيران	C8196	9	2024-12-24 14:31:54.040029	2024-12-24 14:31:54.040029
1715	Al Sarb	السرب	C8197	29	2024-12-24 14:31:54.050183	2024-12-24 14:31:54.050183
1716	Al Khataf	الخطف	C8198	29	2024-12-24 14:31:54.061052	2024-12-24 14:31:54.061052
1717	Tabjaq	تبجق	C8199	15	2024-12-24 14:31:54.070377	2024-12-24 14:31:54.070377
1718	Gumazanli	جومازانلي	C8200	22	2024-12-24 14:31:54.079798	2024-12-24 14:31:54.079798
1719	Barakeh	بركة	C8201	22	2024-12-24 14:31:54.088753	2024-12-24 14:31:54.088753
1720	Al-Oun	العون	C8203	12	2024-12-24 14:31:54.098758	2024-12-24 14:31:54.098758
1721	Bazji	بازجي	C8205	15	2024-12-24 14:31:54.112715	2024-12-24 14:31:54.112715
1722	Shuhada	شهداء	C8206	35	2024-12-24 14:31:54.121939	2024-12-24 14:31:54.121939
1723	Upper Khazian	خزيان فوقاني	C8207	22	2024-12-24 14:31:54.1323	2024-12-24 14:31:54.1323
1724	Haj Belal	حاج بلال	C8208	21	2024-12-24 14:31:54.142163	2024-12-24 14:31:54.142163
1725	Ayn Al-Hajar	عين الحجر	C8209	22	2024-12-24 14:31:54.152	2024-12-24 14:31:54.152
1726	Darfatli	درفتلي	C8210	35	2024-12-24 14:31:54.160821	2024-12-24 14:31:54.160821
1727	Sheikh Khalil	الشيخ خليل	C8212	21	2024-12-24 14:31:54.169021	2024-12-24 14:31:54.169021
1728	Krat	كرت	C8214	35	2024-12-24 14:31:54.178162	2024-12-24 14:31:54.178162
1729	Al-Rahmaniyah	الرحمانية	C8216	22	2024-12-24 14:31:54.191339	2024-12-24 14:31:54.191339
1730	Azni	عزنة	C8217	35	2024-12-24 14:31:54.201531	2024-12-24 14:31:54.201531
1731	Ayubiyeh (Ar-Ra'ee)	الايوبية	C8218	12	2024-12-24 14:31:54.211383	2024-12-24 14:31:54.211383
1732	Upper Al-Thahrah	الظاهرة العليا	C8219	22	2024-12-24 14:31:54.221506	2024-12-24 14:31:54.221506
1733	Lower Al-Thahrah	الظاهرة الدنبا	C8220	22	2024-12-24 14:31:54.230973	2024-12-24 14:31:54.230973
1734	Dafi	دافي	C8221	35	2024-12-24 14:31:54.240316	2024-12-24 14:31:54.240316
1735	Al-Sheikh Rih	شيخ ريح	C8222	28	2024-12-24 14:31:54.250739	2024-12-24 14:31:54.250739
1736	Touqi	الطوقي	C8223	28	2024-12-24 14:31:54.260507	2024-12-24 14:31:54.260507
1737	Dali Hasan	دالي حسن	C8224	35	2024-12-24 14:31:54.27005	2024-12-24 14:31:54.27005
1738	Kharab Bakir	خربة بكر	C8225	35	2024-12-24 14:31:54.281172	2024-12-24 14:31:54.281172
1739	Kherbet Al-Berj	خربة البرج	C8226	35	2024-12-24 14:31:54.291965	2024-12-24 14:31:54.291965
1740	Tal Sfir	تل صفير	C8227	12	2024-12-24 14:31:54.303196	2024-12-24 14:31:54.303196
1741	Al-Kamaliya	كمالية	C8228	24	2024-12-24 14:31:54.313185	2024-12-24 14:31:54.313185
1742	Tall Husson	تل الحصن	C8231	28	2024-12-24 14:31:54.321944	2024-12-24 14:31:54.321944
1743	Kharab Jabrieh	خربة جابرية	C8233	35	2024-12-24 14:31:54.33115	2024-12-24 14:31:54.33115
1744	Sinka	سينكة	C8235	20	2024-12-24 14:31:54.344512	2024-12-24 14:31:54.344512
1745	Shadiah	شاديا	C8237	19	2024-12-24 14:31:54.355799	2024-12-24 14:31:54.355799
1746	Tal Ahmar	تل احمر	C8238	12	2024-12-24 14:31:54.366008	2024-12-24 14:31:54.366008
1747	Qara Kubri	قرة كبري	C8239	28	2024-12-24 14:31:54.376652	2024-12-24 14:31:54.376652
1748	Raghibiyah	راغبية	C8241	12	2024-12-24 14:31:54.386334	2024-12-24 14:31:54.386334
1749	Jat	جات	C8243	40	2024-12-24 14:31:54.396667	2024-12-24 14:31:54.396667
1750	Shabanyiha	الشعبانية	C8244	24	2024-12-24 14:31:54.406515	2024-12-24 14:31:54.406515
1751	Thlaija Gharbi	ثليجة غربي	C8245	12	2024-12-24 14:31:54.416528	2024-12-24 14:31:54.416528
1752	Sabta Tahtani	سبت تحتاني	C8246	35	2024-12-24 14:31:54.426106	2024-12-24 14:31:54.426106
1753	Ahmadiyha	الاحمدية	C8247	24	2024-12-24 14:31:54.435387	2024-12-24 14:31:54.435387
1754	Kiblik	كبلك	C8248	35	2024-12-24 14:31:54.445345	2024-12-24 14:31:54.445345
1755	Sherbanli	شربانلي	C8249	19	2024-12-24 14:31:54.453982	2024-12-24 14:31:54.453982
1756	Tal Battal	تل بطال	C8250	24	2024-12-24 14:31:54.462923	2024-12-24 14:31:54.462923
1757	Sabta Foqani	سبت فوقاني	C8251	35	2024-12-24 14:31:54.471525	2024-12-24 14:31:54.471525
1758	Sabt Al-Hinko	سبت الهنكو	C8252	35	2024-12-24 14:31:54.483967	2024-12-24 14:31:54.483967
1759	Al-Maraa Al-Sawda	المرعة السودا	C8253	28	2024-12-24 14:31:54.494978	2024-12-24 14:31:54.494978
1760	Fayyad	فياض	C8254	35	2024-12-24 14:31:54.50488	2024-12-24 14:31:54.50488
1761	Hopkan	هوبكان	C8257	19	2024-12-24 14:31:54.515137	2024-12-24 14:31:54.515137
1762	Jaadet Elmaghara	جادة المغارة	C8259	35	2024-12-24 14:31:54.524542	2024-12-24 14:31:54.524542
1763	Al Orobah	العروبة	C8260	20	2024-12-24 14:31:54.534801	2024-12-24 14:31:54.534801
1764	Yaqoubyah	يعقوبية	C8262	41	2024-12-24 14:31:54.544669	2024-12-24 14:31:54.544669
1765	Beylan	بيلان	C8263	17	2024-12-24 14:31:54.554457	2024-12-24 14:31:54.554457
1766	Bablan	ببلان	C8264	40	2024-12-24 14:31:54.564538	2024-12-24 14:31:54.564538
1767	Jubb Al-Kusa	جب الكوسا	C8265	40	2024-12-24 14:31:54.57435	2024-12-24 14:31:54.57435
1768	Beir Khami	بير خامي	C8266	35	2024-12-24 14:31:54.585581	2024-12-24 14:31:54.585581
1769	Ballorsanak	بللورسنك	C8267	20	2024-12-24 14:31:54.594052	2024-12-24 14:31:54.594052
1770	Komtchi	كوماتشي	C8268	34	2024-12-24 14:31:54.602469	2024-12-24 14:31:54.602469
1771	Turman	طرمان	C8270	34	2024-12-24 14:31:54.611018	2024-12-24 14:31:54.611018
1772	Kweim Aftar	كويم افتر	C8272	34	2024-12-24 14:31:54.619289	2024-12-24 14:31:54.619289
1773	Qasemiyeh	قاسمية	C8273	34	2024-12-24 14:31:54.631229	2024-12-24 14:31:54.631229
1774	Bait Hussain	بيت حسين	C8274	40	2024-12-24 14:31:54.640842	2024-12-24 14:31:54.640842
1775	Bir Mal	بير مال	C8275	33	2024-12-24 14:31:54.650537	2024-12-24 14:31:54.650537
1776	Kurazli	قورزلي	C8278	17	2024-12-24 14:31:54.660306	2024-12-24 14:31:54.660306
1777	Jainka	جعنكا	C8280	19	2024-12-24 14:31:54.669171	2024-12-24 14:31:54.669171
1778	Jarti Mallanah	جرتي مللانة	C8281	33	2024-12-24 14:31:54.679151	2024-12-24 14:31:54.679151
1779	Kharab Suluq	خربة سلوك	C8283	19	2024-12-24 14:31:54.696731	2024-12-24 14:31:54.696731
1780	Dobera	دوبيرة	C8285	17	2024-12-24 14:31:54.739583	2024-12-24 14:31:54.739583
1781	Ali Jaru	علي جارو	C8286	17	2024-12-24 14:31:54.784825	2024-12-24 14:31:54.784825
1782	Qarah Baba	قرة بابا	C8287	19	2024-12-24 14:31:54.831799	2024-12-24 14:31:54.831799
1783	Kerak Habib	كويك حبيب	C8288	33	2024-12-24 14:31:54.861786	2024-12-24 14:31:54.861786
1784	Hafatro	حفتارو	C8289	17	2024-12-24 14:31:54.912106	2024-12-24 14:31:54.912106
1785	Lower Qoshli	قوجلي تحتاني	C8290	34	2024-12-24 14:31:54.958423	2024-12-24 14:31:54.958423
1786	Shaltah	شلتاح	C8292	20	2024-12-24 14:31:55.002334	2024-12-24 14:31:55.002334
1787	Hayamli	هياملي	C8293	17	2024-12-24 14:31:55.042816	2024-12-24 14:31:55.042816
1788	Qomi	قومي	C8294	34	2024-12-24 14:31:55.082749	2024-12-24 14:31:55.082749
1789	Qatesh	قاطش	C8297	34	2024-12-24 14:31:55.123087	2024-12-24 14:31:55.123087
1790	Kurdeh	كورده	C8298	33	2024-12-24 14:31:55.188662	2024-12-24 14:31:55.188662
1791	Derebzan Hozan	دربزن حوزان	C8299	34	2024-12-24 14:31:55.213634	2024-12-24 14:31:55.213634
1792	Zarzori	زرزوري	C8301	33	2024-12-24 14:31:55.246029	2024-12-24 14:31:55.246029
1793	Bayada	بياضة	C8302	34	2024-12-24 14:31:55.288547	2024-12-24 14:31:55.288547
1794	Korki	كوركي	C8304	33	2024-12-24 14:31:55.329907	2024-12-24 14:31:55.329907
1795	Elishar	عليشار	C8310	33	2024-12-24 14:31:55.373816	2024-12-24 14:31:55.373816
1796	Salim	سالم	C8311	33	2024-12-24 14:31:55.411088	2024-12-24 14:31:55.411088
1797	Maazarah al-saghirah	مزرعة الصغيرة	C8312	33	2024-12-24 14:31:55.510053	2024-12-24 14:31:55.510053
1798	Mazar Dawod	مزرر داود	C8314	33	2024-12-24 14:31:55.557472	2024-12-24 14:31:55.557472
1799	Abu Danneh	أبو ضنة	C1276	13	2024-12-24 14:31:55.591736	2024-12-24 14:31:55.591736
1800	Kurdo	كردو	C8749	17	2024-12-24 14:31:55.630483	2024-12-24 14:31:55.630483
1801	Astaro	استارو	C8787	16	2024-12-24 14:31:55.674052	2024-12-24 14:31:55.674052
1802	Tal Ghazi	تل غازي	C8788	18	2024-12-24 14:31:55.716394	2024-12-24 14:31:55.716394
1803	Azzatiyah	عزاتية	C8789	24	2024-12-24 14:31:55.794261	2024-12-24 14:31:55.794261
1804	Tannouzeh	طنوزة	C8790	24	2024-12-24 14:31:55.861255	2024-12-24 14:31:55.861255
1805	Al Jalhat	الجلحات	C8791	23	2024-12-24 14:31:55.940228	2024-12-24 14:31:55.940228
1806	Armoujeh	ارموجة	C8792	23	2024-12-24 14:31:55.999028	2024-12-24 14:31:55.999028
1807	Baresha	باريشا (اعزاز)	C8793	28	2024-12-24 14:31:56.078681	2024-12-24 14:31:56.078681
1808	Hasirkeh	حسيركة	C8794	18	2024-12-24 14:31:56.120607	2024-12-24 14:31:56.120607
1809	Kherbet Alloush	خربة علوش	C8795	18	2024-12-24 14:31:56.163059	2024-12-24 14:31:56.163059
1810	Al-Sati - Ateyyah	الساطي - عطية	C8801	18	2024-12-24 14:31:56.206989	2024-12-24 14:31:56.206989
1811	Hamrolk	حمرولك	C8802	22	2024-12-24 14:31:56.253029	2024-12-24 14:31:56.253029
1812	Kal Eibo	كل ايبو	C8803	22	2024-12-24 14:31:56.296205	2024-12-24 14:31:56.296205
1813	Booz Debbeh	بوز دبة	C8804	24	2024-12-24 14:31:56.333299	2024-12-24 14:31:56.333299
1814	Mazraat Al Ola	مزرعة العلا	C8805	24	2024-12-24 14:31:56.376379	2024-12-24 14:31:56.376379
1815	Mazraat Homad	مزرعة حومد	C8806	24	2024-12-24 14:31:56.412637	2024-12-24 14:31:56.412637
1816	Birkash	بركاش	C8808	17	2024-12-24 14:31:56.455743	2024-12-24 14:31:56.455743
1817	Tobal	توبال	C8809	17	2024-12-24 14:31:56.501087	2024-12-24 14:31:56.501087
1818	Jabal Sha'bo	جبل شعبو	C8810	18	2024-12-24 14:31:56.550928	2024-12-24 14:31:56.550928
1819	Qursaq	قرساق	C8811	18	2024-12-24 14:31:56.583899	2024-12-24 14:31:56.583899
1820	Al Makhmar	المخمر	C8816	35	2024-12-24 14:31:56.624632	2024-12-24 14:31:56.624632
1821	Al-Alqamiyeh	العلقمية	C8817	23	2024-12-24 14:31:56.666661	2024-12-24 14:31:56.666661
1822	Al-Assadiyah	الاسدية	C8823	29	2024-12-24 14:31:56.70796	2024-12-24 14:31:56.70796
1823	Bir Fuqani	بئر فوقاني	C8826	40	2024-12-24 14:31:56.748988	2024-12-24 14:31:56.748988
1824	Marj Ismail	مرج إسماعيل	C8834	33	2024-12-24 14:31:56.794751	2024-12-24 14:31:56.794751
1825	Um Tmakh	ام طماخ	C8844	29	2024-12-24 14:31:56.832794	2024-12-24 14:31:56.832794
1826	Albine	البن	C8849	29	2024-12-24 14:31:56.875077	2024-12-24 14:31:56.875077
1827	Al-Sahl	السحل	C8864	35	2024-12-24 14:31:56.914967	2024-12-24 14:31:56.914967
1828	Ashmah	أشمة	C8895	34	2024-12-24 14:31:56.954134	2024-12-24 14:31:56.954134
1829	Um Adasat Ammar	أم عدسة عمار	C8902	29	2024-12-24 14:31:56.991125	2024-12-24 14:31:56.991125
1830	Bi'r ash Shamli	بير الشمالي	C8911	35	2024-12-24 14:31:57.018901	2024-12-24 14:31:57.018901
1831	Bir Qarmadli	بير قرمدلي	C8915	35	2024-12-24 14:31:57.040279	2024-12-24 14:31:57.040279
1832	Turaykiyat al Humr	تريكيات الحمر	C8919	31	2024-12-24 14:31:57.055641	2024-12-24 14:31:57.055641
1833	Tall Hasak	تل حسك	C8924	19	2024-12-24 14:31:57.067125	2024-12-24 14:31:57.067125
1834	Tayri	تيري	C8947	33	2024-12-24 14:31:57.079144	2024-12-24 14:31:57.079144
1835	Jubb al Kalb al Kabir	جب الكلب الكبير	C8949	29	2024-12-24 14:31:57.092831	2024-12-24 14:31:57.092831
1836	Jarqi	جرقي	C8951	29	2024-12-24 14:31:57.104202	2024-12-24 14:31:57.104202
1837	Hamamk	حمامك	C8959	33	2024-12-24 14:31:57.120716	2024-12-24 14:31:57.120716
1838	Khirbat al Bighal	خربة البغال	C8967	30	2024-12-24 14:31:57.131579	2024-12-24 14:31:57.131579
1839	Khirbat	خريبات	C8978	35	2024-12-24 14:31:57.141925	2024-12-24 14:31:57.141925
1840	Khurejah	خريجة	C8979	29	2024-12-24 14:31:57.154782	2024-12-24 14:31:57.154782
1841	Khallawmar	خلومار	C8982	33	2024-12-24 14:31:57.164943	2024-12-24 14:31:57.164943
1842	Dahayek	دايك	C8984	33	2024-12-24 14:31:57.17637	2024-12-24 14:31:57.17637
1843	Dawli Dagh	دولي داغ	C8987	33	2024-12-24 14:31:57.194022	2024-12-24 14:31:57.194022
1844	Dunghuz Magharah	دونغز مغارة	C8988	29	2024-12-24 14:31:57.202865	2024-12-24 14:31:57.202865
1845	Rovi	روفي	C8996	33	2024-12-24 14:31:57.212862	2024-12-24 14:31:57.212862
1846	Zarak	زرك	C9000	35	2024-12-24 14:31:57.222154	2024-12-24 14:31:57.222154
1847	Sanjaq	سنجق	C9007	33	2024-12-24 14:31:57.235139	2024-12-24 14:31:57.235139
1848	Shana`a	شناع	C9019	29	2024-12-24 14:31:57.246169	2024-12-24 14:31:57.246169
1849	Sandaliyat Saghirah	صندلية صغيرة	C9026	30	2024-12-24 14:31:57.255799	2024-12-24 14:31:57.255799
1850	Dab‘ah as-Saghir	ضبعة الصغير	C9028	35	2024-12-24 14:31:57.265594	2024-12-24 14:31:57.265594
1851	Abdikliyah	عبد الكلية	C9033	35	2024-12-24 14:31:57.275277	2024-12-24 14:31:57.275277
1852	Arabshah	عرب شاه	C9035	35	2024-12-24 14:31:57.285197	2024-12-24 14:31:57.285197
1853	Al-Salam	علي السلام	C9038	35	2024-12-24 14:31:57.29573	2024-12-24 14:31:57.29573
1854	Fedra	فدرة	C9044	6	2024-12-24 14:31:57.313842	2024-12-24 14:31:57.313842
1855	Talik	قرية تلك	C9050	33	2024-12-24 14:31:57.32296	2024-12-24 14:31:57.32296
1856	Kaklik at Tahtani	ككليك تحتاني	C9056	35	2024-12-24 14:31:57.336609	2024-12-24 14:31:57.336609
1857	Kundi Sus	كوندي سوس	C9060	33	2024-12-24 14:31:57.347235	2024-12-24 14:31:57.347235
1858	Kir Muman	كيرمومان	C9064	33	2024-12-24 14:31:57.355637	2024-12-24 14:31:57.355637
1859	Lahinah	ليهيني	C9065	33	2024-12-24 14:31:57.364345	2024-12-24 14:31:57.364345
1860	Maghlul	مغلول	C9080	33	2024-12-24 14:31:57.37267	2024-12-24 14:31:57.37267
1861	Minhal as Sallal	منحال السلال	C9083	35	2024-12-24 14:31:57.381255	2024-12-24 14:31:57.381255
1862	Heichter	هيشتر	C9091	33	2024-12-24 14:31:57.39308	2024-12-24 14:31:57.39308
1863	Udanli Jubb	ودنلي جب	C9094	35	2024-12-24 14:31:57.402454	2024-12-24 14:31:57.402454
1864	Yiralli	يارلي	C9096	35	2024-12-24 14:31:57.412189	2024-12-24 14:31:57.412189
1865	Aleppo	حلب	C1007	2	2024-12-24 14:31:57.42129	2024-12-24 14:31:57.42129
1866	Atareb	الأتارب	C1022	3	2024-12-24 14:31:57.432296	2024-12-24 14:31:57.432296
1867	Tall Ed-Daman	تل الضمان	C1058	4	2024-12-24 14:31:57.442232	2024-12-24 14:31:57.442232
1868	Haritan	حريتان	C1130	5	2024-12-24 14:31:57.461782	2024-12-24 14:31:57.461782
1869	Daret Azza	دارة عزة	C1139	6	2024-12-24 14:31:57.472049	2024-12-24 14:31:57.472049
1870	Zarbah	الزربة	C1170	7	2024-12-24 14:31:57.481956	2024-12-24 14:31:57.481956
1871	Hadher	الحاضر	C1182	8	2024-12-24 14:31:57.491481	2024-12-24 14:31:57.491481
1872	Al Bab	الباب	C1202	9	2024-12-24 14:31:57.501195	2024-12-24 14:31:57.501195
1873	Tadaf	تادف	C1219	10	2024-12-24 14:31:57.511204	2024-12-24 14:31:57.511204
1874	Dayr Hafir	دير حافر	C1240	11	2024-12-24 14:31:57.519733	2024-12-24 14:31:57.519733
1875	Ar-Ra'ee	الراعي	C1250	12	2024-12-24 14:31:57.528595	2024-12-24 14:31:57.528595
1876	Eastern Kwaires	كويرس شرقي	C1294	13	2024-12-24 14:31:57.537311	2024-12-24 14:31:57.537311
1877	Rasm Haram El-Imam	رسم الحرمل الامام	C1309	14	2024-12-24 14:31:57.550211	2024-12-24 14:31:57.550211
1878	A'rima	العريمة	C1329	15	2024-12-24 14:31:57.560315	2024-12-24 14:31:57.560315
1879	Afrin	عفرين	C1366	16	2024-12-24 14:31:57.570341	2024-12-24 14:31:57.570341
1880	Bulbul	بلبل	C1391	17	2024-12-24 14:31:57.580742	2024-12-24 14:31:57.580742
1881	Jandairis	جنديرس	C1426	18	2024-12-24 14:31:57.590196	2024-12-24 14:31:57.590196
1882	Raju	راجو	C1484	19	2024-12-24 14:31:57.601139	2024-12-24 14:31:57.601139
1883	Sharan	شران	C1497	20	2024-12-24 14:31:57.61136	2024-12-24 14:31:57.61136
1884	Sheikh El-Hadid	شيخ الحديد	C1525	21	2024-12-24 14:31:57.621681	2024-12-24 14:31:57.621681
1885	Ma'btali	المعبطلي	C1552	22	2024-12-24 14:31:57.631741	2024-12-24 14:31:57.631741
1886	Azaz	أعزاز	C1564	23	2024-12-24 14:31:57.641587	2024-12-24 14:31:57.641587
1887	Akhtrein	أخترين	C1581	24	2024-12-24 14:31:57.651996	2024-12-24 14:31:57.651996
1888	Tall Refaat	تل رفعت	C1621	25	2024-12-24 14:31:57.661025	2024-12-24 14:31:57.661025
1889	Mare'	مارع	C1643	26	2024-12-24 14:31:57.669561	2024-12-24 14:31:57.669561
1890	Nabul	نبل	C1655	27	2024-12-24 14:31:57.678916	2024-12-24 14:31:57.678916
1891	Suran	صوران	C1664	28	2024-12-24 14:31:57.687449	2024-12-24 14:31:57.687449
1892	Menbij	منبج	C1767	29	2024-12-24 14:31:57.699907	2024-12-24 14:31:57.699907
1893	Abu Qalqal	أبو قلقل	C1798	30	2024-12-24 14:31:57.710478	2024-12-24 14:31:57.710478
1894	Al-Khafsa	الخفسة	C1894	31	2024-12-24 14:31:57.720305	2024-12-24 14:31:57.720305
1895	Maskana - Onaiza	مسكنة_عنيزة	C1933	32	2024-12-24 14:31:57.730154	2024-12-24 14:31:57.730154
1896	Ain Al Arab	عين العرب	C1946	33	2024-12-24 14:31:57.739679	2024-12-24 14:31:57.739679
1897	Lower Shyookh	شيوخ تحتاني	C2007	34	2024-12-24 14:31:57.75012	2024-12-24 14:31:57.75012
1898	Sarin	صرين	C2074	35	2024-12-24 14:31:57.75976	2024-12-24 14:31:57.75976
1899	As-Safira	السفيرة	C2154	36	2024-12-24 14:31:57.769502	2024-12-24 14:31:57.769502
1900	Khanaser	خناصر	C2169	37	2024-12-24 14:31:57.778404	2024-12-24 14:31:57.778404
1901	Banan	بنان	C2185	38	2024-12-24 14:31:57.787832	2024-12-24 14:31:57.787832
1902	Hajeb	الحاجب	C2202	39	2024-12-24 14:31:57.796956	2024-12-24 14:31:57.796956
1903	Jarablus	جرابلس	C2227	40	2024-12-24 14:31:57.805928	2024-12-24 14:31:57.805928
1904	Ghandorah	الغندورة	C2250	41	2024-12-24 14:31:57.814969	2024-12-24 14:31:57.814969
\.


--
-- Data for Name: provinces; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.provinces (id, "admin1Name_en", "admin1Name_ar", "admin1Pcode", country_id, created_at, updated_at) FROM stdin;
1	Damascus	دمشق	SY01	1	2024-12-24 14:31:24.656306	2024-12-24 14:31:24.656306
2	Aleppo	حلب	SY02	1	2024-12-24 14:31:24.672955	2024-12-24 14:31:24.672955
3	Rural Damascus	ريف دمشق	SY03	1	2024-12-24 14:31:24.681825	2024-12-24 14:31:24.681825
4	Homs	حمص	SY04	1	2024-12-24 14:31:24.690014	2024-12-24 14:31:24.690014
5	Hama	حماة	SY05	1	2024-12-24 14:31:24.699708	2024-12-24 14:31:24.699708
6	Lattakia	اللاذقية	SY06	1	2024-12-24 14:31:24.708149	2024-12-24 14:31:24.708149
7	Idleb	إدلب	SY07	1	2024-12-24 14:31:24.721449	2024-12-24 14:31:24.721449
8	Al-Hasakeh	الحسكة	SY08	1	2024-12-24 14:31:24.738137	2024-12-24 14:31:24.738137
9	Deir-ez-Zor	دير الزور	SY09	1	2024-12-24 14:31:24.74735	2024-12-24 14:31:24.74735
10	Tartous	طرطوس	SY10	1	2024-12-24 14:31:24.7559	2024-12-24 14:31:24.7559
11	Ar-Raqqa	الرقة	SY11	1	2024-12-24 14:31:24.764713	2024-12-24 14:31:24.764713
12	Dara	درعا	SY12	1	2024-12-24 14:31:24.773693	2024-12-24 14:31:24.773693
13	As-Sweida	السويداء	SY13	1	2024-12-24 14:31:24.782279	2024-12-24 14:31:24.782279
14	Quneitra	القنيطرة	SY14	1	2024-12-24 14:31:24.791101	2024-12-24 14:31:24.791101
\.


--
-- Data for Name: reports; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reports (id, name, sar_id, priority_en, priority_ar, ccontent, neighbourhood_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.roles (id, name, resource_type, resource_id, created_at, updated_at) FROM stdin;
1	admin	\N	\N	2024-12-24 11:38:59.356984	2024-12-24 11:38:59.356984
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schema_migrations (version) FROM stdin;
20241224104201
20241224111533
20241224115429
20241224120654
20241224121558
20241224123036
20241224124217
20241224150205
\.


--
-- Data for Name: subdistricts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subdistricts (id, "admin3Name_en", "admin3Name_ar", "admin3Pcode", district_id, created_at, updated_at) FROM stdin;
1	Damascus	دمشق	SY010000	1	2024-12-24 14:31:26.236414	2024-12-24 14:31:26.236414
2	Jebel Saman	مركز جبل سمعان	SY020000	2	2024-12-24 14:31:26.252371	2024-12-24 14:31:26.252371
3	Atareb	أتارب	SY020001	2	2024-12-24 14:31:26.264579	2024-12-24 14:31:26.264579
4	Tall Ed-daman	تل الضمان	SY020002	2	2024-12-24 14:31:26.275784	2024-12-24 14:31:26.275784
5	Haritan	حريتان	SY020003	2	2024-12-24 14:31:26.288704	2024-12-24 14:31:26.288704
6	Daret Azza	دارة عزة	SY020004	2	2024-12-24 14:31:26.304097	2024-12-24 14:31:26.304097
7	Zarbah	الزربة	SY020005	2	2024-12-24 14:31:26.319341	2024-12-24 14:31:26.319341
8	Hadher	الحاضر	SY020006	2	2024-12-24 14:31:26.332544	2024-12-24 14:31:26.332544
9	Al Bab	مركز الباب	SY020200	3	2024-12-24 14:31:26.344798	2024-12-24 14:31:26.344798
10	Tadaf	تادف	SY020201	3	2024-12-24 14:31:26.357413	2024-12-24 14:31:26.357413
11	Dayr Hafir	دير حافر	SY020202	3	2024-12-24 14:31:26.36888	2024-12-24 14:31:26.36888
12	Ar-Ra'ee	الراعي	SY020203	3	2024-12-24 14:31:26.381963	2024-12-24 14:31:26.381963
13	Eastern Kwaires	كويرس شرقي	SY020204	3	2024-12-24 14:31:26.396993	2024-12-24 14:31:26.396993
14	Rasm Haram El-Imam	رسم حرمل الامام	SY020205	3	2024-12-24 14:31:26.416241	2024-12-24 14:31:26.416241
15	A'rima	عريمة	SY020206	3	2024-12-24 14:31:26.426778	2024-12-24 14:31:26.426778
16	Afrin	مركز عفرين	SY020300	4	2024-12-24 14:31:26.437722	2024-12-24 14:31:26.437722
17	Bulbul	بلبل	SY020301	4	2024-12-24 14:31:26.448219	2024-12-24 14:31:26.448219
18	Jandairis	جنديرس	SY020302	4	2024-12-24 14:31:26.457772	2024-12-24 14:31:26.457772
19	Raju	راجو	SY020303	4	2024-12-24 14:31:26.467344	2024-12-24 14:31:26.467344
20	Sharan	شران	SY020304	4	2024-12-24 14:31:26.476778	2024-12-24 14:31:26.476778
21	Sheikh El-Hadid	شيخ الحديد	SY020305	4	2024-12-24 14:31:26.48681	2024-12-24 14:31:26.48681
22	Ma'btali	معبطلي	SY020306	4	2024-12-24 14:31:26.498399	2024-12-24 14:31:26.498399
23	A'zaz	مركز اعزاز	SY020400	5	2024-12-24 14:31:26.508735	2024-12-24 14:31:26.508735
24	Aghtrin	اخترين	SY020401	5	2024-12-24 14:31:26.520909	2024-12-24 14:31:26.520909
25	Tall Refaat	تل رفعت	SY020402	5	2024-12-24 14:31:26.53277	2024-12-24 14:31:26.53277
26	Mare'	مارع	SY020403	5	2024-12-24 14:31:26.543036	2024-12-24 14:31:26.543036
27	Nabul	نبل	SY020404	5	2024-12-24 14:31:26.55371	2024-12-24 14:31:26.55371
28	Suran	صوران	SY020405	5	2024-12-24 14:31:26.56403	2024-12-24 14:31:26.56403
29	Menbij	مركز منبج	SY020500	6	2024-12-24 14:31:26.573648	2024-12-24 14:31:26.573648
30	Abu Qalqal	أبو قلقل	SY020501	6	2024-12-24 14:31:26.58427	2024-12-24 14:31:26.58427
31	Al-Khafsa	الخفسة	SY020502	6	2024-12-24 14:31:26.594845	2024-12-24 14:31:26.594845
32	Maskana	مسكنة	SY020503	6	2024-12-24 14:31:26.60601	2024-12-24 14:31:26.60601
33	Ain al Arab	مركز عين العرب	SY020600	7	2024-12-24 14:31:26.615564	2024-12-24 14:31:26.615564
34	Lower Shyookh	شيوخ تحتاني	SY020601	7	2024-12-24 14:31:26.624709	2024-12-24 14:31:26.624709
35	Sarin	صرين	SY020602	7	2024-12-24 14:31:26.638037	2024-12-24 14:31:26.638037
36	As-Safira	مركز السفيرة	SY020700	8	2024-12-24 14:31:26.6473	2024-12-24 14:31:26.6473
37	Khanaser	خناصر	SY020701	8	2024-12-24 14:31:26.658819	2024-12-24 14:31:26.658819
38	Banan	بنان	SY020702	8	2024-12-24 14:31:26.668645	2024-12-24 14:31:26.668645
39	Hajeb	الحاجب	SY020703	8	2024-12-24 14:31:26.679515	2024-12-24 14:31:26.679515
40	Jarablus	مركز جرابلس	SY020800	9	2024-12-24 14:31:26.688977	2024-12-24 14:31:26.688977
41	Ghandorah	غندورة	SY020801	9	2024-12-24 14:31:26.699329	2024-12-24 14:31:26.699329
42	Kisweh	الكسوة	SY030101	10	2024-12-24 14:31:26.708659	2024-12-24 14:31:26.708659
43	Babella	ببيلا	SY030102	10	2024-12-24 14:31:26.719518	2024-12-24 14:31:26.719518
44	Jaramana	جرمانا	SY030103	10	2024-12-24 14:31:26.730174	2024-12-24 14:31:26.730174
45	Maliha	المليحة	SY030104	10	2024-12-24 14:31:26.739564	2024-12-24 14:31:26.739564
46	Kafr Batna	كفر بطنا	SY030105	10	2024-12-24 14:31:26.749628	2024-12-24 14:31:26.749628
47	Arbin	عربين	SY030106	10	2024-12-24 14:31:26.758026	2024-12-24 14:31:26.758026
48	Qudsiya	قدسيا	SY030107	10	2024-12-24 14:31:26.76749	2024-12-24 14:31:26.76749
49	Duma	مركز دوما	SY030200	11	2024-12-24 14:31:26.777355	2024-12-24 14:31:26.777355
50	Harasta	حرستا	SY030201	11	2024-12-24 14:31:26.787282	2024-12-24 14:31:26.787282
51	Sabe Byar	السبع بيار	SY030202	11	2024-12-24 14:31:26.797094	2024-12-24 14:31:26.797094
52	Dhameer	الضمير	SY030203	11	2024-12-24 14:31:26.810621	2024-12-24 14:31:26.810621
53	Nashabiyeh	النشابية	SY030204	11	2024-12-24 14:31:26.820643	2024-12-24 14:31:26.820643
54	Ghizlaniyyeh	الغزلانية	SY030205	11	2024-12-24 14:31:26.831178	2024-12-24 14:31:26.831178
55	Haran Al'awameed	حران العواميد	SY030206	11	2024-12-24 14:31:26.840706	2024-12-24 14:31:26.840706
56	Al Qutayfah	مركز القطيفة	SY030300	12	2024-12-24 14:31:26.850388	2024-12-24 14:31:26.850388
57	Jirud	جيرود	SY030301	12	2024-12-24 14:31:26.861191	2024-12-24 14:31:26.861191
58	Ma'loula	معلولا	SY030302	12	2024-12-24 14:31:26.873153	2024-12-24 14:31:26.873153
59	Raheiba	الرحيبة	SY030303	12	2024-12-24 14:31:26.883068	2024-12-24 14:31:26.883068
60	At Tall	مركز التل	SY030400	13	2024-12-24 14:31:26.893338	2024-12-24 14:31:26.893338
61	Sidnaya	صيدنايا	SY030401	13	2024-12-24 14:31:26.90388	2024-12-24 14:31:26.90388
62	Rankus	رنكوس	SY030402	13	2024-12-24 14:31:26.915284	2024-12-24 14:31:26.915284
63	Yabroud	مركز يبرود	SY030500	14	2024-12-24 14:31:26.925805	2024-12-24 14:31:26.925805
64	Esal El-Ward	عسال الورد	SY030501	14	2024-12-24 14:31:26.935252	2024-12-24 14:31:26.935252
65	An Nabk	مركز النبك	SY030600	15	2024-12-24 14:31:26.944579	2024-12-24 14:31:26.944579
66	Deir Attiyeh	دير عطية	SY030601	15	2024-12-24 14:31:26.953011	2024-12-24 14:31:26.953011
67	Az-Zabdani	مركز الزبداني	SY030700	16	2024-12-24 14:31:26.963856	2024-12-24 14:31:26.963856
68	Dimas	الديماس	SY030701	16	2024-12-24 14:31:26.973448	2024-12-24 14:31:26.973448
69	Ein Elfijeh	عين الفيجة	SY030702	16	2024-12-24 14:31:26.983695	2024-12-24 14:31:26.983695
70	Madaya	مضايا	SY030703	16	2024-12-24 14:31:26.993342	2024-12-24 14:31:26.993342
71	Sarghaya	سرغايا	SY030704	16	2024-12-24 14:31:27.003702	2024-12-24 14:31:27.003702
72	Qatana	مركز قطنا	SY030800	17	2024-12-24 14:31:27.014024	2024-12-24 14:31:27.014024
73	Bait Jan	بيت جن	SY030801	17	2024-12-24 14:31:27.022947	2024-12-24 14:31:27.022947
74	Sa'sa'	سعسع	SY030802	17	2024-12-24 14:31:27.032268	2024-12-24 14:31:27.032268
75	Markaz Darayya	مركز داريا	SY030900	18	2024-12-24 14:31:27.043158	2024-12-24 14:31:27.043158
76	Sahnaya	صحنايا	SY030901	18	2024-12-24 14:31:27.051976	2024-12-24 14:31:27.051976
77	Hajar Aswad	الحجر الأسود	SY030902	18	2024-12-24 14:31:27.061463	2024-12-24 14:31:27.061463
78	Homs	مركز حمص	SY040100	19	2024-12-24 14:31:27.07041	2024-12-24 14:31:27.07041
79	Taldu	تلدو	SY040101	19	2024-12-24 14:31:27.08013	2024-12-24 14:31:27.08013
80	Kherbet Tin Noor	خربة تين نور	SY040102	19	2024-12-24 14:31:27.096742	2024-12-24 14:31:27.096742
81	Ein Elniser	عين النسر	SY040103	19	2024-12-24 14:31:27.119093	2024-12-24 14:31:27.119093
82	Farqalas	الفرقلس	SY040104	19	2024-12-24 14:31:27.161431	2024-12-24 14:31:27.161431
83	Raqama	الرقاما	SY040105	19	2024-12-24 14:31:27.173146	2024-12-24 14:31:27.173146
84	Qaryatein	القريتين	SY040106	19	2024-12-24 14:31:27.183757	2024-12-24 14:31:27.183757
85	Mahin	مهين	SY040107	19	2024-12-24 14:31:27.194276	2024-12-24 14:31:27.194276
86	Hasyaa	حسياء	SY040108	19	2024-12-24 14:31:27.20454	2024-12-24 14:31:27.20454
87	Sadad	صدد	SY040109	19	2024-12-24 14:31:27.213794	2024-12-24 14:31:27.213794
88	Qabu	القبو	SY040110	19	2024-12-24 14:31:27.222371	2024-12-24 14:31:27.222371
89	Shin	شين	SY040111	19	2024-12-24 14:31:27.231563	2024-12-24 14:31:27.231563
90	Al-Qusayr	مركز القصير	SY040200	20	2024-12-24 14:31:27.240693	2024-12-24 14:31:27.240693
91	Tall Kalakh	مركز تلكلخ	SY040300	21	2024-12-24 14:31:27.249787	2024-12-24 14:31:27.249787
92	Hadideh	حديدة	SY040301	21	2024-12-24 14:31:27.258566	2024-12-24 14:31:27.258566
93	Nasra	الناصرة	SY040303	21	2024-12-24 14:31:27.267639	2024-12-24 14:31:27.267639
94	Hawash	الحواش	SY040304	21	2024-12-24 14:31:27.276803	2024-12-24 14:31:27.276803
95	Ar-Rastan	مركز الرستن	SY040400	22	2024-12-24 14:31:27.287633	2024-12-24 14:31:27.287633
96	Talbiseh	تلبيسة	SY040401	22	2024-12-24 14:31:27.299453	2024-12-24 14:31:27.299453
97	Tadmor	مركز تدمر	SY040500	23	2024-12-24 14:31:27.309486	2024-12-24 14:31:27.309486
98	Sokhneh	السخنة	SY040501	23	2024-12-24 14:31:27.319451	2024-12-24 14:31:27.319451
99	Al Makhrim	المخرم	SY040600	24	2024-12-24 14:31:27.329524	2024-12-24 14:31:27.329524
100	Jeb Ej-Jarrah	جب الجراح	SY040601	24	2024-12-24 14:31:27.339413	2024-12-24 14:31:27.339413
101	Hama	مركز حماة	SY050100	25	2024-12-24 14:31:27.349109	2024-12-24 14:31:27.349109
102	Suran	صوران	SY050101	25	2024-12-24 14:31:27.357746	2024-12-24 14:31:27.357746
103	Harbanifse	حربنفسه	SY050102	25	2024-12-24 14:31:27.368624	2024-12-24 14:31:27.368624
104	Hamra	الحمراء	SY050103	25	2024-12-24 14:31:27.379837	2024-12-24 14:31:27.379837
105	As-Suqaylabiyah	مركز السقيلبية	SY050200	26	2024-12-24 14:31:27.392158	2024-12-24 14:31:27.392158
106	Tell Salhib	تلسلحب	SY050201	26	2024-12-24 14:31:27.403397	2024-12-24 14:31:27.403397
107	Ziyara	الزيارة	SY050202	26	2024-12-24 14:31:27.413556	2024-12-24 14:31:27.413556
108	Shat-ha	شطحة	SY050203	26	2024-12-24 14:31:27.425193	2024-12-24 14:31:27.425193
109	Madiq Castle	قلعة المضيق	SY050204	26	2024-12-24 14:31:27.435571	2024-12-24 14:31:27.435571
110	As-Salamiyeh	مركز السلمية	SY050300	27	2024-12-24 14:31:27.445501	2024-12-24 14:31:27.445501
111	Eastern Bari	بري شرقي	SY050301	27	2024-12-24 14:31:27.457051	2024-12-24 14:31:27.457051
112	As-Saan	السعن	SY050302	27	2024-12-24 14:31:27.468651	2024-12-24 14:31:27.468651
113	Saboura	صبورة	SY050303	27	2024-12-24 14:31:27.480586	2024-12-24 14:31:27.480586
114	Oqeirbat	عقيربات	SY050304	27	2024-12-24 14:31:27.489613	2024-12-24 14:31:27.489613
115	Masyaf	مركز مصياف	SY050400	28	2024-12-24 14:31:27.499175	2024-12-24 14:31:27.499175
116	Jeb Ramleh	جب رملة	SY050401	28	2024-12-24 14:31:27.507535	2024-12-24 14:31:27.507535
117	Oj	عوج	SY050402	28	2024-12-24 14:31:27.516972	2024-12-24 14:31:27.516972
118	Ein Halaqim	عين حلاقيم	SY050403	28	2024-12-24 14:31:27.525461	2024-12-24 14:31:27.525461
119	Wadi El-oyoun	وادي العيون	SY050404	28	2024-12-24 14:31:27.534665	2024-12-24 14:31:27.534665
120	Muhradah	مركز محردة	SY050500	29	2024-12-24 14:31:27.543636	2024-12-24 14:31:27.543636
121	Kafr Zeita	كفرزيتا	SY050501	29	2024-12-24 14:31:27.552275	2024-12-24 14:31:27.552275
122	Karnaz	كرناز	SY050502	29	2024-12-24 14:31:27.560543	2024-12-24 14:31:27.560543
123	Lattakia	مركز اللاذقية	SY060000	30	2024-12-24 14:31:27.568476	2024-12-24 14:31:27.568476
124	Bahlolieh	البهلولية	SY060001	30	2024-12-24 14:31:27.576538	2024-12-24 14:31:27.576538
125	Rabee'a	ربيعة	SY060002	30	2024-12-24 14:31:27.584729	2024-12-24 14:31:27.584729
126	Ein El-Bayda	عين البيضا	SY060003	30	2024-12-24 14:31:27.59446	2024-12-24 14:31:27.59446
127	Qastal Maaf	قسطل معاف	SY060004	30	2024-12-24 14:31:27.603761	2024-12-24 14:31:27.603761
128	Kasab	كسب	SY060005	30	2024-12-24 14:31:27.614197	2024-12-24 14:31:27.614197
129	Hanadi	هنادي	SY060006	30	2024-12-24 14:31:27.623842	2024-12-24 14:31:27.623842
130	Jablah	مركز جبلة	SY060200	31	2024-12-24 14:31:27.633047	2024-12-24 14:31:27.633047
131	Ein Elsharqiyeh	عين الشرقية	SY060201	31	2024-12-24 14:31:27.642379	2024-12-24 14:31:27.642379
132	Qteilbiyyeh	القطيلبية	SY060202	31	2024-12-24 14:31:27.652295	2024-12-24 14:31:27.652295
133	Ein Shaqaq	عين شقاق	SY060203	31	2024-12-24 14:31:27.661219	2024-12-24 14:31:27.661219
134	Dalyeh	دالية	SY060204	31	2024-12-24 14:31:27.670112	2024-12-24 14:31:27.670112
135	Beit Yashout	بيت ياشوط	SY060205	31	2024-12-24 14:31:27.678908	2024-12-24 14:31:27.678908
136	Al-Haffa	مركزالحفة	SY060300	32	2024-12-24 14:31:27.688041	2024-12-24 14:31:27.688041
137	Salanfa	صلنفة	SY060301	32	2024-12-24 14:31:27.697705	2024-12-24 14:31:27.697705
138	Ein Et-teeneh	عين التينة	SY060302	32	2024-12-24 14:31:27.707338	2024-12-24 14:31:27.707338
139	Kansaba	كنسبا	SY060303	32	2024-12-24 14:31:27.716392	2024-12-24 14:31:27.716392
140	Mzair'a	مزيرعة	SY060304	32	2024-12-24 14:31:27.725516	2024-12-24 14:31:27.725516
141	Al-Qardaha	مركز القرداحة	SY060400	33	2024-12-24 14:31:27.735758	2024-12-24 14:31:27.735758
142	Harf Elmseitra	حرف المسيترة	SY060401	33	2024-12-24 14:31:27.746334	2024-12-24 14:31:27.746334
143	Fakhura	الفاخورة	SY060402	33	2024-12-24 14:31:27.756387	2024-12-24 14:31:27.756387
144	Jobet Berghal	جوبة برغال	SY060403	33	2024-12-24 14:31:27.766721	2024-12-24 14:31:27.766721
145	Idleb	مركز إدلب	SY070000	34	2024-12-24 14:31:27.775713	2024-12-24 14:31:27.775713
146	Abul Thohur	أبو الظهور	SY070001	34	2024-12-24 14:31:27.785315	2024-12-24 14:31:27.785315
147	Bennsh	بنش	SY070002	34	2024-12-24 14:31:27.795479	2024-12-24 14:31:27.795479
148	Saraqab	سراقب	SY070003	34	2024-12-24 14:31:27.805172	2024-12-24 14:31:27.805172
149	Teftnaz	تفتناز	SY070004	34	2024-12-24 14:31:27.816766	2024-12-24 14:31:27.816766
150	Maaret Tamsrin	معرة تمصرين	SY070005	34	2024-12-24 14:31:27.825876	2024-12-24 14:31:27.825876
151	Sarmin	سرمين	SY070006	34	2024-12-24 14:31:27.834971	2024-12-24 14:31:27.834971
152	Ma'arrat An Nu'man	مركز معرة النعمان	SY070200	35	2024-12-24 14:31:27.84451	2024-12-24 14:31:27.84451
153	Khan Shaykun	خان شيخون	SY070201	35	2024-12-24 14:31:27.853954	2024-12-24 14:31:27.853954
154	Sanjar	سنجار	SY070202	35	2024-12-24 14:31:27.863936	2024-12-24 14:31:27.863936
155	Kafr Nobol	كفر نبل	SY070203	35	2024-12-24 14:31:27.873025	2024-12-24 14:31:27.873025
156	Tamanaah	التمانعة	SY070204	35	2024-12-24 14:31:27.88337	2024-12-24 14:31:27.88337
157	Heish	حيش	SY070205	35	2024-12-24 14:31:27.896387	2024-12-24 14:31:27.896387
158	Harim	مركز حارم	SY070300	36	2024-12-24 14:31:27.905857	2024-12-24 14:31:27.905857
159	Dana	دانا	SY070301	36	2024-12-24 14:31:27.914727	2024-12-24 14:31:27.914727
160	Kherbet Tin Noor	خربة تين نور	SY040102	19	2024-12-24 14:31:27.92378	2024-12-24 14:31:27.92378
161	Ein Elniser	عين النسر	SY040103	19	2024-12-24 14:31:27.933409	2024-12-24 14:31:27.933409
162	Farqalas	الفرقلس	SY040104	19	2024-12-24 14:31:27.941896	2024-12-24 14:31:27.941896
163	Raqama	الرقاما	SY040105	19	2024-12-24 14:31:27.951986	2024-12-24 14:31:27.951986
164	Qaryatein	القريتين	SY040106	19	2024-12-24 14:31:27.960599	2024-12-24 14:31:27.960599
165	Mahin	مهين	SY040107	19	2024-12-24 14:31:27.970153	2024-12-24 14:31:27.970153
166	Hasyaa	حسياء	SY040108	19	2024-12-24 14:31:27.979817	2024-12-24 14:31:27.979817
167	Sadad	صدد	SY040109	19	2024-12-24 14:31:27.988206	2024-12-24 14:31:27.988206
168	Qabu	القبو	SY040110	19	2024-12-24 14:31:27.997976	2024-12-24 14:31:27.997976
169	Shin	شين	SY040111	19	2024-12-24 14:31:28.007848	2024-12-24 14:31:28.007848
170	Al-Qusayr	مركز القصير	SY040200	20	2024-12-24 14:31:28.017674	2024-12-24 14:31:28.017674
171	Tall Kalakh	مركز تلكلخ	SY040300	21	2024-12-24 14:31:28.027851	2024-12-24 14:31:28.027851
172	Hadideh	حديدة	SY040301	21	2024-12-24 14:31:28.037828	2024-12-24 14:31:28.037828
173	Nasra	الناصرة	SY040303	21	2024-12-24 14:31:28.048043	2024-12-24 14:31:28.048043
174	Hawash	الحواش	SY040304	21	2024-12-24 14:31:28.057737	2024-12-24 14:31:28.057737
175	Ar-Rastan	مركز الرستن	SY040400	22	2024-12-24 14:31:28.066808	2024-12-24 14:31:28.066808
176	Talbiseh	تلبيسة	SY040401	22	2024-12-24 14:31:28.076533	2024-12-24 14:31:28.076533
177	Tadmor	مركز تدمر	SY040500	23	2024-12-24 14:31:28.086283	2024-12-24 14:31:28.086283
178	Sokhneh	السخنة	SY040501	23	2024-12-24 14:31:28.095846	2024-12-24 14:31:28.095846
179	Al Makhrim	المخرم	SY040600	24	2024-12-24 14:31:28.105279	2024-12-24 14:31:28.105279
180	Jeb Ej-Jarrah	جب الجراح	SY040601	24	2024-12-24 14:31:28.114615	2024-12-24 14:31:28.114615
181	Hama	مركز حماة	SY050100	25	2024-12-24 14:31:28.123175	2024-12-24 14:31:28.123175
182	Suran	صوران	SY050101	25	2024-12-24 14:31:28.131632	2024-12-24 14:31:28.131632
183	Harbanifse	حربنفسه	SY050102	25	2024-12-24 14:31:28.139791	2024-12-24 14:31:28.139791
184	Hamra	الحمراء	SY050103	25	2024-12-24 14:31:28.149125	2024-12-24 14:31:28.149125
185	As-Suqaylabiyah	مركز السقيلبية	SY050200	26	2024-12-24 14:31:28.158317	2024-12-24 14:31:28.158317
186	Tell Salhib	تلسلحب	SY050201	26	2024-12-24 14:31:28.169594	2024-12-24 14:31:28.169594
187	Ziyara	الزيارة	SY050202	26	2024-12-24 14:31:28.181118	2024-12-24 14:31:28.181118
188	Shat-ha	شطحة	SY050203	26	2024-12-24 14:31:28.190863	2024-12-24 14:31:28.190863
189	Madiq Castle	قلعة المضيق	SY050204	26	2024-12-24 14:31:28.199725	2024-12-24 14:31:28.199725
190	As-Salamiyeh	مركز السلمية	SY050300	27	2024-12-24 14:31:28.208235	2024-12-24 14:31:28.208235
191	Eastern Bari	بري شرقي	SY050301	27	2024-12-24 14:31:28.217622	2024-12-24 14:31:28.217622
192	As-Saan	السعن	SY050302	27	2024-12-24 14:31:28.229539	2024-12-24 14:31:28.229539
193	Saboura	صبورة	SY050303	27	2024-12-24 14:31:28.237882	2024-12-24 14:31:28.237882
194	Oqeirbat	عقيربات	SY050304	27	2024-12-24 14:31:28.246619	2024-12-24 14:31:28.246619
195	Masyaf	مركز مصياف	SY050400	28	2024-12-24 14:31:28.25486	2024-12-24 14:31:28.25486
196	Jeb Ramleh	جب رملة	SY050401	28	2024-12-24 14:31:28.263772	2024-12-24 14:31:28.263772
197	Oj	عوج	SY050402	28	2024-12-24 14:31:28.272096	2024-12-24 14:31:28.272096
198	Ein Halaqim	عين حلاقيم	SY050403	28	2024-12-24 14:31:28.282107	2024-12-24 14:31:28.282107
199	Wadi El-oyoun	وادي العيون	SY050404	28	2024-12-24 14:31:28.292603	2024-12-24 14:31:28.292603
200	Muhradah	مركز محردة	SY050500	29	2024-12-24 14:31:28.303208	2024-12-24 14:31:28.303208
201	Kafr Zeita	كفرزيتا	SY050501	29	2024-12-24 14:31:28.314243	2024-12-24 14:31:28.314243
202	Karnaz	كرناز	SY050502	29	2024-12-24 14:31:28.323583	2024-12-24 14:31:28.323583
203	Lattakia	مركز اللاذقية	SY060000	30	2024-12-24 14:31:28.332586	2024-12-24 14:31:28.332586
204	Bahlolieh	البهلولية	SY060001	30	2024-12-24 14:31:28.341448	2024-12-24 14:31:28.341448
205	Rabee'a	ربيعة	SY060002	30	2024-12-24 14:31:28.350487	2024-12-24 14:31:28.350487
206	Ein El-Bayda	عين البيضا	SY060003	30	2024-12-24 14:31:28.360124	2024-12-24 14:31:28.360124
207	Qastal Maaf	قسطل معاف	SY060004	30	2024-12-24 14:31:28.369801	2024-12-24 14:31:28.369801
208	Kasab	كسب	SY060005	30	2024-12-24 14:31:28.379243	2024-12-24 14:31:28.379243
209	Hanadi	هنادي	SY060006	30	2024-12-24 14:31:28.388361	2024-12-24 14:31:28.388361
210	Jablah	مركز جبلة	SY060200	31	2024-12-24 14:31:28.397682	2024-12-24 14:31:28.397682
211	Ein Elsharqiyeh	عين الشرقية	SY060201	31	2024-12-24 14:31:28.407202	2024-12-24 14:31:28.407202
212	Qteilbiyyeh	القطيلبية	SY060202	31	2024-12-24 14:31:28.415539	2024-12-24 14:31:28.415539
213	Ein Shaqaq	عين شقاق	SY060203	31	2024-12-24 14:31:28.42484	2024-12-24 14:31:28.42484
214	Dalyeh	دالية	SY060204	31	2024-12-24 14:31:28.434366	2024-12-24 14:31:28.434366
215	Beit Yashout	بيت ياشوط	SY060205	31	2024-12-24 14:31:28.443783	2024-12-24 14:31:28.443783
216	Al-Haffa	مركزالحفة	SY060300	32	2024-12-24 14:31:28.452724	2024-12-24 14:31:28.452724
217	Salanfa	صلنفة	SY060301	32	2024-12-24 14:31:28.461332	2024-12-24 14:31:28.461332
218	Ein Et-teeneh	عين التينة	SY060302	32	2024-12-24 14:31:28.470621	2024-12-24 14:31:28.470621
219	Kansaba	كنسبا	SY060303	32	2024-12-24 14:31:28.479214	2024-12-24 14:31:28.479214
220	Mzair'a	مزيرعة	SY060304	32	2024-12-24 14:31:28.487256	2024-12-24 14:31:28.487256
221	Al-Qardaha	مركز القرداحة	SY060400	33	2024-12-24 14:31:28.49576	2024-12-24 14:31:28.49576
222	Harf Elmseitra	حرف المسيترة	SY060401	33	2024-12-24 14:31:28.504296	2024-12-24 14:31:28.504296
223	Fakhura	الفاخورة	SY060402	33	2024-12-24 14:31:28.513046	2024-12-24 14:31:28.513046
224	Jobet Berghal	جوبة برغال	SY060403	33	2024-12-24 14:31:28.521888	2024-12-24 14:31:28.521888
225	Idleb	مركز إدلب	SY070000	34	2024-12-24 14:31:28.531085	2024-12-24 14:31:28.531085
226	Abul Thohur	أبو الظهور	SY070001	34	2024-12-24 14:31:28.543212	2024-12-24 14:31:28.543212
227	Bennsh	بنش	SY070002	34	2024-12-24 14:31:28.552238	2024-12-24 14:31:28.552238
228	Saraqab	سراقب	SY070003	34	2024-12-24 14:31:28.560798	2024-12-24 14:31:28.560798
229	Teftnaz	تفتناز	SY070004	34	2024-12-24 14:31:28.569654	2024-12-24 14:31:28.569654
230	Maaret Tamsrin	معرة تمصرين	SY070005	34	2024-12-24 14:31:28.579893	2024-12-24 14:31:28.579893
231	Sarmin	سرمين	SY070006	34	2024-12-24 14:31:28.588649	2024-12-24 14:31:28.588649
232	Ma'arrat An Nu'man	مركز معرة النعمان	SY070200	35	2024-12-24 14:31:28.598189	2024-12-24 14:31:28.598189
233	Khan Shaykun	خان شيخون	SY070201	35	2024-12-24 14:31:28.607198	2024-12-24 14:31:28.607198
234	Sanjar	سنجار	SY070202	35	2024-12-24 14:31:28.616161	2024-12-24 14:31:28.616161
235	Kafr Nobol	كفر نبل	SY070203	35	2024-12-24 14:31:28.625384	2024-12-24 14:31:28.625384
236	Tamanaah	التمانعة	SY070204	35	2024-12-24 14:31:28.634889	2024-12-24 14:31:28.634889
237	Heish	حيش	SY070205	35	2024-12-24 14:31:28.644291	2024-12-24 14:31:28.644291
238	Harim	مركز حارم	SY070300	36	2024-12-24 14:31:28.653823	2024-12-24 14:31:28.653823
239	Dana	دانا	SY070301	36	2024-12-24 14:31:28.663056	2024-12-24 14:31:28.663056
240	Salqin	سلقين	SY070302	36	2024-12-24 14:31:28.671253	2024-12-24 14:31:28.671253
241	Kafr Takharim	كفر تخاريم	SY070303	36	2024-12-24 14:31:28.680194	2024-12-24 14:31:28.680194
242	Qourqeena	قورقينا	SY070304	36	2024-12-24 14:31:28.688618	2024-12-24 14:31:28.688618
243	Armanaz	أرمناز	SY070305	36	2024-12-24 14:31:28.697627	2024-12-24 14:31:28.697627
244	Jisr-Ash-Shugur	مركز جسر الشغور	SY070400	37	2024-12-24 14:31:28.704687	2024-12-24 14:31:28.704687
245	Badama	بداما	SY070401	37	2024-12-24 14:31:28.715086	2024-12-24 14:31:28.715086
246	Darkosh	دركوش	SY070402	37	2024-12-24 14:31:28.72387	2024-12-24 14:31:28.72387
247	Janudiyeh	الجانودية	SY070403	37	2024-12-24 14:31:28.73241	2024-12-24 14:31:28.73241
248	Ariha	مركز أريحا	SY070500	38	2024-12-24 14:31:28.740269	2024-12-24 14:31:28.740269
249	Ehsem	احسم	SY070501	38	2024-12-24 14:31:28.748736	2024-12-24 14:31:28.748736
250	Mhambal	محمبل	SY070502	38	2024-12-24 14:31:28.756771	2024-12-24 14:31:28.756771
251	Al-Hasakeh	مركز الحسكة	SY080000	39	2024-12-24 14:31:28.768357	2024-12-24 14:31:28.768357
252	Tal Tamer	تل تمر	SY080001	39	2024-12-24 14:31:28.777275	2024-12-24 14:31:28.777275
253	Shadadah	شدادة	SY080002	39	2024-12-24 14:31:28.785709	2024-12-24 14:31:28.785709
254	Markada	مركدة	SY080003	39	2024-12-24 14:31:28.794279	2024-12-24 14:31:28.794279
255	Be'r Al-Hulo Al-Wardeyyeh	بئر الحلو الوردية	SY080004	39	2024-12-24 14:31:28.803099	2024-12-24 14:31:28.803099
256	Areesheh	العريشة	SY080005	39	2024-12-24 14:31:28.811621	2024-12-24 14:31:28.811621
257	Hole	الهول	SY080006	39	2024-12-24 14:31:28.81995	2024-12-24 14:31:28.81995
258	Quamishli	مركز القامشلي	SY080200	40	2024-12-24 14:31:28.828672	2024-12-24 14:31:28.828672
259	Tal Hmis	تل حميس	SY080201	40	2024-12-24 14:31:28.839093	2024-12-24 14:31:28.839093
260	Amuda	عامودا	SY080202	40	2024-12-24 14:31:28.84875	2024-12-24 14:31:28.84875
261	Qahtaniyyeh	قحطانية	SY080203	40	2024-12-24 14:31:28.857866	2024-12-24 14:31:28.857866
262	Al-Malikeyyeh	مركز المالكية	SY080300	41	2024-12-24 14:31:28.867672	2024-12-24 14:31:28.867672
263	Jawadiyah	جوادية	SY080301	41	2024-12-24 14:31:28.877213	2024-12-24 14:31:28.877213
264	Ya'robiyah	يعربية	SY080302	41	2024-12-24 14:31:28.889845	2024-12-24 14:31:28.889845
265	Ras Al Ain	مركز رأس العين	SY080400	42	2024-12-24 14:31:28.898785	2024-12-24 14:31:28.898785
266	Darbasiyah	درباسية	SY080401	42	2024-12-24 14:31:28.91665	2024-12-24 14:31:28.91665
267	Deir-ez-Zor	مركز دير الزور	SY090100	43	2024-12-24 14:31:28.958053	2024-12-24 14:31:28.958053
268	Kisreh	كسرة	SY090101	43	2024-12-24 14:31:29.046885	2024-12-24 14:31:29.046885
269	Basira	بصيرة	SY090102	43	2024-12-24 14:31:29.086684	2024-12-24 14:31:29.086684
271	Tabni	التبني	SY090104	43	2024-12-24 14:31:29.174421	2024-12-24 14:31:29.174421
272	Khasham	خشام	SY090105	43	2024-12-24 14:31:29.2166	2024-12-24 14:31:29.2166
273	Sur	صور	SY090106	43	2024-12-24 14:31:29.282922	2024-12-24 14:31:29.282922
274	Abu Kamal	مركز البوكمال	SY090200	44	2024-12-24 14:31:29.312269	2024-12-24 14:31:29.312269
275	Hajin	هجين	SY090201	44	2024-12-24 14:31:29.347917	2024-12-24 14:31:29.347917
276	Jalaa	الجلاء	SY090202	44	2024-12-24 14:31:29.393528	2024-12-24 14:31:29.393528
277	Susat	سوسة	SY090203	44	2024-12-24 14:31:29.445784	2024-12-24 14:31:29.445784
278	Al Mayadin	مركز الميادين	SY090300	45	2024-12-24 14:31:29.489382	2024-12-24 14:31:29.489382
279	Thiban	ذيبان	SY090301	45	2024-12-24 14:31:29.528658	2024-12-24 14:31:29.528658
280	Ashara	عشارة	SY090302	45	2024-12-24 14:31:29.569843	2024-12-24 14:31:29.569843
281	Tartous	مركز طرطوس	SY100000	46	2024-12-24 14:31:29.597156	2024-12-24 14:31:29.597156
282	Arwad	أرواد	SY100001	46	2024-12-24 14:31:29.633061	2024-12-24 14:31:29.633061
283	Hameidiyyeh	الحميدية	SY100002	46	2024-12-24 14:31:29.673817	2024-12-24 14:31:29.673817
284	Kherbet Elma'aza	خربة المعزة	SY100003	46	2024-12-24 14:31:29.718635	2024-12-24 14:31:29.718635
285	Soda Khawabi	سودا خوابي	SY100004	46	2024-12-24 14:31:29.732906	2024-12-24 14:31:29.732906
286	Kareemeh	كريمة	SY100005	46	2024-12-24 14:31:29.770401	2024-12-24 14:31:29.770401
287	Safsafa	صفصافة	SY100006	46	2024-12-24 14:31:29.80555	2024-12-24 14:31:29.80555
288	Banyas	مركز بانياس	SY100200	47	2024-12-24 14:31:29.847072	2024-12-24 14:31:29.847072
289	Rawda	الروضة	SY100201	47	2024-12-24 14:31:29.881592	2024-12-24 14:31:29.881592
290	Taleen	تالين	SY100206	47	2024-12-24 14:31:29.927838	2024-12-24 14:31:29.927838
291	Safita	مركز صافيتا	SY100300	48	2024-12-24 14:31:29.964995	2024-12-24 14:31:29.964995
292	Mashta Elhiu	مشتى الحلو	SY100301	48	2024-12-24 14:31:30.000473	2024-12-24 14:31:30.000473
293	Bariqiyeh	البارقية	SY100302	48	2024-12-24 14:31:30.032487	2024-12-24 14:31:30.032487
294	Sibbeh	سبة	SY100303	48	2024-12-24 14:31:30.068271	2024-12-24 14:31:30.068271
295	Sisniyyeh	السيسنية	SY100304	48	2024-12-24 14:31:30.102424	2024-12-24 14:31:30.102424
296	Ras El-Khashufeh	رأس الخشوفة	SY100305	48	2024-12-24 14:31:30.139408	2024-12-24 14:31:30.139408
297	Dreikish	مركز دريكيش	SY100400	49	2024-12-24 14:31:30.164892	2024-12-24 14:31:30.164892
298	Jneinet Raslan	جنينة رسلان	SY100401	49	2024-12-24 14:31:30.202505	2024-12-24 14:31:30.202505
299	Hamin	حمين	SY100402	49	2024-12-24 14:31:30.236863	2024-12-24 14:31:30.236863
300	Dweir Raslan	دوير رسلان	SY100403	49	2024-12-24 14:31:30.263434	2024-12-24 14:31:30.263434
301	Sheikh Badr	مركز الشيخ بدر	SY100500	50	2024-12-24 14:31:30.283501	2024-12-24 14:31:30.283501
302	Baramanet Elmashayekh	برمانة المشايخ	SY100501	50	2024-12-24 14:31:30.298476	2024-12-24 14:31:30.298476
303	Qumseyyeh	قمصية	SY100502	50	2024-12-24 14:31:30.30793	2024-12-24 14:31:30.30793
304	Anaza	العنازة	SY100601	51	2024-12-24 14:31:30.31715	2024-12-24 14:31:30.31715
305	Qadmous	القدموس	SY100602	51	2024-12-24 14:31:30.326599	2024-12-24 14:31:30.326599
306	Hamam Wasil	حمام واصل	SY100603	51	2024-12-24 14:31:30.335453	2024-12-24 14:31:30.335453
307	Tawahin	الطواحين	SY100604	51	2024-12-24 14:31:30.343659	2024-12-24 14:31:30.343659
308	Ar-Raqqa	مركز الرقة	SY110100	52	2024-12-24 14:31:30.352494	2024-12-24 14:31:30.352494
309	Sabka	السبخة	SY110101	52	2024-12-24 14:31:30.361988	2024-12-24 14:31:30.361988
310	Karama	الكرامة	SY110102	52	2024-12-24 14:31:30.370695	2024-12-24 14:31:30.370695
311	Maadan	معدان	SY110103	52	2024-12-24 14:31:30.379476	2024-12-24 14:31:30.379476
312	Tell Abiad	مركز تل أبيض	SY110200	53	2024-12-24 14:31:30.387994	2024-12-24 14:31:30.387994
313	Suluk	سلوك	SY110201	53	2024-12-24 14:31:30.397133	2024-12-24 14:31:30.397133
314	Ein Issa	عين عيسى	SY110202	53	2024-12-24 14:31:30.405354	2024-12-24 14:31:30.405354
315	Al-Thawrah	مركز الثورة	SY110300	54	2024-12-24 14:31:30.414611	2024-12-24 14:31:30.414611
316	Mansura	المنصورة	SY110301	54	2024-12-24 14:31:30.428155	2024-12-24 14:31:30.428155
317	Jurneyyeh	الجرنية	SY110302	54	2024-12-24 14:31:30.449745	2024-12-24 14:31:30.449745
318	Dar'a	مركز درعا	SY120000	55	2024-12-24 14:31:30.485019	2024-12-24 14:31:30.485019
319	Busra Esh-Sham	بصرى الشام	SY120001	55	2024-12-24 14:31:30.494655	2024-12-24 14:31:30.494655
320	Kherbet Ghazala	خربة غزالة	SY120002	55	2024-12-24 14:31:30.504193	2024-12-24 14:31:30.504193
321	Ash-Shajara	الشجرة	SY120003	55	2024-12-24 14:31:30.513908	2024-12-24 14:31:30.513908
322	Da'el	داعل	SY120004	55	2024-12-24 14:31:30.522584	2024-12-24 14:31:30.522584
323	Mzeireb	مزيريب	SY120005	55	2024-12-24 14:31:30.532091	2024-12-24 14:31:30.532091
324	Jizeh	الجيزة	SY120006	55	2024-12-24 14:31:30.540357	2024-12-24 14:31:30.540357
325	Mseifra	المسيفرة	SY120007	55	2024-12-24 14:31:30.549312	2024-12-24 14:31:30.549312
326	As-Sanamayn	مركز الصنمين	SY120200	56	2024-12-24 14:31:30.56159	2024-12-24 14:31:30.56159
327	Masmiyyeh	المسمية	SY120201	56	2024-12-24 14:31:30.570659	2024-12-24 14:31:30.570659
328	Ghabagheb	غباغب	SY120202	56	2024-12-24 14:31:30.579343	2024-12-24 14:31:30.579343
329	Izra'	مركز ازرع	SY120300	57	2024-12-24 14:31:30.588092	2024-12-24 14:31:30.588092
330	Jasim	جاسم	SY120301	57	2024-12-24 14:31:30.597564	2024-12-24 14:31:30.597564
331	Hrak	الحراك	SY120302	57	2024-12-24 14:31:30.605659	2024-12-24 14:31:30.605659
332	Nawa	نوى	SY120303	57	2024-12-24 14:31:30.614646	2024-12-24 14:31:30.614646
333	Sheikh Miskine	الشيخ مسكين	SY120304	57	2024-12-24 14:31:30.625062	2024-12-24 14:31:30.625062
334	Tassil	تسيل	SY120305	57	2024-12-24 14:31:30.634995	2024-12-24 14:31:30.634995
335	As-Sweida	مركز السويداء	SY130000	58	2024-12-24 14:31:30.644905	2024-12-24 14:31:30.644905
336	Mazra'a	المزرعة	SY130001	58	2024-12-24 14:31:30.65373	2024-12-24 14:31:30.65373
337	Mashnaf	المشنف	SY130002	58	2024-12-24 14:31:30.662881	2024-12-24 14:31:30.662881
338	Salkhad	مركز صلخد	SY130200	59	2024-12-24 14:31:30.672213	2024-12-24 14:31:30.672213
339	Qarayya	القريا	SY130201	59	2024-12-24 14:31:30.681792	2024-12-24 14:31:30.681792
340	Gharyeh	الغارية	SY130202	59	2024-12-24 14:31:30.691036	2024-12-24 14:31:30.691036
341	Thibeen	ذيبين	SY130203	59	2024-12-24 14:31:30.701135	2024-12-24 14:31:30.701135
342	Milh	ملح	SY130204	59	2024-12-24 14:31:30.710508	2024-12-24 14:31:30.710508
343	Shahba	مركز شهبا	SY130300	60	2024-12-24 14:31:30.720935	2024-12-24 14:31:30.720935
344	Shaqa	شقا	SY130301	60	2024-12-24 14:31:30.730951	2024-12-24 14:31:30.730951
345	Ariqa	العريقة	SY130302	60	2024-12-24 14:31:30.74042	2024-12-24 14:31:30.74042
346	Little Sura	الصورة الصغيرة	SY130303	60	2024-12-24 14:31:30.749465	2024-12-24 14:31:30.749465
347	Quneitra	مركز القنيطرة	SY140000	61	2024-12-24 14:31:30.758211	2024-12-24 14:31:30.758211
348	Khan Arnaba	خان أرنبة	SY140001	61	2024-12-24 14:31:30.769269	2024-12-24 14:31:30.769269
349	Al-Khashniyyeh	الخشنية	SY140002	61	2024-12-24 14:31:30.77899	2024-12-24 14:31:30.77899
350	Masaada	مسعدة	SY140003	61	2024-12-24 14:31:30.788458	2024-12-24 14:31:30.788458
351	Fiq	مركز فيق	SY140200	62	2024-12-24 14:31:30.797863	2024-12-24 14:31:30.797863
352	Al-Butayhah	البطيحة	SY140201	62	2024-12-24 14:31:30.806762	2024-12-24 14:31:30.806762
270	Muhasan	موحسن	SY090103	43	2024-12-24 14:31:29.1302	2024-12-24 14:34:10.82066
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at) FROM stdin;
1	user111@user.com	$2a$12$X76SAyqWFY8Dw9xEWxW8jeU9jaZESuJ7TnE1R7OwQZkMuiakQwBZm	\N	\N	\N	2024-12-24 11:35:44.508216	2024-12-24 11:35:44.508216
\.


--
-- Data for Name: users_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_roles (user_id, role_id) FROM stdin;
1	1
\.


--
-- Name: countries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.countries_id_seq', 1, true);


--
-- Name: districts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.districts_id_seq', 62, true);


--
-- Name: neighbourhoods_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.neighbourhoods_id_seq', 1904, true);


--
-- Name: provinces_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.provinces_id_seq', 14, true);


--
-- Name: reports_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reports_id_seq', 1, false);


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.roles_id_seq', 1, true);


--
-- Name: subdistricts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.subdistricts_id_seq', 352, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: countries countries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);


--
-- Name: districts districts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.districts
    ADD CONSTRAINT districts_pkey PRIMARY KEY (id);


--
-- Name: neighbourhoods neighbourhoods_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.neighbourhoods
    ADD CONSTRAINT neighbourhoods_pkey PRIMARY KEY (id);


--
-- Name: provinces provinces_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.provinces
    ADD CONSTRAINT provinces_pkey PRIMARY KEY (id);


--
-- Name: reports reports_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reports
    ADD CONSTRAINT reports_pkey PRIMARY KEY (id);


--
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: subdistricts subdistricts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subdistricts
    ADD CONSTRAINT subdistricts_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_districts_on_province_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_districts_on_province_id ON public.districts USING btree (province_id);


--
-- Name: index_neighbourhoods_on_subdistrict_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_neighbourhoods_on_subdistrict_id ON public.neighbourhoods USING btree (subdistrict_id);


--
-- Name: index_provinces_on_country_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_provinces_on_country_id ON public.provinces USING btree (country_id);


--
-- Name: index_reports_on_neighbourhood_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_reports_on_neighbourhood_id ON public.reports USING btree (neighbourhood_id);


--
-- Name: index_roles_on_name_and_resource_type_and_resource_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_roles_on_name_and_resource_type_and_resource_id ON public.roles USING btree (name, resource_type, resource_id);


--
-- Name: index_roles_on_resource; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_roles_on_resource ON public.roles USING btree (resource_type, resource_id);


--
-- Name: index_subdistricts_on_district_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_subdistricts_on_district_id ON public.subdistricts USING btree (district_id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- Name: index_users_roles_on_role_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_users_roles_on_role_id ON public.users_roles USING btree (role_id);


--
-- Name: index_users_roles_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_users_roles_on_user_id ON public.users_roles USING btree (user_id);


--
-- Name: index_users_roles_on_user_id_and_role_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_users_roles_on_user_id_and_role_id ON public.users_roles USING btree (user_id, role_id);


--
-- Name: neighbourhoods fk_rails_0fa5c68053; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.neighbourhoods
    ADD CONSTRAINT fk_rails_0fa5c68053 FOREIGN KEY (subdistrict_id) REFERENCES public.subdistricts(id);


--
-- Name: subdistricts fk_rails_418c81cf4b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subdistricts
    ADD CONSTRAINT fk_rails_418c81cf4b FOREIGN KEY (district_id) REFERENCES public.districts(id);


--
-- Name: provinces fk_rails_6fd6e7d17e; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.provinces
    ADD CONSTRAINT fk_rails_6fd6e7d17e FOREIGN KEY (country_id) REFERENCES public.countries(id);


--
-- Name: districts fk_rails_915f0b9e3a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.districts
    ADD CONSTRAINT fk_rails_915f0b9e3a FOREIGN KEY (province_id) REFERENCES public.provinces(id);


--
-- Name: reports fk_rails_f9f1c69874; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reports
    ADD CONSTRAINT fk_rails_f9f1c69874 FOREIGN KEY (neighbourhood_id) REFERENCES public.neighbourhoods(id);


--
-- PostgreSQL database dump complete
--

