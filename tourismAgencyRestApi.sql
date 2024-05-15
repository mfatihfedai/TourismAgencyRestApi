PGDMP  :                    |            turizmAcenteRestApi    16.1    16.1 B    8           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            9           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            :           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ;           1262    26821    turizmAcenteRestApi    DATABASE     �   CREATE DATABASE "turizmAcenteRestApi" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Australia.1252';
 %   DROP DATABASE "turizmAcenteRestApi";
                admin    false            �            1259    26975    guests    TABLE     B  CREATE TABLE public.guests (
    id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    guest_mail character varying(255),
    guest_name character varying(255),
    guest_phone character varying(255),
    guest_tc character varying(255)
);
    DROP TABLE public.guests;
       public         heap    postgres    false            �            1259    26974    guests_id_seq    SEQUENCE     v   CREATE SEQUENCE public.guests_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.guests_id_seq;
       public          postgres    false    225            <           0    0    guests_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.guests_id_seq OWNED BY public.guests.id;
          public          postgres    false    224            �            1259    26953    hotel2pensions    TABLE     �   CREATE TABLE public.hotel2pensions (
    hotel2pensions_hotel_id bigint NOT NULL,
    hotel2pensions_pension_id bigint NOT NULL
);
 "   DROP TABLE public.hotel2pensions;
       public         heap    postgres    false            �            1259    26933    hotels    TABLE     �  CREATE TABLE public.hotels (
    id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    hotel_address character varying(255) NOT NULL,
    hotel_city character varying(255) NOT NULL,
    hotel_email character varying(255) NOT NULL,
    hotel_fitness boolean NOT NULL,
    hotel_name character varying(255) NOT NULL,
    hotel_otopark boolean NOT NULL,
    hotel_phone character varying(255) NOT NULL,
    hotel_pool boolean NOT NULL,
    hotel_rate character varying(255) NOT NULL,
    hotel_region character varying(255) NOT NULL,
    hotel_service boolean NOT NULL,
    hotel_spa boolean NOT NULL,
    hotel_wifi boolean NOT NULL
);
    DROP TABLE public.hotels;
       public         heap    postgres    false            �            1259    26932    hotels_id_seq    SEQUENCE     v   CREATE SEQUENCE public.hotels_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.hotels_id_seq;
       public          postgres    false    218            =           0    0    hotels_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.hotels_id_seq OWNED BY public.hotels.id;
          public          postgres    false    217            �            1259    26957    pensions    TABLE     /  CREATE TABLE public.pensions (
    id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    pension_name smallint NOT NULL,
    CONSTRAINT pensions_pension_name_check CHECK (((pension_name >= 0) AND (pension_name <= 6)))
);
    DROP TABLE public.pensions;
       public         heap    postgres    false            �            1259    26956    pensions_id_seq    SEQUENCE     x   CREATE SEQUENCE public.pensions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.pensions_id_seq;
       public          postgres    false    223            >           0    0    pensions_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.pensions_id_seq OWNED BY public.pensions.id;
          public          postgres    false    222            �            1259    26984    reservations    TABLE     �  CREATE TABLE public.reservations (
    id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    reservation_prc_adlt integer NOT NULL,
    reservation_prc_chld integer NOT NULL,
    reservation_entry_date date NOT NULL,
    reservation_exit_date date NOT NULL,
    reservation_total_price integer NOT NULL,
    reservation_room_id bigint
);
     DROP TABLE public.reservations;
       public         heap    postgres    false            �            1259    26983    reservations_id_seq    SEQUENCE     |   CREATE SEQUENCE public.reservations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.reservations_id_seq;
       public          postgres    false    227            ?           0    0    reservations_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.reservations_id_seq OWNED BY public.reservations.id;
          public          postgres    false    226            �            1259    26991    rooms    TABLE     �  CREATE TABLE public.rooms (
    id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    room_aircndtn boolean NOT NULL,
    room_bed integer NOT NULL,
    room_fridge boolean NOT NULL,
    room_minibar boolean NOT NULL,
    room_mtrsqr integer NOT NULL,
    room_prc_adult integer NOT NULL,
    room_prc_chld integer NOT NULL,
    room_safe boolean NOT NULL,
    room_stock integer NOT NULL,
    room_tv boolean NOT NULL,
    type smallint NOT NULL,
    room_hotel_id bigint,
    room_pension_id bigint,
    room_session_id bigint,
    CONSTRAINT rooms_type_check CHECK (((type >= 0) AND (type <= 3)))
);
    DROP TABLE public.rooms;
       public         heap    postgres    false            �            1259    26990    rooms_id_seq    SEQUENCE     u   CREATE SEQUENCE public.rooms_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.rooms_id_seq;
       public          postgres    false    229            @           0    0    rooms_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.rooms_id_seq OWNED BY public.rooms.id;
          public          postgres    false    228            �            1259    26998    rsrvtn2guests    TABLE     �   CREATE TABLE public.rsrvtn2guests (
    rsrvtn2guests_reservation_id bigint NOT NULL,
    rsrvtn2guests_guest_id bigint NOT NULL
);
 !   DROP TABLE public.rsrvtn2guests;
       public         heap    postgres    false            �            1259    26942    sessions    TABLE       CREATE TABLE public.sessions (
    id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    session_fnshdate date NOT NULL,
    session_strtdate date NOT NULL,
    session_hotel_id bigint
);
    DROP TABLE public.sessions;
       public         heap    postgres    false            �            1259    26941    sessions_id_seq    SEQUENCE     x   CREATE SEQUENCE public.sessions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.sessions_id_seq;
       public          postgres    false    220            A           0    0    sessions_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.sessions_id_seq OWNED BY public.sessions.id;
          public          postgres    false    219            �            1259    26923    users    TABLE     �  CREATE TABLE public.users (
    id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    user_role character varying(255) NOT NULL,
    user_name character varying(255) NOT NULL,
    user_password character varying(255) NOT NULL,
    CONSTRAINT users_user_role_check CHECK (((user_role)::text = ANY ((ARRAY['ADMIN'::character varying, 'EMPLOYEE'::character varying])::text[])))
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    26922    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    216            B           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    215            z           2604    26978 	   guests id    DEFAULT     f   ALTER TABLE ONLY public.guests ALTER COLUMN id SET DEFAULT nextval('public.guests_id_seq'::regclass);
 8   ALTER TABLE public.guests ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225            w           2604    26936 	   hotels id    DEFAULT     f   ALTER TABLE ONLY public.hotels ALTER COLUMN id SET DEFAULT nextval('public.hotels_id_seq'::regclass);
 8   ALTER TABLE public.hotels ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            y           2604    26960    pensions id    DEFAULT     j   ALTER TABLE ONLY public.pensions ALTER COLUMN id SET DEFAULT nextval('public.pensions_id_seq'::regclass);
 :   ALTER TABLE public.pensions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            {           2604    26987    reservations id    DEFAULT     r   ALTER TABLE ONLY public.reservations ALTER COLUMN id SET DEFAULT nextval('public.reservations_id_seq'::regclass);
 >   ALTER TABLE public.reservations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227            |           2604    26994    rooms id    DEFAULT     d   ALTER TABLE ONLY public.rooms ALTER COLUMN id SET DEFAULT nextval('public.rooms_id_seq'::regclass);
 7   ALTER TABLE public.rooms ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229            x           2604    26945    sessions id    DEFAULT     j   ALTER TABLE ONLY public.sessions ALTER COLUMN id SET DEFAULT nextval('public.sessions_id_seq'::regclass);
 :   ALTER TABLE public.sessions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            v           2604    26926    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            0          0    26975    guests 
   TABLE DATA           k   COPY public.guests (id, created_at, updated_at, guest_mail, guest_name, guest_phone, guest_tc) FROM stdin;
    public          postgres    false    225   �S       ,          0    26953    hotel2pensions 
   TABLE DATA           \   COPY public.hotel2pensions (hotel2pensions_hotel_id, hotel2pensions_pension_id) FROM stdin;
    public          postgres    false    221   W       )          0    26933    hotels 
   TABLE DATA           �   COPY public.hotels (id, created_at, updated_at, hotel_address, hotel_city, hotel_email, hotel_fitness, hotel_name, hotel_otopark, hotel_phone, hotel_pool, hotel_rate, hotel_region, hotel_service, hotel_spa, hotel_wifi) FROM stdin;
    public          postgres    false    218   fW       .          0    26957    pensions 
   TABLE DATA           L   COPY public.pensions (id, created_at, updated_at, pension_name) FROM stdin;
    public          postgres    false    223   �Y       2          0    26984    reservations 
   TABLE DATA           �   COPY public.reservations (id, created_at, updated_at, reservation_prc_adlt, reservation_prc_chld, reservation_entry_date, reservation_exit_date, reservation_total_price, reservation_room_id) FROM stdin;
    public          postgres    false    227   $Z       4          0    26991    rooms 
   TABLE DATA           �   COPY public.rooms (id, created_at, updated_at, room_aircndtn, room_bed, room_fridge, room_minibar, room_mtrsqr, room_prc_adult, room_prc_chld, room_safe, room_stock, room_tv, type, room_hotel_id, room_pension_id, room_session_id) FROM stdin;
    public          postgres    false    229   �[       5          0    26998    rsrvtn2guests 
   TABLE DATA           ]   COPY public.rsrvtn2guests (rsrvtn2guests_reservation_id, rsrvtn2guests_guest_id) FROM stdin;
    public          postgres    false    230   �]       +          0    26942    sessions 
   TABLE DATA           t   COPY public.sessions (id, created_at, updated_at, session_fnshdate, session_strtdate, session_hotel_id) FROM stdin;
    public          postgres    false    220   ^       '          0    26923    users 
   TABLE DATA           `   COPY public.users (id, created_at, updated_at, user_role, user_name, user_password) FROM stdin;
    public          postgres    false    216   �_       C           0    0    guests_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.guests_id_seq', 25, true);
          public          postgres    false    224            D           0    0    hotels_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.hotels_id_seq', 12, true);
          public          postgres    false    217            E           0    0    pensions_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.pensions_id_seq', 7, true);
          public          postgres    false    222            F           0    0    reservations_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.reservations_id_seq', 19, true);
          public          postgres    false    226            G           0    0    rooms_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.rooms_id_seq', 20, true);
          public          postgres    false    228            H           0    0    sessions_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.sessions_id_seq', 22, true);
          public          postgres    false    219            I           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 4, true);
          public          postgres    false    215            �           2606    26982    guests guests_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.guests
    ADD CONSTRAINT guests_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.guests DROP CONSTRAINT guests_pkey;
       public            postgres    false    225            �           2606    26940    hotels hotels_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.hotels
    ADD CONSTRAINT hotels_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.hotels DROP CONSTRAINT hotels_pkey;
       public            postgres    false    218            �           2606    26963    pensions pensions_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.pensions
    ADD CONSTRAINT pensions_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.pensions DROP CONSTRAINT pensions_pkey;
       public            postgres    false    223            �           2606    26989    reservations reservations_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.reservations
    ADD CONSTRAINT reservations_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.reservations DROP CONSTRAINT reservations_pkey;
       public            postgres    false    227            �           2606    26997    rooms rooms_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT rooms_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.rooms DROP CONSTRAINT rooms_pkey;
       public            postgres    false    229            �           2606    26947    sessions sessions_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.sessions DROP CONSTRAINT sessions_pkey;
       public            postgres    false    220            �           2606    26931    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    216            �           2606    27011 !   rooms fk1pcjn5itivkdpbslote6um6vw    FK CONSTRAINT     �   ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT fk1pcjn5itivkdpbslote6um6vw FOREIGN KEY (room_pension_id) REFERENCES public.pensions(id);
 K   ALTER TABLE ONLY public.rooms DROP CONSTRAINT fk1pcjn5itivkdpbslote6um6vw;
       public          postgres    false    4743    223    229            �           2606    27001 (   reservations fk2vb9t9bicvwkkrhlu4vaxoyn6    FK CONSTRAINT     �   ALTER TABLE ONLY public.reservations
    ADD CONSTRAINT fk2vb9t9bicvwkkrhlu4vaxoyn6 FOREIGN KEY (reservation_room_id) REFERENCES public.rooms(id);
 R   ALTER TABLE ONLY public.reservations DROP CONSTRAINT fk2vb9t9bicvwkkrhlu4vaxoyn6;
       public          postgres    false    229    227    4749            �           2606    27016 !   rooms fk6c4pchl8ipok8wd0ho2ep6mw3    FK CONSTRAINT     �   ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT fk6c4pchl8ipok8wd0ho2ep6mw3 FOREIGN KEY (room_session_id) REFERENCES public.sessions(id);
 K   ALTER TABLE ONLY public.rooms DROP CONSTRAINT fk6c4pchl8ipok8wd0ho2ep6mw3;
       public          postgres    false    229    220    4741            �           2606    27026 )   rsrvtn2guests fk6mlstfni9jud7sd7mb5j23hrx    FK CONSTRAINT     �   ALTER TABLE ONLY public.rsrvtn2guests
    ADD CONSTRAINT fk6mlstfni9jud7sd7mb5j23hrx FOREIGN KEY (rsrvtn2guests_reservation_id) REFERENCES public.reservations(id);
 S   ALTER TABLE ONLY public.rsrvtn2guests DROP CONSTRAINT fk6mlstfni9jud7sd7mb5j23hrx;
       public          postgres    false    230    227    4747            �           2606    27021 )   rsrvtn2guests fk74899af5lmo1rhxba1moh05j0    FK CONSTRAINT     �   ALTER TABLE ONLY public.rsrvtn2guests
    ADD CONSTRAINT fk74899af5lmo1rhxba1moh05j0 FOREIGN KEY (rsrvtn2guests_guest_id) REFERENCES public.guests(id);
 S   ALTER TABLE ONLY public.rsrvtn2guests DROP CONSTRAINT fk74899af5lmo1rhxba1moh05j0;
       public          postgres    false    4745    230    225            �           2606    26948 $   sessions fk769s4r4x9maqdv1x3fkkxvor5    FK CONSTRAINT     �   ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT fk769s4r4x9maqdv1x3fkkxvor5 FOREIGN KEY (session_hotel_id) REFERENCES public.hotels(id);
 N   ALTER TABLE ONLY public.sessions DROP CONSTRAINT fk769s4r4x9maqdv1x3fkkxvor5;
       public          postgres    false    220    218    4739            �           2606    26964 *   hotel2pensions fka08uis8ccbwp1pr4pymkh1tv8    FK CONSTRAINT     �   ALTER TABLE ONLY public.hotel2pensions
    ADD CONSTRAINT fka08uis8ccbwp1pr4pymkh1tv8 FOREIGN KEY (hotel2pensions_pension_id) REFERENCES public.pensions(id);
 T   ALTER TABLE ONLY public.hotel2pensions DROP CONSTRAINT fka08uis8ccbwp1pr4pymkh1tv8;
       public          postgres    false    221    223    4743            �           2606    27006     rooms fkmm7t9acoy8lkdn6pmx6fls63    FK CONSTRAINT     �   ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT fkmm7t9acoy8lkdn6pmx6fls63 FOREIGN KEY (room_hotel_id) REFERENCES public.hotels(id);
 J   ALTER TABLE ONLY public.rooms DROP CONSTRAINT fkmm7t9acoy8lkdn6pmx6fls63;
       public          postgres    false    4739    218    229            �           2606    26969 *   hotel2pensions fkojrae8t0a5dd4nxy28r9v9bps    FK CONSTRAINT     �   ALTER TABLE ONLY public.hotel2pensions
    ADD CONSTRAINT fkojrae8t0a5dd4nxy28r9v9bps FOREIGN KEY (hotel2pensions_hotel_id) REFERENCES public.hotels(id);
 T   ALTER TABLE ONLY public.hotel2pensions DROP CONSTRAINT fkojrae8t0a5dd4nxy28r9v9bps;
       public          postgres    false    221    218    4739            0     x���͎�V���,�WUu�YY���&�Q���lh|�&mC����O��m)���NU�*l�J�Rr	`*�$@"*z$�����24�*��'Q���sv�c��Y���e"�AC�M�w`��j������|$�|�M���붬���K޶�䗳-��d'�2�:Ep �c=#	%�Ww</R�R��m[W�:�yՆ����l�m�?z��u�L����#�)i�J�����i�������%�\oݖ�����[ՖՆ=���h�]&�9g�l R�����ޱp�["������O�J�6u��Q��o��B�W�<Z�w˄k���HB
R�\��T���f�;��H�&o��)כ�W�MY�Ka�}��!���ǀha�Y&^��JE�\�d6�~n�AH�F�q�H�{����v�v����k��&<�M�o��&�;L�@{YJy:X��`����|�z�K��&4MYlyeJ�
?B�>5e��*��Y�ɯcwx��o�K A���o] �.C+��%����j֨������ő�t��	R��Jx4'醁7��K�H	Ф�G�F�
���*�8+E��sh��I0q���{����#� R��-(9M�F�A<�=HO�y�@�x�IcF��f��x��i���1�1�i'�i~�����y�Hg�4���_И��FS�P8c@�<���I=���`K~V��4�h�̲7�Da���<o���ט��h�x˟�YJ��5fu3���6���I�u%��#J��AL�7��0s�i��'�_A�z"S�e��˿��*|$]��1�Tt�]�q�d$�      ,   J   x����0���0���v��s���H�qb��C*�����4G�����V���7[Ӛ6��mhC[��=�~\�      )   *  x�}��R�0���ShIh�o)��J�-0��M7"Q�l�����u�N;�����3�sϕ�S.�)?�s6v���j�IҲ�]�}W|��8��N�r9��|�x1�S�k���u�:TБej��QF3�oο���o]S�_W|��V�T��%�RM�����$c�u��n��Up/�N�Z��ΧU�Ò��hEʖ��I�t�m���fb�cR���|p*�B���$�<,��|��O.=�����D6�����,bV�\��rd4�`+�5B���b٪�_��	���7��K��8Γ�3z�Bp���9��f�wch��A������ǎ39�\IM)�˵�q���jJ�������V@��֧E���ؠy�)���Ŕ��̵�%v����ߥ7N���q^k�Hg��ńS�a�X�?���|�<z|�Sr�n]���3
� �����uK�%i �/��*� )�H#jCǥ��� �� j���X�(k�R�$-�����v���k���w?���3(^ܧH�{0zהŦ�G0=�1F%�|܆=`�� UU�a�#[      .   t   x�}ͱ1C�:�"� R���,��I�6\?|/�2^lo�0��Nd�?��+ͪ��D�eb �I��H+�Բ�}3:�%W�P�����6ܕ��#��+5��rR�GE�L�K�      2   U  x����q� E�En@��}�("��:�d2����Fg�a�p0���'��K��r!�&� u�q?p����Jt �V꨹T�� [�\�j�e���D[��i�F�T�`��b��5*�@)���h+�)m�Բ�-HH).-�և��i��s�-�$\	+��.�=�Aq�������TV�Z���5���JW�"P]�į�ҩv�L�Z�7*F�V]R�V֡��4��(V�*�����$kl�[���̵��-�6�-���P�h^m�B��+a�f�OՕ��о�2ǽK���RWho~�3��x��E�]](�]�S�5(�zM�A��� �E�y�硄��t�)�oW}      4   $  x�}�]�� ��aw�l���Z�9+��u�	2�Ԧ*G�0�ǔ���/�/��D-G� )�Zޤ�%�/'�q#rLx\��*Ac'^��!9hj��M�\�4��dW,1��X|\����=����抗���lہ�X�@ҠD�^���}{��-���7M�l]*!W�ycהΎ��8}1v�u�v�Q��>���$�4��&��8:,�?e3�"�K��r���t��!�j�n�ń|]�vIἘ�������]u�f����Ԣ�ʺ����:3[����>:�L+!J�Zc��;�kL�aʝ��Ӎ��ycjl�	νiŔ��|y��9�H�p�9{���]�S:GN������gA|</��Mc]�f�)Y#GTڬ���\=��xġ$��&=����; m��Y7�b��w�	��cOc~d�����K^\��r�o���RG������\V�%��o�=C�h�����)i�UT_�O����g��xn+"��+��M��d�ٟ�]�c�-��:��ZJ��k+[�����"?�En�m��{��/L�      5   P   x����0�7YL`�W�K��#�?�$	� :u�Ӟ�t�juP2z�1]��bQ�חZ�)ݨ����Ax�{H����      +   `  x���[N�0E��*��X~Ǚ���u�2��ب�U:�'��߄�$�w�'ͧꈐ[�|���d�P��{����r�P�G����P"���}�	M�i�]}�}	�������y�XN_�|��X�#�������f8��-*�](�-�;�B�-��	�����WJCtpӿ�A��1R������S��pߐ�RFvo�A�p��GJ0m�5^P#\Ci:��䔳;�@�s�!�M��&��/_P#L�)��k�F��od�j��B9����S�
�gfG�p���	�m��C�p��M�c��í����p��C(eS�e�:�5�)��R������ߨN�@ �1�D�      '   �   x�}�AO�0 F��Wx�:lKi�n�U�0��� ^�cln0��hL\����}ib2�x���S~ΰ��(�����5)5KA�?���<���L���y
�[{����T�����>�Ch�y����������H��(B[�/
�^&��B��d�p(�O�c*�QM��q�y����T�s�э ����F�O3e�B��w�R{�Hٰ�ˮ�J���vC��>�1\����iՔ����m8{��}B�� � q�a�     