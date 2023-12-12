toc.dat                                                                                             0000600 0004000 0002000 00000051422 14536105737 0014456 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP   *    #                {            postgres    16.1    16.0 K    x           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         y           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         z           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         {           1262    5    postgres    DATABASE     �   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = icu LOCALE = 'en_US.UTF-8' ICU_LOCALE = 'en-US';
    DROP DATABASE postgres;
                postgres    false         |           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3707                     3079    16462 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false         }           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2         �            1259    16472    Calendar    TABLE     W   CREATE TABLE public."Calendar" (
    id bigint NOT NULL,
    "taskIdArray" bigint[]
);
    DROP TABLE public."Calendar";
       public         heap    postgres    false         �            1259    16475    Calendar_id_seq    SEQUENCE     z   CREATE SEQUENCE public."Calendar_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Calendar_id_seq";
       public          postgres    false    216         ~           0    0    Calendar_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Calendar_id_seq" OWNED BY public."Calendar".id;
          public          postgres    false    217         �            1259    16476    ListOfTasks    TABLE     �   CREATE TABLE public."ListOfTasks" (
    id bigint NOT NULL,
    name character varying NOT NULL,
    "itemsList" bigint[],
    "mainListId" bigint
);
 !   DROP TABLE public."ListOfTasks";
       public         heap    postgres    false         �            1259    16481    ListOfTasks_id_seq    SEQUENCE     }   CREATE SEQUENCE public."ListOfTasks_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."ListOfTasks_id_seq";
       public          postgres    false    218                    0    0    ListOfTasks_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."ListOfTasks_id_seq" OWNED BY public."ListOfTasks".id;
          public          postgres    false    219         �            1259    16482    MainList    TABLE     �   CREATE TABLE public."MainList" (
    id bigint NOT NULL,
    "userId" bigint NOT NULL,
    "taskId" bigint,
    "listId" bigint
);
    DROP TABLE public."MainList";
       public         heap    postgres    false         �            1259    16485    MainList_id_seq    SEQUENCE     z   CREATE SEQUENCE public."MainList_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."MainList_id_seq";
       public          postgres    false    220         �           0    0    MainList_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."MainList_id_seq" OWNED BY public."MainList".id;
          public          postgres    false    221         �            1259    16486 	   MediaBlob    TABLE     �   CREATE TABLE public."MediaBlob" (
    id bigint NOT NULL,
    name character varying NOT NULL,
    type character varying NOT NULL,
    "taskId" bigint NOT NULL
);
    DROP TABLE public."MediaBlob";
       public         heap    postgres    false         �            1259    16491    Task    TABLE     $  CREATE TABLE public."Task" (
    id bigint NOT NULL,
    name character varying NOT NULL,
    description character varying,
    "endDate" date,
    completed boolean DEFAULT false,
    "listOfTasksId" bigint,
    "mainListId" bigint,
    "mediaBlobId" bigint,
    "taskPriorityId" bigint
);
    DROP TABLE public."Task";
       public         heap    postgres    false         �            1259    16497    TaskPriority    TABLE     �   CREATE TABLE public."TaskPriority" (
    id bigint NOT NULL,
    name character varying NOT NULL,
    color character varying NOT NULL,
    "taskId" bigint NOT NULL
);
 "   DROP TABLE public."TaskPriority";
       public         heap    postgres    false         �            1259    16502    TaskPriority_id_seq    SEQUENCE     ~   CREATE SEQUENCE public."TaskPriority_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."TaskPriority_id_seq";
       public          postgres    false    224         �           0    0    TaskPriority_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."TaskPriority_id_seq" OWNED BY public."TaskPriority".id;
          public          postgres    false    225         �            1259    16503    Task_id_seq    SEQUENCE     v   CREATE SEQUENCE public."Task_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public."Task_id_seq";
       public          postgres    false    223         �           0    0    Task_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."Task_id_seq" OWNED BY public."Task".id;
          public          postgres    false    226         �            1259    16504    User    TABLE     �   CREATE TABLE public."User" (
    id bigint NOT NULL,
    username character varying NOT NULL,
    password character varying NOT NULL,
    first_name character varying,
    last_name character varying,
    "mainListId" bigint
);
    DROP TABLE public."User";
       public         heap    postgres    false         �            1259    16509    User_id_seq    SEQUENCE     v   CREATE SEQUENCE public."User_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public."User_id_seq";
       public          postgres    false    227         �           0    0    User_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."User_id_seq" OWNED BY public."User".id;
          public          postgres    false    228         �            1259    16510    mediaBlob_id_seq    SEQUENCE     {   CREATE SEQUENCE public."mediaBlob_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."mediaBlob_id_seq";
       public          postgres    false    222         �           0    0    mediaBlob_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."mediaBlob_id_seq" OWNED BY public."MediaBlob".id;
          public          postgres    false    229         �           2604    16511    Calendar id    DEFAULT     n   ALTER TABLE ONLY public."Calendar" ALTER COLUMN id SET DEFAULT nextval('public."Calendar_id_seq"'::regclass);
 <   ALTER TABLE public."Calendar" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216         �           2604    16512    ListOfTasks id    DEFAULT     t   ALTER TABLE ONLY public."ListOfTasks" ALTER COLUMN id SET DEFAULT nextval('public."ListOfTasks_id_seq"'::regclass);
 ?   ALTER TABLE public."ListOfTasks" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218         �           2604    16513    MainList id    DEFAULT     n   ALTER TABLE ONLY public."MainList" ALTER COLUMN id SET DEFAULT nextval('public."MainList_id_seq"'::regclass);
 <   ALTER TABLE public."MainList" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220         �           2604    16514    MediaBlob id    DEFAULT     p   ALTER TABLE ONLY public."MediaBlob" ALTER COLUMN id SET DEFAULT nextval('public."mediaBlob_id_seq"'::regclass);
 =   ALTER TABLE public."MediaBlob" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    222         �           2604    16515    Task id    DEFAULT     f   ALTER TABLE ONLY public."Task" ALTER COLUMN id SET DEFAULT nextval('public."Task_id_seq"'::regclass);
 8   ALTER TABLE public."Task" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    223         �           2604    16516    TaskPriority id    DEFAULT     v   ALTER TABLE ONLY public."TaskPriority" ALTER COLUMN id SET DEFAULT nextval('public."TaskPriority_id_seq"'::regclass);
 @   ALTER TABLE public."TaskPriority" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224         �           2604    16517    User id    DEFAULT     f   ALTER TABLE ONLY public."User" ALTER COLUMN id SET DEFAULT nextval('public."User_id_seq"'::regclass);
 8   ALTER TABLE public."User" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227         h          0    16472    Calendar 
   TABLE DATA           7   COPY public."Calendar" (id, "taskIdArray") FROM stdin;
    public          postgres    false    216       3688.dat j          0    16476    ListOfTasks 
   TABLE DATA           L   COPY public."ListOfTasks" (id, name, "itemsList", "mainListId") FROM stdin;
    public          postgres    false    218       3690.dat l          0    16482    MainList 
   TABLE DATA           F   COPY public."MainList" (id, "userId", "taskId", "listId") FROM stdin;
    public          postgres    false    220       3692.dat n          0    16486 	   MediaBlob 
   TABLE DATA           ?   COPY public."MediaBlob" (id, name, type, "taskId") FROM stdin;
    public          postgres    false    222       3694.dat o          0    16491    Task 
   TABLE DATA           �   COPY public."Task" (id, name, description, "endDate", completed, "listOfTasksId", "mainListId", "mediaBlobId", "taskPriorityId") FROM stdin;
    public          postgres    false    223       3695.dat p          0    16497    TaskPriority 
   TABLE DATA           C   COPY public."TaskPriority" (id, name, color, "taskId") FROM stdin;
    public          postgres    false    224       3696.dat s          0    16504    User 
   TABLE DATA           ]   COPY public."User" (id, username, password, first_name, last_name, "mainListId") FROM stdin;
    public          postgres    false    227       3699.dat �           0    0    Calendar_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Calendar_id_seq"', 1, true);
          public          postgres    false    217         �           0    0    ListOfTasks_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."ListOfTasks_id_seq"', 1, true);
          public          postgres    false    219         �           0    0    MainList_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."MainList_id_seq"', 1, true);
          public          postgres    false    221         �           0    0    TaskPriority_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."TaskPriority_id_seq"', 1, true);
          public          postgres    false    225         �           0    0    Task_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."Task_id_seq"', 2, true);
          public          postgres    false    226         �           0    0    User_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."User_id_seq"', 4, true);
          public          postgres    false    228         �           0    0    mediaBlob_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."mediaBlob_id_seq"', 1, true);
          public          postgres    false    229         �           2606    16519    Calendar CalendarUniqueId 
   CONSTRAINT     V   ALTER TABLE ONLY public."Calendar"
    ADD CONSTRAINT "CalendarUniqueId" UNIQUE (id);
 G   ALTER TABLE ONLY public."Calendar" DROP CONSTRAINT "CalendarUniqueId";
       public            postgres    false    216         �           2606    16521    Calendar Calendar_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Calendar"
    ADD CONSTRAINT "Calendar_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Calendar" DROP CONSTRAINT "Calendar_pkey";
       public            postgres    false    216         �           2606    16523    MainList Id 
   CONSTRAINT     M   ALTER TABLE ONLY public."MainList"
    ADD CONSTRAINT "Id" PRIMARY KEY (id);
 9   ALTER TABLE ONLY public."MainList" DROP CONSTRAINT "Id";
       public            postgres    false    220         �           2606    16525    ListOfTasks ListOfTasks_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."ListOfTasks"
    ADD CONSTRAINT "ListOfTasks_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."ListOfTasks" DROP CONSTRAINT "ListOfTasks_pkey";
       public            postgres    false    218         �           2606    16527    MediaBlob MediaBlobUniqueId 
   CONSTRAINT     X   ALTER TABLE ONLY public."MediaBlob"
    ADD CONSTRAINT "MediaBlobUniqueId" UNIQUE (id);
 I   ALTER TABLE ONLY public."MediaBlob" DROP CONSTRAINT "MediaBlobUniqueId";
       public            postgres    false    222         �           2606    16529    MediaBlob MediaBlob_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."MediaBlob"
    ADD CONSTRAINT "MediaBlob_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."MediaBlob" DROP CONSTRAINT "MediaBlob_pkey";
       public            postgres    false    222         �           2606    16531 !   TaskPriority TaskPriorityUniqueId 
   CONSTRAINT     ^   ALTER TABLE ONLY public."TaskPriority"
    ADD CONSTRAINT "TaskPriorityUniqueId" UNIQUE (id);
 O   ALTER TABLE ONLY public."TaskPriority" DROP CONSTRAINT "TaskPriorityUniqueId";
       public            postgres    false    224         �           2606    16533    TaskPriority TaskPriority_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."TaskPriority"
    ADD CONSTRAINT "TaskPriority_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."TaskPriority" DROP CONSTRAINT "TaskPriority_pkey";
       public            postgres    false    224         �           2606    16535    Task TaskUniqueId 
   CONSTRAINT     N   ALTER TABLE ONLY public."Task"
    ADD CONSTRAINT "TaskUniqueId" UNIQUE (id);
 ?   ALTER TABLE ONLY public."Task" DROP CONSTRAINT "TaskUniqueId";
       public            postgres    false    223         �           2606    16537    Task Task_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."Task"
    ADD CONSTRAINT "Task_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."Task" DROP CONSTRAINT "Task_pkey";
       public            postgres    false    223         �           2606    16539    User User_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."User" DROP CONSTRAINT "User_pkey";
       public            postgres    false    227         �           2606    16541    MainList idConstraint 
   CONSTRAINT     R   ALTER TABLE ONLY public."MainList"
    ADD CONSTRAINT "idConstraint" UNIQUE (id);
 C   ALTER TABLE ONLY public."MainList" DROP CONSTRAINT "idConstraint";
       public            postgres    false    220         �           2606    16543    User uniqueId 
   CONSTRAINT     J   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "uniqueId" UNIQUE (id);
 ;   ALTER TABLE ONLY public."User" DROP CONSTRAINT "uniqueId";
       public            postgres    false    227         �           2606    16545    ListOfTasks uniqueconstrain 
   CONSTRAINT     V   ALTER TABLE ONLY public."ListOfTasks"
    ADD CONSTRAINT uniqueconstrain UNIQUE (id);
 G   ALTER TABLE ONLY public."ListOfTasks" DROP CONSTRAINT uniqueconstrain;
       public            postgres    false    218         �           2606    16547    User usernameUnique 
   CONSTRAINT     V   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "usernameUnique" UNIQUE (username);
 A   ALTER TABLE ONLY public."User" DROP CONSTRAINT "usernameUnique";
       public            postgres    false    227         �           2606    16548    Task MediaBlobUniqueId    FK CONSTRAINT     �   ALTER TABLE ONLY public."Task"
    ADD CONSTRAINT "MediaBlobUniqueId" FOREIGN KEY ("mediaBlobId") REFERENCES public."MediaBlob"(id) NOT VALID;
 D   ALTER TABLE ONLY public."Task" DROP CONSTRAINT "MediaBlobUniqueId";
       public          postgres    false    222    3517    223         �           2606    16553    MainList listId    FK CONSTRAINT     �   ALTER TABLE ONLY public."MainList"
    ADD CONSTRAINT "listId" FOREIGN KEY ("listId") REFERENCES public."ListOfTasks"(id) NOT VALID;
 =   ALTER TABLE ONLY public."MainList" DROP CONSTRAINT "listId";
       public          postgres    false    220    218    3509         �           2606    16558    Task listOfTasksId    FK CONSTRAINT     �   ALTER TABLE ONLY public."Task"
    ADD CONSTRAINT "listOfTasksId" FOREIGN KEY ("listOfTasksId") REFERENCES public."ListOfTasks"(id) NOT VALID;
 @   ALTER TABLE ONLY public."Task" DROP CONSTRAINT "listOfTasksId";
       public          postgres    false    218    223    3509         �           2606    16563    User mainListId    FK CONSTRAINT     �   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "mainListId" FOREIGN KEY ("mainListId") REFERENCES public."MainList"(id) NOT VALID;
 =   ALTER TABLE ONLY public."User" DROP CONSTRAINT "mainListId";
       public          postgres    false    3513    220    227         �           2606    16568    ListOfTasks mainListId    FK CONSTRAINT     �   ALTER TABLE ONLY public."ListOfTasks"
    ADD CONSTRAINT "mainListId" FOREIGN KEY ("mainListId") REFERENCES public."MainList"(id) NOT VALID;
 D   ALTER TABLE ONLY public."ListOfTasks" DROP CONSTRAINT "mainListId";
       public          postgres    false    220    218    3513         �           2606    16573    Task mainListId    FK CONSTRAINT     �   ALTER TABLE ONLY public."Task"
    ADD CONSTRAINT "mainListId" FOREIGN KEY ("mainListId") REFERENCES public."MainList"(id) NOT VALID;
 =   ALTER TABLE ONLY public."Task" DROP CONSTRAINT "mainListId";
       public          postgres    false    223    220    3513         �           2606    16578    MainList taskId    FK CONSTRAINT     ~   ALTER TABLE ONLY public."MainList"
    ADD CONSTRAINT "taskId" FOREIGN KEY ("taskId") REFERENCES public."Task"(id) NOT VALID;
 =   ALTER TABLE ONLY public."MainList" DROP CONSTRAINT "taskId";
       public          postgres    false    3521    220    223         �           2606    16583    TaskPriority taskId    FK CONSTRAINT     �   ALTER TABLE ONLY public."TaskPriority"
    ADD CONSTRAINT "taskId" FOREIGN KEY ("taskId") REFERENCES public."Task"(id) NOT VALID;
 A   ALTER TABLE ONLY public."TaskPriority" DROP CONSTRAINT "taskId";
       public          postgres    false    223    224    3521         �           2606    16588    MediaBlob taskId    FK CONSTRAINT        ALTER TABLE ONLY public."MediaBlob"
    ADD CONSTRAINT "taskId" FOREIGN KEY ("taskId") REFERENCES public."Task"(id) NOT VALID;
 >   ALTER TABLE ONLY public."MediaBlob" DROP CONSTRAINT "taskId";
       public          postgres    false    222    3521    223         �           2606    16598    Task taskPriorityId    FK CONSTRAINT     �   ALTER TABLE ONLY public."Task"
    ADD CONSTRAINT "taskPriorityId" FOREIGN KEY ("taskPriorityId") REFERENCES public."TaskPriority"(id) NOT VALID;
 A   ALTER TABLE ONLY public."Task" DROP CONSTRAINT "taskPriorityId";
       public          postgres    false    224    223    3525         �           2606    16603    MainList userId    FK CONSTRAINT     t   ALTER TABLE ONLY public."MainList"
    ADD CONSTRAINT "userId" FOREIGN KEY ("userId") REFERENCES public."User"(id);
 =   ALTER TABLE ONLY public."MainList" DROP CONSTRAINT "userId";
       public          postgres    false    3529    220    227                                                                                                                                                                                                                                                      3688.dat                                                                                            0000600 0004000 0002000 00000000017 14536105737 0014273 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	{4,5,6}
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 3690.dat                                                                                            0000600 0004000 0002000 00000000033 14536105737 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	ivejrbvgo	{1,2,3}	1
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     3692.dat                                                                                            0000600 0004000 0002000 00000000017 14536105737 0014266 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	4	\N	\N
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 3694.dat                                                                                            0000600 0004000 0002000 00000000050 14536105737 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	ojergboerbgobgtoer	ojbgeovrfvo	1
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        3695.dat                                                                                            0000600 0004000 0002000 00000000205 14536105737 0014270 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	gergbonrtgovien	bcioebvieiwencinecvrv	1970-01-01	f	\N	1	\N	\N
2	gergbonrtgovien	bcioebvieiwencinecvrv	1970-01-01	t	\N	1	\N	\N
\.


                                                                                                                                                                                                                                                                                                                                                                                           3696.dat                                                                                            0000600 0004000 0002000 00000000036 14536105737 0014273 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	fijrbeigvjbre	Yellow	1
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  3699.dat                                                                                            0000600 0004000 0002000 00000000031 14536105737 0014271 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        4	PAK	123	Bobby		\N
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       restore.sql                                                                                         0000600 0004000 0002000 00000037516 14536105737 0015413 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.0

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

DROP DATABASE postgres;
--
-- Name: postgres; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = icu LOCALE = 'en_US.UTF-8' ICU_LOCALE = 'en-US';


ALTER DATABASE postgres OWNER TO postgres;

\connect postgres

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
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: Calendar; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Calendar" (
    id bigint NOT NULL,
    "taskIdArray" bigint[]
);


ALTER TABLE public."Calendar" OWNER TO postgres;

--
-- Name: Calendar_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Calendar_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Calendar_id_seq" OWNER TO postgres;

--
-- Name: Calendar_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Calendar_id_seq" OWNED BY public."Calendar".id;


--
-- Name: ListOfTasks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ListOfTasks" (
    id bigint NOT NULL,
    name character varying NOT NULL,
    "itemsList" bigint[],
    "mainListId" bigint
);


ALTER TABLE public."ListOfTasks" OWNER TO postgres;

--
-- Name: ListOfTasks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."ListOfTasks_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."ListOfTasks_id_seq" OWNER TO postgres;

--
-- Name: ListOfTasks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."ListOfTasks_id_seq" OWNED BY public."ListOfTasks".id;


--
-- Name: MainList; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."MainList" (
    id bigint NOT NULL,
    "userId" bigint NOT NULL,
    "taskId" bigint,
    "listId" bigint
);


ALTER TABLE public."MainList" OWNER TO postgres;

--
-- Name: MainList_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."MainList_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."MainList_id_seq" OWNER TO postgres;

--
-- Name: MainList_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."MainList_id_seq" OWNED BY public."MainList".id;


--
-- Name: MediaBlob; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."MediaBlob" (
    id bigint NOT NULL,
    name character varying NOT NULL,
    type character varying NOT NULL,
    "taskId" bigint NOT NULL
);


ALTER TABLE public."MediaBlob" OWNER TO postgres;

--
-- Name: Task; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Task" (
    id bigint NOT NULL,
    name character varying NOT NULL,
    description character varying,
    "endDate" date,
    completed boolean DEFAULT false,
    "listOfTasksId" bigint,
    "mainListId" bigint,
    "mediaBlobId" bigint,
    "taskPriorityId" bigint
);


ALTER TABLE public."Task" OWNER TO postgres;

--
-- Name: TaskPriority; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."TaskPriority" (
    id bigint NOT NULL,
    name character varying NOT NULL,
    color character varying NOT NULL,
    "taskId" bigint NOT NULL
);


ALTER TABLE public."TaskPriority" OWNER TO postgres;

--
-- Name: TaskPriority_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."TaskPriority_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."TaskPriority_id_seq" OWNER TO postgres;

--
-- Name: TaskPriority_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."TaskPriority_id_seq" OWNED BY public."TaskPriority".id;


--
-- Name: Task_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Task_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Task_id_seq" OWNER TO postgres;

--
-- Name: Task_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Task_id_seq" OWNED BY public."Task".id;


--
-- Name: User; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."User" (
    id bigint NOT NULL,
    username character varying NOT NULL,
    password character varying NOT NULL,
    first_name character varying,
    last_name character varying,
    "mainListId" bigint
);


ALTER TABLE public."User" OWNER TO postgres;

--
-- Name: User_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."User_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."User_id_seq" OWNER TO postgres;

--
-- Name: User_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."User_id_seq" OWNED BY public."User".id;


--
-- Name: mediaBlob_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."mediaBlob_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."mediaBlob_id_seq" OWNER TO postgres;

--
-- Name: mediaBlob_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."mediaBlob_id_seq" OWNED BY public."MediaBlob".id;


--
-- Name: Calendar id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Calendar" ALTER COLUMN id SET DEFAULT nextval('public."Calendar_id_seq"'::regclass);


--
-- Name: ListOfTasks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ListOfTasks" ALTER COLUMN id SET DEFAULT nextval('public."ListOfTasks_id_seq"'::regclass);


--
-- Name: MainList id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."MainList" ALTER COLUMN id SET DEFAULT nextval('public."MainList_id_seq"'::regclass);


--
-- Name: MediaBlob id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."MediaBlob" ALTER COLUMN id SET DEFAULT nextval('public."mediaBlob_id_seq"'::regclass);


--
-- Name: Task id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Task" ALTER COLUMN id SET DEFAULT nextval('public."Task_id_seq"'::regclass);


--
-- Name: TaskPriority id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TaskPriority" ALTER COLUMN id SET DEFAULT nextval('public."TaskPriority_id_seq"'::regclass);


--
-- Name: User id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User" ALTER COLUMN id SET DEFAULT nextval('public."User_id_seq"'::regclass);


--
-- Data for Name: Calendar; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Calendar" (id, "taskIdArray") FROM stdin;
\.
COPY public."Calendar" (id, "taskIdArray") FROM '$$PATH$$/3688.dat';

--
-- Data for Name: ListOfTasks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."ListOfTasks" (id, name, "itemsList", "mainListId") FROM stdin;
\.
COPY public."ListOfTasks" (id, name, "itemsList", "mainListId") FROM '$$PATH$$/3690.dat';

--
-- Data for Name: MainList; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."MainList" (id, "userId", "taskId", "listId") FROM stdin;
\.
COPY public."MainList" (id, "userId", "taskId", "listId") FROM '$$PATH$$/3692.dat';

--
-- Data for Name: MediaBlob; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."MediaBlob" (id, name, type, "taskId") FROM stdin;
\.
COPY public."MediaBlob" (id, name, type, "taskId") FROM '$$PATH$$/3694.dat';

--
-- Data for Name: Task; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Task" (id, name, description, "endDate", completed, "listOfTasksId", "mainListId", "mediaBlobId", "taskPriorityId") FROM stdin;
\.
COPY public."Task" (id, name, description, "endDate", completed, "listOfTasksId", "mainListId", "mediaBlobId", "taskPriorityId") FROM '$$PATH$$/3695.dat';

--
-- Data for Name: TaskPriority; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."TaskPriority" (id, name, color, "taskId") FROM stdin;
\.
COPY public."TaskPriority" (id, name, color, "taskId") FROM '$$PATH$$/3696.dat';

--
-- Data for Name: User; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."User" (id, username, password, first_name, last_name, "mainListId") FROM stdin;
\.
COPY public."User" (id, username, password, first_name, last_name, "mainListId") FROM '$$PATH$$/3699.dat';

--
-- Name: Calendar_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Calendar_id_seq"', 1, true);


--
-- Name: ListOfTasks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."ListOfTasks_id_seq"', 1, true);


--
-- Name: MainList_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."MainList_id_seq"', 1, true);


--
-- Name: TaskPriority_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."TaskPriority_id_seq"', 1, true);


--
-- Name: Task_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Task_id_seq"', 2, true);


--
-- Name: User_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."User_id_seq"', 4, true);


--
-- Name: mediaBlob_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."mediaBlob_id_seq"', 1, true);


--
-- Name: Calendar CalendarUniqueId; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Calendar"
    ADD CONSTRAINT "CalendarUniqueId" UNIQUE (id);


--
-- Name: Calendar Calendar_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Calendar"
    ADD CONSTRAINT "Calendar_pkey" PRIMARY KEY (id);


--
-- Name: MainList Id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."MainList"
    ADD CONSTRAINT "Id" PRIMARY KEY (id);


--
-- Name: ListOfTasks ListOfTasks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ListOfTasks"
    ADD CONSTRAINT "ListOfTasks_pkey" PRIMARY KEY (id);


--
-- Name: MediaBlob MediaBlobUniqueId; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."MediaBlob"
    ADD CONSTRAINT "MediaBlobUniqueId" UNIQUE (id);


--
-- Name: MediaBlob MediaBlob_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."MediaBlob"
    ADD CONSTRAINT "MediaBlob_pkey" PRIMARY KEY (id);


--
-- Name: TaskPriority TaskPriorityUniqueId; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TaskPriority"
    ADD CONSTRAINT "TaskPriorityUniqueId" UNIQUE (id);


--
-- Name: TaskPriority TaskPriority_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TaskPriority"
    ADD CONSTRAINT "TaskPriority_pkey" PRIMARY KEY (id);


--
-- Name: Task TaskUniqueId; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Task"
    ADD CONSTRAINT "TaskUniqueId" UNIQUE (id);


--
-- Name: Task Task_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Task"
    ADD CONSTRAINT "Task_pkey" PRIMARY KEY (id);


--
-- Name: User User_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY (id);


--
-- Name: MainList idConstraint; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."MainList"
    ADD CONSTRAINT "idConstraint" UNIQUE (id);


--
-- Name: User uniqueId; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "uniqueId" UNIQUE (id);


--
-- Name: ListOfTasks uniqueconstrain; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ListOfTasks"
    ADD CONSTRAINT uniqueconstrain UNIQUE (id);


--
-- Name: User usernameUnique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "usernameUnique" UNIQUE (username);


--
-- Name: Task MediaBlobUniqueId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Task"
    ADD CONSTRAINT "MediaBlobUniqueId" FOREIGN KEY ("mediaBlobId") REFERENCES public."MediaBlob"(id) NOT VALID;


--
-- Name: MainList listId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."MainList"
    ADD CONSTRAINT "listId" FOREIGN KEY ("listId") REFERENCES public."ListOfTasks"(id) NOT VALID;


--
-- Name: Task listOfTasksId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Task"
    ADD CONSTRAINT "listOfTasksId" FOREIGN KEY ("listOfTasksId") REFERENCES public."ListOfTasks"(id) NOT VALID;


--
-- Name: User mainListId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "mainListId" FOREIGN KEY ("mainListId") REFERENCES public."MainList"(id) NOT VALID;


--
-- Name: ListOfTasks mainListId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ListOfTasks"
    ADD CONSTRAINT "mainListId" FOREIGN KEY ("mainListId") REFERENCES public."MainList"(id) NOT VALID;


--
-- Name: Task mainListId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Task"
    ADD CONSTRAINT "mainListId" FOREIGN KEY ("mainListId") REFERENCES public."MainList"(id) NOT VALID;


--
-- Name: MainList taskId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."MainList"
    ADD CONSTRAINT "taskId" FOREIGN KEY ("taskId") REFERENCES public."Task"(id) NOT VALID;


--
-- Name: TaskPriority taskId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TaskPriority"
    ADD CONSTRAINT "taskId" FOREIGN KEY ("taskId") REFERENCES public."Task"(id) NOT VALID;


--
-- Name: MediaBlob taskId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."MediaBlob"
    ADD CONSTRAINT "taskId" FOREIGN KEY ("taskId") REFERENCES public."Task"(id) NOT VALID;


--
-- Name: Task taskPriorityId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Task"
    ADD CONSTRAINT "taskPriorityId" FOREIGN KEY ("taskPriorityId") REFERENCES public."TaskPriority"(id) NOT VALID;


--
-- Name: MainList userId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."MainList"
    ADD CONSTRAINT "userId" FOREIGN KEY ("userId") REFERENCES public."User"(id);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  