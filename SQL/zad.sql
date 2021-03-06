PGDMP         *        
    	    w           saporo    9.4.19    9.4.19 ?    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            ?           1262    42234    saporo    DATABASE     ?   CREATE DATABASE saporo WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Bolivia.1252' LC_CTYPE = 'Spanish_Bolivia.1252';
    DROP DATABASE saporo;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            ?           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    6            ?           0    0    SCHEMA public    ACL     ?   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    6                        3079    11855    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            ?           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            ?            1259    42382    ciudad    TABLE     ?   CREATE TABLE public.ciudad (
    id_ciudad integer NOT NULL,
    nomb character varying(255) NOT NULL,
    depa integer NOT NULL
);
    DROP TABLE public.ciudad;
       public         postgres    false    6            ?            1259    42380    ciudad_id_ciudad_seq    SEQUENCE     }   CREATE SEQUENCE public.ciudad_id_ciudad_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.ciudad_id_ciudad_seq;
       public       postgres    false    196    6            ?           0    0    ciudad_id_ciudad_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.ciudad_id_ciudad_seq OWNED BY public.ciudad.id_ciudad;
            public       postgres    false    195            ?            1259    42245    departamento    TABLE     ?   CREATE TABLE public.departamento (
    id_dep integer NOT NULL,
    nomb character varying(255) NOT NULL,
    deleted_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
     DROP TABLE public.departamento;
       public         postgres    false    6            ?            1259    42243    departamento_id_dep_seq    SEQUENCE     ?   CREATE SEQUENCE public.departamento_id_dep_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.departamento_id_dep_seq;
       public       postgres    false    6    176            ?           0    0    departamento_id_dep_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.departamento_id_dep_seq OWNED BY public.departamento.id_dep;
            public       postgres    false    175            ?            1259    42277    funcion    TABLE     ?   CREATE TABLE public.funcion (
    id_funcion integer NOT NULL,
    funci character varying(300) NOT NULL,
    descripcion character varying(300) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.funcion;
       public         postgres    false    6            ?            1259    42275    funcion_id_funcion_seq    SEQUENCE        CREATE SEQUENCE public.funcion_id_funcion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.funcion_id_funcion_seq;
       public       postgres    false    6    183            ?           0    0    funcion_id_funcion_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.funcion_id_funcion_seq OWNED BY public.funcion.id_funcion;
            public       postgres    false    182            ?            1259    42367 
   funcion_iu    TABLE     	  CREATE TABLE public.funcion_iu (
    iu_d integer NOT NULL,
    funcion_id integer NOT NULL,
    activo boolean NOT NULL,
    deleted_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.funcion_iu;
       public         postgres    false    6            ?            1259    42261    iu    TABLE     ?   CREATE TABLE public.iu (
    id_iu integer NOT NULL,
    descripcion character varying(300) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.iu;
       public         postgres    false    6            ?            1259    42259    iu_id_iu_seq    SEQUENCE     u   CREATE SEQUENCE public.iu_id_iu_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.iu_id_iu_seq;
       public       postgres    false    6    180            ?           0    0    iu_id_iu_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.iu_id_iu_seq OWNED BY public.iu.id_iu;
            public       postgres    false    179            ?            1259    42461    log    TABLE     ?  CREATE TABLE public.log (
    id_log integer NOT NULL,
    dato_viejo character varying(255) NOT NULL,
    dato_nuevo character varying(255) NOT NULL,
    fecha date NOT NULL,
    hora time(0) without time zone NOT NULL,
    usr_id integer NOT NULL,
    deleted_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.log;
       public         postgres    false    6            ?            1259    42459    log_id_log_seq    SEQUENCE     w   CREATE SEQUENCE public.log_id_log_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.log_id_log_seq;
       public       postgres    false    6    205            ?           0    0    log_id_log_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.log_id_log_seq OWNED BY public.log.id_log;
            public       postgres    false    204            ?            1259    42237 
   migrations    TABLE     ?   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         postgres    false    6            ?            1259    42235    migrations_id_seq    SEQUENCE     z   CREATE SEQUENCE public.migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public       postgres    false    174    6            ?           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
            public       postgres    false    173            ?            1259    42447    password_resets    TABLE     ?   CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    id_us integer NOT NULL,
    created_at timestamp(0) without time zone
);
 #   DROP TABLE public.password_resets;
       public         postgres    false    6            ?            1259    42267    persona    TABLE     H  CREATE TABLE public.persona (
    ci integer NOT NULL,
    nombre character varying(300) NOT NULL,
    apepa character varying(300) NOT NULL,
    apema character varying(300) NOT NULL,
    deleted_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.persona;
       public         postgres    false    6            ?            1259    42431    registro    TABLE       CREATE TABLE public.registro (
    contar integer NOT NULL,
    fecha date NOT NULL,
    id_ubic integer NOT NULL,
    id_veh integer NOT NULL,
    deleted_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.registro;
       public         postgres    false    6            ?            1259    42429    registro_contar_seq    SEQUENCE     |   CREATE SEQUENCE public.registro_contar_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.registro_contar_seq;
       public       postgres    false    202    6            ?           0    0    registro_contar_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.registro_contar_seq OWNED BY public.registro.contar;
            public       postgres    false    201            ?            1259    42288    rol    TABLE       CREATE TABLE public.rol (
    id_rol integer NOT NULL,
    ro character varying(300) NOT NULL,
    descripcion text NOT NULL,
    deleted_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.rol;
       public         postgres    false    6            ?            1259    42341    rol_funcion    TABLE       CREATE TABLE public.rol_funcion (
    activo boolean NOT NULL,
    rol_id integer NOT NULL,
    funcion_id integer NOT NULL,
    deleted_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.rol_funcion;
       public         postgres    false    6            ?            1259    42286    rol_id_rol_seq    SEQUENCE     w   CREATE SEQUENCE public.rol_id_rol_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.rol_id_rol_seq;
       public       postgres    false    185    6            ?           0    0    rol_id_rol_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.rol_id_rol_seq OWNED BY public.rol.id_rol;
            public       postgres    false    184            ?            1259    42299    sensor    TABLE       CREATE TABLE public.sensor (
    id_sensor integer NOT NULL,
    estado boolean NOT NULL,
    descripcion character varying(300) NOT NULL,
    activo boolean NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.sensor;
       public         postgres    false    6            ?            1259    42297    sensor_id_sensor_seq    SEQUENCE     }   CREATE SEQUENCE public.sensor_id_sensor_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.sensor_id_sensor_seq;
       public       postgres    false    6    187            ?           0    0    sensor_id_sensor_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.sensor_id_sensor_seq OWNED BY public.sensor.id_sensor;
            public       postgres    false    186            ?            1259    42327    sesion    TABLE       CREATE TABLE public.sesion (
    id_sesion integer NOT NULL,
    activo boolean NOT NULL,
    pid text NOT NULL,
    usr_id integer NOT NULL,
    deleted_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.sesion;
       public         postgres    false    6            ?            1259    42325    sesion_id_sesion_seq    SEQUENCE     }   CREATE SEQUENCE public.sesion_id_sesion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.sesion_id_sesion_seq;
       public       postgres    false    191    6            ?           0    0    sesion_id_sesion_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.sesion_id_sesion_seq OWNED BY public.sesion.id_sesion;
            public       postgres    false    190            ?            1259    42413 	   ubicacion    TABLE     *  CREATE TABLE public.ubicacion (
    id_ubicacion integer NOT NULL,
    activo boolean NOT NULL,
    id_disp integer NOT NULL,
    via_id integer NOT NULL,
    deleted_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.ubicacion;
       public         postgres    false    6            ?            1259    42411    ubicacion_id_ubicacion_seq    SEQUENCE     ?   CREATE SEQUENCE public.ubicacion_id_ubicacion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.ubicacion_id_ubicacion_seq;
       public       postgres    false    200    6            ?           0    0    ubicacion_id_ubicacion_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.ubicacion_id_ubicacion_seq OWNED BY public.ubicacion.id_ubicacion;
            public       postgres    false    199            ?            1259    42307    usr    TABLE     ?  CREATE TABLE public.usr (
    id_usr integer NOT NULL,
    login character varying(300) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    ci_per integer NOT NULL,
    deleted_at timestamp(0) without time zone,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.usr;
       public         postgres    false    6            ?            1259    42305    usr_id_usr_seq    SEQUENCE     w   CREATE SEQUENCE public.usr_id_usr_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.usr_id_usr_seq;
       public       postgres    false    189    6            ?           0    0    usr_id_usr_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.usr_id_usr_seq OWNED BY public.usr.id_usr;
            public       postgres    false    188            ?            1259    42354    usr_rol    TABLE     ?   CREATE TABLE public.usr_rol (
    usr_id integer NOT NULL,
    rol_id integer NOT NULL,
    deleted_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.usr_rol;
       public         postgres    false    6            ?            1259    42253    vehiculo    TABLE     u  CREATE TABLE public.vehiculo (
    id_tipo integer NOT NULL,
    nombr_ve character varying(255) NOT NULL,
    peso integer NOT NULL,
    distan_ini integer NOT NULL,
    distaci_fin integer NOT NULL,
    activo boolean NOT NULL,
    deleted_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.vehiculo;
       public         postgres    false    6            ?            1259    42251    vehiculo_id_tipo_seq    SEQUENCE     }   CREATE SEQUENCE public.vehiculo_id_tipo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.vehiculo_id_tipo_seq;
       public       postgres    false    178    6            ?           0    0    vehiculo_id_tipo_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.vehiculo_id_tipo_seq OWNED BY public.vehiculo.id_tipo;
            public       postgres    false    177            ?            1259    42395    via    TABLE     ?  CREATE TABLE public.via (
    id_via integer NOT NULL,
    tipo character varying(255) NOT NULL,
    nuncarril integer NOT NULL,
    dimension integer NOT NULL,
    direccion character varying(255) NOT NULL,
    nomvia character varying(300) NOT NULL,
    ciu integer NOT NULL,
    deleted_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    CONSTRAINT via_direccion_check CHECK (((direccion)::text = ANY ((ARRAY['un sentido'::character varying, 'doble sentido'::character varying])::text[]))),
    CONSTRAINT via_tipo_check CHECK (((tipo)::text = ANY ((ARRAY['autopista'::character varying, 'carretera'::character varying, 'avenida'::character varying])::text[])))
);
    DROP TABLE public.via;
       public         postgres    false    6            ?            1259    42393    via_id_via_seq    SEQUENCE     w   CREATE SEQUENCE public.via_id_via_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.via_id_via_seq;
       public       postgres    false    198    6            ?           0    0    via_id_via_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.via_id_via_seq OWNED BY public.via.id_via;
            public       postgres    false    197            ?           2604    42385 	   id_ciudad    DEFAULT     t   ALTER TABLE ONLY public.ciudad ALTER COLUMN id_ciudad SET DEFAULT nextval('public.ciudad_id_ciudad_seq'::regclass);
 ?   ALTER TABLE public.ciudad ALTER COLUMN id_ciudad DROP DEFAULT;
       public       postgres    false    195    196    196            ?           2604    42248    id_dep    DEFAULT     z   ALTER TABLE ONLY public.departamento ALTER COLUMN id_dep SET DEFAULT nextval('public.departamento_id_dep_seq'::regclass);
 B   ALTER TABLE public.departamento ALTER COLUMN id_dep DROP DEFAULT;
       public       postgres    false    176    175    176            ?           2604    42280 
   id_funcion    DEFAULT     x   ALTER TABLE ONLY public.funcion ALTER COLUMN id_funcion SET DEFAULT nextval('public.funcion_id_funcion_seq'::regclass);
 A   ALTER TABLE public.funcion ALTER COLUMN id_funcion DROP DEFAULT;
       public       postgres    false    183    182    183            ?           2604    42264    id_iu    DEFAULT     d   ALTER TABLE ONLY public.iu ALTER COLUMN id_iu SET DEFAULT nextval('public.iu_id_iu_seq'::regclass);
 7   ALTER TABLE public.iu ALTER COLUMN id_iu DROP DEFAULT;
       public       postgres    false    179    180    180            ?           2604    42464    id_log    DEFAULT     h   ALTER TABLE ONLY public.log ALTER COLUMN id_log SET DEFAULT nextval('public.log_id_log_seq'::regclass);
 9   ALTER TABLE public.log ALTER COLUMN id_log DROP DEFAULT;
       public       postgres    false    205    204    205            ?           2604    42240    id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    174    173    174            ?           2604    42434    contar    DEFAULT     r   ALTER TABLE ONLY public.registro ALTER COLUMN contar SET DEFAULT nextval('public.registro_contar_seq'::regclass);
 >   ALTER TABLE public.registro ALTER COLUMN contar DROP DEFAULT;
       public       postgres    false    201    202    202            ?           2604    42291    id_rol    DEFAULT     h   ALTER TABLE ONLY public.rol ALTER COLUMN id_rol SET DEFAULT nextval('public.rol_id_rol_seq'::regclass);
 9   ALTER TABLE public.rol ALTER COLUMN id_rol DROP DEFAULT;
       public       postgres    false    184    185    185            ?           2604    42302 	   id_sensor    DEFAULT     t   ALTER TABLE ONLY public.sensor ALTER COLUMN id_sensor SET DEFAULT nextval('public.sensor_id_sensor_seq'::regclass);
 ?   ALTER TABLE public.sensor ALTER COLUMN id_sensor DROP DEFAULT;
       public       postgres    false    186    187    187            ?           2604    42330 	   id_sesion    DEFAULT     t   ALTER TABLE ONLY public.sesion ALTER COLUMN id_sesion SET DEFAULT nextval('public.sesion_id_sesion_seq'::regclass);
 ?   ALTER TABLE public.sesion ALTER COLUMN id_sesion DROP DEFAULT;
       public       postgres    false    190    191    191            ?           2604    42416    id_ubicacion    DEFAULT     ?   ALTER TABLE ONLY public.ubicacion ALTER COLUMN id_ubicacion SET DEFAULT nextval('public.ubicacion_id_ubicacion_seq'::regclass);
 E   ALTER TABLE public.ubicacion ALTER COLUMN id_ubicacion DROP DEFAULT;
       public       postgres    false    200    199    200            ?           2604    42310    id_usr    DEFAULT     h   ALTER TABLE ONLY public.usr ALTER COLUMN id_usr SET DEFAULT nextval('public.usr_id_usr_seq'::regclass);
 9   ALTER TABLE public.usr ALTER COLUMN id_usr DROP DEFAULT;
       public       postgres    false    189    188    189            ?           2604    42256    id_tipo    DEFAULT     t   ALTER TABLE ONLY public.vehiculo ALTER COLUMN id_tipo SET DEFAULT nextval('public.vehiculo_id_tipo_seq'::regclass);
 ?   ALTER TABLE public.vehiculo ALTER COLUMN id_tipo DROP DEFAULT;
       public       postgres    false    177    178    178            ?           2604    42398    id_via    DEFAULT     h   ALTER TABLE ONLY public.via ALTER COLUMN id_via SET DEFAULT nextval('public.via_id_via_seq'::regclass);
 9   ALTER TABLE public.via ALTER COLUMN id_via DROP DEFAULT;
       public       postgres    false    198    197    198            ?          0    42382    ciudad 
   TABLE DATA               7   COPY public.ciudad (id_ciudad, nomb, depa) FROM stdin;
    public       postgres    false    196   ??       ?           0    0    ciudad_id_ciudad_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.ciudad_id_ciudad_seq', 1, false);
            public       postgres    false    195            v          0    42245    departamento 
   TABLE DATA               X   COPY public.departamento (id_dep, nomb, deleted_at, created_at, updated_at) FROM stdin;
    public       postgres    false    176   ??       ?           0    0    departamento_id_dep_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.departamento_id_dep_seq', 1, false);
            public       postgres    false    175            }          0    42277    funcion 
   TABLE DATA               Y   COPY public.funcion (id_funcion, funci, descripcion, created_at, updated_at) FROM stdin;
    public       postgres    false    183   )?       ?           0    0    funcion_id_funcion_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.funcion_id_funcion_seq', 1, false);
            public       postgres    false    182            ?          0    42367 
   funcion_iu 
   TABLE DATA               b   COPY public.funcion_iu (iu_d, funcion_id, activo, deleted_at, created_at, updated_at) FROM stdin;
    public       postgres    false    194   F?       z          0    42261    iu 
   TABLE DATA               H   COPY public.iu (id_iu, descripcion, created_at, updated_at) FROM stdin;
    public       postgres    false    180   c?       ?           0    0    iu_id_iu_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.iu_id_iu_seq', 1, false);
            public       postgres    false    179            ?          0    42461    log 
   TABLE DATA               v   COPY public.log (id_log, dato_viejo, dato_nuevo, fecha, hora, usr_id, deleted_at, created_at, updated_at) FROM stdin;
    public       postgres    false    205   ??       ?           0    0    log_id_log_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.log_id_log_seq', 1, false);
            public       postgres    false    204            t          0    42237 
   migrations 
   TABLE DATA               :   COPY public.migrations (id, migration, batch) FROM stdin;
    public       postgres    false    174   ??       ?           0    0    migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.migrations_id_seq', 18, true);
            public       postgres    false    173            ?          0    42447    password_resets 
   TABLE DATA               J   COPY public.password_resets (email, token, id_us, created_at) FROM stdin;
    public       postgres    false    203   ??       {          0    42267    persona 
   TABLE DATA               _   COPY public.persona (ci, nombre, apepa, apema, deleted_at, created_at, updated_at) FROM stdin;
    public       postgres    false    181   ??       ?          0    42431    registro 
   TABLE DATA               f   COPY public.registro (contar, fecha, id_ubic, id_veh, deleted_at, created_at, updated_at) FROM stdin;
    public       postgres    false    202   ??       ?           0    0    registro_contar_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.registro_contar_seq', 1, false);
            public       postgres    false    201                      0    42288    rol 
   TABLE DATA               Z   COPY public.rol (id_rol, ro, descripcion, deleted_at, created_at, updated_at) FROM stdin;
    public       postgres    false    185   ??       ?          0    42341    rol_funcion 
   TABLE DATA               e   COPY public.rol_funcion (activo, rol_id, funcion_id, deleted_at, created_at, updated_at) FROM stdin;
    public       postgres    false    192   U?       ?           0    0    rol_id_rol_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.rol_id_rol_seq', 4, true);
            public       postgres    false    184            ?          0    42299    sensor 
   TABLE DATA               `   COPY public.sensor (id_sensor, estado, descripcion, activo, created_at, updated_at) FROM stdin;
    public       postgres    false    187   r?       ?           0    0    sensor_id_sensor_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.sensor_id_sensor_seq', 1, false);
            public       postgres    false    186            ?          0    42327    sesion 
   TABLE DATA               d   COPY public.sesion (id_sesion, activo, pid, usr_id, deleted_at, created_at, updated_at) FROM stdin;
    public       postgres    false    191   ??       ?           0    0    sesion_id_sesion_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.sesion_id_sesion_seq', 10, true);
            public       postgres    false    190            ?          0    42413 	   ubicacion 
   TABLE DATA               n   COPY public.ubicacion (id_ubicacion, activo, id_disp, via_id, deleted_at, created_at, updated_at) FROM stdin;
    public       postgres    false    200   ??       ?           0    0    ubicacion_id_ubicacion_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.ubicacion_id_ubicacion_seq', 1, false);
            public       postgres    false    199            ?          0    42307    usr 
   TABLE DATA               y   COPY public.usr (id_usr, login, email, password, ci_per, deleted_at, remember_token, created_at, updated_at) FROM stdin;
    public       postgres    false    189   ?       ?           0    0    usr_id_usr_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.usr_id_usr_seq', 16, true);
            public       postgres    false    188            ?          0    42354    usr_rol 
   TABLE DATA               U   COPY public.usr_rol (usr_id, rol_id, deleted_at, created_at, updated_at) FROM stdin;
    public       postgres    false    193   ?       x          0    42253    vehiculo 
   TABLE DATA               ?   COPY public.vehiculo (id_tipo, nombr_ve, peso, distan_ini, distaci_fin, activo, deleted_at, created_at, updated_at) FROM stdin;
    public       postgres    false    178   ]?       ?           0    0    vehiculo_id_tipo_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.vehiculo_id_tipo_seq', 1, false);
            public       postgres    false    177            ?          0    42395    via 
   TABLE DATA               }   COPY public.via (id_via, tipo, nuncarril, dimension, direccion, nomvia, ciu, deleted_at, created_at, updated_at) FROM stdin;
    public       postgres    false    198   z?       ?           0    0    via_id_via_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.via_id_via_seq', 1, false);
            public       postgres    false    197            ?           2606    42387    ciudad_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.ciudad
    ADD CONSTRAINT ciudad_pkey PRIMARY KEY (id_ciudad);
 <   ALTER TABLE ONLY public.ciudad DROP CONSTRAINT ciudad_pkey;
       public         postgres    false    196    196            ?           2606    42250    departamento_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.departamento
    ADD CONSTRAINT departamento_pkey PRIMARY KEY (id_dep);
 H   ALTER TABLE ONLY public.departamento DROP CONSTRAINT departamento_pkey;
       public         postgres    false    176    176            ?           2606    42285    funcion_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.funcion
    ADD CONSTRAINT funcion_pkey PRIMARY KEY (id_funcion);
 >   ALTER TABLE ONLY public.funcion DROP CONSTRAINT funcion_pkey;
       public         postgres    false    183    183            ?           2606    42266    iu_pkey 
   CONSTRAINT     K   ALTER TABLE ONLY public.iu
    ADD CONSTRAINT iu_pkey PRIMARY KEY (id_iu);
 4   ALTER TABLE ONLY public.iu DROP CONSTRAINT iu_pkey;
       public         postgres    false    180    180            ?           2606    42469    log_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.log
    ADD CONSTRAINT log_pkey PRIMARY KEY (id_log);
 6   ALTER TABLE ONLY public.log DROP CONSTRAINT log_pkey;
       public         postgres    false    205    205            ?           2606    42242    migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public         postgres    false    174    174            ?           2606    42274    persona_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.persona
    ADD CONSTRAINT persona_pkey PRIMARY KEY (ci);
 >   ALTER TABLE ONLY public.persona DROP CONSTRAINT persona_pkey;
       public         postgres    false    181    181            ?           2606    42436    registro_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.registro
    ADD CONSTRAINT registro_pkey PRIMARY KEY (contar);
 @   ALTER TABLE ONLY public.registro DROP CONSTRAINT registro_pkey;
       public         postgres    false    202    202            ?           2606    42296    rol_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.rol
    ADD CONSTRAINT rol_pkey PRIMARY KEY (id_rol);
 6   ALTER TABLE ONLY public.rol DROP CONSTRAINT rol_pkey;
       public         postgres    false    185    185            ?           2606    42304    sensor_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.sensor
    ADD CONSTRAINT sensor_pkey PRIMARY KEY (id_sensor);
 <   ALTER TABLE ONLY public.sensor DROP CONSTRAINT sensor_pkey;
       public         postgres    false    187    187            ?           2606    42335    sesion_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.sesion
    ADD CONSTRAINT sesion_pkey PRIMARY KEY (id_sesion);
 <   ALTER TABLE ONLY public.sesion DROP CONSTRAINT sesion_pkey;
       public         postgres    false    191    191            ?           2606    42418    ubicacion_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.ubicacion
    ADD CONSTRAINT ubicacion_pkey PRIMARY KEY (id_ubicacion);
 B   ALTER TABLE ONLY public.ubicacion DROP CONSTRAINT ubicacion_pkey;
       public         postgres    false    200    200            ?           2606    42324    usr_email_unique 
   CONSTRAINT     P   ALTER TABLE ONLY public.usr
    ADD CONSTRAINT usr_email_unique UNIQUE (email);
 >   ALTER TABLE ONLY public.usr DROP CONSTRAINT usr_email_unique;
       public         postgres    false    189    189            ?           2606    42322    usr_login_unique 
   CONSTRAINT     P   ALTER TABLE ONLY public.usr
    ADD CONSTRAINT usr_login_unique UNIQUE (login);
 >   ALTER TABLE ONLY public.usr DROP CONSTRAINT usr_login_unique;
       public         postgres    false    189    189            ?           2606    42315    usr_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.usr
    ADD CONSTRAINT usr_pkey PRIMARY KEY (id_usr);
 6   ALTER TABLE ONLY public.usr DROP CONSTRAINT usr_pkey;
       public         postgres    false    189    189            ?           2606    42258    vehiculo_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.vehiculo
    ADD CONSTRAINT vehiculo_pkey PRIMARY KEY (id_tipo);
 @   ALTER TABLE ONLY public.vehiculo DROP CONSTRAINT vehiculo_pkey;
       public         postgres    false    178    178            ?           2606    42405    via_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.via
    ADD CONSTRAINT via_pkey PRIMARY KEY (id_via);
 6   ALTER TABLE ONLY public.via DROP CONSTRAINT via_pkey;
       public         postgres    false    198    198            ?           1259    42458    password_resets_email_index    INDEX     X   CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);
 /   DROP INDEX public.password_resets_email_index;
       public         postgres    false    203            ?           2606    42388    ciudad_depa_foreign    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ciudad
    ADD CONSTRAINT ciudad_depa_foreign FOREIGN KEY (depa) REFERENCES public.departamento(id_dep) ON DELETE CASCADE;
 D   ALTER TABLE ONLY public.ciudad DROP CONSTRAINT ciudad_depa_foreign;
       public       postgres    false    2006    196    176            ?           2606    42375    funcion_iu_funcion_id_foreign    FK CONSTRAINT     ?   ALTER TABLE ONLY public.funcion_iu
    ADD CONSTRAINT funcion_iu_funcion_id_foreign FOREIGN KEY (funcion_id) REFERENCES public.funcion(id_funcion);
 R   ALTER TABLE ONLY public.funcion_iu DROP CONSTRAINT funcion_iu_funcion_id_foreign;
       public       postgres    false    194    2014    183            ?           2606    42370    funcion_iu_iu_d_foreign    FK CONSTRAINT     ?   ALTER TABLE ONLY public.funcion_iu
    ADD CONSTRAINT funcion_iu_iu_d_foreign FOREIGN KEY (iu_d) REFERENCES public.iu(id_iu) ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.funcion_iu DROP CONSTRAINT funcion_iu_iu_d_foreign;
       public       postgres    false    2010    180    194                       2606    42470    log_usr_id_foreign    FK CONSTRAINT     ?   ALTER TABLE ONLY public.log
    ADD CONSTRAINT log_usr_id_foreign FOREIGN KEY (usr_id) REFERENCES public.usr(id_usr) ON DELETE CASCADE;
 @   ALTER TABLE ONLY public.log DROP CONSTRAINT log_usr_id_foreign;
       public       postgres    false    189    205    2024                       2606    42453    password_resets_id_us_foreign    FK CONSTRAINT     ?   ALTER TABLE ONLY public.password_resets
    ADD CONSTRAINT password_resets_id_us_foreign FOREIGN KEY (id_us) REFERENCES public.usr(id_usr) ON DELETE CASCADE;
 W   ALTER TABLE ONLY public.password_resets DROP CONSTRAINT password_resets_id_us_foreign;
       public       postgres    false    189    2024    203                       2606    42437    registro_id_ubic_foreign    FK CONSTRAINT     ?   ALTER TABLE ONLY public.registro
    ADD CONSTRAINT registro_id_ubic_foreign FOREIGN KEY (id_ubic) REFERENCES public.ubicacion(id_ubicacion) ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.registro DROP CONSTRAINT registro_id_ubic_foreign;
       public       postgres    false    200    202    2032                       2606    42442    registro_id_veh_foreign    FK CONSTRAINT     ?   ALTER TABLE ONLY public.registro
    ADD CONSTRAINT registro_id_veh_foreign FOREIGN KEY (id_veh) REFERENCES public.vehiculo(id_tipo) ON DELETE CASCADE;
 J   ALTER TABLE ONLY public.registro DROP CONSTRAINT registro_id_veh_foreign;
       public       postgres    false    202    2008    178            ?           2606    42349    rol_funcion_funcion_id_foreign    FK CONSTRAINT     ?   ALTER TABLE ONLY public.rol_funcion
    ADD CONSTRAINT rol_funcion_funcion_id_foreign FOREIGN KEY (funcion_id) REFERENCES public.funcion(id_funcion) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.rol_funcion DROP CONSTRAINT rol_funcion_funcion_id_foreign;
       public       postgres    false    192    183    2014            ?           2606    42344    rol_funcion_rol_id_foreign    FK CONSTRAINT     ?   ALTER TABLE ONLY public.rol_funcion
    ADD CONSTRAINT rol_funcion_rol_id_foreign FOREIGN KEY (rol_id) REFERENCES public.rol(id_rol) ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.rol_funcion DROP CONSTRAINT rol_funcion_rol_id_foreign;
       public       postgres    false    192    2016    185            ?           2606    42336    sesion_usr_id_foreign    FK CONSTRAINT     ?   ALTER TABLE ONLY public.sesion
    ADD CONSTRAINT sesion_usr_id_foreign FOREIGN KEY (usr_id) REFERENCES public.usr(id_usr) ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.sesion DROP CONSTRAINT sesion_usr_id_foreign;
       public       postgres    false    189    2024    191                        2606    42419    ubicacion_id_disp_foreign    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ubicacion
    ADD CONSTRAINT ubicacion_id_disp_foreign FOREIGN KEY (id_disp) REFERENCES public.sensor(id_sensor) ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.ubicacion DROP CONSTRAINT ubicacion_id_disp_foreign;
       public       postgres    false    187    2018    200                       2606    42424    ubicacion_via_id_foreign    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ubicacion
    ADD CONSTRAINT ubicacion_via_id_foreign FOREIGN KEY (via_id) REFERENCES public.via(id_via) ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.ubicacion DROP CONSTRAINT ubicacion_via_id_foreign;
       public       postgres    false    2030    198    200            ?           2606    42316    usr_ci_per_foreign    FK CONSTRAINT     ?   ALTER TABLE ONLY public.usr
    ADD CONSTRAINT usr_ci_per_foreign FOREIGN KEY (ci_per) REFERENCES public.persona(ci) ON DELETE CASCADE;
 @   ALTER TABLE ONLY public.usr DROP CONSTRAINT usr_ci_per_foreign;
       public       postgres    false    189    181    2012            ?           2606    42362    usr_rol_rol_id_foreign    FK CONSTRAINT     ?   ALTER TABLE ONLY public.usr_rol
    ADD CONSTRAINT usr_rol_rol_id_foreign FOREIGN KEY (rol_id) REFERENCES public.rol(id_rol) ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.usr_rol DROP CONSTRAINT usr_rol_rol_id_foreign;
       public       postgres    false    2016    185    193            ?           2606    42357    usr_rol_usr_id_foreign    FK CONSTRAINT     ?   ALTER TABLE ONLY public.usr_rol
    ADD CONSTRAINT usr_rol_usr_id_foreign FOREIGN KEY (usr_id) REFERENCES public.usr(id_usr) ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.usr_rol DROP CONSTRAINT usr_rol_usr_id_foreign;
       public       postgres    false    2024    189    193            ?           2606    42406    via_ciu_foreign    FK CONSTRAINT     ?   ALTER TABLE ONLY public.via
    ADD CONSTRAINT via_ciu_foreign FOREIGN KEY (ciu) REFERENCES public.ciudad(id_ciudad) ON DELETE CASCADE;
 =   ALTER TABLE ONLY public.via DROP CONSTRAINT via_ciu_foreign;
       public       postgres    false    2028    196    198            ?      x?????? ? ?      v   m   x?3?t?O?HLJ?MJ???? .#??ļ?D???*??1?sFiaifqb2?ZN?D??D$u???E?E?3ΐĢ?,$M??N?y??g@b^
?K΀???b$%1z\\\ kS-?      }      x?????? ? ?      ?      x?????? ? ?      z      x?????? ? ?      ?      x?????? ? ?      t   ?   x?e??n? ???c*?+ɿTB?S?F<???v??Ⱥ?6?8??0m?j ?T̸?m???O?????&S???7X8?Jl?????٭ V3????T??RO?K??"t???-??"R=S?`?hN'??2???%e??$??Ę?t?OL0??_Ƅ?U?ǈ? ???1?X8???M' ???h?a?N%?+?žB?(?8?v???4?B?.?#???[?|4?+?[?w?C??n???'?????mY????      ?      x?????? ? ?      {   ?   x?m??
?  ?s??}?@k?w?q;??KVK)k*???gM??h?#?8[)+5\ǁ??6??n?G??Z-p??sh? ͝?p?X????Z????V]K???[???A??+?J?Jg?iF?0*#d???@??ad?aF??edKd2r?#?ERUu?7?жaLy?Sק?+Ԧ????????O?Q????ڙ|?4?????K??M      ?      x?????? ? ?         ?   x?u?M
C!???9A??W??'x??Y4?F{????nZC`f??>*7?;r???ლ>c֩?)????a?$?;???.\?R?U??3?E?S?Ӹ??y?@?ˋ0????5?s#?j???ek'???Q??????N!?7PNb      ?      x?????? ? ?      ?      x?????? ? ?      ?   W   x?3?,??Vr??L,V??L/M?Q??4???? .#???Mț?哋S?S??A?fY3??	?[???k??PY3??=... ?aS?      ?      x?????? ? ?      ?   ?   x???A?? ?59L4l`??	??IT??DJ??2*ũ?Fbe?O?2?n??|ɱ???cL???Q.?C^?9?i????hV???NC*?c?Nc|K??]?B??H?#:$???T?[ XB???! S|IhA?͔PFPL]?#???@A??pJ?????(?$?????\1%??????-??]?????vOh??ŝ`Q?y?????Z2?]?k	?*???ǭEm?!0??6M?ƾ?      ?   A   x?3?4?420??5??5?T00?#bŸ,9?9c? ??? ?g??3B???LPx?(<3d^? ?k"-      x      x?????? ? ?      ?      x?????? ? ?     