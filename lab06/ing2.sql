PGDMP         9        
        u            BD_ing    9.4.8    9.4.8     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           1262    41257    BD_ing    DATABASE     �   CREATE DATABASE "BD_ing" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Spain.1252' LC_CTYPE = 'Spanish_Spain.1252';
    DROP DATABASE "BD_ing";
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    6            �           0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    6                        3079    11855    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    41258    usuarios    TABLE     w   CREATE TABLE usuarios (
    id integer NOT NULL,
    nombre character varying(32),
    correo character varying(32)
);
    DROP TABLE public.usuarios;
       public         postgres    false    6            �            1259    41261    usuarios_id_seq    SEQUENCE     q   CREATE SEQUENCE usuarios_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.usuarios_id_seq;
       public       postgres    false    6    173            �           0    0    usuarios_id_seq    SEQUENCE OWNED BY     5   ALTER SEQUENCE usuarios_id_seq OWNED BY usuarios.id;
            public       postgres    false    174            Y           2604    41263    id    DEFAULT     \   ALTER TABLE ONLY usuarios ALTER COLUMN id SET DEFAULT nextval('usuarios_id_seq'::regclass);
 :   ALTER TABLE public.usuarios ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    174    173            �          0    41258    usuarios 
   TABLE DATA               /   COPY usuarios (id, nombre, correo) FROM stdin;
    public       postgres    false    173   p       �           0    0    usuarios_id_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('usuarios_id_seq', 2, true);
            public       postgres    false    174            [           2606    41268    id_clave_primaria_tabla_usuario 
   CONSTRAINT     _   ALTER TABLE ONLY usuarios
    ADD CONSTRAINT id_clave_primaria_tabla_usuario PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT id_clave_primaria_tabla_usuario;
       public         postgres    false    173    173            �   -   x�3��M,JN�ɇ�ɉI�99�E��鹉�9z���\1z\\\ :^�     