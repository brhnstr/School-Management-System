PGDMP     4    0                z           school_management    14.3    14.3 8    )           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            *           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            +           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ,           1262    19122    school_management    DATABASE     u   CREATE DATABASE school_management WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
 !   DROP DATABASE school_management;
                postgres    false            �            1259    19155    grades    TABLE     �   CREATE TABLE public.grades (
    grade_id integer NOT NULL,
    student_id integer NOT NULL,
    lesson_id integer NOT NULL,
    grade double precision
);
    DROP TABLE public.grades;
       public         heap    postgres    false            �            1259    19142    lessons    TABLE     a   CREATE TABLE public.lessons (
    lesson_id integer NOT NULL,
    name character varying(255)
);
    DROP TABLE public.lessons;
       public         heap    postgres    false            �            1259    19141    lessons_lesson_id_seq    SEQUENCE     �   CREATE SEQUENCE public.lessons_lesson_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.lessons_lesson_id_seq;
       public          postgres    false    214            -           0    0    lessons_lesson_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.lessons_lesson_id_seq OWNED BY public.lessons.lesson_id;
          public          postgres    false    213            �            1259    19149    studentlessons    TABLE     �   CREATE TABLE public.studentlessons (
    studentlessons_id integer NOT NULL,
    student_id integer NOT NULL,
    lesson_id integer NOT NULL
);
 "   DROP TABLE public.studentlessons;
       public         heap    postgres    false            �            1259    19148 $   studentlessons_studentlessons_id_seq    SEQUENCE     �   CREATE SEQUENCE public.studentlessons_studentlessons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.studentlessons_studentlessons_id_seq;
       public          postgres    false    216            .           0    0 $   studentlessons_studentlessons_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.studentlessons_studentlessons_id_seq OWNED BY public.studentlessons.studentlessons_id;
          public          postgres    false    215            �            1259    19124    students    TABLE     �   CREATE TABLE public.students (
    student_id integer NOT NULL,
    first_name character varying(255),
    last_name character varying(255),
    password character varying(255) NOT NULL,
    student_number integer NOT NULL
);
    DROP TABLE public.students;
       public         heap    postgres    false            �            1259    19123    students_student_id_seq    SEQUENCE     �   CREATE SEQUENCE public.students_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.students_student_id_seq;
       public          postgres    false    210            /           0    0    students_student_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.students_student_id_seq OWNED BY public.students.student_id;
          public          postgres    false    209            �            1259    19133    teachers    TABLE     (  CREATE TABLE public.teachers (
    teacher_id integer NOT NULL,
    user_name character varying(255),
    password character varying(255) NOT NULL,
    first_name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    teacher_email character varying(255) NOT NULL
);
    DROP TABLE public.teachers;
       public         heap    postgres    false            �            1259    19163    teachers_lessons    TABLE     �   CREATE TABLE public.teachers_lessons (
    teacher_lesson_id integer NOT NULL,
    teacher_id integer NOT NULL,
    lesson_id integer NOT NULL
);
 $   DROP TABLE public.teachers_lessons;
       public         heap    postgres    false            �            1259    19162    teachers_lessons_lesson_id_seq    SEQUENCE     �   CREATE SEQUENCE public.teachers_lessons_lesson_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.teachers_lessons_lesson_id_seq;
       public          postgres    false    221            0           0    0    teachers_lessons_lesson_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.teachers_lessons_lesson_id_seq OWNED BY public.teachers_lessons.lesson_id;
          public          postgres    false    220            �            1259    19161    teachers_lessons_teacher_id_seq    SEQUENCE     �   CREATE SEQUENCE public.teachers_lessons_teacher_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.teachers_lessons_teacher_id_seq;
       public          postgres    false    221            1           0    0    teachers_lessons_teacher_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.teachers_lessons_teacher_id_seq OWNED BY public.teachers_lessons.teacher_id;
          public          postgres    false    219            �            1259    19160 &   teachers_lessons_teacher_lesson_id_seq    SEQUENCE     �   CREATE SEQUENCE public.teachers_lessons_teacher_lesson_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.teachers_lessons_teacher_lesson_id_seq;
       public          postgres    false    221            2           0    0 &   teachers_lessons_teacher_lesson_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.teachers_lessons_teacher_lesson_id_seq OWNED BY public.teachers_lessons.teacher_lesson_id;
          public          postgres    false    218            �            1259    19132    teachers_teacher_id_seq    SEQUENCE     �   CREATE SEQUENCE public.teachers_teacher_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.teachers_teacher_id_seq;
       public          postgres    false    212            3           0    0    teachers_teacher_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.teachers_teacher_id_seq OWNED BY public.teachers.teacher_id;
          public          postgres    false    211            x           2604    19145    lessons lesson_id    DEFAULT     v   ALTER TABLE ONLY public.lessons ALTER COLUMN lesson_id SET DEFAULT nextval('public.lessons_lesson_id_seq'::regclass);
 @   ALTER TABLE public.lessons ALTER COLUMN lesson_id DROP DEFAULT;
       public          postgres    false    214    213    214            y           2604    19152     studentlessons studentlessons_id    DEFAULT     �   ALTER TABLE ONLY public.studentlessons ALTER COLUMN studentlessons_id SET DEFAULT nextval('public.studentlessons_studentlessons_id_seq'::regclass);
 O   ALTER TABLE public.studentlessons ALTER COLUMN studentlessons_id DROP DEFAULT;
       public          postgres    false    215    216    216            v           2604    19127    students student_id    DEFAULT     z   ALTER TABLE ONLY public.students ALTER COLUMN student_id SET DEFAULT nextval('public.students_student_id_seq'::regclass);
 B   ALTER TABLE public.students ALTER COLUMN student_id DROP DEFAULT;
       public          postgres    false    210    209    210            w           2604    19136    teachers teacher_id    DEFAULT     z   ALTER TABLE ONLY public.teachers ALTER COLUMN teacher_id SET DEFAULT nextval('public.teachers_teacher_id_seq'::regclass);
 B   ALTER TABLE public.teachers ALTER COLUMN teacher_id DROP DEFAULT;
       public          postgres    false    211    212    212            z           2604    19166 "   teachers_lessons teacher_lesson_id    DEFAULT     �   ALTER TABLE ONLY public.teachers_lessons ALTER COLUMN teacher_lesson_id SET DEFAULT nextval('public.teachers_lessons_teacher_lesson_id_seq'::regclass);
 Q   ALTER TABLE public.teachers_lessons ALTER COLUMN teacher_lesson_id DROP DEFAULT;
       public          postgres    false    218    221    221            {           2604    19167    teachers_lessons teacher_id    DEFAULT     �   ALTER TABLE ONLY public.teachers_lessons ALTER COLUMN teacher_id SET DEFAULT nextval('public.teachers_lessons_teacher_id_seq'::regclass);
 J   ALTER TABLE public.teachers_lessons ALTER COLUMN teacher_id DROP DEFAULT;
       public          postgres    false    221    219    221            |           2604    19168    teachers_lessons lesson_id    DEFAULT     �   ALTER TABLE ONLY public.teachers_lessons ALTER COLUMN lesson_id SET DEFAULT nextval('public.teachers_lessons_lesson_id_seq'::regclass);
 I   ALTER TABLE public.teachers_lessons ALTER COLUMN lesson_id DROP DEFAULT;
       public          postgres    false    220    221    221            "          0    19155    grades 
   TABLE DATA           H   COPY public.grades (grade_id, student_id, lesson_id, grade) FROM stdin;
    public          postgres    false    217   4C                 0    19142    lessons 
   TABLE DATA           2   COPY public.lessons (lesson_id, name) FROM stdin;
    public          postgres    false    214   QC       !          0    19149    studentlessons 
   TABLE DATA           R   COPY public.studentlessons (studentlessons_id, student_id, lesson_id) FROM stdin;
    public          postgres    false    216   �C                 0    19124    students 
   TABLE DATA           _   COPY public.students (student_id, first_name, last_name, password, student_number) FROM stdin;
    public          postgres    false    210   �C                 0    19133    teachers 
   TABLE DATA           i   COPY public.teachers (teacher_id, user_name, password, first_name, last_name, teacher_email) FROM stdin;
    public          postgres    false    212   �D       &          0    19163    teachers_lessons 
   TABLE DATA           T   COPY public.teachers_lessons (teacher_lesson_id, teacher_id, lesson_id) FROM stdin;
    public          postgres    false    221   �E       4           0    0    lessons_lesson_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.lessons_lesson_id_seq', 33, true);
          public          postgres    false    213            5           0    0 $   studentlessons_studentlessons_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.studentlessons_studentlessons_id_seq', 1, false);
          public          postgres    false    215            6           0    0    students_student_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.students_student_id_seq', 10, true);
          public          postgres    false    209            7           0    0    teachers_lessons_lesson_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.teachers_lessons_lesson_id_seq', 1, false);
          public          postgres    false    220            8           0    0    teachers_lessons_teacher_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.teachers_lessons_teacher_id_seq', 1, false);
          public          postgres    false    219            9           0    0 &   teachers_lessons_teacher_lesson_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.teachers_lessons_teacher_lesson_id_seq', 11, true);
          public          postgres    false    218            :           0    0    teachers_teacher_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.teachers_teacher_id_seq', 9, true);
          public          postgres    false    211            �           2606    19159    grades Grades_pk 
   CONSTRAINT     V   ALTER TABLE ONLY public.grades
    ADD CONSTRAINT "Grades_pk" PRIMARY KEY (grade_id);
 <   ALTER TABLE ONLY public.grades DROP CONSTRAINT "Grades_pk";
       public            postgres    false    217            �           2606    19147    lessons Lessons_pk 
   CONSTRAINT     Y   ALTER TABLE ONLY public.lessons
    ADD CONSTRAINT "Lessons_pk" PRIMARY KEY (lesson_id);
 >   ALTER TABLE ONLY public.lessons DROP CONSTRAINT "Lessons_pk";
       public            postgres    false    214            �           2606    19154     studentlessons StudentLessons_pk 
   CONSTRAINT     o   ALTER TABLE ONLY public.studentlessons
    ADD CONSTRAINT "StudentLessons_pk" PRIMARY KEY (studentlessons_id);
 L   ALTER TABLE ONLY public.studentlessons DROP CONSTRAINT "StudentLessons_pk";
       public            postgres    false    216            ~           2606    19131    students Students_pk 
   CONSTRAINT     \   ALTER TABLE ONLY public.students
    ADD CONSTRAINT "Students_pk" PRIMARY KEY (student_id);
 @   ALTER TABLE ONLY public.students DROP CONSTRAINT "Students_pk";
       public            postgres    false    210            �           2606    19170 $   teachers_lessons Teachers_lessons_pk 
   CONSTRAINT     s   ALTER TABLE ONLY public.teachers_lessons
    ADD CONSTRAINT "Teachers_lessons_pk" PRIMARY KEY (teacher_lesson_id);
 P   ALTER TABLE ONLY public.teachers_lessons DROP CONSTRAINT "Teachers_lessons_pk";
       public            postgres    false    221            �           2606    19140    teachers Teachers_pk 
   CONSTRAINT     \   ALTER TABLE ONLY public.teachers
    ADD CONSTRAINT "Teachers_pk" PRIMARY KEY (teacher_id);
 @   ALTER TABLE ONLY public.teachers DROP CONSTRAINT "Teachers_pk";
       public            postgres    false    212            �           2606    19181    grades Grades_fk0    FK CONSTRAINT     �   ALTER TABLE ONLY public.grades
    ADD CONSTRAINT "Grades_fk0" FOREIGN KEY (student_id) REFERENCES public.students(student_id);
 =   ALTER TABLE ONLY public.grades DROP CONSTRAINT "Grades_fk0";
       public          postgres    false    217    3198    210            �           2606    19186    grades Grades_fk1    FK CONSTRAINT     }   ALTER TABLE ONLY public.grades
    ADD CONSTRAINT "Grades_fk1" FOREIGN KEY (lesson_id) REFERENCES public.lessons(lesson_id);
 =   ALTER TABLE ONLY public.grades DROP CONSTRAINT "Grades_fk1";
       public          postgres    false    214    3202    217            �           2606    19171 !   studentlessons StudentLessons_fk0    FK CONSTRAINT     �   ALTER TABLE ONLY public.studentlessons
    ADD CONSTRAINT "StudentLessons_fk0" FOREIGN KEY (student_id) REFERENCES public.students(student_id);
 M   ALTER TABLE ONLY public.studentlessons DROP CONSTRAINT "StudentLessons_fk0";
       public          postgres    false    3198    210    216            �           2606    19176 !   studentlessons StudentLessons_fk1    FK CONSTRAINT     �   ALTER TABLE ONLY public.studentlessons
    ADD CONSTRAINT "StudentLessons_fk1" FOREIGN KEY (lesson_id) REFERENCES public.lessons(lesson_id);
 M   ALTER TABLE ONLY public.studentlessons DROP CONSTRAINT "StudentLessons_fk1";
       public          postgres    false    3202    216    214            �           2606    19191 %   teachers_lessons Teachers_lessons_fk0    FK CONSTRAINT     �   ALTER TABLE ONLY public.teachers_lessons
    ADD CONSTRAINT "Teachers_lessons_fk0" FOREIGN KEY (teacher_id) REFERENCES public.teachers(teacher_id);
 Q   ALTER TABLE ONLY public.teachers_lessons DROP CONSTRAINT "Teachers_lessons_fk0";
       public          postgres    false    3200    221    212            �           2606    19196 %   teachers_lessons Teachers_lessons_fk1    FK CONSTRAINT     �   ALTER TABLE ONLY public.teachers_lessons
    ADD CONSTRAINT "Teachers_lessons_fk1" FOREIGN KEY (lesson_id) REFERENCES public.lessons(lesson_id);
 Q   ALTER TABLE ONLY public.teachers_lessons DROP CONSTRAINT "Teachers_lessons_fk1";
       public          postgres    false    221    3202    214            "      x������ � �         r   x�3��M,�H�M,�L�2�t�K��,��2�Ȩ,�L.�2�tJg�Ur�q���%gp�r��e���&'�(���&M����� ��j04�t����O28�J�b���� �}#�      !      x������ � �         �   x�=�MN�0��oN�	Pl��x	J7��D�lL�����T(��i����{?�v_-�8�r�+�6lo�4��ן9���V'������Xp���������"��O�u^GOc�RK�6ؓ�pY1�y��~�=y�Տ�����s|{��n�������(�Q������*��,UF��pHU�V��+o���{"��@�           x�M�KK�@�ϕ#�1���7+�*��ढ़m7cf���d5��&�0������s8�md�-�E��� k �"2��{��e�Ժ!nDӂV
������,����Y����l���+���ƃ�.��%G��EY7k<�{����{���TF-;=
լ\p`���� ����q�~�F����M`�O��'�
;�Q?'�J)��q�p+]O��Aǂ�RE�gc�!7o���S`|�pL*k���t�׹���Q<��Ӂ�9�<&�ד,�~ ���      &   6   x����0İ�TL�q�W/鿎d��9�\E�`P.&in�46݄��{��0�     