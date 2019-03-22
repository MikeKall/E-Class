--
--  PostgreSQL database dump
--

-- Dumped from database version 10.3
-- Dumped by pg_dump version 10.3

-- Started on 2018-06-15 04:44:10

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12924)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2857 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 202 (class 1259 OID 16457)
-- Name: courses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.courses (
    course_id character varying(15) NOT NULL,
    title character varying(80),
    dept_name character varying(60),
    ects integer,
    semester integer
);


ALTER TABLE public.courses OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 16437)
-- Name: professors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.professors (
    username character varying(40) NOT NULL,
    password character varying(200),
    salary money,
    email character varying(50),
    telephone character(10),
    address character varying(50)
);


ALTER TABLE public.professors OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16447)
-- Name: professorscourses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.professorscourses (
    username character varying(40) NOT NULL,
    course_id character varying(40) NOT NULL
);


ALTER TABLE public.professorscourses OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 16872)
-- Name: professorsstudents; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.professorsstudents (
    username character varying(40) NOT NULL,
    student_id character varying(40) NOT NULL
);


ALTER TABLE public.professorsstudents OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 16452)
-- Name: secretaries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.secretaries (
    username character varying(40) NOT NULL,
    password character varying(200),
    email character varying(45),
    telephone character(10),
    address character varying(50)
);


ALTER TABLE public.secretaries OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 16427)
-- Name: students; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.students (
    username character varying(40) NOT NULL,
    password character varying(200),
    registrationnumber character varying(10),
    email character varying(50),
    telephone character(10),
    address character varying(50),
    ects integer
);


ALTER TABLE public.students OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 16432)
-- Name: studentscourses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.studentscourses (
    username character varying(40) NOT NULL,
    course_id character varying(40) NOT NULL,
    grade numeric(4,2)
);


ALTER TABLE public.studentscourses OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 16422)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    username character varying(40) NOT NULL,
    name character varying(40),
    surname character varying(40),
    department character varying(70)
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 2848 (class 0 OID 16457)
-- Dependencies: 202
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.courses (course_id, title, dept_name, ects, semester) FROM stdin;
MA.102	Linear Algebra Ι	Mathematics	5	1
MA.103	Analytic Geometry	Mathematics	5	1
MA.104	Computer Science I	Mathematics	5	1
MA.105	Set Theory	Mathematics	5	1
MA.201	Calculus ΙΙ	Mathematics	5	2
MA.202	Linear Algebra ΙΙ	Mathematics	5	2
MA.203	Probability Ι	Mathematics	5	2
MA.204	Calculus IIΙ	Mathematics	5	2
MA.205	Recursive Functions	Mathematics	5	2
MA.301	Differential Equations Ι	Mathematics	5	3
MA.302	Real Analysis	Mathematics	5	3
MA.303	 Basic Algebra	Mathematics	5	3
MA.304	Statistics Ι	Mathematics	5	3
MA.305	Geometric Analysis	Mathematics	5	3
MA.401	Differential Geometry of Curves and Surfaces	Mathematics	5	4
MA.402	Complex Analysis Ι	Mathematics	5	4
MA.403	Partial Differential Equations Ι	Mathematics	5	4
MA.404	Rings and Modules	Mathematics	5	4
MA.405	Approximation Theory	Mathematics	5	4
MA.501	Measure Theory	Mathematics	5	5
MA.502	Mathematical Logic	Mathematics	5	5
MA.503	Number Theory	Mathematics	5	5
MA.504	Foundations of Geometry: An Introduction	Mathematics	5	5
MA.505	Computational Complexity	Mathematics	5	5
MA.601	Measure Theory	Mathematics	5	6
MA.602	Fourier Analysis and Lebesgue Integral	Mathematics	5	6
MA.603	Introduction to Topology	Mathematics	5	6
MA.604	Introduction to Differential Manifolds	Mathematics	5	6
MA.605	Topics in Mathematical Analysis Ι	Mathematics	5	6
MA.701	Galois Theory	Mathematics	5	7
MA.702	Group Theory	Mathematics	5	7
MA.703	Foundations of Mathematics	Mathematics	5	7
MA.704	 Computability Theory	Mathematics	5	7
MA.705	 Linear Operators	Mathematics	5	7
MA.801	Topics in Calculus and Real Analysis	Mathematics	5	8
MA.802	Matrix Analysis and Applications	Mathematics	5	8
MA.803	Convex Analysis	Mathematics	5	8
MA.804	 Algorithm Design and Analysis	Mathematics	5	8
MA.805	 Topics in Mathematical Analysis ΙΙ	Mathematics	5	8
CS.102	Calculus I	Computer Science	5	1
CS.103	Introduction to Computer Science	Computer Science	5	1
CS.201	Partial Differential Equations Ι	Computer Science	5	2
CS.202	Data Structures	Computer Science	5	2
CS.203	Applied Algebra	Computer Science	5	2
CS.301	Object Oriented Application Development	Computer Science	5	3
CS.302	Operating Systems	Computer Science	5	3
CS.303	Informatics Law	Computer Science	5	3
CS.401	Computer Networks	Computer Science	5	4
CS.402	Databases	Computer Science	5	4
CS.403	Information and Coding Theory	Computer Science	5	4
CS.501	Human Computer Interaction	Computer Science	5	5
CS.502	Advanced Computer Architecture	Computer Science	5	5
CS.503	Database Management Systems	Computer Science	5	5
CS.601	Software Engineering	Computer Science	5	6
CS.602	Artificial Intelligence and Expert Systems	Computer Science	5	6
CS.603	Computer Systems Design	Computer Science	5	6
CS.701	Distributed and Multiprocessing Computer Systems	Computer Science	5	7
CS.702	Mobile and Wireless Communications	Computer Science	5	7
CS.703	Virtual Reality	Computer Science	5	7
CS.801	Network Security	Computer Science	5	8
CS.802	IT Project Management	Computer Science	5	8
CS.803	Speech Processing	Computer Science	5	8
CS.101	Logical Design of Digital Systems	Computer Science	5	1
PHY.101	Physics I	Physics	5	1
PHY.102	Physics II	Physics	5	1
PHY.103	Relativity	Physics	5	1
PHY.104	Quantum Physics I	Physics	5	1
PHY.105	Einstein, Oppenheimer, Feynman: Physics in the 20th Century	Physics	5	1
PHY.201	Quantum Physics II	Physics	5	2
PHY.202	Quantum Physics III	Physics	5	2
PHY.203	Electromagnetism II	Physics	5	2
PHY.204	Statistical Physics II	Physics	5	2
PHY.205	Forty-three Orders of Magnitude	Physics	5	2
PHY.301	Classical Mechanics III	Physics	5	3
PHY.302	Experimental Physics I	Physics	5	3
PHY.303	Experimental Physics II	Physics	5	3
PHY.304	Research Problems in Undergraduate Physics	Physics	5	3
PHY.401	Readings in Physics	Physics	5	4
PHY.402	Introduction to Special Relativity	Physics	5	4
PHY.403	Physics of Energy	Physics	5	4
PHY.404	Classical Mechanics II	Physics	5	4
PHY.405	Exploring Black Holes: General Relativity and Astrophysics	Physics	5	4
PHY.501	Physics of Solids I	Physics	5	5
PHY.502	Introduction to Biological Physics	Physics	5	5
PHY.503	String Theory for Undergraduates	Physics	5	5
PHY.504	Nuclear and Particle Physics	Physics	5	5
PHY.505	Introduction to Particle Accelerators	Physics	5	5
PHY.601	Introduction to Astrophysics & Astronomy	Physics	5	6
PHY.602	Modern Astrophysics	Physics	5	6
PHY.603	The Early Universe	Physics	5	6
PHY.604	Obs. Techniques of Optical Astronomy	Physics	5	6
PHY.605	Extrasolar Planets	Physics	5	6
PHY.701	Fluid Physics	Physics	5	7
PHY.702	Practical Work Experience	Physics	5	7
PHY.703	Physics of the 21st Century	Physics	5	7
PHY.704	Selected Topics in Physics	Physics	5	7
PHY.705	Physics Teaching	Physics	5	7
PHY.801	Classical Mechanics III	Physics	5	8
PHY.802	Electromagnetic Theory I	Physics	5	8
PHY.803	Quantum Theory I	Physics	5	8
PHY.804	Quantum Theory II	Physics	5	8
PHY.805	Relativistic Quantum Field Theory I	Physics	5	8
PHY.305	Classical Mechanics: A Computational Approach	Physics	5	3
CHEN.101	Molecule Builders	Chemical Engineering	5	1
CHEN.102	A Philosophical History of Energy	Chemical Engineering	5	1
CHEN.103	Introduction to Chemical Engineering	Chemical Engineering	5	1
CHEN.201	Chemical Kinetics and Reactor Design	Chemical Engineering	5	2
CHEN.202	Chemical Engineering Thermodynamics	Chemical Engineering	5	2
CHEN.203	Pharmaceutical Engineering	Chemical Engineering	5	2
CHEN.301	Nanoscale Energy Transport Processes	Chemical Engineering	5	3
CHEN.302	Mechanics of Fluids	Chemical Engineering	5	3
CHEN.303	Macromolecular Hydrodynamics	Chemical Engineering	5	3
CHEN.401	Physical Chemistry of Polymers	Chemical Engineering	5	4
CHEN.402	Atmospheric Physics and Chemistry 	Chemical Engineering	5	4
CHEN.403	Engineering Nanotechnology	Chemical Engineering	5	4
CHEN.501	Electromagnetism II	Chemical Engineering	5	5
CHEN.502	Visual Strategies for Scientists and Engineers	Chemical Engineering	5	5
CHEN.503	Quantum Chemical Simulation	Chemical Engineering	5	5
CHEN.601	Software Engineering	Chemical Engineering	5	6
CHEN.602	Artificial Intelligence and Expert Systems	Chemical Engineering	5	6
CHEN.603	Computer Systems Design	Chemical Engineering	5	6
CHEN.701	Transport Processes	Chemical Engineering	5	7
CHEN.702	Introduction to Sustainable Energy	Chemical Engineering	5	7
CHEN.801	Nanoscale Energy Transport Processes	Chemical Engineering	5	8
CHEN.802	Electrochemical Energy Systems	Chemical Engineering	5	8
CHEN.803	Separation Processes	Chemical Engineering	5	8
CHEN.703	Fields, Forces, and Flows in Biological Systems	Chemical Engineering	5	7
NUSEC.101	Introduction to Nuclear Engineering and Ionizing Radiation	Nuclear Science and Engineering	5	1
NUSEC.102	Neutron Science and Reactor Physics	Nuclear Science and Engineering	5	1
NUSEC.103	Principles of Medical Imaging	Nuclear Science and Engineering	5	1
NUSEC.201	Applied Nuclear Physics	Nuclear Science and Engineering	5	2
NUSEC.202	Engineering of Nuclear Reactors	Nuclear Science and Engineering	5	2
NUSEC.203	Thermal Hydraulics in Power Technology	Nuclear Science and Engineering	5	2
NUSEC.301	Structural Mechanics in Nuclear Power Technology	Nuclear Science and Engineering	5	3
NUSEC.302	Nuclear Systems Design Project	Nuclear Science and Engineering	5	3
NUSEC.303	Integration of Reactor Design, Operations, and Safety	Nuclear Science and Engineering	5	3
NUSEC.401	Fundamentals of Advanced Energy Conversion	Nuclear Science and Engineering	5	4
NUSEC.402	Quantum Theory of Radiation Interactions	Nuclear Science and Engineering	5	4
NUSEC.403	Statistical Thermodynamics of Complex Liquids	Nuclear Science and Engineering	5	4
NUSEC.501	Principles of Radiation Interactions	Nuclear Science and Engineering	5	5
NUSEC.502	Noninvasive Imaging in Biology and Medicine	Nuclear Science and Engineering	5	5
NUSEC.503	Magnetic Resonance Analytic, Biochemical, and Imaging Techniques	Nuclear Science and Engineering	5	5
NUSEC.601	Introduction to Plasma Physics I	Nuclear Science and Engineering	5	6
NUSEC.602	MHD Theory of Fusion Systems	Nuclear Science and Engineering	5	6
NUSEC.603	Plasma Transport Theory	Nuclear Science and Engineering	5	6
NUSEC.701	Superconducting Magnets	Nuclear Science and Engineering	5	7
NUSEC.702	Physical Metallurgy	Nuclear Science and Engineering	5	7
NUSEC.703	Introduction to Sustainable Energy	Nuclear Science and Engineering	5	7
NUSEC.801	Managing Nuclear Technology	Nuclear Science and Engineering	5	8
NUSEC.802	Nuclear Power Plant Dynamics and Control	Nuclear Science and Engineering	5	8
NUSEC.803	Nuclear Reactor Safety	Nuclear Science and Engineering	5	8
AAN.101	 Introduction to Aerospace and Design	Aeronautics and Astronautics	5	1
AAN.102	Materials and Structures 	Aeronautics and Astronautics	5	1
AAN.103	Signals and Systems 	Aeronautics and Astronautics	5	1
AAN.104	Fluid Dynamics 	Aeronautics and Astronautics	5	1
AAN.105	Thermodynamics 	Aeronautics and Astronautics	5	1
AAN.201	Principles of Automatic Control 	Aeronautics and Astronautics	5	2
AAN.202	Dynamics 	Aeronautics and Astronautics	5	2
AAN.203	Statistics and Probability 	Aeronautics and Astronautics	5	2
AAN.204	Aerodynamics 	Aeronautics and Astronautics	5	2
AAN.205	Topics in Fluids and Propulsion 	Aeronautics and Astronautics	5	2
AAN.301	 Flight Vehicle Aerodynamics 	Aeronautics and Astronautics	5	3
AAN.302	Compressible Internal Flow 	Aeronautics and Astronautics	5	3
AAN.303	Analytical Subsonic Aerodynamics 	Aeronautics and Astronautics	5	3
AAN.304	Analytical High Speed Aerodynamics 	Aeronautics and Astronautics	5	3
AAN.305	Aerodynamics of Viscous Fluids 	Aeronautics and Astronautics	5	3
AAN.401	Structural Mechanics 	Aeronautics and Astronautics	5	4
AAN.402	Topics in Materials and Structures 	Aeronautics and Astronautics	5	4
AAN.403	Manufacturing with Advanced Composite Materials	Aeronautics and Astronautics	5	4
AAN.404	Structural Dynamics 	Aeronautics and Astronautics	5	4
AAN.405	Mechanics of Heterogeneous Materials 	Aeronautics and Astronautics	5	4
AAN.501	Computational Mechanics of Materials 	Aeronautics and Astronautics	5	5
AAN.502	 Plates and Shells: Static and Dynamic Analysis 	Aeronautics and Astronautics	5	5
AAN.503	Feedback Control Systems 	Aeronautics and Astronautics	5	5
AAN.504	Topics in Control, Dynamics, and Automation 	Aeronautics and Astronautics	5	5
AAN.505	Principles of Optimal Control and Estimation 	Aeronautics and Astronautics	5	5
AAN.601	 Stochastic Estimation and Control 	Aeronautics and Astronautics	5	6
AAN.602	Dynamic Systems and Control 	Aeronautics and Astronautics	5	6
AAN.603	Spacecraft and Aircraft Sensors and Instrumentation 	Aeronautics and Astronautics	5	6
AAN.604	Astrodynamics 	Aeronautics and Astronautics	5	6
AAN.605	Real-Time Systems and Software 	Aeronautics and Astronautics	5	6
AAN.701	Concepts in the Engineering of Software 	Aeronautics and Astronautics	5	7
AAN.702	Communication Systems and Networks 	Aeronautics and Astronautics	5	7
AAN.703	Communication Systems and Networks 	Aeronautics and Astronautics	5	7
AAN.704	Data-Communication Networks 	Aeronautics and Astronautics	5	7
AAN.705	Statistics for Engineers and Scientists 	Aeronautics and Astronautics	5	7
AAN.801	Statistical Communication and Localization Theory 	Aeronautics and Astronautics	5	8
AAN.802	Principles of Wide Bandwidth Communication 	Aeronautics and Astronautics	5	8
AAN.803	Human Systems Engineering 	Aeronautics and Astronautics	5	8
AAN.804	Topics in Communication and Software 	Aeronautics and Astronautics	5	8
AAN.805	Robotics: Science and Systems 	Aeronautics and Astronautics	5	8
MA.101	Calculus I	Mathematics	5	1
\.


--
-- TOC entry 2845 (class 0 OID 16437)
-- Dependencies: 199
-- Data for Name: professors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.professors (username, password, salary, email, telephone, address) FROM stdin;
rwesthead23	07966da4c22210d0ae0354cbfbac0c135e81b992c605e67085e1c9e6d810b1d9448c5d8f53a189abe1664ea347eb1ae46d70806e3f7fb7bb2e7d034473cdafa1	75.050,00 €	randellwesthead@gmail.com	6930517149	7 Rowland Terrace
ddealey2f	3f6678b9495a65cc39b32e56ab1e0706d7eec6bbf394111fa9f0afcd6f51140dafc2d421d778368358757fe84278ecf2fb350477fb47f01252ae4b55548236b5	75.050,00 €	dustydealey@aol.com	6910548554	70063 Colorado Place
sbourdas2g	a9e3edea810552d389738be633c08b762722f82ac99f10772c2e1e59b8bd72a1f117c7adc0824f857853ee8bef43e5a5b7945df578bfb73ba04597a41159bba4	75.050,00 €	shannabourdas@hotmail.com	6910339519	04360 Del Sol Alley
rnavan3b	d05b40c01a6ed4cf9b223182de4c4091a3134b2f92430f7bf2d29b948d4adbc27d3df9624b7aeb45b3fc0812a1b69dda27faddb1a9420e8efe000fb727f6621b	75.050,00 €	ravennavan@aol.com	2107798649	074 Nancy Point
egabbatiss2x	96151561011844d0869a6aae68818b535126e03d18bf6cb087bf7c503f06609bcf234a6fc096cf8aedbe30e8a6aca1d2ddfe1bc27d52d56e01e93b27bf917cc6	75.250,00 €	emmyegabbatiss@yahoo.com	2100218681	36 Forster Park
sbrach31	2909c25df95ba0ca7c2bc0e2aa1b9d3ecdef16c3960df1322c7382bea2aacb575987e87d78219b0f805fb53a87bdad6ee77de6efe96417ce07a393a893a2d441	75.250,00 €	sareebrach@gmail.com	2105313691	594 Northwestern Trail
battreed5t	eaf7e918e71eba5f90907a0ca21d328facb8336751014dbff397b18742da248afb97d6679928ce82b967cab65aa807a2883dc695c15a3f8a940949699fb1720b	75.250,00 €	benedictaattreed@yahoo.fr	2104987897	8879 Valley Edge Road
cstener4l	15a61355ac1e5e945d06266bb6e7b6694071b2d3d2ab82ac9e087cee1d98a2e20f36c41e1adea8e036307dcc1855d91802b0b3961c0ad09fd52f421a4cdb83be	75.450,00 €	crisstener@yahoo.com	2105361148	8221 Fair Oaks Court
mtompsett42	1dfbeab87b0b06e50bb5f75730ac67472c1ef24f9d09aded146c5335e3d0396419e584cf3091bd1a74409ec4fc02f7816a2e0335ce683abb5f4aa78dc63e1467	75.450,00 €	megentompsett@yahoo.com	6991268359	37 Fordem Point
abrierton51	ec3075f8dff6344055e54b2f5865802427e487a1c6a7b7fd5489d519a6f69ea3c5ea9b7c96e080f5636f341f2ac60d15d5c209bb6937704a998dfaa3180003fa	75.450,00 €	anabellebrierton@hotmail.com	6928508461	88422 Florence Street
sguinane7g	73bb87e9ea43baf585158b7eeebac55723b91b16b72ec94503444cc12e202d59d3dc7ce31ee5d9bc609892d3bf697366325388f12d0178a3b9dbf36e2985e7c4	75.450,00 €	susetteguinane@hotmail.fr	6922814236	2805 Bunker Hill Center
acornils38	23b84cd1c9ba65918588c7e8bfd16a7191ad15ca7a67de4f04b614f145a406749a7b818b2cba61731132454bcbe1578004f8fc4767edc323aee4f1e79fdb946f	75.050,00 €	andrejcornils@gmail.com	2107769724	59 American Hill
jliebmann27	e3dcdf41351e4b7d2cc558a96f7c1c6d11d58fc6ada052d59b42f893fa3144c21e311fb6db18a3a2c4bd6dc617dd522306a7352ba216d12aa29b425cb0d5b807	75.050,00 €	julitaliebmann@gmail.com	2105172239	13 Mitchell Road
pryce1l	208f53a66cdea10aa8c499081a7e6210451b4b1648f5e6f6ecfdc9f5626dd327113230856c11da24c0ea9d9e70933ec2d98c6675d2ad4314f646dc5b704e22be	75.050,00 €	pageryce@hotmail.com	2107042411	43 Maple Center
mblencowe37	cca685c31b97325693add699d9502e5cfdcebbfe320080409c2e340ead8beb0cdf85bcac99e49d0d97098c0cde9618afc6444cfa2dd0d8c26b63b9d4e2a54103	75.050,00 €	macblencowe@gmail.com	6989164377	5 Rusk Center
alefeuvre1x	71545eb96da5a8e7ef953db3b26f6e56f5a067503b7773db4eaf7ab394c3088253cbffb53e5058f03f086a754d49643423b60f27b6662a2f7769aa63524cb975	75.250,00 €	aimillefeuvre@hotmail.com	2107141204	126 Badeau Crossing
ccraxford2m	22f2e1602a9109141c8a24e14900f4946474800793fef0d1ddf89223694943138713e0b3adfe9d09c675603d6539b4633aba35097c9fe3deb7f3d05b9020cc88	75.250,00 €	cherrycraxford@yahoo.com	6910611087	5686 High Crossing Place
jhunnicutt2r	b50e67913cc491cd3d96f924cb4a7425f41bb79332bced5ae397aac398d4349f91df0b3e851b26622104c2ef27a50b3328087b031a7cc024a0846170186a885a	75.250,00 €	jarridhunnicutt@aol.com	2100112690	7 Basil Center
tsigg3j	36f7c157e511e8c87101fec3be2ac5131fe60724d2c5562cec3b22768d0aac9c84d4f1b0359a3fbacb6aee4ea10d5ca7183aaf7a8abc2e1f020884a61f95da68	75.450,00 €	tadeosigg@gmail.com	6916701498	709 Anderson Point
proux2c	ebb40602aff8aab79f2349ea1bb88eeae80da7be015e11bbb51b41fc7f8edbd29cdac9c56b32baac07f6e6996b0ad4ba477c1fc89bb4e668956c10aa5866c2b0	75.450,00 €	pearleroux@yahoo.com	6998941887	2 Marquette Plaza
kmayston5y	a8ff849f4f07660eb19b9ba30469befa7474661a5c2aadb4a6a5bdd54ac00e10aab038162c9a3d1c4bcb68324dae3b572b38e3d8755c345b89760c1e66176c43	75.450,00 €	kessiahmayston@hotmail.com	6948899918	5 Linden Alley
cbaden1d	533682234420f9dba1666ca6575c4d3ecf117336c584867a26393356a0e8bc8db18e4a42fb05133853663ec044a46f069a4052e43fefcf9d35f2556476e25b1f	75.050,00 €	cathibaden@gmail.com	6955213153	98 Talisman Pass
gpudsall2t	ae5d85b9c9782a2b5c7d13dc4f9098a50af28e5b14a9790c4bfc53277b516939d89b7410b097a9329e6c15be30c2a8b85fa116359acdc8ced9faa0eb45779463	75.050,00 €	germaynepudsall@gmail.com	2107875801	37668 Vahlen Trail
ejagiela29	e114b59c909bbb8f7e08fdbe94413574763d888faa7c013e2075c6480737bb1ac301b8219e2b072bb4aa40c58c37be9cf168e706551bc4e9d00f24f0104672e0	75.050,00 €	essyjagiela@aol.com	6914497470	6 Merrick Trail
cmuck1o	d4b0a000d2c56ee76be30e68866b7824a0ecf08f3e9c0f008dbb43e512d310d43ea39affb1faf3c28ce073ed769061cad744cac610c2cc4a52c25c844f100795	75.050,00 €	candismuck@hotmail.co.uk	2101419448	1 Leroy Way
acuddihy1q	56930d1cd0075c767715af035c395ee89089c99df94bde7958f695d5ad197e53ce6f54e038a229f7e0febd449e4985cbb5efd446387c8f4ab399072052832b18	75.050,00 €	ambercuddihy@hotmail.fr	2105971477	20 Orin Center
rlaight1u	279dc4096ffcebab97f18b06187635ea1e8f69ba4e365cf0645ed335adff546edbc4e166db9cda7dbd19121d1d6f9e8dab2fffa8023de61b1f8dbee3e0a22716	75.250,00 €	royallaight@gmail.com	2104508179	41 Iowa Point
aboocock2p	995d2a13d92efd64e8f51d451bf081bc5f55c593d8d0fbb85df61e23d771a7d5730681ba412ce52039eea8fceefa0bdb4c6c7a5d020a87cfa51b58f30b9496ec	75.250,00 €	amelieboocock@hotmail.com	2104801565	712 Homewood Hill
fguillerman3a	44ca3c67fb6d9bdd766306c663adcb20f398ae45da7cdf9a8dc62e3a177313b06afda0a074510888127d7134fc0779f58f1e7cdfce51725119e8d3b3b303befb	75.250,00 €	fredguillerman@gmail.com	2103130447	56867 Fuller Park
efulks1v	524a06d273ff667f1a829cc5fceb52b6430b72d6e6bd8d847efbfa397ed43dd7028aabdc6ebd5930b257732d34bbf91bb651b95c28392f98249b2a37e8311f34	75.450,00 €	ellenefulks@yahoo.com	2104944123	807 Jenna Terrace
gsandels3s	1574e1ec1483d6b7b7a5f0f1ad6bfa90889b5c876bfbefeaf382c804073866a428e18cbaa887504b12b1a1376041d7cd9dd4e1669f2124142d26314d9e8ab1c0	75.450,00 €	gusssandels@gmail.com	2103514980	6608 Helena Way
lshivlin1i	9bd889d4b9700051887a8e3a245120919b794b4480bb91b748ea223fc3622e093c0f969c8f3f34c831173070edbf64d75a21d9f611158f102f9eb8818fd03a16	75.050,00 €	lyleshivlin@gmail.com	2103862183	00 Harper Lane
rsandison4i	3d03f2bc75580a93a2a7ccdc9e0f082b7c3b480d9dc43b7c739d8f7c8565d918fca31507d524a54720f4ac7ccb816af688458cb025c13a1897025439977961f3	75.450,00 €	rickisandison@gmail.com	6926583120	4 Manufacturers Alley
jmaclennan4z	a74aaa079ec00242d743d0f008388c13ecb3522c39fb17f4cb96b6d463be01c59876227e07f7f1176a27b519a92afaaca8d7bb91367079b403d29710a088704a	75.450,00 €	jacklinmaclennan@hotmail.com	6935430509	7 David Center
jscutter1e	b2cc9d8f8c5784f2f6ee97da2a20bed28a0477c8b3c7ce63ca584ec78fa3b3c124e151a0b7ba83da4fd261b319b364c0b99bb6a6a73527e3e6cc5e7f6fb1d0f9	75.050,00 €	jeddyscutter@gmail.com	6982424295	03181 Karstens Trail
agolds1s	a27fbeaea2932545cf7041072956ee7af110d52bd1678459eac9eadc4feab7ede03dd95baf9e95096894a1c34d515d6d72ddb76716e00bd7f0b9e9d385ec6898	75.050,00 €	annadianagolds@gmail.com	2103778739	10 Pleasure Crossing
jfyers1a	23744c20269f411d990c73a008b6895bc164440f1c837f75a3b4d565bd4b64868bcf5d88a2089cb06adbbcc13a7597afa5ecfabbf5d0990f1705b509a69498e3	75.050,00 €	jarridfyers@gmail.com	2107227575	76 Oak Center
chanstock1p	0de23fcd99e954e627efd779bb4e87c4368b97956dd11116f678191a213a6becc48a644de5cda839ca72155f11946b324ee73cd91dc17510363883ed76b316b6	75.050,00 €	cherlynhanstock@gmail.com	6978468887	54107 Lawn Park
alundbeck2o	6b4eb4a885d9bb09c575069bc9f9176c80954aac6d7a52fa4fb9fd70d80fc17c044e82c24d46f65b58acfa5eac1a4c61ad7175d8ffee22b88d9364b8ff9f39f5	75.050,00 €	adanlundbeck@gmail.com	2104746695	12 Reinke Trail
nelger16	bccf875746aedfbd77f51b33c9b00d62add425fe4141d97c718ec9bff9d89d9428befbff9ff5e73e7d4332426fe8a6aeef864bfe4d7b574f552d76dd21b660e4	75.250,00 €	nikolaoselger@orange.fr	6926112544	49 Dayton Place
ariditch5q	ba0a287280d62a6b802092f8b9c2431aa519e076681d17b9cc4cfdd431c1e5d053f3c7fa6661f22e900226334bbf005fe73befe4c3a9baaf55715816828ff3c2	75.250,00 €	allynriditch@gmail.com	6957143494	9 Bunting Street
jfearns5w	8a081372c238e6c5e3f78f934168b0dd481a3f9a4d179aa0e0d6de6f400cbe227e984017f70aacda2d891fc95edba3cd235d9a25a445daf64bc1210250bd7edd	75.450,00 €	joeliefearns@yahoo.com	2108126912	4 La Follette Point
mcapun5u	f01371067bc4043dfec25a444a3aaba60282d8bbdf0b4bb645ffe8c06d7dd4c1edd7a3f53eda042927c6923446e37d035c34f9007b4712ed083816ba98269046	75.450,00 €	maitildecapun@gmail.com	2103698090	41999 Heffernan Road
lcapes41	680173aa17c22e3b7546a852ae14355b0cf81638ac63d5e0818cf6cd75def4d0921d9189f5c9633464f16c8d813c62f9e1a8f792b5a82217b5269d6d8af97158	75.450,00 €	legracapes@yahoo.com	6975208550	20 South Place
knel4h	169297eeac6918755473fb0e2043ff9b6767e6c94f36da37956da1a4567133a209e83d14cc8ea8dc21390e4ad52cf7d0a3b36d0b0754dc229c2e9a0a9ffa1439	75.450,00 €	kaelanel@hotmail.fr	6935655789	09 Lunder Circle
sgrigolashvill1f	9f0af65293faec68fd001204d8fa61ae47c4b939139544e5d80f8adbff0515d864d7e3dc174d64599f5db645acef25c89c773f727ed8b40d8da485237107cc91	75.050,00 €	spencergrigolashvill@gmail.com	2103054867	24817 Monica Way
vmaas1b	b3a83408727a975611bf0270adec06dbb78f6ec8222a572b6ced2adfa3d0e649e6a6fc77f22f19e026f18cc368a72ddb5ed6228ccbbaf2b09c6d7fb6554ecd2d	75.050,00 €	virgiemaas@gmail.com	2107545795	76223 Montana Circle
tscurr19	9efe20ce3c156a3131380bc2307aabbf2df305c35f2f83e330127e8c2da47da4d750cff3f745b64ea9995a051c060376a91a9b5e77050803da12ddbc1b093a05	75.050,00 €	theadorascurr@gmail.com	6936959666	961 Delaware Parkway
hlefleming2n	f09af58d0c38076bc8e196c73883a9e06a6ec2042815a8099ab42b6d9a37d588d2506f1a824f75e6e85180a3ba4941d4c519aa01b66ded3c441e8844ffa8e1e2	75.050,00 €	hadlefleming@aol.com	2109661742	340 Banding Point
mperham3k	e91d6a244f4dce261047e1700d279657fd8b38090d77120091e58ade3fb6a2306145ffa3f1d82ccbb51c67dcbdf7d939dc407abf328a9ae16778ae214d4183c8	75.050,00 €	malinaperham@gmail.com	2108544645	96383 Grayhawk Way
shinge39	9191cb84db0cd0c7cb79f60b412731d686b150f00cf278b7a07aa24db3be3f60f729db8dd4e7998679c473bc25c009589be592cab11952a6bd7eeee6b9bd785c	75.250,00 €	scarletthinge@gmail.com	2105210332	5 Helena Pass
lfishley18	d2cc1f2fe300b6ebb57b9e8e5ec01bcd944b76323e076aa472acace3f363a9c9d82388e203fbfe7bf8360336ac3c4350cb4d0f1effbab950026c8d5a8ae2471f	75.250,00 €	levyfishley@gmail.com	2101078842	44 Ilene Hill
tacome5p	ba0ea14ca568525d0961c5c170273ac1dfa87c1235b2d326ab0bbbfd3e85672fa0dbbee6722077b1ded3a933f38f33459f9b2ecda1666482c836b6c588ef2bc2	75.250,00 €	tobitacome@gmail.com	6902147319	3 Fieldstone Drive
cbarten53	a3254d016421af581c48ea9dfaa0c606559fcf3203155e56a7f603148a078ced4ef6e3f53c1696da803cf52607e0ceb4fadf1166f961ee16b32a6bda0cf0f001	75.450,00 €	carolinabarten@gmail.com	6999401377	024 Loftsgordon Hill
gtuplin3y	5483631a6ab69c70cd21906b90ed436b69b9e7690ba2dca2b4bb8ba30d8899d2f7aca0e124a1659b99abef2e3c11f40c0228f0d7a21b8b42d6b9c968b9274f34	75.450,00 €	greggtuplin@aol.com	6937829225	06 Kim Street
tpeacher4n	fde52f0add46045b63320c20424be70ffbf1ff9d3c6e7dfe43a884f7a17125af60af125c93d843eac9cbc91d3d3b01af5e24ddae36037f763b831fb800e68502	75.450,00 €	tamarpeacher@gmail.com	2104089400	7955 Delladonna Circle
ktock1c	48a1e64e6066845376995444c99994d01d5c23d97cdc2dc3a3a20a3fcfdf97d80ddb98be0bdf34aaf1dd1a931b3385a0096c7b13d675ec6748031268c3851677	75.050,00 €	karitock@gmail.com	2102727376	0 Del Mar Hill
dfarington2j	375aff26c51ebd6a80a3d3446f6462c959acccadb00d112496bd3d84eea314fa5d067e2dc37043ac7ea05365ff277aebae5bf6ed2687e3d5423ddb4f53dfe663	75.050,00 €	doreyfarington@gmail.com	6955987393	1028 Hayes Alley
twynn20	e7accfd5711c962f9c7cdd8f0ff21f6692dbecff32330f3ad90236e6d3e0751b4b2fdcee39b8ac3d9f0326ee848bc84c7a4f5b97010a052dc6a9462bfff1840d	75.050,00 €	teddywynn@hotmail.com	6989927007	21 Rigney Drive
agregh17	05a0686ba0dc069ad88665fe6ad5c1681a0bf3359952d5788bebff1d841268a9bd89e6ee739134e415214d2a5503d5c2b604553a3a43beb1b833829e19617de4	75.050,00 €	annabelgregh@orange.fr	6960489216	9345 Huxley Point
bfosbraey45	419c0e07c895264d61185944efec58aa5abb8291c38d34dd0b0fdccaff1e72beec8e26600b2ae4501a855a4b8ef00b1d8cf3252daf2ff3c05e585f2a0a7869b6	75.250,00 €	bertiefosbraey@hotmail.com	2107351019	298 Blackbird Center
kalastair4g	cc5d5acbcee34b7421c45b304dee3436256a0435c97bb6e43fadf56bcb572bc15e11560809e1a8b99dbf256ed645397ca5c69f385730b054bde8992f65937a46	75.250,00 €	kristoforalastair@hotmail.fr	6943156137	9016 Annamark Drive
dbelamy58	99dff2bc0e1dbd1fc59dc69020422ef13fdc7561a78031f210c0ab7f9b563824ea63f3fbd0019e5238126865bf370b2d3b2af54ece77d19f2d03074b351982da	75.250,00 €	dougbelamy@gmail.com	6920662774	78 Canary Pass
bgraser4e	e6e0815ff51573329c696021ba5518e7a0e712e8fbe7a5b992cabc775a1658e8c4ce67ea59c849ba244e2895aa3431e51d333b004e3d5e1750a9966362ff9f20	75.450,00 €	bartramgraser@gmail.com	6935403950	949 Declaration Avenue
glockyer2u	5b9e345741290d9ec5da6f68828e70d85f7efa8fed988fe5d89ffcf5b7a1bc8a9480638abdae64d99e0b46fa6675c8f2910d5e1e42a5fbf00a0dfb2b6657158e	75.450,00 €	gericklockyer@gmail.com	2108982167	336 Mockingbird Way
fmayler2y	2209ef01ee47f4a35de3260993b1d2754e2cf9515c6976ce6bc1d4a2fabdee33be575a16698c237aa23cfed220d9b11e115842ef67942267d12fc3466973255e	75.450,00 €	florenciamayler@gmail.com	2101101526	93 Onsgard Parkway
fboyall56	82fc1df2500401b39416164173ab91d12be3f3a74cbc15e9d0fb09c4a7cf9f893fed20e9684bc94dc0d007309adf7c38737c6f1e20a1259e30328e927beaac57	75.450,00 €	fidelioboyall@hotmail.com	2106695978	285 Lighthouse Bay Parkway
oboshell3l	acc9f5d0dd5a2fe8a67952d9176e8de20eb8b4d2ca650a51d7abf45629aadba2de5cd8707d1db1f154a4295b3afcf63676f6d68a55756c858b4d3612f0adf2f0	75.450,00 €	odeboshell@yahoo.com	2107314090	171 Lotheville Parkway
lybarra22	a2cf53fcfb37f83fe131890a8a4a191a6f323f12e150cfcb74a88b9f4326c18751fbcdbfa61a56a21bf20378c29e8517cc2d057aa5729414233d14f60b31b14b	75.050,00 €	leshiaybarra@hotmail.fr	2108658187	3775 Emmet Avenue
gmontez26	2ce6259e582e496a233ecc6d1210ea2e5295c711093a5587b8abc9e782cd2f5ed51a15eabef3ea695b9075dea57bbd84c8f0ef20d51e2eaeca478841f77fc83b	75.050,00 €	gaylordmontez@yahoo.com	2102557556	7 Thierer Point
shenningham1n	0b9e30fadc1dff436dc9eb6da03965ce523c07aeb56f441b171200fe82850f67fde374ec638e7462a117a4750bdab6c19c2910e2ee0ae282281977b949e02cfa	75.050,00 €	saritahenningham@hotmail.fr	6951558162	7 Lindbergh Avenue
jfoulstone2w	016ac6b79c155ef7fe0b4a4530a6aece324623a84e4c66c5e5504b8a511bf2e7db09aa537dbc88cd478fc18b395174ccac79851e284a2ff1962e9d35bb5cfef6	75.050,00 €	jodiefoulstone@yahoo.com	6970152816	4116 Lindbergh Road
hkuhnwald1y	3f65ef9145e940f52ecd43a3e429f84e0fe8f7a5a7ea4321e903eb1e11e68a349d7a6f0a589a12e5f33e4d3b19f59aa46120e7c66b8525402aa00911bd3480a2	75.050,00 €	hanniekuhnwald@msn.com	2104757456	98 Mallory Hill
fbarbosa5d	38f913fd210c0f2dce40913baa93ad64e154635827e213ff5f3865e2504697722eb1a08c789ad02c5ba9d94a6bd6370dc2cbad045d0148c49700764cf180cda2	75.450,00 €	felixbarbosa@yahoo.com	2109796237	9942 Oakridge Trail
nclaxson5i	dbaa406e19d3f469681e75ce485e088e314465b6d6ed56e35483619c360671ba7197a4581c47c24353b19ad3ab69282af5e548f00f1619d52e8b9c6749a1b893	75.450,00 €	nessaclaxson@wanadoo.fr	6983712747	6217 Di Loreto Way
lduffit8a	635c20368836e78aff4f4a6d40b9cc8548df1d1c9bc105baf32f2643ba862ab7738516039aa3ffc0de3f821e4f03ba0671d2cb0560725adc4597e9270f8a5c71	75.450,00 €	loralieduffit@gmail.com	6927742083	8 Manley Street
mgyppes8e	dbd4cfac1635ecd7a3d40108506108e94ecc21e46d32a5df58b0b801c71aecbfea1a71650e3eb1c92681b63168a549dbda3980b8113206829789efc437f2eddf	75.450,00 €	mattigyppes@yahoo.com	6961589294	781 Delaware Road
civashnikov1j	a8fda8f9430033138e08318cdf441571060dfd701efe43a561bd7d7666c1d5c0dca1d9eb7e2d86df65a4ab4df039f5ca34a064db96d4c718c5edc71525170ec0	75.050,00 €	claireivashnikov@orange.fr	2100306649	53047 Cambridge Terrace
cunderdown1t	79b3f17c00e278577fad086662f4e0564080538666aa40751e6920f0216048ed6bc029f55a14ffa37939d95d43c262d91d0e6c775acb4ae2f1db538d2496a2d5	75.050,00 €	chryslerunderdown@hotmail.co.uk	6923656047	41195 Sage Circle
ewatkin1w	eb71c447adc87bb6991d90fce1bd785694dadf0d3daf90d26ff6b1a104e23a8d843cde0af468406045c11c54b712cffbca734fa6ed55b917c39a30951c9f867f	75.050,00 €	estherwatkin@aol.com	6998598356	8 Corry Junction
abottoner2k	0b786df4fb5d6f67f8ee5d8aa702e3cd308f22ee4188d6ac10afa815766a819603e2c125a88ff42a47e4a92b601d7869fba71851361795d25b712ef8eac426b9	75.050,00 €	adamobottoner@msn.com	2100382265	312 Carey Road
hhonack24	a443e2a718bbebc90d6d11f51545474d4edba416b98ea6effc1aff973f005f28e8afed5d62e24781a363736fe2b4b7e29fc2c84880edd82d89c83fe4a0abd2ad	75.050,00 €	hodgehonack@hotmail.com	2107565269	40514 Jay Alley
tjobson3i	f801fa92aef075fb25e933721787da851084ed2647a1e2f482948f24b1bcaf5c0b21d52c4ccff40b838b25aac4e62cea5a457b6fe62f2676d7f015cafe56c0a1	75.250,00 €	theojobson@gmail.com	2101545752	02134 3rd Parkway
rboliver5r	40eb9a3c4d5c93a61ba3f456d81f2764da95455d2f937cce2b4cf91c0e7ae5185f3a70443d72c70bc7428e8027d1beadba29c11d50f0dddd8d8734643c6b9d52	75.250,00 €	ritchieboliver@yahoo.com	2100823075	7 Shelley Junction
apablo3o	0d1243ac9dfc4c3aa62654309b2eb1e2188306dff6c0ce15f320b91767acf212c8d83171454efc2dbaa284d769e4215cfdababf602829c8ddf76d43705cb05c5	75.450,00 €	adipablo@gmail.com	2101476869	33134 Lyons Parkway
gsanbroke3u	79b89a6139091e29b40817030399d3f96be9db365b756f8dc703cab7c2320581b01cf704d999b864b8e0d85c2686ecf76b47d415a07083c7534afeb95d45b1d8	75.450,00 €	gilliansanbroke@hotmail.com	6915412339	5168 Jackson Hill
jfulleylove4c	cd3f18662762ed199bfc38a152b95f323444c41913a5414de3badac93c1f5b1c7026d3f4e7e830061bb10a472fd531f72de9ccdf542290e293031a98fc23d430	75.450,00 €	joyafulleylove@gmail.com	2106928442	728 Sachs Parkway
ghair55	1d75acc2c687622fb72e173f15b7fc1a7e86e095b3a0e658a14c76347fd5d83e23712a56925bd490578c3e1af7b0b6d150a7897de14c19dd30f0b2fadcf31a0a	75.450,00 €	gaelhair@gmail.com	2108516804	45 Prairie Rose Crossing
bredborn34	3210ac9181656565a8e283d8230ba6406043d1408d1bd9a26d6d82d73323c3b551dde9ce49dd46993f3695f8ad4cdf8ab7372c32d3ff0816f016a3836cf524ba	75.050,00 €	bertiredborn@yahoo.com	2104252272	78544 Ridge Oak Court
pblakeden1h	55436c5b9e7cf51b32d9f93ae26dac140f5b03deba345e9e9e973c723b0e14904c571fe9b8fa13de92226e90796f6c64943f80bc7644e90e51962714f2baaed8	75.050,00 €	penblakeden@hotmail.co.uk	6955614902	0 Erie Point
nschumacher1k	c4808f6ba2953a19cc87d3d9ab1af7b7d0ede8201b61da9c34f16b4b7945ab9d7a3d870784ba00b6e29605ffeb8f04c4e237de16bcb6c352d2d575aa4be80d78	75.050,00 €	neileschumacher@hotmail.co.uk	2100547124	20 Bluestem Trail
ahedling36	cc74d0c997cdbdcba907b7da96b4c278fdf0f37cc28266e431f1330e3c46237e34344036c0d72f35dd79a73f89df173c6134153184641685ba4435b6c1b03cab	75.050,00 €	amandiehedling@gmail.com	2100885099	62 Mayer Trail
pklasen3h	a9ab4f33939f50ad48839e88eda0e70dc57f455ed7155284cd0cf47e0c51c65a594c220af8948a827bfd39afefdeafaac72f3ea7f280d9a179f22aeac32ace98	75.050,00 €	patriceklasen@hotmail.com	6953733477	15531 Messerschmidt Court
bcodner28	52466b48430d440c0d93015ad1a752714044de5fb196bbc825bb958204919677cfd6be18f990a09b4608f2fc6eb7f9dbac85b3c080ee560ac40ac3459106d859	75.050,00 €	baricodner@gmail.com	2103203635	27 Village Green Circle
tderyebarrett2l	999d5f8cca17784f8b2884733d1849527cf5bd35deee61a2c1a61d1d7483192c6c2bc9a3d0939ab58056ea13a2bc7c3b759bccb0672dc7405c7c1a40185bc686	75.250,00 €	trudaderye-barrett@gmail.com	6921862697	78165 Reinke Terrace
gcrigin2q	24a291016d01e1ed8f5249e70c01e5e98817ccac40af88891282a4845f2be3017e8f3a8c097bd04ae7918a1110319ee09d38c3f6c82521003f4ae80548afaed0	75.250,00 €	galecrigin@hotmail.fr	2101643758	68 Sundown Crossing
xassaf25	e193288a5c535cc6cd45cc279630a25edc5a56cd274d879add5324f179115512692dc3347166357b02a85e9d9f77def07a47143c6c57f1d741e1212e0fc057ea	75.250,00 €	xavieraassaf@gmail.com	2104009593	821 Chinook Pass
sredholes3f	6adea21bbe069e8a15f9f32ced84a13d5199917ff88276d2d7de7676ef2221fed406d734bbd953a3e33971a3191761637d8812a036ac581169f06422cbf41db4	75.250,00 €	sophieredholes@hotmail.com	2104860219	16 Sauthoff Trail
bbernhardi5b	fe3f5709dbf30ad5d757d52c12d16b5bee2eac36df2a31d43932ee58a61a295487b3821910399e6679d27399a44a68e27386e4d6dc897597c6fb89ce7523ae4b	75.450,00 €	barbettebernhardi@gmail.com	6942103407	141 Prairieview Lane
mglasscock3p	0f1b7545f55d44bfe28099f1837300ad7cebd2d05cd035354af29afb165c6b6156bbde6e9453cc678c587d3fb964ad39fc738552cd9d2f41fdcb9f70156d946b	75.450,00 €	marnaglasscock@msn.com	6942096481	18204 Bluejay Drive
oclampin49	2e2aa9785050b8bebcf2c516072c0fb995b184914d13e687e995316d3c4591e223ebc80686d4b74a0192e1afd30b1874beb503d2b29ef754540739070053c197	75.450,00 €	othaclampin@gmail.com	6947144776	38448 Melby Trail
tdible5h	3d24547ba8457f42bd6aa9e440e6e1992ea6e50888979d75986b835c7394a7ca484207a87af210bfefe553b517018d5920baa8d06d1395ae04e82c75d79faf9f	75.450,00 €	tallydible@yahoo.com	6938041861	74019 Weeping Birch Alley
wyurkiewicz4q	ad1f6fc9d4157209f1e913a15cd46266ce50be2505c6f6cac8a2c1631e848dedc8ecee5fba5e58517ebc4c736886285575f725e8ed6f820560ac8febc1877f35	75.450,00 €	welshyurkiewicz@gmail.com	6933453254	8 Victoria Terrace
gcowndley35	d30a18cd46b9ca14d1b79cc033f2200ee5103d1c51101dd561ebf098da9970039c12b61f4c0457dc6a4501a4f01c24aabf79b585b8ff7dbe34353c9d661b1514	75.050,00 €	giffcowndley@gmail.com	2103888450	1440 Boyd Street
cwakley1r	68660ee1206bc8093a3267348093336e416031fed19559a1f6b21b9126488c0f9ff00c09f1c02d8ef340bc42951674aa46a64dfc27a50aef4e3a9193f0ccc8b9	75.050,00 €	carolynnwakley@gmail.com	6909124610	2 Hoepker Crossing
vdoumer2e	d262f0cd97fd7c4783c802f22b1a474003e93a6abcbec3c5eadfa7e739676e6676a3e4c85f475145e2a6b1f9196642947e7ed1a7cb52b98b605fec8ece9746ae	75.050,00 €	vassilydoumer@gmail.com	6921253990	559 Eagan Point
dhassell2d	b133e1d890852d046a92081cd17816374b91896759a660df87437e80aa815866f7e6277ac307d292ff3e293cc44eaab3fff40a6ee5eb72304ed4d5a0f9d03a6f	75.050,00 €	damonhassell@aol.com	2108596572	29 Northwestern Trail
kknipe2i	e55d88a529763f55f5711cc007ad71ca86bf677d45a1c25f0a5ccc7a5aab933a7ea8e3660bc418f812b8c7491870b32a1269359660a14664c1ed9c81de95aed9	75.050,00 €	killianknipe@hotmail.com	2101826646	10 Harbort Drive
abulgen1	fa08ef51b95206a348a48dd4ba651e73d3f81f320176267a02070b0eaf0864c357bd2a496498f8f58c4a9738a40855e9e0a31e274bf6f1d8440627043e6b644b	75.250,00 €	auriebulgen@gmail.com	2102859381	14 Fremont Place
jfehner59	e57f5a908435d23e9b49f7997b7ba5a50362fc2e8149101758213faaa69765c535de0d5e628e92d26f043acb6d6e3c94cee154adf5b4a95ca87cab7ab4d41493	75.250,00 €	julianafehner@hotmail.com	6941564380	26204 Utah Park
gmanach5v	5aeceb79d6834aae5c5b9c6b94331929681eb080e04e0923f41789b56df3009be8b8876e0f88ab161f8172a3d67fb50b02083d34101199322c4edabd1d760e1b	75.250,00 €	galemanach@hotmail.com	6909054147	1678 Westport Way
uminichi5n	b5b88f77ee11e28c911ebc0af9758d42f94d3d0f86eb76f85ee6737e552581ec95e2f5834bcf1f3b5dcb27c4724b14d8516200dd61c7fa1ef686d4075c59aa64	75.450,00 €	umekominichi@gmail.com	2100552494	1666 Coolidge Center
ctomczynski3z	4b099da7af438bd0d5446cc4005f84ab997e2531dacdeefc142553a4580b4a64964ad5137fbacfef4260bab97d3b54b2dbdea5ef8d01661511a6336e1138310c	75.450,00 €	camilletomczynski@hotmail.com	6948790433	61355 Knutson Way
gruperto43	7607a76d75d395524697f80e5f34c6a1542b5236d57523d8ce113dbbcf6b35dd873602e62d32bd21026959cf0825ffc25c0eeeddb41a42c866eb1f5a4e055043	75.450,00 €	gunruperto@gmail.com	2106873359	31 Garrison Parkway
ebarter47	01633a8249e0c9c2cac9833cb6cb0ebc9b4efc8a30c68fa5f10a4e63f5a33d6184b7d90356e284ad0cb09adfe73e92b164b7055213826db5cb1b8bcad7cf67a8	75.450,00 €	emlynbarter@gmail.com	2104131334	6 Beilfuss Plaza
cmytton57	c7d2a6f4587e24e0ef5add59ae1f8b275801c608ba273ce4506f5e654bac111de116f31d83296445f2f06a039a446e3819a83c313465efa7484b13ebccb348b9	75.450,00 €	corriannemytton@gmail.com	6946732501	16 New Castle Terrace
tmacleese1m	3e066af36359458b207da2c7ff5ee94719b9030591d09215d7b701c83ed4ecab54877a1bcbbfe84c91bdc10997638d5b9d4a92f573c44940ad873ec5bb493a37	75.050,00 €	tracemacleese@hotmail.com	2108495566	2 Beilfuss Street
fcourtman2b	f67a2615ec7187f0c582b9593da2eb586db15e1a290a21e7150dca59cc3a7c56a40236552932160ec81ed952e4540c78bff25627db6a75bebe5c016c9238d09b	75.050,00 €	fionnulacourtman@hotmail.co.uk	2103579060	965 Grayhawk Center
wheskin2h	f9df288362f025ad40a2180e6ee03d952ce21cdfbc6fb4094b7a574e6afe16660d0403da98300bf85d903ee3fe5f56fa88075036c7298a72621bd5145ea2e1c8	75.050,00 €	willyheskin@yahoo.com	2104780549	3 Rusk Point
tthacker2s	a5bfac27f75040d62dafa8efe8a33e731e4e237652e5ae50c4db09a922b3133d2f50e6f181bf566d220aaacefcb20e9da9fa1377b88cb9ed03d9cbdae23c8c34	75.050,00 €	tildythacker@gmail.com	2107643618	17 Fieldstone Circle
wniblo32	08ca4608f57c74cad26d5adb16faa9505149128b1ee4b128666fc99cc186d8ace52f8bb7bb3690a66c27ac9cd24dbf9dc83281a2c2eab59015e873a000fc61fd	75.050,00 €	wellsniblo@hotmail.com	6917019920	041 Veith Circle
bduffitt3d	b511ae9fe41692a0aeef8842f415cb6186fd47dfd0647cae54dbce011f08efd410b3b3f5590657b76778a1b3f966472e980cb9aef3853b7f7a14c02f6a771393	75.250,00 €	binnyduffitt@yahoo.com	2102783109	1357 Canary Avenue
mmartynikhin5a	ad2df883b89bf9cfd8292f5946d77fc5e97764d66e8d44e9b479e38b7f803f170df20c691e9880df2ce89a08351c36b5168083f2e823a3b4f4d05860f3cc9850	75.250,00 €	maramartynikhin@gmail.com	6982155859	719 Rigney Way
sfulkes5x	c980d57b04630fe7640f20d71445454b076c6cdd745858c2eac56e3ceb6721e73a3cee1759d849f3cf3259e5e39ac177d23fa4ee861930dfb744d56938256925	75.450,00 €	sunnyfulkes@orange.fr	6968375000	2383 Judy Place
dtorricina3x	a2d928a67ad54a52638af948246b21bfee3bb94ffbe69060f174eec79960d41179829170b149d46c91450058a76a74dfe99ed398a342293442f7697c0b93133f	75.450,00 €	dahliatorricina@yahoo.com	6948728549	77 Jenna Street
llergan4f	a3a1b81210b80a9d35543e8fbdee086bf4e36bf372f546d6d71732f1241e2269565c1756ce112fcde1f68db5ba666cbf49f41f808e191f18b2bb3867699dfb07	75.450,00 €	lyelllergan@yahoo.com	6997302153	82 Graceland Crossing
ahamshaw1g	0c2c993d7f56019ffae1acf17230e50cb6503e816d0cd9eeb787c9e06d50590644d25333acd2ad5fb56781f344e3eb7149868d9a5b9d6848c4a873273884c5c3	75.050,00 €	asehamshaw@gmail.com	2104853412	352 Magdeline Park
ejeavon21	c00f6c187ee6cfcdd0bd3a38d6107afbd983306aab3ccd86e125d96e69eea37155a74c0ce5daf5ababd08de721402972ef5fdf04b92e677207762241946b0703	75.050,00 €	evangelinejeavon@aol.com	6929676290	810 Mariners Cove Terrace
poldknow2z	51c67e238a037752da6b83454539d55865bc3785b632dd27a99dbcdd876b7235690100c881681ac032110841ddbddb45b83b7cace28e5c8297808318dac40d84	75.050,00 €	pacooldknow@gmail.com	6935184387	214 Green Lane
cdahlberg30	64132402358223282eab11511f4d394148ee8e4beebc837cbf0c94e1f23921c083e76e8fae9bff4896aac6b514f2321c2a736638437be38d5cc90c6a402f74c1	75.050,00 €	corabelladahlberg@gmail.com	6946081457	821 Stang Hill
mpybus3c	ffa0e03e8570653faa42908478d6b584ff34229b34b9326ef9e7b48f513ae5b7fdfa98ffd24a201ad22ad4c01b9263f5328e16d820a477c950db4563470d7aeb	75.050,00 €	marjoriepybus@hotmail.com	2104417138	79337 Shopko Lane
ddebanke4w	e103a8d21188620b4c8f1c1714791734b676f367feff11af72f7e3518a6348ec9c76d9ec30b8701f294ed9a147dd46de8412713b806049f04fcfc295205c635e	75.050,00 €	daricedebanke@gmail.com	6963703589	331 Hauk Way
dkeiling48	1bc323cabf96bbc4cf0da9ac655b7a4e73d881fb2306fa5842678958925a875de447ea0a0c560f24d81b95652f156d842c901ea15c356957fc5b86cac5ef6310	75.250,00 €	deweykeiling@hotmail.co.uk	2103817842	65 Redwing Center
mragdale4m	15adc4de59707324ad17323dafe268b75d538802d0b94c7b76918e8df55cb8da5d14ab630ff3b4cdd53b2fcaaa99adf1f9158c2fc2470ccca2992ce8bcb86356	75.250,00 €	melonyragdale@orange.fr	2101975997	0714 Shoshone Road
cgiffen4a	75490c246c104a9464f52a647be484e0110df287bb0e7a2d358139f0f55598966167aab9fa042bdf1bf3c521837100d73b1d85aa3e9a0dd4f474e532bdf9fcdc	75.450,00 €	cinnamongiffen@gmail.com	6931679566	48 Briar Crest Parkway
scansfield4b	596cc5a4d1dd536741fc16e4a9cbbfed687b7bc0795382d0f4733ba64bdfab4babfd57009e566cdc28f3998b9925c07fca5e795a3675522cde27135a491377be	75.450,00 €	skyecansfield@aol.com	2106270992	220 Oak Valley Way
ggethings4x	6c02806126e089ab73c224e2edc2860b4d13577664c2d2b3842e92704bd9738d1c52ae4f4256d3e68826c6a41cfdac5507a41712d82e35e9e6c9b5dd43c7f036	75.450,00 €	gilburtgethings@hotmail.com	6915500496	53995 Ruskin Place
bkroin3v	56dbc06881cf9f88b19e7d9d24282c2b9dc78fb659beabdf7f62d48da34f71710b6b101be42df58e93200d5d0356f58412095be0cb0a069ceb11b45498afcd19	75.450,00 €	bernettekroin@yahoo.com	2109421825	492 Manitowish Point
lromero83	f5b1949db1c3ada88038cf683c7b2a1a06ce5d153396f72b4cb8509dd6f42433abaee8591655548bf6565c4fcc60f9e83dbbae01016aabf51c5063cb0750bdbb	75.450,00 €	lidaromero@msn.com	6929578887	9255 Claremont Center
kcragoe8c	86ef2473137f1bbbf2d6e68e55cd8b9f959c831e5394a07c178ce9ac7b053f38d74888e0d91f5fbda9d4556aa0914915ea6abfe778725729da64239f8d0e665a	75.450,00 €	kipparcragoe@gmail.com	6928953922	66252 Hayes Place
\.


--
-- TOC entry 2846 (class 0 OID 16447)
-- Dependencies: 200
-- Data for Name: professorscourses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.professorscourses (username, course_id) FROM stdin;
civashnikov1j	CS.102
rwesthead23	CS.103
cunderdown1t	CS.201
ddealey2f	CS.202
ewatkin1w	CS.203
sbourdas2g	CS.301
abottoner2k	CS.302
rnavan3b	CS.303
hhonack24	CS.401
egabbatiss2x	CS.402
tjobson3i	CS.403
sbrach31	CS.501
rboliver5r	CS.502
battreed5t	CS.503
apablo3o	CS.601
cstener4l	CS.602
gsanbroke3u	CS.603
mtompsett42	CS.701
jfulleylove4c	CS.702
abrierton51	CS.703
ghair55	CS.801
sguinane7g	CS.802
apablo3o	CS.803
bredborn34	MA.101
bredborn34	MA.501
acornils38	MA.102
acornils38	MA.502
pblakeden1h	MA.103
pblakeden1h	MA.503
jliebmann27	MA.104
jliebmann27	MA.504
nschumacher1k	MA.105
nschumacher1k	MA.505
pryce1l	MA.201
pryce1l	MA.601
ahedling36	MA.202
ahedling36	MA.602
mblencowe37	MA.203
mblencowe37	MA.603
pklasen3h	MA.204
pklasen3h	MA.604
bcodner28	MA.205
bcodner28	MA.605
alefeuvre1x	MA.301
alefeuvre1x	MA.701
tderyebarrett2l	MA.302
tderyebarrett2l	MA.702
ccraxford2m	MA.303
ccraxford2m	MA.703
gcrigin2q	MA.304
gcrigin2q	MA.704
jhunnicutt2r	MA.305
jhunnicutt2r	MA.705
glockyer2u	MA.401
glockyer2u	MA.801
tsigg3j	MA.402
tsigg3j	MA.802
fmayler2y	MA.403
fmayler2y	MA.803
proux2c	MA.404
proux2c	MA.804
fboyall56	MA.405
fboyall56	MA.805
kmayston5y	MA.401
oboshell3l	MA.501
sgrigolashvill1f	NUSEC.101
tmacleese1m	NUSEC.102
vmaas1b	NUSEC.103
fcourtman2b	NUSEC.201
tscurr19	NUSEC.202
wheskin2h	NUSEC.203
hlefleming2n	NUSEC.301
tthacker2s	NUSEC.302
mperham3k	NUSEC.303
wniblo32	NUSEC.401
shinge39	NUSEC.402
bduffitt3d	NUSEC.403
lfishley18	NUSEC.501
mmartynikhin5a	NUSEC.502
tacome5p	NUSEC.503
sfulkes5x	NUSEC.601
cbarten53	NUSEC.602
dtorricina3x	NUSEC.603
gtuplin3y	NUSEC.701
llergan4f	NUSEC.702
tpeacher4n	NUSEC.703
gtuplin3y	NUSEC.801
llergan4f	NUSEC.802
tpeacher4n	NUSEC.803
cbaden1d	PHY.101
cbaden1d	PHY.501
lybarra22	PHY.102
lybarra22	PHY.502
gpudsall2t	PHY.103
gpudsall2t	PHY.503
gmontez26	PHY.104
gmontez26	PHY.504
ejagiela29	PHY.105
ejagiela29	PHY.505
shenningham1n	PHY.201
shenningham1n	PHY.601
cmuck1o	PHY.202
cmuck1o	PHY.602
jfoulstone2w	PHY.203
jfoulstone2w	PHY.603
acuddihy1q	PHY.204
acuddihy1q	PHY.604
hkuhnwald1y	PHY.205
hkuhnwald1y	PHY.605
rlaight1u	PHY.301
rlaight1u	PHY.701
xassaf25	PHY.302
xassaf25	PHY.702
aboocock2p	PHY.303
aboocock2p	PHY.703
sredholes3f	PHY.304
sredholes3f	PHY.704
fguillerman3a	PHY.305
fguillerman3a	PHY.705
bbernhardi5b	PHY.401
bbernhardi5b	PHY.801
efulks1v	PHY.402
efulks1v	PHY.802
mglasscock3p	PHY.403
mglasscock3p	PHY.803
gsandels3s	PHY.404
gsandels3s	PHY.804
oclampin49	PHY.405
oclampin49	PHY.805
wyurkiewicz4q	PHY.201
bgraser4e	PHY.302
tdible5h	PHY.503
rsandison4i	PHY.802
jmaclennan4z	PHY.101
gcowndley35	CHEN.101
jscutter1e	CHEN.102
cwakley1r	CHEN.103
agolds1s	CHEN.201
vdoumer2e	CHEN.202
jfyers1a	CHEN.203
dhassell2d	CHEN.301
chanstock1p	CHEN.302
kknipe2i	CHEN.303
alundbeck2o	CHEN.401
abulgen1	CHEN.402
nelger16	CHEN.403
jfehner59	CHEN.501
ariditch5q	CHEN.502
gmanach5v	CHEN.503
jfearns5w	CHEN.601
uminichi5n	CHEN.602
mcapun5u	CHEN.603
ctomczynski3z	CHEN.701
lcapes41	CHEN.702
gruperto43	CHEN.703
ebarter47	CHEN.801
knel4h	CHEN.802
cmytton57	CHEN.803
ahamshaw1g	AAN.101
ahamshaw1g	AAN.501
ktock1c	AAN.102
ktock1c	AAN.502
ejeavon21	AAN.103
ejeavon21	AAN.503
dfarington2j	AAN.104
dfarington2j	AAN.504
poldknow2z	AAN.105
poldknow2z	AAN.505
cdahlberg30	AAN.201
cdahlberg30	AAN.601
twynn20	AAN.202
twynn20	AAN.602
mpybus3c	AAN.203
mpybus3c	AAN.603
agregh17	AAN.204
agregh17	AAN.604
ddebanke4w	AAN.205
ddebanke4w	AAN.605
bfosbraey45	AAN.301
bfosbraey45	AAN.701
dkeiling48	AAN.302
dkeiling48	AAN.702
kalastair4g	AAN.303
kalastair4g	AAN.703
mragdale4m	AAN.304
mragdale4m	AAN.704
dbelamy58	AAN.305
dbelamy58	AAN.705
cgiffen4a	AAN.401
cgiffen4a	AAN.801
scansfield4b	AAN.402
scansfield4b	AAN.802
ggethings4x	AAN.403
ggethings4x	AAN.803
fbarbosa5d	AAN.404
fbarbosa5d	AAN.804
nclaxson5i	AAN.405
nclaxson5i	AAN.805
bkroin3v	AAN.704
lromero83	AAN.404
lduffit8a	AAN.604
kcragoe8c	AAN.603
mgyppes8e	AAN.802
fbarbosa5d	AAN.604
lshivlin1i	CS.101
\.


--
-- TOC entry 2849 (class 0 OID 16872)
-- Dependencies: 203
-- Data for Name: professorsstudents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.professorsstudents (username, student_id) FROM stdin;
lshivlin1i	trogisterq
lshivlin1i	bogden7u
lshivlin1i	ofrowm0
lshivlin1i	vbennedsenn6
lshivlin1i	gmushettb2
lshivlin1i	nswated2
lshivlin1i	bpersickei
lshivlin1i	kmurrockgz
lshivlin1i	jtranfield6c
lshivlin1i	ctoulmine2
lshivlin1i	uvannni
lshivlin1i	lburlayit
lshivlin1i	bcleminsonlm
lshivlin1i	fraynesaj
lshivlin1i	akleeno0
lshivlin1i	mouverh6
lshivlin1i	kfairey9a
lshivlin1i	mghilksiy
lshivlin1i	cscotlandbe
lshivlin1i	rparkissono9
lshivlin1i	dwatermandj
lshivlin1i	adelicatelv
lshivlin1i	crozsake
lshivlin1i	ccashford7l
lshivlin1i	nciciurafo
lshivlin1i	achinge6j
lshivlin1i	dmeakingpl
lshivlin1i	nravenscroftthm
lshivlin1i	cvanleijsp9
lshivlin1i	jmoodycg
lshivlin1i	ngrinstonne
lshivlin1i	taloshikin9k
lshivlin1i	cdeekesq5
lshivlin1i	kmilkinsrh
lshivlin1i	bscotsonk7
lshivlin1i	cmalanem
lshivlin1i	bburnhamsb4
lshivlin1i	lleekeib
lshivlin1i	ncholtonka
lshivlin1i	nkytley8s
lshivlin1i	cpadrick9h
lshivlin1i	lbrunsdonak
lshivlin1i	cdallander2v
lshivlin1i	wmascallg0
lshivlin1i	rforreho
lshivlin1i	tolesog
lshivlin1i	twiskerkq
lshivlin1i	bscrivinorcr
lshivlin1i	ithomersonbi
lshivlin1i	mlegganhz
lshivlin1i	hrimbaultjl
lshivlin1i	tnoonani8
lshivlin1i	vpristnorb3
lshivlin1i	gdaenjv
lshivlin1i	osaywellie
lshivlin1i	nciraldo10
lshivlin1i	gmcisaacm3
lshivlin1i	llerouxlr
lshivlin1i	mchallinerdv
lshivlin1i	galthorperc
lshivlin1i	jjendrichpg
lshivlin1i	astoven2
lshivlin1i	aheddenev
lshivlin1i	glantrynu
lshivlin1i	tburniston8l
lshivlin1i	dwattamma
lshivlin1i	abilton9i
lshivlin1i	dbleackleymq
lshivlin1i	cackredjp
lshivlin1i	hgreensitehl
lshivlin1i	pkillgusdn
lshivlin1i	tbayle99
lshivlin1i	tboswardjk
lshivlin1i	alawes68
lshivlin1i	gmeale7k
lshivlin1i	osantorinioc
lshivlin1i	hclaussenh7
lshivlin1i	abussea2
lshivlin1i	mskipworthiw
lshivlin1i	treinmar8g
lshivlin1i	aaizikovichoh
lshivlin1i	dcordoz
lshivlin1i	pduxfieldqx
lshivlin1i	edene7b
lshivlin1i	dyakunikovdl
lshivlin1i	xpyottgm
lshivlin1i	iestickrd
lshivlin1i	jchasneyn4
lshivlin1i	dwarburtondm
lshivlin1i	nkyllford7i
lshivlin1i	cmckernonf4
lshivlin1i	emonnoyer6u
lshivlin1i	lcherriemx
lshivlin1i	lbathoe7r
lshivlin1i	jcarlesr6
lshivlin1i	pterrenol
lshivlin1i	hasburyo
lshivlin1i	kgarrudpq
lshivlin1i	nbrooksonbw
lshivlin1i	aluter8k
lshivlin1i	lrudigerc7
lshivlin1i	rpearne6d
lshivlin1i	cgeorgeonez
lshivlin1i	swiddowsonmd
lshivlin1i	mitzaksona7
lshivlin1i	gtullochly
lshivlin1i	jminneybf
lshivlin1i	lmirrleesi6
lshivlin1i	ajoanicjn
lshivlin1i	jfrapwellgv
lshivlin1i	ewithnalln7
lshivlin1i	wmickelwright3t
lshivlin1i	frosebyf2
lshivlin1i	tgetleyep
lshivlin1i	brikardeg
lshivlin1i	dgrzegorczykng
lshivlin1i	cbefroyns
lshivlin1i	bturri3
lshivlin1i	mstockill8f
lshivlin1i	jbrigstockfr
lshivlin1i	lgoford11
lshivlin1i	tdavidofskia8
lshivlin1i	hbarnard9r
lshivlin1i	hpetrolli63
lshivlin1i	jmcgeraghtygj
lshivlin1i	tgeryqh
lshivlin1i	cbenedettini6g
lshivlin1i	arenn33
lshivlin1i	qdullard6w
lshivlin1i	mchinnoe
lshivlin1i	cbartalinian
lshivlin1i	ehaggarty8x
lshivlin1i	fmosebynb
lshivlin1i	rmouncherlw
lshivlin1i	bshelleycu
lshivlin1i	lfrickerbz
lshivlin1i	myonniej5
lshivlin1i	wdolanee
lshivlin1i	slowndsds
lshivlin1i	fpenninohs
lshivlin1i	hmitkcovgf
civashnikov1j	dbleackleymq
civashnikov1j	akleeno0
civashnikov1j	lbrunsdonak
civashnikov1j	vbennedsenn6
civashnikov1j	qdullard6w
civashnikov1j	ewithnalln7
civashnikov1j	jbrigstockfr
civashnikov1j	gmushettb2
civashnikov1j	kmurrockgz
civashnikov1j	galthorperc
civashnikov1j	wmickelwright3t
civashnikov1j	jmcgeraghtygj
civashnikov1j	bpersickei
civashnikov1j	bburnhamsb4
civashnikov1j	ngrinstonne
civashnikov1j	hrimbaultjl
civashnikov1j	treinmar8g
civashnikov1j	rforreho
civashnikov1j	kfairey9a
civashnikov1j	tdavidofskia8
civashnikov1j	aluter8k
civashnikov1j	nbrooksonbw
civashnikov1j	cdallander2v
civashnikov1j	nciciurafo
civashnikov1j	mchallinerdv
civashnikov1j	pkillgusdn
civashnikov1j	hmitkcovgf
civashnikov1j	lmirrleesi6
civashnikov1j	osaywellie
civashnikov1j	myonniej5
civashnikov1j	ajoanicjn
civashnikov1j	adelicatelv
civashnikov1j	dwattamma
civashnikov1j	kgarrudpq
civashnikov1j	trogisterq
civashnikov1j	bturri3
civashnikov1j	lrudigerc7
civashnikov1j	llerouxlr
civashnikov1j	vpristnorb3
civashnikov1j	dcordoz
civashnikov1j	ccashford7l
civashnikov1j	ncholtonka
civashnikov1j	cbefroyns
civashnikov1j	jminneybf
civashnikov1j	lburlayit
civashnikov1j	rparkissono9
civashnikov1j	cscotlandbe
civashnikov1j	jcarlesr6
civashnikov1j	ehaggarty8x
civashnikov1j	lgoford11
civashnikov1j	tnoonani8
civashnikov1j	uvannni
civashnikov1j	abussea2
civashnikov1j	cdeekesq5
civashnikov1j	bcleminsonlm
civashnikov1j	frosebyf2
civashnikov1j	emonnoyer6u
civashnikov1j	fmosebynb
civashnikov1j	achinge6j
civashnikov1j	nravenscroftthm
civashnikov1j	nswated2
civashnikov1j	dyakunikovdl
civashnikov1j	mghilksiy
civashnikov1j	bogden7u
civashnikov1j	hasburyo
civashnikov1j	mchinnoe
civashnikov1j	dwatermandj
civashnikov1j	hgreensitehl
civashnikov1j	cmckernonf4
civashnikov1j	cvanleijsp9
civashnikov1j	wdolanee
civashnikov1j	cmalanem
civashnikov1j	ithomersonbi
civashnikov1j	abilton9i
civashnikov1j	swiddowsonmd
civashnikov1j	jjendrichpg
civashnikov1j	tbayle99
civashnikov1j	rmouncherlw
civashnikov1j	dmeakingpl
civashnikov1j	dwarburtondm
civashnikov1j	jfrapwellgv
civashnikov1j	astoven2
civashnikov1j	aheddenev
civashnikov1j	lleekeib
civashnikov1j	pterrenol
civashnikov1j	fraynesaj
civashnikov1j	tgeryqh
civashnikov1j	mskipworthiw
civashnikov1j	aaizikovichoh
civashnikov1j	tolesog
civashnikov1j	tburniston8l
civashnikov1j	cackredjp
civashnikov1j	jmoodycg
civashnikov1j	lcherriemx
civashnikov1j	hbarnard9r
civashnikov1j	cgeorgeonez
civashnikov1j	brikardeg
civashnikov1j	gtullochly
civashnikov1j	nkyllford7i
civashnikov1j	nciraldo10
civashnikov1j	mouverh6
civashnikov1j	ctoulmine2
civashnikov1j	jchasneyn4
civashnikov1j	tgetleyep
civashnikov1j	cbartalinian
civashnikov1j	pduxfieldqx
civashnikov1j	tboswardjk
civashnikov1j	glantrynu
civashnikov1j	bshelleycu
civashnikov1j	lbathoe7r
civashnikov1j	rpearne6d
civashnikov1j	osantorinioc
civashnikov1j	cbenedettini6g
civashnikov1j	mlegganhz
civashnikov1j	slowndsds
civashnikov1j	dgrzegorczykng
civashnikov1j	hclaussenh7
civashnikov1j	alawes68
civashnikov1j	fpenninohs
civashnikov1j	gmcisaacm3
civashnikov1j	kmilkinsrh
civashnikov1j	gmeale7k
civashnikov1j	crozsake
civashnikov1j	iestickrd
civashnikov1j	jtranfield6c
civashnikov1j	hpetrolli63
civashnikov1j	wmascallg0
civashnikov1j	mitzaksona7
civashnikov1j	gdaenjv
civashnikov1j	bscotsonk7
civashnikov1j	lfrickerbz
civashnikov1j	bscrivinorcr
civashnikov1j	twiskerkq
civashnikov1j	nkytley8s
civashnikov1j	cpadrick9h
civashnikov1j	mstockill8f
civashnikov1j	taloshikin9k
civashnikov1j	ofrowm0
civashnikov1j	edene7b
civashnikov1j	arenn33
civashnikov1j	xpyottgm
rwesthead23	jtranfield6c
rwesthead23	gmcisaacm3
rwesthead23	lbathoe7r
rwesthead23	osaywellie
rwesthead23	ajoanicjn
rwesthead23	dmeakingpl
rwesthead23	cbenedettini6g
rwesthead23	tgeryqh
rwesthead23	tgetleyep
rwesthead23	jchasneyn4
rwesthead23	kgarrudpq
rwesthead23	jminneybf
rwesthead23	pkillgusdn
rwesthead23	mouverh6
rwesthead23	nkyllford7i
rwesthead23	wdolanee
rwesthead23	cmalanem
rwesthead23	ehaggarty8x
rwesthead23	kfairey9a
rwesthead23	tboswardjk
rwesthead23	hpetrolli63
rwesthead23	adelicatelv
rwesthead23	ewithnalln7
rwesthead23	taloshikin9k
rwesthead23	rpearne6d
rwesthead23	dwarburtondm
rwesthead23	hasburyo
rwesthead23	lburlayit
rwesthead23	emonnoyer6u
rwesthead23	hmitkcovgf
rwesthead23	cpadrick9h
rwesthead23	cbefroyns
rwesthead23	cmckernonf4
rwesthead23	abussea2
rwesthead23	aluter8k
rwesthead23	aaizikovichoh
rwesthead23	llerouxlr
rwesthead23	fraynesaj
rwesthead23	hclaussenh7
rwesthead23	pterrenol
rwesthead23	bburnhamsb4
rwesthead23	wmickelwright3t
rwesthead23	cscotlandbe
rwesthead23	tdavidofskia8
rwesthead23	jmcgeraghtygj
rwesthead23	alawes68
rwesthead23	gmeale7k
rwesthead23	ncholtonka
rwesthead23	achinge6j
rwesthead23	osantorinioc
rwesthead23	tbayle99
rwesthead23	qdullard6w
rwesthead23	lfrickerbz
rwesthead23	myonniej5
rwesthead23	glantrynu
rwesthead23	ofrowm0
rwesthead23	nravenscroftthm
rwesthead23	hrimbaultjl
rwesthead23	hbarnard9r
rwesthead23	lrudigerc7
rwesthead23	jmoodycg
rwesthead23	tburniston8l
rwesthead23	jbrigstockfr
rwesthead23	bogden7u
rwesthead23	dwattamma
rwesthead23	gtullochly
rwesthead23	hgreensitehl
rwesthead23	dcordoz
rwesthead23	gdaenjv
rwesthead23	edene7b
rwesthead23	frosebyf2
rwesthead23	slowndsds
rwesthead23	xpyottgm
rwesthead23	jfrapwellgv
rwesthead23	dwatermandj
rwesthead23	crozsake
rwesthead23	vpristnorb3
rwesthead23	mskipworthiw
rwesthead23	bshelleycu
rwesthead23	bscrivinorcr
rwesthead23	twiskerkq
rwesthead23	abilton9i
rwesthead23	dbleackleymq
rwesthead23	fmosebynb
rwesthead23	lbrunsdonak
rwesthead23	mchinnoe
rwesthead23	rparkissono9
rwesthead23	ccashford7l
rwesthead23	cvanleijsp9
rwesthead23	arenn33
rwesthead23	jjendrichpg
rwesthead23	cdeekesq5
rwesthead23	pduxfieldqx
rwesthead23	bpersickei
rwesthead23	wmascallg0
rwesthead23	trogisterq
rwesthead23	dgrzegorczykng
rwesthead23	nkytley8s
rwesthead23	aheddenev
rwesthead23	cgeorgeonez
rwesthead23	lgoford11
rwesthead23	cbartalinian
rwesthead23	uvannni
rwesthead23	ithomersonbi
rwesthead23	gmushettb2
rwesthead23	nbrooksonbw
rwesthead23	cackredjp
rwesthead23	bturri3
rwesthead23	tnoonani8
rwesthead23	treinmar8g
rwesthead23	kmurrockgz
rwesthead23	mchallinerdv
rwesthead23	lmirrleesi6
rwesthead23	nciciurafo
rwesthead23	brikardeg
rwesthead23	rforreho
rwesthead23	iestickrd
rwesthead23	jcarlesr6
rwesthead23	ctoulmine2
rwesthead23	kmilkinsrh
rwesthead23	mghilksiy
rwesthead23	mitzaksona7
rwesthead23	cdallander2v
rwesthead23	bscotsonk7
rwesthead23	dyakunikovdl
rwesthead23	astoven2
rwesthead23	akleeno0
rwesthead23	nciraldo10
rwesthead23	galthorperc
rwesthead23	tolesog
rwesthead23	fpenninohs
rwesthead23	swiddowsonmd
rwesthead23	rmouncherlw
rwesthead23	vbennedsenn6
rwesthead23	mstockill8f
rwesthead23	mlegganhz
rwesthead23	lleekeib
rwesthead23	bcleminsonlm
rwesthead23	ngrinstonne
rwesthead23	nswated2
rwesthead23	lcherriemx
cunderdown1t	hclaussenh7
cunderdown1t	ithomersonbi
cunderdown1t	iestickrd
cunderdown1t	ngrinstonne
cunderdown1t	jchasneyn4
cunderdown1t	nkyllford7i
cunderdown1t	tgetleyep
cunderdown1t	aheddenev
cunderdown1t	mouverh6
cunderdown1t	cpadrick9h
cunderdown1t	mghilksiy
cunderdown1t	tburniston8l
cunderdown1t	mchallinerdv
cunderdown1t	ewithnalln7
cunderdown1t	dyakunikovdl
cunderdown1t	twiskerkq
cunderdown1t	swiddowsonmd
cunderdown1t	ehaggarty8x
cunderdown1t	cackredjp
cunderdown1t	ofrowm0
cunderdown1t	lbathoe7r
cunderdown1t	mchinnoe
cunderdown1t	nciraldo10
cunderdown1t	fraynesaj
cunderdown1t	rmouncherlw
cunderdown1t	brikardeg
cunderdown1t	pkillgusdn
cunderdown1t	qdullard6w
cunderdown1t	bpersickei
cunderdown1t	osaywellie
cunderdown1t	nciciurafo
cunderdown1t	gtullochly
cunderdown1t	tboswardjk
cunderdown1t	lgoford11
cunderdown1t	frosebyf2
cunderdown1t	trogisterq
cunderdown1t	kfairey9a
cunderdown1t	galthorperc
cunderdown1t	cscotlandbe
cunderdown1t	hmitkcovgf
cunderdown1t	pduxfieldqx
cunderdown1t	cdeekesq5
cunderdown1t	jtranfield6c
cunderdown1t	kmilkinsrh
cunderdown1t	dmeakingpl
cunderdown1t	alawes68
cunderdown1t	xpyottgm
cunderdown1t	osantorinioc
cunderdown1t	bturri3
cunderdown1t	ccashford7l
cunderdown1t	mitzaksona7
cunderdown1t	fpenninohs
cunderdown1t	hbarnard9r
cunderdown1t	jmoodycg
cunderdown1t	cmalanem
cunderdown1t	dcordoz
cunderdown1t	vpristnorb3
cunderdown1t	emonnoyer6u
cunderdown1t	bshelleycu
cunderdown1t	hasburyo
cunderdown1t	tdavidofskia8
cunderdown1t	wmascallg0
cunderdown1t	jbrigstockfr
cunderdown1t	cmckernonf4
cunderdown1t	aluter8k
cunderdown1t	akleeno0
cunderdown1t	dwatermandj
cunderdown1t	ncholtonka
cunderdown1t	cbefroyns
cunderdown1t	jjendrichpg
cunderdown1t	kmurrockgz
cunderdown1t	achinge6j
cunderdown1t	mlegganhz
cunderdown1t	gmushettb2
cunderdown1t	ctoulmine2
cunderdown1t	dwarburtondm
cunderdown1t	dgrzegorczykng
cunderdown1t	llerouxlr
cunderdown1t	gmcisaacm3
cunderdown1t	hpetrolli63
cunderdown1t	jcarlesr6
cunderdown1t	arenn33
cunderdown1t	vbennedsenn6
cunderdown1t	cbenedettini6g
cunderdown1t	rparkissono9
cunderdown1t	pterrenol
cunderdown1t	edene7b
cunderdown1t	aaizikovichoh
cunderdown1t	uvannni
cunderdown1t	dwattamma
cunderdown1t	adelicatelv
cunderdown1t	dbleackleymq
cunderdown1t	tbayle99
cunderdown1t	ajoanicjn
cunderdown1t	taloshikin9k
cunderdown1t	mskipworthiw
cunderdown1t	nbrooksonbw
cunderdown1t	lburlayit
cunderdown1t	jfrapwellgv
cunderdown1t	wdolanee
cunderdown1t	fmosebynb
cunderdown1t	tnoonani8
cunderdown1t	gdaenjv
cunderdown1t	lfrickerbz
cunderdown1t	rforreho
cunderdown1t	tgeryqh
cunderdown1t	kgarrudpq
cunderdown1t	nravenscroftthm
cunderdown1t	gmeale7k
cunderdown1t	jminneybf
cunderdown1t	slowndsds
cunderdown1t	abussea2
cunderdown1t	mstockill8f
cunderdown1t	treinmar8g
cunderdown1t	nswated2
cunderdown1t	lcherriemx
cunderdown1t	lbrunsdonak
cunderdown1t	lrudigerc7
cunderdown1t	rpearne6d
cunderdown1t	jmcgeraghtygj
cunderdown1t	wmickelwright3t
cunderdown1t	hrimbaultjl
cunderdown1t	bcleminsonlm
cunderdown1t	bogden7u
cunderdown1t	myonniej5
cunderdown1t	abilton9i
cunderdown1t	bscotsonk7
cunderdown1t	cbartalinian
cunderdown1t	lleekeib
cunderdown1t	bscrivinorcr
cunderdown1t	lmirrleesi6
cunderdown1t	crozsake
cunderdown1t	tolesog
cunderdown1t	glantrynu
cunderdown1t	hgreensitehl
cunderdown1t	cdallander2v
cunderdown1t	cgeorgeonez
cunderdown1t	astoven2
cunderdown1t	cvanleijsp9
cunderdown1t	nkytley8s
cunderdown1t	bburnhamsb4
ddealey2f	bogden7u
ddealey2f	mlegganhz
ddealey2f	llerouxlr
ddealey2f	edene7b
ddealey2f	aluter8k
ddealey2f	ehaggarty8x
ddealey2f	cpadrick9h
ddealey2f	nbrooksonbw
ddealey2f	mchallinerdv
ddealey2f	pkillgusdn
ddealey2f	brikardeg
ddealey2f	nravenscroftthm
ddealey2f	rforreho
ddealey2f	crozsake
ddealey2f	tboswardjk
ddealey2f	rmouncherlw
ddealey2f	rparkissono9
ddealey2f	osantorinioc
ddealey2f	ewithnalln7
ddealey2f	kgarrudpq
ddealey2f	iestickrd
ddealey2f	wmascallg0
ddealey2f	nswated2
ddealey2f	bturri3
ddealey2f	dgrzegorczykng
ddealey2f	wmickelwright3t
ddealey2f	tnoonani8
ddealey2f	kfairey9a
ddealey2f	nkyllford7i
ddealey2f	cdeekesq5
ddealey2f	galthorperc
ddealey2f	lleekeib
ddealey2f	treinmar8g
ddealey2f	slowndsds
ddealey2f	fmosebynb
ddealey2f	frosebyf2
ddealey2f	dyakunikovdl
ddealey2f	lbathoe7r
ddealey2f	swiddowsonmd
ddealey2f	mitzaksona7
ddealey2f	gtullochly
ddealey2f	lfrickerbz
ddealey2f	hclaussenh7
ddealey2f	adelicatelv
ddealey2f	cbartalinian
ddealey2f	tburniston8l
ddealey2f	lcherriemx
ddealey2f	cackredjp
ddealey2f	abussea2
ddealey2f	hrimbaultjl
ddealey2f	mghilksiy
ddealey2f	dwatermandj
ddealey2f	fraynesaj
ddealey2f	nkytley8s
ddealey2f	ajoanicjn
ddealey2f	ccashford7l
ddealey2f	lmirrleesi6
ddealey2f	bscrivinorcr
ddealey2f	ctoulmine2
ddealey2f	nciciurafo
ddealey2f	cmckernonf4
ddealey2f	cbefroyns
ddealey2f	jminneybf
ddealey2f	lrudigerc7
ddealey2f	pduxfieldqx
ddealey2f	hpetrolli63
ddealey2f	alawes68
ddealey2f	hmitkcovgf
ddealey2f	vbennedsenn6
ddealey2f	cvanleijsp9
ddealey2f	dcordoz
ddealey2f	astoven2
ddealey2f	glantrynu
ddealey2f	fpenninohs
ddealey2f	cgeorgeonez
ddealey2f	wdolanee
ddealey2f	uvannni
ddealey2f	jfrapwellgv
ddealey2f	cdallander2v
ddealey2f	xpyottgm
ddealey2f	vpristnorb3
ddealey2f	mouverh6
ddealey2f	osaywellie
ddealey2f	lburlayit
ddealey2f	twiskerkq
ddealey2f	dwattamma
ddealey2f	aaizikovichoh
ddealey2f	cbenedettini6g
ddealey2f	arenn33
ddealey2f	dmeakingpl
ddealey2f	tgeryqh
ddealey2f	jmcgeraghtygj
ddealey2f	jbrigstockfr
ddealey2f	lgoford11
ddealey2f	gmeale7k
ddealey2f	dwarburtondm
ddealey2f	aheddenev
ddealey2f	mskipworthiw
ddealey2f	myonniej5
ddealey2f	ncholtonka
ddealey2f	bshelleycu
ddealey2f	gdaenjv
ddealey2f	dbleackleymq
ddealey2f	hgreensitehl
ddealey2f	tolesog
ddealey2f	mchinnoe
ddealey2f	qdullard6w
ddealey2f	pterrenol
ddealey2f	emonnoyer6u
ddealey2f	kmurrockgz
ddealey2f	jchasneyn4
ddealey2f	achinge6j
ddealey2f	jjendrichpg
ddealey2f	bpersickei
ddealey2f	trogisterq
ddealey2f	ithomersonbi
ddealey2f	mstockill8f
ddealey2f	gmushettb2
ddealey2f	hasburyo
ddealey2f	ngrinstonne
ddealey2f	jmoodycg
ddealey2f	bscotsonk7
ddealey2f	cmalanem
ddealey2f	hbarnard9r
ddealey2f	bcleminsonlm
ddealey2f	akleeno0
ddealey2f	nciraldo10
ddealey2f	cscotlandbe
ddealey2f	gmcisaacm3
ddealey2f	lbrunsdonak
ddealey2f	kmilkinsrh
ddealey2f	tgetleyep
ddealey2f	jtranfield6c
ddealey2f	jcarlesr6
ddealey2f	rpearne6d
ddealey2f	tdavidofskia8
ddealey2f	tbayle99
ddealey2f	ofrowm0
ddealey2f	abilton9i
ddealey2f	taloshikin9k
ddealey2f	bburnhamsb4
ewatkin1w	glantrynu
ewatkin1w	lcherriemx
ewatkin1w	pkillgusdn
ewatkin1w	kmurrockgz
ewatkin1w	osantorinioc
ewatkin1w	crozsake
ewatkin1w	myonniej5
ewatkin1w	cbefroyns
ewatkin1w	ehaggarty8x
ewatkin1w	cgeorgeonez
ewatkin1w	slowndsds
ewatkin1w	lfrickerbz
ewatkin1w	tgeryqh
ewatkin1w	jfrapwellgv
ewatkin1w	dgrzegorczykng
ewatkin1w	cdallander2v
ewatkin1w	bburnhamsb4
ewatkin1w	vbennedsenn6
ewatkin1w	hmitkcovgf
ewatkin1w	fpenninohs
ewatkin1w	twiskerkq
ewatkin1w	aluter8k
ewatkin1w	abilton9i
ewatkin1w	dbleackleymq
ewatkin1w	fraynesaj
ewatkin1w	lbathoe7r
ewatkin1w	vpristnorb3
ewatkin1w	mchallinerdv
ewatkin1w	cbenedettini6g
ewatkin1w	astoven2
ewatkin1w	jmoodycg
ewatkin1w	jchasneyn4
ewatkin1w	lleekeib
ewatkin1w	hpetrolli63
ewatkin1w	pduxfieldqx
ewatkin1w	ctoulmine2
ewatkin1w	tdavidofskia8
ewatkin1w	dyakunikovdl
ewatkin1w	gmcisaacm3
ewatkin1w	jbrigstockfr
ewatkin1w	brikardeg
ewatkin1w	taloshikin9k
ewatkin1w	bscrivinorcr
ewatkin1w	tbayle99
ewatkin1w	ncholtonka
ewatkin1w	hrimbaultjl
ewatkin1w	gmeale7k
ewatkin1w	dwarburtondm
ewatkin1w	wmascallg0
ewatkin1w	mskipworthiw
ewatkin1w	tburniston8l
ewatkin1w	mitzaksona7
ewatkin1w	bshelleycu
ewatkin1w	lrudigerc7
ewatkin1w	galthorperc
ewatkin1w	hbarnard9r
ewatkin1w	nswated2
ewatkin1w	dcordoz
ewatkin1w	nkyllford7i
ewatkin1w	dmeakingpl
ewatkin1w	cmalanem
ewatkin1w	cackredjp
ewatkin1w	lgoford11
ewatkin1w	abussea2
ewatkin1w	pterrenol
ewatkin1w	osaywellie
ewatkin1w	ewithnalln7
ewatkin1w	mlegganhz
ewatkin1w	kmilkinsrh
ewatkin1w	hgreensitehl
ewatkin1w	fmosebynb
ewatkin1w	mchinnoe
ewatkin1w	ithomersonbi
ewatkin1w	rpearne6d
ewatkin1w	nciciurafo
ewatkin1w	bscotsonk7
ewatkin1w	xpyottgm
ewatkin1w	uvannni
ewatkin1w	cdeekesq5
ewatkin1w	hclaussenh7
ewatkin1w	iestickrd
ewatkin1w	ofrowm0
ewatkin1w	gtullochly
ewatkin1w	bpersickei
ewatkin1w	ajoanicjn
ewatkin1w	trogisterq
ewatkin1w	nbrooksonbw
ewatkin1w	nciraldo10
ewatkin1w	jminneybf
ewatkin1w	aheddenev
ewatkin1w	cbartalinian
ewatkin1w	wdolanee
ewatkin1w	adelicatelv
ewatkin1w	emonnoyer6u
ewatkin1w	tnoonani8
ewatkin1w	hasburyo
ewatkin1w	mghilksiy
ewatkin1w	bogden7u
ewatkin1w	cvanleijsp9
ewatkin1w	aaizikovichoh
ewatkin1w	jtranfield6c
ewatkin1w	lburlayit
ewatkin1w	gmushettb2
ewatkin1w	cmckernonf4
ewatkin1w	achinge6j
ewatkin1w	arenn33
ewatkin1w	dwatermandj
ewatkin1w	cpadrick9h
ewatkin1w	llerouxlr
ewatkin1w	nkytley8s
ewatkin1w	nravenscroftthm
ewatkin1w	kgarrudpq
ewatkin1w	frosebyf2
ewatkin1w	swiddowsonmd
ewatkin1w	lmirrleesi6
ewatkin1w	gdaenjv
ewatkin1w	kfairey9a
ewatkin1w	mouverh6
ewatkin1w	tboswardjk
ewatkin1w	rforreho
ewatkin1w	treinmar8g
ewatkin1w	mstockill8f
ewatkin1w	jcarlesr6
ewatkin1w	wmickelwright3t
ewatkin1w	ngrinstonne
ewatkin1w	jmcgeraghtygj
ewatkin1w	bturri3
ewatkin1w	edene7b
ewatkin1w	qdullard6w
ewatkin1w	rmouncherlw
ewatkin1w	alawes68
ewatkin1w	akleeno0
ewatkin1w	jjendrichpg
ewatkin1w	lbrunsdonak
ewatkin1w	rparkissono9
ewatkin1w	tgetleyep
ewatkin1w	cscotlandbe
ewatkin1w	dwattamma
ewatkin1w	ccashford7l
ewatkin1w	tolesog
ewatkin1w	bcleminsonlm
sbourdas2g	ngrinstonne
sbourdas2g	lleekeib
sbourdas2g	nkytley8s
sbourdas2g	jminneybf
sbourdas2g	cbenedettini6g
sbourdas2g	cackredjp
sbourdas2g	lcherriemx
sbourdas2g	uvannni
sbourdas2g	ctoulmine2
sbourdas2g	twiskerkq
sbourdas2g	dbleackleymq
sbourdas2g	gtullochly
sbourdas2g	trogisterq
sbourdas2g	gmcisaacm3
sbourdas2g	cgeorgeonez
sbourdas2g	frosebyf2
sbourdas2g	galthorperc
sbourdas2g	hmitkcovgf
sbourdas2g	fpenninohs
sbourdas2g	pduxfieldqx
sbourdas2g	lbathoe7r
sbourdas2g	abilton9i
sbourdas2g	jchasneyn4
sbourdas2g	ehaggarty8x
sbourdas2g	dcordoz
sbourdas2g	cpadrick9h
sbourdas2g	cscotlandbe
sbourdas2g	xpyottgm
sbourdas2g	osaywellie
sbourdas2g	bshelleycu
sbourdas2g	bscrivinorcr
sbourdas2g	tnoonani8
sbourdas2g	nswated2
sbourdas2g	lgoford11
sbourdas2g	ewithnalln7
sbourdas2g	lrudigerc7
sbourdas2g	astoven2
sbourdas2g	osantorinioc
sbourdas2g	mitzaksona7
sbourdas2g	swiddowsonmd
sbourdas2g	rpearne6d
sbourdas2g	alawes68
sbourdas2g	achinge6j
sbourdas2g	emonnoyer6u
sbourdas2g	crozsake
sbourdas2g	cbefroyns
sbourdas2g	aaizikovichoh
sbourdas2g	mghilksiy
sbourdas2g	mskipworthiw
sbourdas2g	lburlayit
sbourdas2g	wmickelwright3t
sbourdas2g	pterrenol
sbourdas2g	gdaenjv
sbourdas2g	ithomersonbi
sbourdas2g	treinmar8g
sbourdas2g	jfrapwellgv
sbourdas2g	dmeakingpl
sbourdas2g	kgarrudpq
sbourdas2g	nravenscroftthm
sbourdas2g	hclaussenh7
sbourdas2g	wmascallg0
sbourdas2g	cbartalinian
sbourdas2g	jtranfield6c
sbourdas2g	abussea2
sbourdas2g	pkillgusdn
sbourdas2g	wdolanee
sbourdas2g	nbrooksonbw
sbourdas2g	ofrowm0
sbourdas2g	hpetrolli63
sbourdas2g	bogden7u
sbourdas2g	hrimbaultjl
sbourdas2g	tbayle99
sbourdas2g	rparkissono9
sbourdas2g	tolesog
sbourdas2g	aluter8k
sbourdas2g	brikardeg
sbourdas2g	tboswardjk
sbourdas2g	mstockill8f
sbourdas2g	fraynesaj
sbourdas2g	lfrickerbz
sbourdas2g	bburnhamsb4
sbourdas2g	adelicatelv
sbourdas2g	mchinnoe
sbourdas2g	lbrunsdonak
sbourdas2g	mchallinerdv
sbourdas2g	vpristnorb3
sbourdas2g	edene7b
sbourdas2g	ncholtonka
sbourdas2g	tgetleyep
sbourdas2g	bcleminsonlm
sbourdas2g	hgreensitehl
sbourdas2g	cmalanem
sbourdas2g	bturri3
sbourdas2g	rforreho
sbourdas2g	mlegganhz
sbourdas2g	kfairey9a
sbourdas2g	hbarnard9r
sbourdas2g	qdullard6w
sbourdas2g	ccashford7l
sbourdas2g	taloshikin9k
sbourdas2g	cdallander2v
sbourdas2g	slowndsds
sbourdas2g	dwarburtondm
sbourdas2g	aheddenev
sbourdas2g	cmckernonf4
sbourdas2g	kmurrockgz
sbourdas2g	mouverh6
sbourdas2g	bscotsonk7
sbourdas2g	myonniej5
sbourdas2g	ajoanicjn
sbourdas2g	dwattamma
sbourdas2g	fmosebynb
sbourdas2g	glantrynu
sbourdas2g	vbennedsenn6
sbourdas2g	arenn33
sbourdas2g	jjendrichpg
sbourdas2g	kmilkinsrh
sbourdas2g	cdeekesq5
sbourdas2g	jmcgeraghtygj
sbourdas2g	nciraldo10
sbourdas2g	tdavidofskia8
sbourdas2g	jbrigstockfr
sbourdas2g	nkyllford7i
sbourdas2g	gmeale7k
sbourdas2g	hasburyo
sbourdas2g	cvanleijsp9
sbourdas2g	dwatermandj
sbourdas2g	gmushettb2
sbourdas2g	dyakunikovdl
sbourdas2g	rmouncherlw
sbourdas2g	llerouxlr
sbourdas2g	lmirrleesi6
sbourdas2g	bpersickei
sbourdas2g	dgrzegorczykng
sbourdas2g	tburniston8l
sbourdas2g	iestickrd
sbourdas2g	akleeno0
sbourdas2g	tgeryqh
sbourdas2g	jcarlesr6
sbourdas2g	nciciurafo
sbourdas2g	jmoodycg
abottoner2k	kmilkinsrh
abottoner2k	hclaussenh7
abottoner2k	dbleackleymq
abottoner2k	aaizikovichoh
abottoner2k	fraynesaj
abottoner2k	gtullochly
abottoner2k	gmcisaacm3
abottoner2k	qdullard6w
abottoner2k	astoven2
abottoner2k	pterrenol
abottoner2k	lmirrleesi6
abottoner2k	tnoonani8
abottoner2k	mlegganhz
abottoner2k	lleekeib
abottoner2k	rforreho
abottoner2k	bshelleycu
abottoner2k	mitzaksona7
abottoner2k	ncholtonka
abottoner2k	ehaggarty8x
abottoner2k	cpadrick9h
abottoner2k	bturri3
abottoner2k	tburniston8l
abottoner2k	aluter8k
abottoner2k	tgeryqh
abottoner2k	dgrzegorczykng
abottoner2k	cmalanem
abottoner2k	jjendrichpg
abottoner2k	arenn33
abottoner2k	tgetleyep
abottoner2k	cvanleijsp9
abottoner2k	hbarnard9r
abottoner2k	glantrynu
abottoner2k	vpristnorb3
abottoner2k	fpenninohs
abottoner2k	fmosebynb
abottoner2k	xpyottgm
abottoner2k	ofrowm0
abottoner2k	lcherriemx
abottoner2k	mouverh6
abottoner2k	achinge6j
abottoner2k	mghilksiy
abottoner2k	bscotsonk7
abottoner2k	cscotlandbe
abottoner2k	abilton9i
abottoner2k	hasburyo
abottoner2k	gmushettb2
abottoner2k	swiddowsonmd
abottoner2k	cackredjp
abottoner2k	osaywellie
abottoner2k	trogisterq
abottoner2k	kfairey9a
abottoner2k	jchasneyn4
abottoner2k	cgeorgeonez
abottoner2k	ithomersonbi
abottoner2k	aheddenev
abottoner2k	tdavidofskia8
abottoner2k	mstockill8f
abottoner2k	abussea2
abottoner2k	ctoulmine2
abottoner2k	lgoford11
abottoner2k	iestickrd
abottoner2k	pkillgusdn
abottoner2k	uvannni
abottoner2k	brikardeg
abottoner2k	tbayle99
abottoner2k	lbathoe7r
abottoner2k	nkyllford7i
abottoner2k	edene7b
abottoner2k	lburlayit
abottoner2k	tboswardjk
abottoner2k	twiskerkq
abottoner2k	bcleminsonlm
abottoner2k	dcordoz
abottoner2k	dmeakingpl
abottoner2k	jcarlesr6
abottoner2k	llerouxlr
abottoner2k	nciraldo10
abottoner2k	nbrooksonbw
abottoner2k	bscrivinorcr
abottoner2k	ngrinstonne
abottoner2k	emonnoyer6u
abottoner2k	nciciurafo
abottoner2k	ewithnalln7
abottoner2k	frosebyf2
abottoner2k	osantorinioc
abottoner2k	jbrigstockfr
abottoner2k	nswated2
abottoner2k	dyakunikovdl
abottoner2k	nravenscroftthm
abottoner2k	gmeale7k
abottoner2k	jminneybf
abottoner2k	kgarrudpq
abottoner2k	mchallinerdv
abottoner2k	bogden7u
abottoner2k	hrimbaultjl
abottoner2k	bpersickei
abottoner2k	pduxfieldqx
abottoner2k	myonniej5
abottoner2k	cdallander2v
abottoner2k	jtranfield6c
abottoner2k	crozsake
abottoner2k	jfrapwellgv
abottoner2k	rpearne6d
abottoner2k	ajoanicjn
abottoner2k	lfrickerbz
abottoner2k	lbrunsdonak
abottoner2k	vbennedsenn6
abottoner2k	wmickelwright3t
abottoner2k	wdolanee
abottoner2k	nkytley8s
abottoner2k	alawes68
abottoner2k	taloshikin9k
abottoner2k	dwatermandj
abottoner2k	adelicatelv
abottoner2k	rmouncherlw
abottoner2k	ccashford7l
abottoner2k	slowndsds
abottoner2k	dwattamma
abottoner2k	wmascallg0
abottoner2k	treinmar8g
abottoner2k	cbefroyns
abottoner2k	hpetrolli63
abottoner2k	galthorperc
abottoner2k	kmurrockgz
abottoner2k	lrudigerc7
abottoner2k	cbartalinian
abottoner2k	hmitkcovgf
abottoner2k	akleeno0
abottoner2k	mchinnoe
abottoner2k	cbenedettini6g
abottoner2k	cmckernonf4
abottoner2k	hgreensitehl
rnavan3b	osaywellie
rnavan3b	hrimbaultjl
rnavan3b	arenn33
rnavan3b	wdolanee
rnavan3b	mouverh6
rnavan3b	lleekeib
rnavan3b	mlegganhz
rnavan3b	cackredjp
rnavan3b	lbathoe7r
rnavan3b	rmouncherlw
rnavan3b	cdallander2v
rnavan3b	ngrinstonne
rnavan3b	osantorinioc
rnavan3b	lmirrleesi6
rnavan3b	xpyottgm
rnavan3b	cbenedettini6g
rnavan3b	ncholtonka
rnavan3b	treinmar8g
rnavan3b	jchasneyn4
rnavan3b	kfairey9a
rnavan3b	ccashford7l
rnavan3b	emonnoyer6u
rnavan3b	taloshikin9k
rnavan3b	hgreensitehl
rnavan3b	myonniej5
rnavan3b	lcherriemx
rnavan3b	ofrowm0
rnavan3b	hpetrolli63
rnavan3b	fpenninohs
rnavan3b	mitzaksona7
rnavan3b	mchinnoe
rnavan3b	pterrenol
rnavan3b	hclaussenh7
rnavan3b	fraynesaj
rnavan3b	cvanleijsp9
rnavan3b	jjendrichpg
rnavan3b	aheddenev
rnavan3b	brikardeg
rnavan3b	ctoulmine2
rnavan3b	tnoonani8
rnavan3b	dyakunikovdl
rnavan3b	tbayle99
rnavan3b	jminneybf
rnavan3b	rforreho
rnavan3b	crozsake
rnavan3b	ehaggarty8x
rnavan3b	nravenscroftthm
rnavan3b	jtranfield6c
rnavan3b	aaizikovichoh
rnavan3b	achinge6j
rnavan3b	nswated2
rnavan3b	bogden7u
rnavan3b	kmurrockgz
rnavan3b	dwatermandj
rnavan3b	lrudigerc7
rnavan3b	gmeale7k
rnavan3b	dbleackleymq
rnavan3b	kmilkinsrh
rnavan3b	abussea2
rnavan3b	mstockill8f
rnavan3b	hmitkcovgf
rnavan3b	lfrickerbz
rnavan3b	tburniston8l
rnavan3b	hbarnard9r
rnavan3b	jcarlesr6
rnavan3b	pduxfieldqx
rnavan3b	ajoanicjn
rnavan3b	vpristnorb3
rnavan3b	tgeryqh
rnavan3b	kgarrudpq
rnavan3b	cbefroyns
rnavan3b	pkillgusdn
rnavan3b	fmosebynb
rnavan3b	bpersickei
rnavan3b	dwattamma
rnavan3b	wmascallg0
rnavan3b	llerouxlr
rnavan3b	trogisterq
rnavan3b	hasburyo
rnavan3b	lburlayit
rnavan3b	adelicatelv
rnavan3b	lgoford11
rnavan3b	bcleminsonlm
rnavan3b	bshelleycu
rnavan3b	bturri3
rnavan3b	bscrivinorcr
rnavan3b	lbrunsdonak
rnavan3b	jbrigstockfr
rnavan3b	dcordoz
rnavan3b	astoven2
rnavan3b	dmeakingpl
rnavan3b	abilton9i
rnavan3b	aluter8k
rnavan3b	cpadrick9h
rnavan3b	mghilksiy
rnavan3b	nbrooksonbw
rnavan3b	bscotsonk7
rnavan3b	gmcisaacm3
rnavan3b	wmickelwright3t
rnavan3b	akleeno0
rnavan3b	uvannni
rnavan3b	tboswardjk
rnavan3b	nciraldo10
rnavan3b	vbennedsenn6
rnavan3b	cbartalinian
rnavan3b	ewithnalln7
rnavan3b	cscotlandbe
rnavan3b	jfrapwellgv
rnavan3b	cmckernonf4
rnavan3b	glantrynu
rnavan3b	twiskerkq
rnavan3b	dgrzegorczykng
rnavan3b	qdullard6w
rnavan3b	nkyllford7i
rnavan3b	cmalanem
rnavan3b	nciciurafo
rnavan3b	ithomersonbi
rnavan3b	iestickrd
rnavan3b	gmushettb2
rnavan3b	rpearne6d
rnavan3b	mchallinerdv
rnavan3b	slowndsds
rnavan3b	alawes68
rnavan3b	gtullochly
rnavan3b	tgetleyep
hhonack24	aaizikovichoh
hhonack24	lrudigerc7
hhonack24	bogden7u
hhonack24	aheddenev
hhonack24	bscotsonk7
hhonack24	lfrickerbz
hhonack24	jbrigstockfr
hhonack24	trogisterq
hhonack24	wmascallg0
hhonack24	bshelleycu
hhonack24	bcleminsonlm
hhonack24	ehaggarty8x
hhonack24	cscotlandbe
hhonack24	tburniston8l
hhonack24	ngrinstonne
hhonack24	mstockill8f
hhonack24	aluter8k
hhonack24	hrimbaultjl
hhonack24	emonnoyer6u
hhonack24	nciraldo10
hhonack24	taloshikin9k
hhonack24	rpearne6d
hhonack24	vpristnorb3
hhonack24	jjendrichpg
hhonack24	fpenninohs
hhonack24	hgreensitehl
hhonack24	achinge6j
hhonack24	ctoulmine2
hhonack24	xpyottgm
hhonack24	jfrapwellgv
hhonack24	gmcisaacm3
hhonack24	myonniej5
hhonack24	lgoford11
hhonack24	cackredjp
hhonack24	cmalanem
hhonack24	brikardeg
hhonack24	nswated2
hhonack24	kfairey9a
hhonack24	gmeale7k
hhonack24	jcarlesr6
hhonack24	alawes68
hhonack24	dmeakingpl
hhonack24	astoven2
hhonack24	qdullard6w
hhonack24	osantorinioc
hhonack24	pterrenol
hhonack24	mchinnoe
hhonack24	ccashford7l
hhonack24	wmickelwright3t
hhonack24	fmosebynb
hhonack24	rmouncherlw
hhonack24	dbleackleymq
hhonack24	llerouxlr
hhonack24	lburlayit
hhonack24	crozsake
hhonack24	wdolanee
hhonack24	dwatermandj
hhonack24	dyakunikovdl
hhonack24	dgrzegorczykng
hhonack24	gmushettb2
hhonack24	mchallinerdv
hhonack24	ofrowm0
hhonack24	hclaussenh7
hhonack24	fraynesaj
hhonack24	dcordoz
hhonack24	cbenedettini6g
hhonack24	nravenscroftthm
hhonack24	ncholtonka
hhonack24	nkyllford7i
hhonack24	nciciurafo
hhonack24	treinmar8g
hhonack24	lcherriemx
hhonack24	nbrooksonbw
hhonack24	slowndsds
hhonack24	cbartalinian
hhonack24	tnoonani8
hhonack24	ithomersonbi
hhonack24	glantrynu
hhonack24	mlegganhz
hhonack24	tgeryqh
hhonack24	uvannni
hhonack24	gtullochly
hhonack24	kgarrudpq
hhonack24	mitzaksona7
hhonack24	lbrunsdonak
hhonack24	mouverh6
hhonack24	kmilkinsrh
hhonack24	kmurrockgz
hhonack24	bscrivinorcr
hhonack24	hbarnard9r
hhonack24	pduxfieldqx
hhonack24	cbefroyns
hhonack24	rforreho
hhonack24	lbathoe7r
hhonack24	dwattamma
hhonack24	hpetrolli63
hhonack24	tbayle99
hhonack24	iestickrd
hhonack24	twiskerkq
hhonack24	bpersickei
hhonack24	hmitkcovgf
hhonack24	ajoanicjn
hhonack24	abussea2
hhonack24	tboswardjk
hhonack24	hasburyo
hhonack24	cdallander2v
hhonack24	osaywellie
hhonack24	pkillgusdn
hhonack24	lleekeib
hhonack24	ewithnalln7
hhonack24	vbennedsenn6
hhonack24	jchasneyn4
hhonack24	cvanleijsp9
hhonack24	jtranfield6c
hhonack24	lmirrleesi6
hhonack24	tgetleyep
egabbatiss2x	astoven2
egabbatiss2x	mstockill8f
egabbatiss2x	mitzaksona7
egabbatiss2x	hpetrolli63
egabbatiss2x	cbenedettini6g
egabbatiss2x	ccashford7l
egabbatiss2x	lbathoe7r
egabbatiss2x	lbrunsdonak
egabbatiss2x	cbartalinian
egabbatiss2x	taloshikin9k
egabbatiss2x	nciciurafo
egabbatiss2x	lleekeib
egabbatiss2x	osaywellie
egabbatiss2x	hrimbaultjl
egabbatiss2x	bcleminsonlm
egabbatiss2x	gtullochly
egabbatiss2x	ofrowm0
egabbatiss2x	lgoford11
egabbatiss2x	wmickelwright3t
egabbatiss2x	cscotlandbe
egabbatiss2x	gmeale7k
egabbatiss2x	nkyllford7i
egabbatiss2x	ncholtonka
egabbatiss2x	glantrynu
egabbatiss2x	pkillgusdn
egabbatiss2x	nravenscroftthm
egabbatiss2x	bscrivinorcr
egabbatiss2x	ewithnalln7
egabbatiss2x	slowndsds
egabbatiss2x	jbrigstockfr
egabbatiss2x	cackredjp
egabbatiss2x	kmurrockgz
egabbatiss2x	tgeryqh
egabbatiss2x	crozsake
egabbatiss2x	trogisterq
egabbatiss2x	cdallander2v
egabbatiss2x	hbarnard9r
egabbatiss2x	nciraldo10
egabbatiss2x	qdullard6w
egabbatiss2x	alawes68
egabbatiss2x	fpenninohs
egabbatiss2x	achinge6j
egabbatiss2x	mchinnoe
egabbatiss2x	uvannni
egabbatiss2x	fmosebynb
egabbatiss2x	cmalanem
egabbatiss2x	ithomersonbi
egabbatiss2x	osantorinioc
egabbatiss2x	pduxfieldqx
egabbatiss2x	ehaggarty8x
egabbatiss2x	vbennedsenn6
egabbatiss2x	lburlayit
egabbatiss2x	bogden7u
egabbatiss2x	dyakunikovdl
egabbatiss2x	dgrzegorczykng
egabbatiss2x	aluter8k
egabbatiss2x	twiskerkq
egabbatiss2x	bscotsonk7
egabbatiss2x	pterrenol
egabbatiss2x	ajoanicjn
egabbatiss2x	bshelleycu
egabbatiss2x	dbleackleymq
egabbatiss2x	fraynesaj
egabbatiss2x	tgetleyep
egabbatiss2x	emonnoyer6u
egabbatiss2x	hgreensitehl
egabbatiss2x	aaizikovichoh
egabbatiss2x	treinmar8g
egabbatiss2x	hclaussenh7
egabbatiss2x	lrudigerc7
egabbatiss2x	dcordoz
egabbatiss2x	cvanleijsp9
egabbatiss2x	jchasneyn4
egabbatiss2x	aheddenev
egabbatiss2x	ctoulmine2
egabbatiss2x	dwatermandj
egabbatiss2x	lmirrleesi6
egabbatiss2x	myonniej5
egabbatiss2x	tnoonani8
egabbatiss2x	lcherriemx
egabbatiss2x	gmcisaacm3
egabbatiss2x	tbayle99
egabbatiss2x	bpersickei
egabbatiss2x	jjendrichpg
egabbatiss2x	gmushettb2
egabbatiss2x	hmitkcovgf
egabbatiss2x	llerouxlr
egabbatiss2x	iestickrd
egabbatiss2x	hasburyo
egabbatiss2x	vpristnorb3
egabbatiss2x	mchallinerdv
egabbatiss2x	mlegganhz
egabbatiss2x	ngrinstonne
egabbatiss2x	dwattamma
egabbatiss2x	jtranfield6c
egabbatiss2x	wdolanee
egabbatiss2x	kmilkinsrh
egabbatiss2x	mouverh6
egabbatiss2x	jcarlesr6
egabbatiss2x	jfrapwellgv
egabbatiss2x	rpearne6d
egabbatiss2x	xpyottgm
egabbatiss2x	abussea2
egabbatiss2x	cbefroyns
egabbatiss2x	lfrickerbz
egabbatiss2x	kfairey9a
tjobson3i	llerouxlr
tjobson3i	xpyottgm
tjobson3i	cvanleijsp9
tjobson3i	osaywellie
tjobson3i	osantorinioc
tjobson3i	dyakunikovdl
tjobson3i	cdallander2v
tjobson3i	tnoonani8
tjobson3i	uvannni
tjobson3i	aluter8k
tjobson3i	astoven2
tjobson3i	lmirrleesi6
tjobson3i	mlegganhz
tjobson3i	wdolanee
tjobson3i	jcarlesr6
tjobson3i	nravenscroftthm
tjobson3i	kmurrockgz
tjobson3i	myonniej5
tjobson3i	lbrunsdonak
tjobson3i	jchasneyn4
tjobson3i	hclaussenh7
tjobson3i	cscotlandbe
tjobson3i	ncholtonka
tjobson3i	ithomersonbi
tjobson3i	taloshikin9k
tjobson3i	ofrowm0
tjobson3i	cbartalinian
tjobson3i	qdullard6w
tjobson3i	achinge6j
tjobson3i	rpearne6d
tjobson3i	jtranfield6c
tjobson3i	mitzaksona7
tjobson3i	kfairey9a
tjobson3i	mstockill8f
tjobson3i	abussea2
tjobson3i	hasburyo
tjobson3i	wmickelwright3t
tjobson3i	aheddenev
tjobson3i	lleekeib
tjobson3i	bscrivinorcr
tjobson3i	ewithnalln7
tjobson3i	nciraldo10
tjobson3i	cbenedettini6g
tjobson3i	ctoulmine2
tjobson3i	bogden7u
tjobson3i	kmilkinsrh
tjobson3i	dwattamma
tjobson3i	gtullochly
tjobson3i	tgetleyep
tjobson3i	hpetrolli63
tjobson3i	mouverh6
tjobson3i	nciciurafo
tjobson3i	vpristnorb3
tjobson3i	pterrenol
tjobson3i	glantrynu
tjobson3i	dwatermandj
tjobson3i	hbarnard9r
tjobson3i	dbleackleymq
tjobson3i	bcleminsonlm
tjobson3i	tbayle99
tjobson3i	trogisterq
tjobson3i	cackredjp
tjobson3i	hrimbaultjl
tjobson3i	lgoford11
tjobson3i	bshelleycu
tjobson3i	gmushettb2
tjobson3i	slowndsds
tjobson3i	mchallinerdv
tjobson3i	jfrapwellgv
tjobson3i	fpenninohs
tjobson3i	ehaggarty8x
tjobson3i	fraynesaj
tjobson3i	iestickrd
tjobson3i	crozsake
tjobson3i	dgrzegorczykng
tjobson3i	hgreensitehl
tjobson3i	ngrinstonne
tjobson3i	treinmar8g
tjobson3i	gmeale7k
tjobson3i	pkillgusdn
tjobson3i	gmcisaacm3
tjobson3i	dcordoz
tjobson3i	ajoanicjn
tjobson3i	jjendrichpg
tjobson3i	twiskerkq
tjobson3i	tgeryqh
tjobson3i	pduxfieldqx
tjobson3i	bpersickei
tjobson3i	cmalanem
tjobson3i	cbefroyns
tjobson3i	jbrigstockfr
tjobson3i	vbennedsenn6
tjobson3i	alawes68
tjobson3i	bscotsonk7
tjobson3i	aaizikovichoh
tjobson3i	lfrickerbz
tjobson3i	lrudigerc7
tjobson3i	lcherriemx
tjobson3i	ccashford7l
tjobson3i	mchinnoe
sbrach31	jtranfield6c
sbrach31	dcordoz
sbrach31	cackredjp
sbrach31	osantorinioc
sbrach31	jbrigstockfr
sbrach31	fraynesaj
sbrach31	llerouxlr
sbrach31	twiskerkq
sbrach31	gtullochly
sbrach31	bcleminsonlm
sbrach31	bpersickei
sbrach31	crozsake
sbrach31	cdallander2v
sbrach31	trogisterq
sbrach31	cbenedettini6g
sbrach31	ccashford7l
sbrach31	gmcisaacm3
sbrach31	ewithnalln7
sbrach31	vbennedsenn6
sbrach31	cbefroyns
sbrach31	cvanleijsp9
sbrach31	uvannni
sbrach31	ofrowm0
sbrach31	lgoford11
sbrach31	hrimbaultjl
sbrach31	rpearne6d
sbrach31	wdolanee
sbrach31	taloshikin9k
sbrach31	vpristnorb3
sbrach31	bscotsonk7
sbrach31	jchasneyn4
sbrach31	fpenninohs
sbrach31	jcarlesr6
sbrach31	kmurrockgz
sbrach31	cmalanem
sbrach31	kmilkinsrh
sbrach31	aheddenev
sbrach31	dyakunikovdl
sbrach31	ithomersonbi
sbrach31	cbartalinian
sbrach31	lrudigerc7
sbrach31	lcherriemx
sbrach31	mstockill8f
sbrach31	nciciurafo
sbrach31	ajoanicjn
sbrach31	dwatermandj
sbrach31	kfairey9a
sbrach31	mitzaksona7
sbrach31	bogden7u
sbrach31	ehaggarty8x
sbrach31	bshelleycu
sbrach31	hclaussenh7
sbrach31	nravenscroftthm
sbrach31	jfrapwellgv
sbrach31	mouverh6
sbrach31	aaizikovichoh
sbrach31	tgeryqh
sbrach31	iestickrd
sbrach31	wmickelwright3t
sbrach31	dbleackleymq
sbrach31	hbarnard9r
sbrach31	slowndsds
sbrach31	lfrickerbz
sbrach31	abussea2
sbrach31	nciraldo10
sbrach31	treinmar8g
sbrach31	mchinnoe
sbrach31	ngrinstonne
sbrach31	achinge6j
sbrach31	glantrynu
sbrach31	lleekeib
sbrach31	myonniej5
sbrach31	tbayle99
sbrach31	osaywellie
sbrach31	mchallinerdv
sbrach31	mlegganhz
sbrach31	lbrunsdonak
sbrach31	dgrzegorczykng
sbrach31	xpyottgm
sbrach31	jjendrichpg
sbrach31	hasburyo
sbrach31	bscrivinorcr
sbrach31	gmushettb2
sbrach31	qdullard6w
sbrach31	hpetrolli63
sbrach31	dwattamma
sbrach31	cscotlandbe
sbrach31	hgreensitehl
sbrach31	alawes68
sbrach31	tnoonani8
sbrach31	pterrenol
sbrach31	pduxfieldqx
sbrach31	gmeale7k
sbrach31	ctoulmine2
rboliver5r	mchallinerdv
rboliver5r	fpenninohs
rboliver5r	gmeale7k
rboliver5r	jchasneyn4
rboliver5r	pduxfieldqx
rboliver5r	kfairey9a
rboliver5r	cscotlandbe
rboliver5r	ngrinstonne
rboliver5r	bscrivinorcr
rboliver5r	glantrynu
rboliver5r	ofrowm0
rboliver5r	hasburyo
rboliver5r	crozsake
rboliver5r	llerouxlr
rboliver5r	bcleminsonlm
rboliver5r	wmickelwright3t
rboliver5r	bshelleycu
rboliver5r	achinge6j
rboliver5r	aheddenev
rboliver5r	mlegganhz
rboliver5r	hclaussenh7
rboliver5r	jtranfield6c
rboliver5r	cbefroyns
rboliver5r	dcordoz
rboliver5r	mitzaksona7
rboliver5r	cvanleijsp9
rboliver5r	dwatermandj
rboliver5r	wdolanee
rboliver5r	ccashford7l
rboliver5r	iestickrd
rboliver5r	taloshikin9k
rboliver5r	lleekeib
rboliver5r	bpersickei
rboliver5r	mouverh6
rboliver5r	mstockill8f
rboliver5r	hpetrolli63
rboliver5r	treinmar8g
rboliver5r	vpristnorb3
rboliver5r	trogisterq
rboliver5r	cdallander2v
rboliver5r	abussea2
rboliver5r	gmushettb2
rboliver5r	myonniej5
rboliver5r	vbennedsenn6
rboliver5r	dbleackleymq
rboliver5r	ewithnalln7
rboliver5r	kmurrockgz
rboliver5r	hrimbaultjl
rboliver5r	tbayle99
rboliver5r	jjendrichpg
rboliver5r	cmalanem
rboliver5r	bogden7u
rboliver5r	kmilkinsrh
rboliver5r	pterrenol
rboliver5r	slowndsds
rboliver5r	tgeryqh
rboliver5r	hgreensitehl
rboliver5r	jcarlesr6
rboliver5r	alawes68
rboliver5r	bscotsonk7
rboliver5r	ajoanicjn
rboliver5r	mchinnoe
rboliver5r	tnoonani8
rboliver5r	lbrunsdonak
rboliver5r	jfrapwellgv
rboliver5r	rpearne6d
rboliver5r	dwattamma
rboliver5r	nciraldo10
rboliver5r	xpyottgm
rboliver5r	gtullochly
rboliver5r	lfrickerbz
rboliver5r	jbrigstockfr
rboliver5r	hbarnard9r
rboliver5r	lrudigerc7
rboliver5r	gmcisaacm3
rboliver5r	uvannni
rboliver5r	nravenscroftthm
rboliver5r	ithomersonbi
rboliver5r	qdullard6w
rboliver5r	aaizikovichoh
rboliver5r	cbenedettini6g
rboliver5r	osaywellie
rboliver5r	ehaggarty8x
rboliver5r	dgrzegorczykng
rboliver5r	nciciurafo
rboliver5r	fraynesaj
battreed5t	nravenscroftthm
battreed5t	bpersickei
battreed5t	iestickrd
battreed5t	rpearne6d
battreed5t	nciciurafo
battreed5t	qdullard6w
battreed5t	osaywellie
battreed5t	lbrunsdonak
battreed5t	crozsake
battreed5t	ehaggarty8x
battreed5t	pterrenol
battreed5t	achinge6j
battreed5t	kmurrockgz
battreed5t	ithomersonbi
battreed5t	lfrickerbz
battreed5t	hpetrolli63
battreed5t	cbefroyns
battreed5t	cdallander2v
battreed5t	trogisterq
battreed5t	uvannni
battreed5t	cmalanem
battreed5t	bscrivinorcr
battreed5t	tnoonani8
battreed5t	hbarnard9r
battreed5t	dbleackleymq
battreed5t	gtullochly
battreed5t	ofrowm0
battreed5t	dcordoz
battreed5t	cvanleijsp9
battreed5t	mchallinerdv
battreed5t	tgeryqh
battreed5t	fraynesaj
battreed5t	alawes68
battreed5t	gmcisaacm3
battreed5t	cscotlandbe
battreed5t	bcleminsonlm
battreed5t	ccashford7l
battreed5t	lleekeib
battreed5t	cbenedettini6g
battreed5t	ajoanicjn
battreed5t	nciraldo10
battreed5t	mitzaksona7
battreed5t	jbrigstockfr
battreed5t	dwatermandj
battreed5t	vbennedsenn6
battreed5t	treinmar8g
battreed5t	bogden7u
battreed5t	abussea2
battreed5t	hclaussenh7
battreed5t	ngrinstonne
battreed5t	dgrzegorczykng
battreed5t	aaizikovichoh
battreed5t	hrimbaultjl
battreed5t	jtranfield6c
battreed5t	kfairey9a
battreed5t	xpyottgm
battreed5t	tbayle99
battreed5t	hasburyo
battreed5t	jfrapwellgv
battreed5t	glantrynu
battreed5t	jcarlesr6
battreed5t	jjendrichpg
battreed5t	ewithnalln7
battreed5t	mlegganhz
battreed5t	bshelleycu
battreed5t	jchasneyn4
battreed5t	llerouxlr
battreed5t	taloshikin9k
battreed5t	gmeale7k
battreed5t	wdolanee
battreed5t	slowndsds
battreed5t	aheddenev
apablo3o	bshelleycu
apablo3o	cbefroyns
apablo3o	bogden7u
apablo3o	lfrickerbz
apablo3o	llerouxlr
apablo3o	jfrapwellgv
apablo3o	hclaussenh7
apablo3o	wdolanee
apablo3o	taloshikin9k
apablo3o	ccashford7l
apablo3o	ajoanicjn
apablo3o	treinmar8g
apablo3o	glantrynu
apablo3o	rpearne6d
apablo3o	slowndsds
apablo3o	bscrivinorcr
apablo3o	mchallinerdv
apablo3o	aheddenev
apablo3o	cmalanem
apablo3o	dwatermandj
apablo3o	crozsake
apablo3o	nravenscroftthm
apablo3o	hbarnard9r
apablo3o	tbayle99
apablo3o	dcordoz
apablo3o	gmcisaacm3
apablo3o	bpersickei
apablo3o	cscotlandbe
apablo3o	ithomersonbi
apablo3o	dgrzegorczykng
apablo3o	nciraldo10
apablo3o	jbrigstockfr
apablo3o	jcarlesr6
apablo3o	jjendrichpg
apablo3o	mitzaksona7
apablo3o	pterrenol
apablo3o	tnoonani8
apablo3o	jtranfield6c
apablo3o	uvannni
apablo3o	bcleminsonlm
apablo3o	lleekeib
apablo3o	lbrunsdonak
apablo3o	nciciurafo
apablo3o	achinge6j
apablo3o	gmeale7k
apablo3o	abussea2
apablo3o	dbleackleymq
apablo3o	gtullochly
apablo3o	ngrinstonne
apablo3o	cvanleijsp9
apablo3o	iestickrd
apablo3o	kfairey9a
apablo3o	cbenedettini6g
apablo3o	hrimbaultjl
apablo3o	cdallander2v
apablo3o	hpetrolli63
apablo3o	alawes68
apablo3o	qdullard6w
apablo3o	ehaggarty8x
apablo3o	ofrowm0
apablo3o	aaizikovichoh
apablo3o	vbennedsenn6
apablo3o	ewithnalln7
apablo3o	hasburyo
cstener4l	hasburyo
cstener4l	rpearne6d
cstener4l	dbleackleymq
cstener4l	ajoanicjn
cstener4l	cvanleijsp9
cstener4l	bpersickei
cstener4l	ccashford7l
cstener4l	abussea2
cstener4l	glantrynu
cstener4l	taloshikin9k
cstener4l	bcleminsonlm
cstener4l	tbayle99
cstener4l	cmalanem
cstener4l	nciciurafo
cstener4l	nciraldo10
cstener4l	jjendrichpg
cstener4l	llerouxlr
cstener4l	hrimbaultjl
cstener4l	iestickrd
cstener4l	wdolanee
cstener4l	dwatermandj
cstener4l	treinmar8g
cstener4l	jfrapwellgv
cstener4l	bogden7u
cstener4l	jbrigstockfr
cstener4l	ewithnalln7
cstener4l	gmeale7k
cstener4l	lbrunsdonak
cstener4l	cscotlandbe
cstener4l	lfrickerbz
cstener4l	vbennedsenn6
cstener4l	tnoonani8
cstener4l	mitzaksona7
cstener4l	cbenedettini6g
cstener4l	bscrivinorcr
cstener4l	dgrzegorczykng
cstener4l	gmcisaacm3
cstener4l	gtullochly
cstener4l	cbefroyns
cstener4l	alawes68
cstener4l	crozsake
cstener4l	ithomersonbi
cstener4l	achinge6j
cstener4l	kfairey9a
cstener4l	jcarlesr6
cstener4l	slowndsds
cstener4l	aheddenev
cstener4l	ngrinstonne
cstener4l	bshelleycu
cstener4l	pterrenol
cstener4l	cdallander2v
cstener4l	nravenscroftthm
cstener4l	lleekeib
cstener4l	ofrowm0
cstener4l	uvannni
cstener4l	aaizikovichoh
cstener4l	jtranfield6c
cstener4l	dcordoz
cstener4l	hbarnard9r
gsanbroke3u	dcordoz
gsanbroke3u	hbarnard9r
gsanbroke3u	bogden7u
gsanbroke3u	abussea2
gsanbroke3u	ngrinstonne
gsanbroke3u	mitzaksona7
gsanbroke3u	bcleminsonlm
gsanbroke3u	alawes68
gsanbroke3u	gmeale7k
gsanbroke3u	lfrickerbz
gsanbroke3u	jjendrichpg
gsanbroke3u	kfairey9a
gsanbroke3u	nravenscroftthm
gsanbroke3u	cbenedettini6g
gsanbroke3u	nciraldo10
gsanbroke3u	tnoonani8
gsanbroke3u	aheddenev
gsanbroke3u	slowndsds
gsanbroke3u	lbrunsdonak
gsanbroke3u	ithomersonbi
gsanbroke3u	taloshikin9k
gsanbroke3u	achinge6j
gsanbroke3u	vbennedsenn6
gsanbroke3u	bshelleycu
gsanbroke3u	jfrapwellgv
gsanbroke3u	cmalanem
gsanbroke3u	bpersickei
gsanbroke3u	nciciurafo
gsanbroke3u	ofrowm0
gsanbroke3u	ccashford7l
gsanbroke3u	rpearne6d
gsanbroke3u	ewithnalln7
gsanbroke3u	wdolanee
gsanbroke3u	jtranfield6c
gsanbroke3u	crozsake
gsanbroke3u	cbefroyns
gsanbroke3u	cvanleijsp9
gsanbroke3u	gmcisaacm3
gsanbroke3u	uvannni
gsanbroke3u	llerouxlr
gsanbroke3u	hrimbaultjl
gsanbroke3u	aaizikovichoh
gsanbroke3u	dbleackleymq
gsanbroke3u	bscrivinorcr
gsanbroke3u	gtullochly
gsanbroke3u	glantrynu
mtompsett42	vbennedsenn6
mtompsett42	cbefroyns
mtompsett42	kfairey9a
mtompsett42	nciraldo10
mtompsett42	ofrowm0
mtompsett42	uvannni
mtompsett42	cbenedettini6g
mtompsett42	jjendrichpg
mtompsett42	nciciurafo
mtompsett42	rpearne6d
mtompsett42	aaizikovichoh
mtompsett42	bpersickei
mtompsett42	ngrinstonne
mtompsett42	cvanleijsp9
mtompsett42	cmalanem
mtompsett42	achinge6j
mtompsett42	jfrapwellgv
mtompsett42	jtranfield6c
mtompsett42	gmeale7k
mtompsett42	hrimbaultjl
mtompsett42	ithomersonbi
mtompsett42	taloshikin9k
mtompsett42	bscrivinorcr
mtompsett42	bcleminsonlm
mtompsett42	hbarnard9r
mtompsett42	gmcisaacm3
mtompsett42	lbrunsdonak
mtompsett42	wdolanee
mtompsett42	ewithnalln7
mtompsett42	alawes68
mtompsett42	dcordoz
mtompsett42	bshelleycu
mtompsett42	crozsake
mtompsett42	gtullochly
mtompsett42	dbleackleymq
mtompsett42	mitzaksona7
mtompsett42	glantrynu
mtompsett42	tnoonani8
mtompsett42	aheddenev
jfulleylove4c	vbennedsenn6
jfulleylove4c	cmalanem
jfulleylove4c	hrimbaultjl
jfulleylove4c	mitzaksona7
jfulleylove4c	ofrowm0
jfulleylove4c	gmcisaacm3
jfulleylove4c	cvanleijsp9
jfulleylove4c	crozsake
jfulleylove4c	ithomersonbi
jfulleylove4c	wdolanee
jfulleylove4c	gtullochly
jfulleylove4c	uvannni
jfulleylove4c	bpersickei
jfulleylove4c	tnoonani8
jfulleylove4c	alawes68
jfulleylove4c	bshelleycu
jfulleylove4c	gmeale7k
jfulleylove4c	ngrinstonne
jfulleylove4c	aheddenev
jfulleylove4c	aaizikovichoh
jfulleylove4c	achinge6j
jfulleylove4c	dbleackleymq
jfulleylove4c	glantrynu
jfulleylove4c	cbefroyns
jfulleylove4c	nciraldo10
jfulleylove4c	jtranfield6c
jfulleylove4c	bscrivinorcr
jfulleylove4c	rpearne6d
jfulleylove4c	nciciurafo
jfulleylove4c	taloshikin9k
jfulleylove4c	jjendrichpg
jfulleylove4c	hbarnard9r
jfulleylove4c	kfairey9a
jfulleylove4c	jfrapwellgv
abrierton51	crozsake
abrierton51	cmalanem
abrierton51	bshelleycu
abrierton51	alawes68
abrierton51	jjendrichpg
abrierton51	ngrinstonne
abrierton51	ithomersonbi
abrierton51	hrimbaultjl
abrierton51	vbennedsenn6
abrierton51	bpersickei
abrierton51	hbarnard9r
abrierton51	tnoonani8
abrierton51	kfairey9a
abrierton51	ofrowm0
abrierton51	jtranfield6c
abrierton51	nciraldo10
abrierton51	gmeale7k
abrierton51	wdolanee
abrierton51	aheddenev
abrierton51	cvanleijsp9
abrierton51	gtullochly
abrierton51	rpearne6d
abrierton51	uvannni
abrierton51	jfrapwellgv
abrierton51	mitzaksona7
ghair55	rpearne6d
ghair55	kfairey9a
ghair55	ithomersonbi
ghair55	alawes68
ghair55	jfrapwellgv
ghair55	hbarnard9r
ghair55	bshelleycu
ghair55	wdolanee
ghair55	gtullochly
ghair55	jjendrichpg
ghair55	nciraldo10
ghair55	aheddenev
ghair55	tnoonani8
ghair55	ofrowm0
ghair55	mitzaksona7
ghair55	hrimbaultjl
ghair55	cmalanem
ghair55	bpersickei
ghair55	ngrinstonne
ghair55	gmeale7k
sguinane7g	mitzaksona7
sguinane7g	aheddenev
sguinane7g	ithomersonbi
sguinane7g	gtullochly
sguinane7g	hbarnard9r
sguinane7g	hrimbaultjl
sguinane7g	rpearne6d
sguinane7g	ofrowm0
sguinane7g	ngrinstonne
bredborn34	lshalcrosk6
bredborn34	pjevesy
bredborn34	lkolczynskion
bredborn34	rsaxby8m
bredborn34	aheareg9
bredborn34	cfrodshamcj
bredborn34	pbonasg4
bredborn34	ekenningham5e
bredborn34	erickwordgn
bredborn34	atreskegq
bredborn34	fhakergy
bredborn34	zmcowis4o
bredborn34	wkubinr3
bredborn34	mkocherg8
bredborn34	bpeckes
bredborn34	dhutonow
bredborn34	lpearseqe
bredborn34	ginger0
bredborn34	mlibermoreot
bredborn34	ktatekb
bredborn34	lvanderwaltkc
bredborn34	mcrutch44
bredborn34	bbonhome9o
bredborn34	bdowdneyld
bredborn34	sdishman9b
bredborn34	dcowxdx
bredborn34	egrevilleae
bredborn34	eclashpj
bredborn34	nlorinczlb
bredborn34	knixonjt
bredborn34	eotuohyqc
bredborn34	xchatelainnd
bredborn34	rbilovusr7
bredborn34	cpetrellig5
bredborn34	jheyburn5c
bredborn34	hhannam9f
bredborn34	agoom8t
bredborn34	ppidgennq
bredborn34	fkeriqf
bredborn34	jeggleston66
bredborn34	tpridittqs
bredborn34	slodfordoj
bredborn34	esemmencee7
bredborn34	aunthankk1
bredborn34	rsigert5m
bredborn34	tlenahanf0
bredborn34	sbroadwoodco
bredborn34	pcarradiceqm
bredborn34	kgreenshielsqd
bredborn34	rpygottgt
bredborn34	cschottlip4
bredborn34	tdeemanmi
bredborn34	tbortoletti6l
bredborn34	bgodsafeau
bredborn34	gmackin9l
bredborn34	vstrudwickad
bredborn34	gcathels
bredborn34	freasce81
bredborn34	blukash6z
bredborn34	bborerc6
bredborn34	cbalogbx
bredborn34	asleep52
bredborn34	rscrannyqr
bredborn34	aflipsenkh
bredborn34	cdodingpp
bredborn34	fteal8v
bredborn34	jkindredk5
bredborn34	jfilintsevop
bredborn34	mbamblett6b
bredborn34	avanderwalt7h
bredborn34	lriddockeq
bredborn34	kclorleynr
bredborn34	sruskinga
bredborn34	kstollardnx
bredborn34	sgayne76
bredborn34	gpuddephattlf
bredborn34	wgoszji
bredborn34	pilyukhovb0
bredborn34	jjennaroy5l
bredborn34	vbursnallpb
bredborn34	pderoos5s
bredborn34	scomellinir9
bredborn34	brickfordmh
bredborn34	jdivesfg
bredborn34	rcasfordlu
bredborn34	paylwardfx
bredborn34	dkeggindg
bredborn34	mjovicicg7
bredborn34	vgenerylz
bredborn34	sclearekt
bredborn34	bmccomas6x
bredborn34	wpullmano4
bredborn34	lcale5g
bredborn34	tantoniate8
bredborn34	khanningdb
bredborn34	slinekerj
bredborn34	daugustinei
bredborn34	dlearmountn8
bredborn34	lsweating92
bredborn34	kleckenby7x
bredborn34	ajozwikbb
bredborn34	bmcwardre
bredborn34	mtrustie4k
bredborn34	gjurgensonfm
bredborn34	cdarnody9w
bredborn34	bgraberjj
bredborn34	ljanugb
bredborn34	amontgomeryhb
bredborn34	bcrocketlx
bredborn34	efranz4p
bredborn34	amapledoorec4
bredborn34	urotherape
bredborn34	ableasbya
bredborn34	rrippin8w
bredborn34	agovenlockjw
bredborn34	rtyttertonmk
bredborn34	jdonizeauc8
bredborn34	bdurhamdi
bredborn34	wlavignern
bredborn34	mingray15
bredborn34	kblampyr4
bredborn34	fcatlowh9
bredborn34	targileh8
bredborn34	agrossman4d
bredborn34	lilchukde
bredborn34	jdeviney4j
bredborn34	kgainori1
bredborn34	spickettgp
bredborn34	abeachem7j
bredborn34	emoreq4
bredborn34	kmacrannellnj
bredborn34	mshepcuttbh
bredborn34	rnisbithmu
bredborn34	dboshersbq
acornils38	asleep52
acornils38	sdishman9b
acornils38	erickwordgn
acornils38	bdurhamdi
acornils38	paylwardfx
acornils38	ajozwikbb
acornils38	ableasbya
acornils38	pderoos5s
acornils38	wpullmano4
acornils38	aheareg9
acornils38	abeachem7j
acornils38	mbamblett6b
acornils38	sbroadwoodco
acornils38	rsaxby8m
acornils38	agoom8t
acornils38	vgenerylz
acornils38	cpetrellig5
acornils38	mcrutch44
acornils38	atreskegq
acornils38	rcasfordlu
acornils38	cschottlip4
acornils38	esemmencee7
acornils38	ppidgennq
acornils38	kclorleynr
acornils38	lkolczynskion
acornils38	blukash6z
acornils38	gpuddephattlf
acornils38	bgraberjj
acornils38	mtrustie4k
acornils38	eotuohyqc
acornils38	kgreenshielsqd
acornils38	pbonasg4
acornils38	daugustinei
acornils38	cfrodshamcj
acornils38	cbalogbx
acornils38	amapledoorec4
acornils38	mshepcuttbh
acornils38	xchatelainnd
acornils38	hhannam9f
acornils38	sgayne76
acornils38	ekenningham5e
acornils38	aflipsenkh
acornils38	mingray15
acornils38	bcrocketlx
acornils38	jdeviney4j
acornils38	kstollardnx
acornils38	pjevesy
acornils38	lshalcrosk6
acornils38	sclearekt
acornils38	jfilintsevop
acornils38	pcarradiceqm
acornils38	zmcowis4o
acornils38	slodfordoj
acornils38	rsigert5m
acornils38	wgoszji
acornils38	wkubinr3
acornils38	tdeemanmi
acornils38	vbursnallpb
acornils38	rbilovusr7
acornils38	knixonjt
acornils38	cdanell46
acornils38	dcowxdx
acornils38	brickfordmh
acornils38	cdarnody9w
acornils38	ljanugb
acornils38	spickettgp
acornils38	kleckenby7x
acornils38	ginger0
acornils38	wlavignern
acornils38	jheyburn5c
acornils38	mjovicicg7
acornils38	fkeriqf
acornils38	urotherape
acornils38	cdodingpp
acornils38	khanningdb
acornils38	bmccomas6x
acornils38	kblampyr4
acornils38	tantoniate8
acornils38	aunthankk1
acornils38	lilchukde
acornils38	tbortoletti6l
acornils38	jdonizeauc8
acornils38	dhutonow
acornils38	targileh8
acornils38	gjurgensonfm
acornils38	sruskinga
acornils38	kgainori1
acornils38	rscrannyqr
acornils38	dkeggindg
acornils38	lcale5g
acornils38	lriddockeq
acornils38	bpeckes
acornils38	fcatlowh9
acornils38	ktatekb
acornils38	lvanderwaltkc
acornils38	scomellinir9
acornils38	pilyukhovb0
acornils38	bmcwardre
acornils38	avanderwalt7h
acornils38	rrippin8w
acornils38	agovenlockjw
acornils38	jkindredk5
acornils38	freasce81
acornils38	vstrudwickad
acornils38	nlorinczlb
acornils38	jdivesfg
acornils38	jeggleston66
acornils38	bbonhome9o
acornils38	gmackin9l
acornils38	bgodsafeau
acornils38	efranz4p
acornils38	mkocherg8
acornils38	rpygottgt
acornils38	lpearseqe
acornils38	gcathels
acornils38	eclashpj
acornils38	fteal8v
acornils38	mlibermoreot
acornils38	egrevilleae
acornils38	dlearmountn8
acornils38	jjennaroy5l
acornils38	lsweating92
acornils38	bdowdneyld
acornils38	tpridittqs
acornils38	emoreq4
acornils38	kmacrannellnj
acornils38	bborerc6
acornils38	fhakergy
acornils38	rnisbithmu
acornils38	rtyttertonmk
acornils38	slinekerj
acornils38	agrossman4d
acornils38	tlenahanf0
acornils38	amontgomeryhb
acornils38	dboshersbq
pblakeden1h	blukash6z
pblakeden1h	esemmencee7
pblakeden1h	fteal8v
pblakeden1h	jheyburn5c
pblakeden1h	tlenahanf0
pblakeden1h	gcathels
pblakeden1h	xchatelainnd
pblakeden1h	lcale5g
pblakeden1h	kleckenby7x
pblakeden1h	wkubinr3
pblakeden1h	pbonasg4
pblakeden1h	wgoszji
pblakeden1h	agrossman4d
pblakeden1h	pderoos5s
pblakeden1h	atreskegq
pblakeden1h	fcatlowh9
pblakeden1h	amapledoorec4
pblakeden1h	rscrannyqr
pblakeden1h	tpridittqs
pblakeden1h	spickettgp
pblakeden1h	dcowxdx
pblakeden1h	mingray15
pblakeden1h	sbroadwoodco
pblakeden1h	rsigert5m
pblakeden1h	lriddockeq
pblakeden1h	brickfordmh
pblakeden1h	agovenlockjw
pblakeden1h	urotherape
pblakeden1h	fhakergy
pblakeden1h	kgreenshielsqd
pblakeden1h	rcasfordlu
pblakeden1h	mlibermoreot
pblakeden1h	rsaxby8m
pblakeden1h	lvanderwaltkc
pblakeden1h	asleep52
pblakeden1h	wlavignern
pblakeden1h	lpearseqe
pblakeden1h	scomellinir9
pblakeden1h	rnisbithmu
pblakeden1h	pjevesy
pblakeden1h	sdishman9b
pblakeden1h	agoom8t
pblakeden1h	bbonhome9o
pblakeden1h	kblampyr4
pblakeden1h	jfilintsevop
pblakeden1h	gjurgensonfm
pblakeden1h	bmcwardre
pblakeden1h	bgodsafeau
pblakeden1h	zmcowis4o
pblakeden1h	mbamblett6b
pblakeden1h	aflipsenkh
pblakeden1h	jdonizeauc8
pblakeden1h	knixonjt
pblakeden1h	vgenerylz
pblakeden1h	aunthankk1
pblakeden1h	khanningdb
pblakeden1h	bdurhamdi
pblakeden1h	pilyukhovb0
pblakeden1h	egrevilleae
pblakeden1h	lshalcrosk6
pblakeden1h	dboshersbq
pblakeden1h	eclashpj
pblakeden1h	fkeriqf
pblakeden1h	cdanell46
pblakeden1h	gpuddephattlf
pblakeden1h	cdarnody9w
pblakeden1h	rbilovusr7
pblakeden1h	amontgomeryhb
pblakeden1h	avanderwalt7h
pblakeden1h	mshepcuttbh
pblakeden1h	aheareg9
pblakeden1h	lkolczynskion
pblakeden1h	jeggleston66
pblakeden1h	kgainori1
pblakeden1h	rrippin8w
pblakeden1h	vbursnallpb
pblakeden1h	cfrodshamcj
pblakeden1h	lsweating92
pblakeden1h	gmackin9l
pblakeden1h	targileh8
pblakeden1h	jdeviney4j
pblakeden1h	cdodingpp
pblakeden1h	paylwardfx
pblakeden1h	slinekerj
pblakeden1h	jkindredk5
pblakeden1h	bgraberjj
pblakeden1h	ekenningham5e
pblakeden1h	slodfordoj
pblakeden1h	mtrustie4k
pblakeden1h	efranz4p
pblakeden1h	rtyttertonmk
pblakeden1h	freasce81
pblakeden1h	ginger0
pblakeden1h	sgayne76
pblakeden1h	sclearekt
pblakeden1h	ableasbya
pblakeden1h	bborerc6
pblakeden1h	ajozwikbb
pblakeden1h	daugustinei
pblakeden1h	lilchukde
pblakeden1h	cpetrellig5
pblakeden1h	mjovicicg7
pblakeden1h	mkocherg8
pblakeden1h	rpygottgt
pblakeden1h	kstollardnx
pblakeden1h	nlorinczlb
pblakeden1h	dhutonow
pblakeden1h	kclorleynr
pblakeden1h	tdeemanmi
pblakeden1h	kmacrannellnj
pblakeden1h	cschottlip4
pblakeden1h	cbalogbx
pblakeden1h	jjennaroy5l
pblakeden1h	ppidgennq
pblakeden1h	bpeckes
pblakeden1h	abeachem7j
pblakeden1h	wpullmano4
pblakeden1h	mcrutch44
pblakeden1h	jdivesfg
pblakeden1h	ljanugb
pblakeden1h	hhannam9f
pblakeden1h	dlearmountn8
pblakeden1h	tbortoletti6l
pblakeden1h	tantoniate8
pblakeden1h	bdowdneyld
pblakeden1h	sruskinga
pblakeden1h	erickwordgn
pblakeden1h	ktatekb
pblakeden1h	emoreq4
pblakeden1h	pcarradiceqm
pblakeden1h	bcrocketlx
pblakeden1h	bmccomas6x
pblakeden1h	vstrudwickad
pblakeden1h	dkeggindg
pblakeden1h	eotuohyqc
jliebmann27	amontgomeryhb
jliebmann27	bbonhome9o
jliebmann27	rnisbithmu
jliebmann27	jjennaroy5l
jliebmann27	kblampyr4
jliebmann27	wlavignern
jliebmann27	kclorleynr
jliebmann27	ktatekb
jliebmann27	ajozwikbb
jliebmann27	mlibermoreot
jliebmann27	dkeggindg
jliebmann27	brickfordmh
jliebmann27	bdurhamdi
jliebmann27	fcatlowh9
jliebmann27	avanderwalt7h
jliebmann27	bcrocketlx
jliebmann27	lpearseqe
jliebmann27	mtrustie4k
jliebmann27	sclearekt
jliebmann27	mbamblett6b
jliebmann27	abeachem7j
jliebmann27	egrevilleae
jliebmann27	rtyttertonmk
jliebmann27	efranz4p
jliebmann27	jfilintsevop
jliebmann27	agoom8t
jliebmann27	lriddockeq
jliebmann27	ginger0
jliebmann27	rbilovusr7
jliebmann27	zmcowis4o
jliebmann27	xchatelainnd
jliebmann27	blukash6z
jliebmann27	slinekerj
jliebmann27	aflipsenkh
jliebmann27	cdanell46
jliebmann27	pcarradiceqm
jliebmann27	nlorinczlb
jliebmann27	eclashpj
jliebmann27	dlearmountn8
jliebmann27	slodfordoj
jliebmann27	lsweating92
jliebmann27	lilchukde
jliebmann27	knixonjt
jliebmann27	sdishman9b
jliebmann27	lcale5g
jliebmann27	mcrutch44
jliebmann27	gjurgensonfm
jliebmann27	rpygottgt
jliebmann27	pilyukhovb0
jliebmann27	asleep52
jliebmann27	aheareg9
jliebmann27	agovenlockjw
jliebmann27	emoreq4
jliebmann27	wgoszji
jliebmann27	esemmencee7
jliebmann27	amapledoorec4
jliebmann27	fhakergy
jliebmann27	vgenerylz
jliebmann27	kmacrannellnj
jliebmann27	kstollardnx
jliebmann27	vstrudwickad
jliebmann27	cschottlip4
jliebmann27	lvanderwaltkc
jliebmann27	bborerc6
jliebmann27	jheyburn5c
jliebmann27	tlenahanf0
jliebmann27	wpullmano4
jliebmann27	mkocherg8
jliebmann27	rcasfordlu
jliebmann27	ekenningham5e
jliebmann27	gcathels
jliebmann27	ppidgennq
jliebmann27	rrippin8w
jliebmann27	jkindredk5
jliebmann27	tpridittqs
jliebmann27	paylwardfx
jliebmann27	pjevesy
jliebmann27	lkolczynskion
jliebmann27	dcowxdx
jliebmann27	jdonizeauc8
jliebmann27	bmccomas6x
jliebmann27	dboshersbq
jliebmann27	spickettgp
jliebmann27	ljanugb
jliebmann27	freasce81
jliebmann27	cdarnody9w
jliebmann27	mjovicicg7
jliebmann27	vbursnallpb
jliebmann27	kgreenshielsqd
jliebmann27	fteal8v
jliebmann27	bgraberjj
jliebmann27	kleckenby7x
jliebmann27	sgayne76
jliebmann27	tbortoletti6l
jliebmann27	aunthankk1
jliebmann27	hhannam9f
jliebmann27	kgainori1
jliebmann27	pderoos5s
jliebmann27	rsaxby8m
jliebmann27	targileh8
jliebmann27	agrossman4d
jliebmann27	sruskinga
jliebmann27	mshepcuttbh
jliebmann27	atreskegq
jliebmann27	erickwordgn
jliebmann27	ableasbya
jliebmann27	cbalogbx
jliebmann27	khanningdb
jliebmann27	pbonasg4
jliebmann27	cfrodshamcj
jliebmann27	gpuddephattlf
jliebmann27	bmcwardre
jliebmann27	eotuohyqc
jliebmann27	bdowdneyld
jliebmann27	wkubinr3
jliebmann27	tdeemanmi
jliebmann27	mingray15
jliebmann27	cdodingpp
jliebmann27	bpeckes
jliebmann27	daugustinei
jliebmann27	gmackin9l
jliebmann27	jeggleston66
jliebmann27	sbroadwoodco
jliebmann27	rsigert5m
jliebmann27	urotherape
jliebmann27	rscrannyqr
jliebmann27	tantoniate8
jliebmann27	lshalcrosk6
jliebmann27	scomellinir9
jliebmann27	fkeriqf
jliebmann27	dhutonow
jliebmann27	jdeviney4j
jliebmann27	jdivesfg
jliebmann27	cpetrellig5
jliebmann27	bgodsafeau
nschumacher1k	mcrutch44
nschumacher1k	erickwordgn
nschumacher1k	hhannam9f
nschumacher1k	knixonjt
nschumacher1k	bbonhome9o
nschumacher1k	aflipsenkh
nschumacher1k	kclorleynr
nschumacher1k	targileh8
nschumacher1k	jdonizeauc8
nschumacher1k	kmacrannellnj
nschumacher1k	kgainori1
nschumacher1k	bcrocketlx
nschumacher1k	avanderwalt7h
nschumacher1k	lriddockeq
nschumacher1k	cdodingpp
nschumacher1k	atreskegq
nschumacher1k	fcatlowh9
nschumacher1k	ljanugb
nschumacher1k	gmackin9l
nschumacher1k	dcowxdx
nschumacher1k	rrippin8w
nschumacher1k	bmccomas6x
nschumacher1k	jdivesfg
nschumacher1k	lshalcrosk6
nschumacher1k	mlibermoreot
nschumacher1k	freasce81
nschumacher1k	lvanderwaltkc
nschumacher1k	wgoszji
nschumacher1k	jkindredk5
nschumacher1k	sclearekt
nschumacher1k	paylwardfx
nschumacher1k	mshepcuttbh
nschumacher1k	dboshersbq
nschumacher1k	scomellinir9
nschumacher1k	bpeckes
nschumacher1k	nlorinczlb
nschumacher1k	fteal8v
nschumacher1k	asleep52
nschumacher1k	kleckenby7x
nschumacher1k	mkocherg8
nschumacher1k	rbilovusr7
nschumacher1k	vbursnallpb
nschumacher1k	cschottlip4
nschumacher1k	vstrudwickad
nschumacher1k	agrossman4d
nschumacher1k	egrevilleae
nschumacher1k	xchatelainnd
nschumacher1k	rnisbithmu
nschumacher1k	aunthankk1
nschumacher1k	rsaxby8m
nschumacher1k	spickettgp
nschumacher1k	amapledoorec4
nschumacher1k	cdarnody9w
nschumacher1k	ableasbya
nschumacher1k	emoreq4
nschumacher1k	urotherape
nschumacher1k	dhutonow
nschumacher1k	aheareg9
nschumacher1k	bdurhamdi
nschumacher1k	dkeggindg
nschumacher1k	efranz4p
nschumacher1k	ajozwikbb
nschumacher1k	rpygottgt
nschumacher1k	kgreenshielsqd
nschumacher1k	wkubinr3
nschumacher1k	jeggleston66
nschumacher1k	pcarradiceqm
nschumacher1k	lilchukde
nschumacher1k	pbonasg4
nschumacher1k	fhakergy
nschumacher1k	eotuohyqc
nschumacher1k	cbalogbx
nschumacher1k	cpetrellig5
nschumacher1k	khanningdb
nschumacher1k	tlenahanf0
nschumacher1k	bdowdneyld
nschumacher1k	gpuddephattlf
nschumacher1k	lsweating92
nschumacher1k	mjovicicg7
nschumacher1k	sgayne76
nschumacher1k	esemmencee7
nschumacher1k	mtrustie4k
nschumacher1k	bgraberjj
nschumacher1k	rtyttertonmk
nschumacher1k	blukash6z
nschumacher1k	tpridittqs
nschumacher1k	lcale5g
nschumacher1k	dlearmountn8
nschumacher1k	sbroadwoodco
nschumacher1k	wpullmano4
nschumacher1k	sdishman9b
nschumacher1k	jfilintsevop
nschumacher1k	abeachem7j
nschumacher1k	bmcwardre
nschumacher1k	amontgomeryhb
nschumacher1k	ekenningham5e
nschumacher1k	ginger0
nschumacher1k	ktatekb
nschumacher1k	sruskinga
nschumacher1k	ppidgennq
nschumacher1k	pderoos5s
nschumacher1k	tdeemanmi
nschumacher1k	kblampyr4
nschumacher1k	lkolczynskion
nschumacher1k	pilyukhovb0
nschumacher1k	slodfordoj
nschumacher1k	jheyburn5c
nschumacher1k	cdanell46
nschumacher1k	vgenerylz
nschumacher1k	jdeviney4j
nschumacher1k	lpearseqe
nschumacher1k	agovenlockjw
nschumacher1k	tbortoletti6l
nschumacher1k	bborerc6
nschumacher1k	agoom8t
nschumacher1k	rcasfordlu
nschumacher1k	brickfordmh
nschumacher1k	pjevesy
nschumacher1k	cfrodshamcj
nschumacher1k	mbamblett6b
nschumacher1k	kstollardnx
nschumacher1k	mingray15
nschumacher1k	rscrannyqr
nschumacher1k	daugustinei
nschumacher1k	eclashpj
nschumacher1k	rsigert5m
nschumacher1k	gcathels
nschumacher1k	fkeriqf
nschumacher1k	jjennaroy5l
nschumacher1k	gjurgensonfm
nschumacher1k	tantoniate8
nschumacher1k	wlavignern
nschumacher1k	slinekerj
nschumacher1k	bgodsafeau
nschumacher1k	zmcowis4o
pryce1l	vbursnallpb
pryce1l	cdanell46
pryce1l	vgenerylz
pryce1l	agovenlockjw
pryce1l	mcrutch44
pryce1l	ableasbya
pryce1l	bpeckes
pryce1l	nlorinczlb
pryce1l	aheareg9
pryce1l	atreskegq
pryce1l	lpearseqe
pryce1l	kleckenby7x
pryce1l	kgreenshielsqd
pryce1l	rtyttertonmk
pryce1l	tlenahanf0
pryce1l	gcathels
pryce1l	ppidgennq
pryce1l	aflipsenkh
pryce1l	amapledoorec4
pryce1l	kgainori1
pryce1l	fcatlowh9
pryce1l	bbonhome9o
pryce1l	bmcwardre
pryce1l	bcrocketlx
pryce1l	ljanugb
pryce1l	wpullmano4
pryce1l	wgoszji
pryce1l	bdurhamdi
pryce1l	lvanderwaltkc
pryce1l	asleep52
pryce1l	cschottlip4
pryce1l	dhutonow
pryce1l	jdeviney4j
pryce1l	abeachem7j
pryce1l	slodfordoj
pryce1l	rbilovusr7
pryce1l	mshepcuttbh
pryce1l	cdodingpp
pryce1l	esemmencee7
pryce1l	knixonjt
pryce1l	pcarradiceqm
pryce1l	lcale5g
pryce1l	lshalcrosk6
pryce1l	gpuddephattlf
pryce1l	jfilintsevop
pryce1l	sgayne76
pryce1l	agoom8t
pryce1l	aunthankk1
pryce1l	jeggleston66
pryce1l	ktatekb
pryce1l	kstollardnx
pryce1l	pjevesy
pryce1l	vstrudwickad
pryce1l	agrossman4d
pryce1l	jdivesfg
pryce1l	avanderwalt7h
pryce1l	brickfordmh
pryce1l	cfrodshamcj
pryce1l	bmccomas6x
pryce1l	cpetrellig5
pryce1l	efranz4p
pryce1l	rcasfordlu
pryce1l	mbamblett6b
pryce1l	fkeriqf
pryce1l	blukash6z
pryce1l	paylwardfx
pryce1l	daugustinei
pryce1l	jjennaroy5l
pryce1l	rscrannyqr
pryce1l	kmacrannellnj
pryce1l	zmcowis4o
pryce1l	gmackin9l
pryce1l	slinekerj
pryce1l	jkindredk5
pryce1l	emoreq4
pryce1l	lilchukde
pryce1l	khanningdb
pryce1l	ginger0
pryce1l	hhannam9f
pryce1l	sbroadwoodco
pryce1l	bdowdneyld
pryce1l	mtrustie4k
pryce1l	egrevilleae
pryce1l	lkolczynskion
pryce1l	tdeemanmi
pryce1l	wkubinr3
pryce1l	eotuohyqc
pryce1l	dlearmountn8
pryce1l	xchatelainnd
pryce1l	amontgomeryhb
pryce1l	kclorleynr
pryce1l	spickettgp
pryce1l	rrippin8w
pryce1l	jdonizeauc8
pryce1l	tpridittqs
pryce1l	kblampyr4
pryce1l	targileh8
pryce1l	sruskinga
pryce1l	freasce81
pryce1l	fhakergy
pryce1l	tbortoletti6l
pryce1l	scomellinir9
pryce1l	mkocherg8
pryce1l	tantoniate8
pryce1l	rnisbithmu
pryce1l	dcowxdx
pryce1l	mingray15
pryce1l	mlibermoreot
pryce1l	pderoos5s
pryce1l	lsweating92
pryce1l	cbalogbx
pryce1l	rsaxby8m
pryce1l	cdarnody9w
pryce1l	bgraberjj
pryce1l	pilyukhovb0
pryce1l	rpygottgt
pryce1l	bgodsafeau
pryce1l	rsigert5m
pryce1l	eclashpj
pryce1l	pbonasg4
pryce1l	jheyburn5c
pryce1l	bborerc6
pryce1l	erickwordgn
pryce1l	dboshersbq
pryce1l	wlavignern
pryce1l	sdishman9b
pryce1l	fteal8v
pryce1l	ekenningham5e
pryce1l	sclearekt
pryce1l	urotherape
pryce1l	lriddockeq
pryce1l	dkeggindg
pryce1l	gjurgensonfm
pryce1l	mjovicicg7
pryce1l	ajozwikbb
ahedling36	emoreq4
ahedling36	ppidgennq
ahedling36	ktatekb
ahedling36	ljanugb
ahedling36	khanningdb
ahedling36	kstollardnx
ahedling36	spickettgp
ahedling36	vgenerylz
ahedling36	rrippin8w
ahedling36	cfrodshamcj
ahedling36	mlibermoreot
ahedling36	dcowxdx
ahedling36	tantoniate8
ahedling36	pbonasg4
ahedling36	asleep52
ahedling36	aunthankk1
ahedling36	slodfordoj
ahedling36	targileh8
ahedling36	sbroadwoodco
ahedling36	sdishman9b
ahedling36	atreskegq
ahedling36	fhakergy
ahedling36	jdivesfg
ahedling36	slinekerj
ahedling36	bgodsafeau
ahedling36	cschottlip4
ahedling36	rtyttertonmk
ahedling36	sgayne76
ahedling36	bcrocketlx
ahedling36	pilyukhovb0
ahedling36	bbonhome9o
ahedling36	wgoszji
ahedling36	cbalogbx
ahedling36	bdurhamdi
ahedling36	kgreenshielsqd
ahedling36	mjovicicg7
ahedling36	aheareg9
ahedling36	agoom8t
ahedling36	aflipsenkh
ahedling36	vbursnallpb
ahedling36	bmcwardre
ahedling36	blukash6z
ahedling36	daugustinei
ahedling36	agrossman4d
ahedling36	ajozwikbb
ahedling36	tbortoletti6l
ahedling36	gmackin9l
ahedling36	freasce81
ahedling36	dboshersbq
ahedling36	kleckenby7x
ahedling36	ableasbya
ahedling36	gjurgensonfm
ahedling36	esemmencee7
ahedling36	wkubinr3
ahedling36	kclorleynr
ahedling36	lilchukde
ahedling36	fkeriqf
ahedling36	bdowdneyld
ahedling36	eotuohyqc
ahedling36	abeachem7j
ahedling36	mcrutch44
ahedling36	pderoos5s
ahedling36	jfilintsevop
ahedling36	gpuddephattlf
ahedling36	agovenlockjw
ahedling36	eclashpj
ahedling36	fteal8v
ahedling36	lkolczynskion
ahedling36	dlearmountn8
ahedling36	ginger0
ahedling36	lvanderwaltkc
ahedling36	brickfordmh
ahedling36	dkeggindg
ahedling36	mtrustie4k
ahedling36	jheyburn5c
ahedling36	bborerc6
ahedling36	bgraberjj
ahedling36	cdodingpp
ahedling36	lpearseqe
ahedling36	jdeviney4j
ahedling36	rcasfordlu
ahedling36	cdarnody9w
ahedling36	sclearekt
ahedling36	kmacrannellnj
ahedling36	rsigert5m
ahedling36	rbilovusr7
ahedling36	mbamblett6b
ahedling36	gcathels
ahedling36	kblampyr4
ahedling36	rscrannyqr
ahedling36	ekenningham5e
ahedling36	hhannam9f
ahedling36	mingray15
ahedling36	kgainori1
ahedling36	tlenahanf0
ahedling36	lsweating92
ahedling36	dhutonow
ahedling36	pjevesy
ahedling36	wlavignern
ahedling36	bpeckes
ahedling36	bmccomas6x
ahedling36	mshepcuttbh
ahedling36	nlorinczlb
ahedling36	amapledoorec4
ahedling36	efranz4p
ahedling36	urotherape
ahedling36	jdonizeauc8
ahedling36	rsaxby8m
ahedling36	rpygottgt
ahedling36	mkocherg8
ahedling36	jkindredk5
ahedling36	wpullmano4
ahedling36	tpridittqs
ahedling36	jjennaroy5l
ahedling36	scomellinir9
ahedling36	rnisbithmu
ahedling36	lriddockeq
ahedling36	erickwordgn
ahedling36	cpetrellig5
ahedling36	egrevilleae
ahedling36	zmcowis4o
ahedling36	amontgomeryhb
ahedling36	paylwardfx
ahedling36	jeggleston66
ahedling36	lshalcrosk6
ahedling36	tdeemanmi
ahedling36	cdanell46
ahedling36	lcale5g
ahedling36	sruskinga
ahedling36	knixonjt
ahedling36	pcarradiceqm
ahedling36	avanderwalt7h
ahedling36	fcatlowh9
ahedling36	xchatelainnd
ahedling36	vstrudwickad
mblencowe37	fcatlowh9
mblencowe37	brickfordmh
mblencowe37	wlavignern
mblencowe37	daugustinei
mblencowe37	kclorleynr
mblencowe37	mjovicicg7
mblencowe37	sclearekt
mblencowe37	agrossman4d
mblencowe37	wgoszji
mblencowe37	scomellinir9
mblencowe37	amapledoorec4
mblencowe37	jfilintsevop
mblencowe37	ableasbya
mblencowe37	bgraberjj
mblencowe37	sgayne76
mblencowe37	dkeggindg
mblencowe37	vstrudwickad
mblencowe37	gpuddephattlf
mblencowe37	cfrodshamcj
mblencowe37	lkolczynskion
mblencowe37	rsigert5m
mblencowe37	bbonhome9o
mblencowe37	ktatekb
mblencowe37	kstollardnx
mblencowe37	knixonjt
mblencowe37	fkeriqf
mblencowe37	bdurhamdi
mblencowe37	zmcowis4o
mblencowe37	pbonasg4
mblencowe37	tpridittqs
mblencowe37	ppidgennq
mblencowe37	pilyukhovb0
mblencowe37	bmcwardre
mblencowe37	jdeviney4j
mblencowe37	freasce81
mblencowe37	agovenlockjw
mblencowe37	sdishman9b
mblencowe37	cschottlip4
mblencowe37	rnisbithmu
mblencowe37	hhannam9f
mblencowe37	mingray15
mblencowe37	cdarnody9w
mblencowe37	kblampyr4
mblencowe37	ekenningham5e
mblencowe37	dboshersbq
mblencowe37	kgreenshielsqd
mblencowe37	rpygottgt
mblencowe37	gjurgensonfm
mblencowe37	vbursnallpb
mblencowe37	rsaxby8m
mblencowe37	slinekerj
mblencowe37	ajozwikbb
mblencowe37	jdonizeauc8
mblencowe37	bborerc6
mblencowe37	kgainori1
mblencowe37	lvanderwaltkc
mblencowe37	mkocherg8
mblencowe37	ljanugb
mblencowe37	lcale5g
mblencowe37	lilchukde
mblencowe37	mcrutch44
mblencowe37	rcasfordlu
mblencowe37	mbamblett6b
mblencowe37	gcathels
mblencowe37	agoom8t
mblencowe37	tantoniate8
mblencowe37	targileh8
mblencowe37	cbalogbx
mblencowe37	mshepcuttbh
mblencowe37	mtrustie4k
mblencowe37	blukash6z
mblencowe37	cpetrellig5
mblencowe37	cdodingpp
mblencowe37	wpullmano4
mblencowe37	jeggleston66
mblencowe37	cdanell46
mblencowe37	sruskinga
mblencowe37	asleep52
mblencowe37	egrevilleae
mblencowe37	vgenerylz
mblencowe37	kmacrannellnj
mblencowe37	rrippin8w
mblencowe37	pderoos5s
mblencowe37	jdivesfg
mblencowe37	bgodsafeau
mblencowe37	dcowxdx
mblencowe37	urotherape
mblencowe37	abeachem7j
mblencowe37	wkubinr3
mblencowe37	spickettgp
mblencowe37	bdowdneyld
mblencowe37	lpearseqe
mblencowe37	jkindredk5
mblencowe37	fteal8v
mblencowe37	tlenahanf0
mblencowe37	mlibermoreot
mblencowe37	aflipsenkh
mblencowe37	eotuohyqc
mblencowe37	gmackin9l
mblencowe37	lsweating92
mblencowe37	paylwardfx
mblencowe37	ginger0
mblencowe37	dhutonow
mblencowe37	bmccomas6x
mblencowe37	atreskegq
mblencowe37	avanderwalt7h
mblencowe37	rtyttertonmk
mblencowe37	esemmencee7
mblencowe37	tdeemanmi
mblencowe37	jheyburn5c
mblencowe37	pjevesy
mblencowe37	fhakergy
mblencowe37	aheareg9
mblencowe37	xchatelainnd
mblencowe37	jjennaroy5l
mblencowe37	aunthankk1
mblencowe37	kleckenby7x
mblencowe37	slodfordoj
mblencowe37	bcrocketlx
mblencowe37	nlorinczlb
mblencowe37	erickwordgn
mblencowe37	lriddockeq
mblencowe37	pcarradiceqm
mblencowe37	khanningdb
mblencowe37	lshalcrosk6
mblencowe37	rscrannyqr
mblencowe37	rbilovusr7
mblencowe37	efranz4p
mblencowe37	eclashpj
mblencowe37	emoreq4
mblencowe37	bpeckes
mblencowe37	dlearmountn8
pklasen3h	blukash6z
pklasen3h	mjovicicg7
pklasen3h	rpygottgt
pklasen3h	avanderwalt7h
pklasen3h	amapledoorec4
pklasen3h	jdeviney4j
pklasen3h	slinekerj
pklasen3h	kmacrannellnj
pklasen3h	egrevilleae
pklasen3h	gcathels
pklasen3h	jdivesfg
pklasen3h	ktatekb
pklasen3h	rnisbithmu
pklasen3h	mingray15
pklasen3h	cdarnody9w
pklasen3h	lcale5g
pklasen3h	dkeggindg
pklasen3h	gjurgensonfm
pklasen3h	hhannam9f
pklasen3h	mcrutch44
pklasen3h	bmcwardre
pklasen3h	cfrodshamcj
pklasen3h	nlorinczlb
pklasen3h	ppidgennq
pklasen3h	fkeriqf
pklasen3h	rsigert5m
pklasen3h	wpullmano4
pklasen3h	agoom8t
pklasen3h	rsaxby8m
pklasen3h	erickwordgn
pklasen3h	scomellinir9
pklasen3h	lpearseqe
pklasen3h	cbalogbx
pklasen3h	mlibermoreot
pklasen3h	kgreenshielsqd
pklasen3h	bgodsafeau
pklasen3h	tpridittqs
pklasen3h	pbonasg4
pklasen3h	vbursnallpb
pklasen3h	daugustinei
pklasen3h	mbamblett6b
pklasen3h	slodfordoj
pklasen3h	spickettgp
pklasen3h	wgoszji
pklasen3h	mtrustie4k
pklasen3h	bdurhamdi
pklasen3h	lshalcrosk6
pklasen3h	aunthankk1
pklasen3h	ekenningham5e
pklasen3h	sclearekt
pklasen3h	rrippin8w
pklasen3h	jjennaroy5l
pklasen3h	bmccomas6x
pklasen3h	tdeemanmi
pklasen3h	bdowdneyld
pklasen3h	rbilovusr7
pklasen3h	freasce81
pklasen3h	dboshersbq
pklasen3h	lvanderwaltkc
pklasen3h	eclashpj
pklasen3h	fhakergy
pklasen3h	ableasbya
pklasen3h	urotherape
pklasen3h	pilyukhovb0
pklasen3h	rscrannyqr
pklasen3h	bborerc6
pklasen3h	pderoos5s
pklasen3h	xchatelainnd
pklasen3h	zmcowis4o
pklasen3h	asleep52
pklasen3h	bbonhome9o
pklasen3h	tlenahanf0
pklasen3h	cschottlip4
pklasen3h	ginger0
pklasen3h	atreskegq
pklasen3h	ajozwikbb
pklasen3h	sdishman9b
pklasen3h	khanningdb
pklasen3h	mshepcuttbh
pklasen3h	pcarradiceqm
pklasen3h	efranz4p
pklasen3h	cdodingpp
pklasen3h	jheyburn5c
pklasen3h	rcasfordlu
pklasen3h	dhutonow
pklasen3h	tantoniate8
pklasen3h	bpeckes
pklasen3h	targileh8
pklasen3h	vgenerylz
pklasen3h	wkubinr3
pklasen3h	lilchukde
pklasen3h	paylwardfx
pklasen3h	dcowxdx
pklasen3h	lsweating92
pklasen3h	gmackin9l
pklasen3h	jeggleston66
pklasen3h	kblampyr4
pklasen3h	bcrocketlx
pklasen3h	mkocherg8
pklasen3h	bgraberjj
pklasen3h	jkindredk5
pklasen3h	fteal8v
pklasen3h	wlavignern
pklasen3h	kstollardnx
pklasen3h	rtyttertonmk
pklasen3h	lkolczynskion
pklasen3h	fcatlowh9
pklasen3h	dlearmountn8
pklasen3h	abeachem7j
pklasen3h	eotuohyqc
pklasen3h	aflipsenkh
pklasen3h	cdanell46
pklasen3h	esemmencee7
pklasen3h	emoreq4
pklasen3h	cpetrellig5
pklasen3h	sgayne76
pklasen3h	vstrudwickad
pklasen3h	sruskinga
pklasen3h	lriddockeq
pklasen3h	jfilintsevop
pklasen3h	pjevesy
pklasen3h	aheareg9
bcodner28	dboshersbq
bcodner28	bgraberjj
bcodner28	targileh8
bcodner28	fhakergy
bcodner28	pilyukhovb0
bcodner28	wlavignern
bcodner28	aunthankk1
bcodner28	rscrannyqr
bcodner28	fcatlowh9
bcodner28	wgoszji
bcodner28	vstrudwickad
bcodner28	emoreq4
bcodner28	kstollardnx
bcodner28	pderoos5s
bcodner28	mbamblett6b
bcodner28	sdishman9b
bcodner28	bbonhome9o
bcodner28	fkeriqf
bcodner28	dlearmountn8
bcodner28	bborerc6
bcodner28	nlorinczlb
bcodner28	bdowdneyld
bcodner28	mtrustie4k
bcodner28	lvanderwaltkc
bcodner28	aflipsenkh
bcodner28	rnisbithmu
bcodner28	slodfordoj
bcodner28	sclearekt
bcodner28	kgreenshielsqd
bcodner28	cdodingpp
bcodner28	bdurhamdi
bcodner28	urotherape
bcodner28	vgenerylz
bcodner28	gjurgensonfm
bcodner28	efranz4p
bcodner28	ajozwikbb
bcodner28	rsigert5m
bcodner28	lilchukde
bcodner28	paylwardfx
bcodner28	xchatelainnd
bcodner28	ableasbya
bcodner28	slinekerj
bcodner28	esemmencee7
bcodner28	jdeviney4j
bcodner28	jdivesfg
bcodner28	cdarnody9w
bcodner28	cdanell46
bcodner28	kblampyr4
bcodner28	mcrutch44
bcodner28	jheyburn5c
bcodner28	ginger0
bcodner28	tpridittqs
bcodner28	bmcwardre
bcodner28	tlenahanf0
bcodner28	cbalogbx
bcodner28	dhutonow
bcodner28	eclashpj
bcodner28	mshepcuttbh
bcodner28	lriddockeq
bcodner28	jfilintsevop
bcodner28	sruskinga
bcodner28	lshalcrosk6
bcodner28	zmcowis4o
bcodner28	mlibermoreot
bcodner28	rrippin8w
bcodner28	wpullmano4
bcodner28	dkeggindg
bcodner28	rtyttertonmk
bcodner28	rbilovusr7
bcodner28	cfrodshamcj
bcodner28	bpeckes
bcodner28	tdeemanmi
bcodner28	pjevesy
bcodner28	mingray15
bcodner28	abeachem7j
bcodner28	sgayne76
bcodner28	jeggleston66
bcodner28	lsweating92
bcodner28	gcathels
bcodner28	freasce81
bcodner28	egrevilleae
bcodner28	avanderwalt7h
bcodner28	jjennaroy5l
bcodner28	scomellinir9
bcodner28	asleep52
bcodner28	wkubinr3
bcodner28	lpearseqe
bcodner28	cpetrellig5
bcodner28	rpygottgt
bcodner28	eotuohyqc
bcodner28	erickwordgn
bcodner28	atreskegq
bcodner28	tantoniate8
bcodner28	lkolczynskion
bcodner28	bcrocketlx
bcodner28	bmccomas6x
bcodner28	hhannam9f
bcodner28	mkocherg8
bcodner28	pcarradiceqm
bcodner28	spickettgp
bcodner28	cschottlip4
bcodner28	gmackin9l
bcodner28	rcasfordlu
bcodner28	dcowxdx
bcodner28	kmacrannellnj
bcodner28	daugustinei
bcodner28	aheareg9
bcodner28	pbonasg4
bcodner28	jkindredk5
bcodner28	ekenningham5e
bcodner28	fteal8v
bcodner28	amapledoorec4
alefeuvre1x	cdarnody9w
alefeuvre1x	pjevesy
alefeuvre1x	tdeemanmi
alefeuvre1x	kmacrannellnj
alefeuvre1x	ekenningham5e
alefeuvre1x	cdodingpp
alefeuvre1x	lkolczynskion
alefeuvre1x	nlorinczlb
alefeuvre1x	sgayne76
alefeuvre1x	cdanell46
alefeuvre1x	lpearseqe
alefeuvre1x	bdurhamdi
alefeuvre1x	pcarradiceqm
alefeuvre1x	daugustinei
alefeuvre1x	wlavignern
alefeuvre1x	rrippin8w
alefeuvre1x	rcasfordlu
alefeuvre1x	slodfordoj
alefeuvre1x	freasce81
alefeuvre1x	bpeckes
alefeuvre1x	rnisbithmu
alefeuvre1x	lvanderwaltkc
alefeuvre1x	bmccomas6x
alefeuvre1x	fhakergy
alefeuvre1x	wgoszji
alefeuvre1x	wpullmano4
alefeuvre1x	bbonhome9o
alefeuvre1x	tpridittqs
alefeuvre1x	dkeggindg
alefeuvre1x	kblampyr4
alefeuvre1x	jheyburn5c
alefeuvre1x	emoreq4
alefeuvre1x	bborerc6
alefeuvre1x	pderoos5s
alefeuvre1x	ajozwikbb
alefeuvre1x	abeachem7j
alefeuvre1x	sruskinga
alefeuvre1x	ginger0
alefeuvre1x	fkeriqf
alefeuvre1x	eotuohyqc
alefeuvre1x	paylwardfx
alefeuvre1x	cbalogbx
alefeuvre1x	pbonasg4
alefeuvre1x	mlibermoreot
alefeuvre1x	jdivesfg
alefeuvre1x	hhannam9f
alefeuvre1x	egrevilleae
alefeuvre1x	targileh8
alefeuvre1x	zmcowis4o
alefeuvre1x	rbilovusr7
alefeuvre1x	scomellinir9
alefeuvre1x	aflipsenkh
alefeuvre1x	mingray15
alefeuvre1x	mcrutch44
alefeuvre1x	sclearekt
alefeuvre1x	mkocherg8
alefeuvre1x	vstrudwickad
alefeuvre1x	dhutonow
alefeuvre1x	cpetrellig5
alefeuvre1x	efranz4p
alefeuvre1x	eclashpj
alefeuvre1x	gcathels
alefeuvre1x	bcrocketlx
alefeuvre1x	amapledoorec4
alefeuvre1x	dlearmountn8
alefeuvre1x	bmcwardre
alefeuvre1x	bgraberjj
alefeuvre1x	rpygottgt
alefeuvre1x	avanderwalt7h
alefeuvre1x	ableasbya
alefeuvre1x	jfilintsevop
alefeuvre1x	gjurgensonfm
alefeuvre1x	wkubinr3
alefeuvre1x	asleep52
alefeuvre1x	dcowxdx
alefeuvre1x	pilyukhovb0
alefeuvre1x	vgenerylz
alefeuvre1x	kgreenshielsqd
alefeuvre1x	bdowdneyld
alefeuvre1x	sdishman9b
alefeuvre1x	lsweating92
alefeuvre1x	gmackin9l
alefeuvre1x	jeggleston66
alefeuvre1x	jdeviney4j
alefeuvre1x	spickettgp
alefeuvre1x	fcatlowh9
alefeuvre1x	lshalcrosk6
alefeuvre1x	lriddockeq
alefeuvre1x	rsigert5m
alefeuvre1x	tantoniate8
alefeuvre1x	jkindredk5
alefeuvre1x	mtrustie4k
alefeuvre1x	aheareg9
alefeuvre1x	urotherape
alefeuvre1x	rscrannyqr
alefeuvre1x	fteal8v
alefeuvre1x	aunthankk1
alefeuvre1x	jjennaroy5l
alefeuvre1x	rtyttertonmk
alefeuvre1x	cfrodshamcj
alefeuvre1x	mshepcuttbh
alefeuvre1x	lilchukde
alefeuvre1x	esemmencee7
tderyebarrett2l	fcatlowh9
tderyebarrett2l	tantoniate8
tderyebarrett2l	rnisbithmu
tderyebarrett2l	mcrutch44
tderyebarrett2l	jheyburn5c
tderyebarrett2l	eotuohyqc
tderyebarrett2l	cdodingpp
tderyebarrett2l	ekenningham5e
tderyebarrett2l	pilyukhovb0
tderyebarrett2l	scomellinir9
tderyebarrett2l	bmcwardre
tderyebarrett2l	amapledoorec4
tderyebarrett2l	mshepcuttbh
tderyebarrett2l	freasce81
tderyebarrett2l	bbonhome9o
tderyebarrett2l	jeggleston66
tderyebarrett2l	bmccomas6x
tderyebarrett2l	fteal8v
tderyebarrett2l	lshalcrosk6
tderyebarrett2l	pbonasg4
tderyebarrett2l	pjevesy
tderyebarrett2l	daugustinei
tderyebarrett2l	cbalogbx
tderyebarrett2l	cpetrellig5
tderyebarrett2l	emoreq4
tderyebarrett2l	wgoszji
tderyebarrett2l	wkubinr3
tderyebarrett2l	lvanderwaltkc
tderyebarrett2l	tdeemanmi
tderyebarrett2l	abeachem7j
tderyebarrett2l	mlibermoreot
tderyebarrett2l	wlavignern
tderyebarrett2l	rscrannyqr
tderyebarrett2l	spickettgp
tderyebarrett2l	hhannam9f
tderyebarrett2l	bgraberjj
tderyebarrett2l	lpearseqe
tderyebarrett2l	zmcowis4o
tderyebarrett2l	nlorinczlb
tderyebarrett2l	vstrudwickad
tderyebarrett2l	pcarradiceqm
tderyebarrett2l	gmackin9l
tderyebarrett2l	avanderwalt7h
tderyebarrett2l	slodfordoj
tderyebarrett2l	kmacrannellnj
tderyebarrett2l	fkeriqf
tderyebarrett2l	rcasfordlu
tderyebarrett2l	jdivesfg
tderyebarrett2l	ginger0
tderyebarrett2l	cdarnody9w
tderyebarrett2l	rrippin8w
tderyebarrett2l	jfilintsevop
tderyebarrett2l	mtrustie4k
tderyebarrett2l	aheareg9
tderyebarrett2l	sruskinga
tderyebarrett2l	jdeviney4j
tderyebarrett2l	egrevilleae
tderyebarrett2l	sgayne76
tderyebarrett2l	lilchukde
tderyebarrett2l	bcrocketlx
tderyebarrett2l	cfrodshamcj
tderyebarrett2l	ajozwikbb
tderyebarrett2l	asleep52
tderyebarrett2l	lriddockeq
tderyebarrett2l	mkocherg8
tderyebarrett2l	dlearmountn8
tderyebarrett2l	kblampyr4
tderyebarrett2l	cdanell46
tderyebarrett2l	aflipsenkh
tderyebarrett2l	efranz4p
tderyebarrett2l	vgenerylz
tderyebarrett2l	bpeckes
tderyebarrett2l	paylwardfx
tderyebarrett2l	tpridittqs
tderyebarrett2l	fhakergy
tderyebarrett2l	lkolczynskion
tderyebarrett2l	bdowdneyld
tderyebarrett2l	targileh8
tderyebarrett2l	eclashpj
tderyebarrett2l	pderoos5s
tderyebarrett2l	jjennaroy5l
tderyebarrett2l	sdishman9b
tderyebarrett2l	bdurhamdi
tderyebarrett2l	esemmencee7
tderyebarrett2l	dkeggindg
tderyebarrett2l	rpygottgt
tderyebarrett2l	dhutonow
tderyebarrett2l	wpullmano4
tderyebarrett2l	kgreenshielsqd
tderyebarrett2l	rbilovusr7
tderyebarrett2l	gcathels
tderyebarrett2l	lsweating92
tderyebarrett2l	mingray15
tderyebarrett2l	rtyttertonmk
tderyebarrett2l	urotherape
ccraxford2m	mkocherg8
ccraxford2m	tdeemanmi
ccraxford2m	sdishman9b
ccraxford2m	lsweating92
ccraxford2m	fhakergy
ccraxford2m	lriddockeq
ccraxford2m	scomellinir9
ccraxford2m	aflipsenkh
ccraxford2m	gmackin9l
ccraxford2m	pbonasg4
ccraxford2m	wpullmano4
ccraxford2m	zmcowis4o
ccraxford2m	cdodingpp
ccraxford2m	cdarnody9w
ccraxford2m	bmcwardre
ccraxford2m	cfrodshamcj
ccraxford2m	eotuohyqc
ccraxford2m	mcrutch44
ccraxford2m	mshepcuttbh
ccraxford2m	bpeckes
ccraxford2m	bbonhome9o
ccraxford2m	aheareg9
ccraxford2m	efranz4p
ccraxford2m	ekenningham5e
ccraxford2m	cdanell46
ccraxford2m	jfilintsevop
ccraxford2m	rbilovusr7
ccraxford2m	avanderwalt7h
ccraxford2m	dlearmountn8
ccraxford2m	freasce81
ccraxford2m	ginger0
ccraxford2m	esemmencee7
ccraxford2m	rpygottgt
ccraxford2m	rtyttertonmk
ccraxford2m	kblampyr4
ccraxford2m	bcrocketlx
ccraxford2m	lvanderwaltkc
ccraxford2m	pcarradiceqm
ccraxford2m	rcasfordlu
ccraxford2m	lpearseqe
ccraxford2m	bdowdneyld
ccraxford2m	cpetrellig5
ccraxford2m	vstrudwickad
ccraxford2m	pjevesy
ccraxford2m	pilyukhovb0
ccraxford2m	lshalcrosk6
ccraxford2m	vgenerylz
ccraxford2m	jdivesfg
ccraxford2m	dkeggindg
ccraxford2m	mlibermoreot
ccraxford2m	slodfordoj
ccraxford2m	asleep52
ccraxford2m	jheyburn5c
ccraxford2m	paylwardfx
ccraxford2m	rrippin8w
ccraxford2m	gcathels
ccraxford2m	emoreq4
ccraxford2m	fteal8v
ccraxford2m	abeachem7j
ccraxford2m	hhannam9f
ccraxford2m	cbalogbx
ccraxford2m	mingray15
ccraxford2m	bdurhamdi
ccraxford2m	tpridittqs
ccraxford2m	bgraberjj
ccraxford2m	urotherape
ccraxford2m	wkubinr3
ccraxford2m	rnisbithmu
ccraxford2m	bmccomas6x
ccraxford2m	pderoos5s
ccraxford2m	fkeriqf
ccraxford2m	wgoszji
ccraxford2m	lilchukde
ccraxford2m	targileh8
ccraxford2m	dhutonow
ccraxford2m	lkolczynskion
ccraxford2m	spickettgp
ccraxford2m	kmacrannellnj
ccraxford2m	amapledoorec4
ccraxford2m	mtrustie4k
ccraxford2m	daugustinei
ccraxford2m	nlorinczlb
ccraxford2m	jeggleston66
ccraxford2m	ajozwikbb
ccraxford2m	egrevilleae
ccraxford2m	kgreenshielsqd
ccraxford2m	sruskinga
gcrigin2q	mkocherg8
gcrigin2q	rpygottgt
gcrigin2q	tpridittqs
gcrigin2q	fkeriqf
gcrigin2q	lriddockeq
gcrigin2q	rrippin8w
gcrigin2q	lkolczynskion
gcrigin2q	bgraberjj
gcrigin2q	lsweating92
gcrigin2q	aflipsenkh
gcrigin2q	kblampyr4
gcrigin2q	cfrodshamcj
gcrigin2q	mlibermoreot
gcrigin2q	tdeemanmi
gcrigin2q	cdodingpp
gcrigin2q	lvanderwaltkc
gcrigin2q	pbonasg4
gcrigin2q	cdanell46
gcrigin2q	rtyttertonmk
gcrigin2q	fteal8v
gcrigin2q	eotuohyqc
gcrigin2q	emoreq4
gcrigin2q	vgenerylz
gcrigin2q	daugustinei
gcrigin2q	bmcwardre
gcrigin2q	dkeggindg
gcrigin2q	sruskinga
gcrigin2q	rcasfordlu
gcrigin2q	kgreenshielsqd
gcrigin2q	wkubinr3
gcrigin2q	bpeckes
gcrigin2q	freasce81
gcrigin2q	gcathels
gcrigin2q	bdowdneyld
gcrigin2q	cpetrellig5
gcrigin2q	vstrudwickad
gcrigin2q	efranz4p
gcrigin2q	zmcowis4o
gcrigin2q	avanderwalt7h
gcrigin2q	ginger0
gcrigin2q	abeachem7j
gcrigin2q	wpullmano4
gcrigin2q	scomellinir9
gcrigin2q	nlorinczlb
gcrigin2q	mingray15
gcrigin2q	rbilovusr7
gcrigin2q	bcrocketlx
gcrigin2q	asleep52
gcrigin2q	aheareg9
gcrigin2q	amapledoorec4
gcrigin2q	fhakergy
gcrigin2q	spickettgp
gcrigin2q	kmacrannellnj
gcrigin2q	mcrutch44
gcrigin2q	egrevilleae
gcrigin2q	jheyburn5c
gcrigin2q	pilyukhovb0
gcrigin2q	esemmencee7
gcrigin2q	jeggleston66
gcrigin2q	pjevesy
gcrigin2q	lshalcrosk6
gcrigin2q	sdishman9b
gcrigin2q	lpearseqe
gcrigin2q	urotherape
gcrigin2q	bmccomas6x
gcrigin2q	hhannam9f
gcrigin2q	mtrustie4k
gcrigin2q	cbalogbx
gcrigin2q	wgoszji
gcrigin2q	paylwardfx
gcrigin2q	gmackin9l
gcrigin2q	dlearmountn8
gcrigin2q	lilchukde
gcrigin2q	cdarnody9w
gcrigin2q	bdurhamdi
gcrigin2q	mshepcuttbh
gcrigin2q	jfilintsevop
gcrigin2q	ajozwikbb
gcrigin2q	rnisbithmu
gcrigin2q	jdivesfg
jhunnicutt2r	emoreq4
jhunnicutt2r	cdanell46
jhunnicutt2r	fkeriqf
jhunnicutt2r	cpetrellig5
jhunnicutt2r	mcrutch44
jhunnicutt2r	abeachem7j
jhunnicutt2r	jdivesfg
jhunnicutt2r	wpullmano4
jhunnicutt2r	tdeemanmi
jhunnicutt2r	sdishman9b
jhunnicutt2r	rnisbithmu
jhunnicutt2r	bmcwardre
jhunnicutt2r	dlearmountn8
jhunnicutt2r	lshalcrosk6
jhunnicutt2r	kmacrannellnj
jhunnicutt2r	rcasfordlu
jhunnicutt2r	avanderwalt7h
jhunnicutt2r	nlorinczlb
jhunnicutt2r	freasce81
jhunnicutt2r	jeggleston66
jhunnicutt2r	rrippin8w
jhunnicutt2r	cdarnody9w
jhunnicutt2r	jfilintsevop
jhunnicutt2r	amapledoorec4
jhunnicutt2r	esemmencee7
jhunnicutt2r	vgenerylz
jhunnicutt2r	ajozwikbb
jhunnicutt2r	mlibermoreot
jhunnicutt2r	rpygottgt
jhunnicutt2r	ginger0
jhunnicutt2r	pilyukhovb0
jhunnicutt2r	bmccomas6x
jhunnicutt2r	lriddockeq
jhunnicutt2r	eotuohyqc
jhunnicutt2r	mshepcuttbh
jhunnicutt2r	fhakergy
jhunnicutt2r	pjevesy
jhunnicutt2r	pbonasg4
jhunnicutt2r	lvanderwaltkc
jhunnicutt2r	lsweating92
jhunnicutt2r	kgreenshielsqd
jhunnicutt2r	hhannam9f
jhunnicutt2r	cfrodshamcj
jhunnicutt2r	sruskinga
jhunnicutt2r	rbilovusr7
jhunnicutt2r	bcrocketlx
jhunnicutt2r	paylwardfx
jhunnicutt2r	cdodingpp
jhunnicutt2r	tpridittqs
jhunnicutt2r	bdurhamdi
jhunnicutt2r	dkeggindg
jhunnicutt2r	lilchukde
jhunnicutt2r	bgraberjj
jhunnicutt2r	mingray15
jhunnicutt2r	scomellinir9
jhunnicutt2r	efranz4p
jhunnicutt2r	spickettgp
jhunnicutt2r	aheareg9
jhunnicutt2r	mtrustie4k
jhunnicutt2r	gmackin9l
jhunnicutt2r	rtyttertonmk
jhunnicutt2r	bpeckes
jhunnicutt2r	wkubinr3
jhunnicutt2r	vstrudwickad
jhunnicutt2r	kblampyr4
jhunnicutt2r	zmcowis4o
jhunnicutt2r	aflipsenkh
jhunnicutt2r	lkolczynskion
jhunnicutt2r	jheyburn5c
jhunnicutt2r	gcathels
jhunnicutt2r	cbalogbx
jhunnicutt2r	asleep52
glockyer2u	rbilovusr7
glockyer2u	emoreq4
kmayston5y	ginger0
kmayston5y	rbilovusr7
kmayston5y	vstrudwickad
glockyer2u	efranz4p
glockyer2u	ginger0
glockyer2u	dlearmountn8
kmayston5y	efranz4p
glockyer2u	jeggleston66
glockyer2u	cdarnody9w
kmayston5y	jeggleston66
kmayston5y	cdarnody9w
kmayston5y	emoreq4
glockyer2u	gmackin9l
kmayston5y	gmackin9l
glockyer2u	vstrudwickad
kmayston5y	dlearmountn8
kmayston5y	fkeriqf
glockyer2u	amapledoorec4
glockyer2u	bdurhamdi
glockyer2u	hhannam9f
kmayston5y	kgreenshielsqd
glockyer2u	kgreenshielsqd
kmayston5y	hhannam9f
kmayston5y	bdurhamdi
kmayston5y	rpygottgt
glockyer2u	rpygottgt
kmayston5y	ajozwikbb
glockyer2u	ajozwikbb
kmayston5y	cdodingpp
glockyer2u	cdodingpp
kmayston5y	aheareg9
glockyer2u	aheareg9
kmayston5y	gcathels
glockyer2u	gcathels
glockyer2u	sdishman9b
kmayston5y	sdishman9b
kmayston5y	amapledoorec4
glockyer2u	fkeriqf
kmayston5y	fhakergy
glockyer2u	tdeemanmi
kmayston5y	tdeemanmi
glockyer2u	nlorinczlb
kmayston5y	nlorinczlb
kmayston5y	wpullmano4
glockyer2u	wpullmano4
glockyer2u	bgraberjj
kmayston5y	bgraberjj
glockyer2u	fhakergy
kmayston5y	eotuohyqc
glockyer2u	eotuohyqc
glockyer2u	dkeggindg
kmayston5y	dkeggindg
glockyer2u	bpeckes
kmayston5y	bpeckes
kmayston5y	pjevesy
glockyer2u	pjevesy
glockyer2u	abeachem7j
kmayston5y	abeachem7j
glockyer2u	freasce81
kmayston5y	freasce81
glockyer2u	avanderwalt7h
kmayston5y	avanderwalt7h
glockyer2u	zmcowis4o
kmayston5y	zmcowis4o
glockyer2u	rnisbithmu
glockyer2u	bcrocketlx
kmayston5y	bcrocketlx
glockyer2u	sruskinga
kmayston5y	mlibermoreot
kmayston5y	sruskinga
glockyer2u	mlibermoreot
kmayston5y	cdanell46
kmayston5y	lkolczynskion
kmayston5y	kmacrannellnj
glockyer2u	kmacrannellnj
kmayston5y	mshepcuttbh
glockyer2u	mshepcuttbh
kmayston5y	esemmencee7
kmayston5y	paylwardfx
glockyer2u	paylwardfx
glockyer2u	esemmencee7
glockyer2u	tpridittqs
kmayston5y	tpridittqs
kmayston5y	rnisbithmu
glockyer2u	lkolczynskion
glockyer2u	cdanell46
glockyer2u	scomellinir9
kmayston5y	jdivesfg
glockyer2u	jdivesfg
kmayston5y	mtrustie4k
glockyer2u	mtrustie4k
glockyer2u	vgenerylz
kmayston5y	vgenerylz
glockyer2u	rtyttertonmk
kmayston5y	rtyttertonmk
glockyer2u	pilyukhovb0
kmayston5y	pilyukhovb0
kmayston5y	scomellinir9
glockyer2u	lsweating92
kmayston5y	lsweating92
glockyer2u	aflipsenkh
kmayston5y	aflipsenkh
glockyer2u	lvanderwaltkc
kmayston5y	lvanderwaltkc
glockyer2u	cbalogbx
kmayston5y	cbalogbx
glockyer2u	jfilintsevop
glockyer2u	jheyburn5c
kmayston5y	bmccomas6x
glockyer2u	bmccomas6x
glockyer2u	cpetrellig5
kmayston5y	cpetrellig5
glockyer2u	cfrodshamcj
glockyer2u	lshalcrosk6
kmayston5y	lshalcrosk6
kmayston5y	cfrodshamcj
kmayston5y	asleep52
kmayston5y	wkubinr3
glockyer2u	asleep52
kmayston5y	jheyburn5c
kmayston5y	jfilintsevop
glockyer2u	wkubinr3
tsigg3j	sruskinga
tsigg3j	vgenerylz
tsigg3j	esemmencee7
tsigg3j	tdeemanmi
tsigg3j	vstrudwickad
tsigg3j	avanderwalt7h
tsigg3j	rpygottgt
tsigg3j	rnisbithmu
tsigg3j	emoreq4
tsigg3j	lvanderwaltkc
tsigg3j	wpullmano4
tsigg3j	ginger0
tsigg3j	rbilovusr7
tsigg3j	lkolczynskion
tsigg3j	zmcowis4o
tsigg3j	hhannam9f
tsigg3j	kgreenshielsqd
tsigg3j	bgraberjj
tsigg3j	cpetrellig5
tsigg3j	fkeriqf
tsigg3j	paylwardfx
tsigg3j	scomellinir9
tsigg3j	cbalogbx
tsigg3j	jheyburn5c
tsigg3j	gmackin9l
tsigg3j	lsweating92
tsigg3j	bmccomas6x
tsigg3j	mlibermoreot
tsigg3j	nlorinczlb
tsigg3j	bcrocketlx
tsigg3j	efranz4p
tsigg3j	kmacrannellnj
tsigg3j	bpeckes
tsigg3j	pilyukhovb0
tsigg3j	gcathels
tsigg3j	bdurhamdi
tsigg3j	fhakergy
tsigg3j	aheareg9
tsigg3j	eotuohyqc
tsigg3j	cdanell46
tsigg3j	cdodingpp
tsigg3j	freasce81
tsigg3j	lshalcrosk6
tsigg3j	mtrustie4k
tsigg3j	jeggleston66
tsigg3j	sdishman9b
tsigg3j	cfrodshamcj
tsigg3j	amapledoorec4
tsigg3j	mshepcuttbh
tsigg3j	aflipsenkh
tsigg3j	jdivesfg
tsigg3j	rtyttertonmk
tsigg3j	pjevesy
tsigg3j	tpridittqs
fmayler2y	kgreenshielsqd
fmayler2y	ginger0
fmayler2y	cdodingpp
fmayler2y	jheyburn5c
fmayler2y	emoreq4
fmayler2y	mlibermoreot
fmayler2y	esemmencee7
fmayler2y	gmackin9l
fmayler2y	rtyttertonmk
fmayler2y	rbilovusr7
fmayler2y	nlorinczlb
fmayler2y	rpygottgt
fmayler2y	hhannam9f
fmayler2y	sruskinga
fmayler2y	eotuohyqc
fmayler2y	jeggleston66
fmayler2y	lshalcrosk6
fmayler2y	amapledoorec4
fmayler2y	fkeriqf
fmayler2y	bgraberjj
fmayler2y	cbalogbx
fmayler2y	tdeemanmi
fmayler2y	wpullmano4
fmayler2y	efranz4p
fmayler2y	gcathels
fmayler2y	rnisbithmu
fmayler2y	jdivesfg
fmayler2y	vstrudwickad
fmayler2y	mshepcuttbh
fmayler2y	scomellinir9
fmayler2y	freasce81
fmayler2y	fhakergy
fmayler2y	lkolczynskion
fmayler2y	bcrocketlx
fmayler2y	aheareg9
fmayler2y	aflipsenkh
fmayler2y	mtrustie4k
fmayler2y	lsweating92
fmayler2y	kmacrannellnj
fmayler2y	vgenerylz
fmayler2y	zmcowis4o
fmayler2y	paylwardfx
fmayler2y	cdanell46
fmayler2y	avanderwalt7h
fmayler2y	sdishman9b
fmayler2y	bdurhamdi
fmayler2y	bpeckes
fmayler2y	pilyukhovb0
proux2c	lsweating92
proux2c	vgenerylz
proux2c	rpygottgt
proux2c	cbalogbx
proux2c	freasce81
proux2c	eotuohyqc
proux2c	mlibermoreot
proux2c	aflipsenkh
proux2c	sruskinga
proux2c	fkeriqf
proux2c	ginger0
proux2c	zmcowis4o
proux2c	cdanell46
proux2c	bpeckes
proux2c	sdishman9b
proux2c	gmackin9l
proux2c	kgreenshielsqd
proux2c	lshalcrosk6
proux2c	pilyukhovb0
proux2c	lkolczynskion
proux2c	jheyburn5c
proux2c	bdurhamdi
proux2c	vstrudwickad
proux2c	gcathels
proux2c	esemmencee7
proux2c	bcrocketlx
proux2c	rnisbithmu
proux2c	paylwardfx
proux2c	scomellinir9
proux2c	bgraberjj
proux2c	jdivesfg
proux2c	nlorinczlb
proux2c	wpullmano4
proux2c	kmacrannellnj
proux2c	fhakergy
proux2c	tdeemanmi
proux2c	amapledoorec4
proux2c	mtrustie4k
proux2c	avanderwalt7h
proux2c	rtyttertonmk
proux2c	rbilovusr7
fboyall56	fkeriqf
fboyall56	bcrocketlx
fboyall56	vgenerylz
fboyall56	tdeemanmi
fboyall56	wpullmano4
fboyall56	vstrudwickad
fboyall56	kgreenshielsqd
fboyall56	mtrustie4k
fboyall56	pilyukhovb0
fboyall56	zmcowis4o
fboyall56	avanderwalt7h
fboyall56	nlorinczlb
fboyall56	kmacrannellnj
fboyall56	rnisbithmu
fboyall56	bdurhamdi
fboyall56	sdishman9b
fboyall56	amapledoorec4
fboyall56	lshalcrosk6
fboyall56	ginger0
fboyall56	sruskinga
fboyall56	aflipsenkh
fboyall56	mlibermoreot
fboyall56	lkolczynskion
fboyall56	bpeckes
fboyall56	freasce81
fboyall56	paylwardfx
fboyall56	jdivesfg
fboyall56	lsweating92
fboyall56	cdanell46
fboyall56	gmackin9l
fboyall56	jheyburn5c
fboyall56	gcathels
fboyall56	eotuohyqc
fboyall56	rpygottgt
oboshell3l	kmacrannellnj
oboshell3l	nlorinczlb
oboshell3l	vstrudwickad
oboshell3l	jdivesfg
oboshell3l	mlibermoreot
oboshell3l	tdeemanmi
oboshell3l	vgenerylz
oboshell3l	jheyburn5c
oboshell3l	mtrustie4k
oboshell3l	avanderwalt7h
oboshell3l	paylwardfx
oboshell3l	ginger0
oboshell3l	lsweating92
oboshell3l	wpullmano4
oboshell3l	kgreenshielsqd
oboshell3l	amapledoorec4
oboshell3l	gmackin9l
oboshell3l	zmcowis4o
oboshell3l	rpygottgt
oboshell3l	sruskinga
oboshell3l	fkeriqf
oboshell3l	bpeckes
oboshell3l	gcathels
oboshell3l	aflipsenkh
oboshell3l	pilyukhovb0
oboshell3l	lshalcrosk6
jmaclennan4z	gbinhamhe
cbaden1d	ptimsoni7
cbaden1d	dtinlinedd
jmaclennan4z	fwicherfe
cbaden1d	spointsjc
cbaden1d	dkobesoa
cbaden1d	fwicherfe
cbaden1d	mkowalskica
jmaclennan4z	dtinlinedd
jmaclennan4z	ptimsoni7
cbaden1d	gbinhamhe
cbaden1d	rmcgibbonom
cbaden1d	todonegan64
jmaclennan4z	mtwinningg6
jmaclennan4z	rmcgibbonom
jmaclennan4z	mkowalskica
cbaden1d	tanderssoncl
jmaclennan4z	todonegan64
cbaden1d	mtwinningg6
jmaclennan4z	efretwellkr
cbaden1d	bpidduckg
jmaclennan4z	bpidduckg
cbaden1d	rrene9m
cbaden1d	efretwellkr
jmaclennan4z	tanderssoncl
jmaclennan4z	mstoeckq8
jmaclennan4z	ekenderfh
cbaden1d	ekenderfh
jmaclennan4z	slowthay
cbaden1d	mstoeckq8
jmaclennan4z	dkobesoa
cbaden1d	slowthay
jmaclennan4z	spointsjc
cbaden1d	fsiene91
jmaclennan4z	fsiene91
jmaclennan4z	maldieex
cbaden1d	maldieex
cbaden1d	pgreyax
cbaden1d	bstlouismo
jmaclennan4z	cheatlypm
cbaden1d	cheatlypm
jmaclennan4z	lfenckm8
cbaden1d	lfenckm8
jmaclennan4z	nsimpkissbd
cbaden1d	nsimpkissbd
jmaclennan4z	sbalshenp1
jmaclennan4z	ldronsfieldgd
jmaclennan4z	jabellamv
cbaden1d	jabellamv
jmaclennan4z	bstlouismo
cbaden1d	cmaymandfu
jmaclennan4z	ndysartkm
cbaden1d	chuzzey85
jmaclennan4z	cmaymandfu
jmaclennan4z	lpipkingu
jmaclennan4z	chuzzey85
cbaden1d	astreaterik
jmaclennan4z	rstranaghaney
cbaden1d	rstranaghaney
cbaden1d	ldronsfieldgd
jmaclennan4z	sbriztmandy
cbaden1d	asinnettjh
cbaden1d	sbriztmandy
jmaclennan4z	asinnettjh
jmaclennan4z	mgillan9v
cbaden1d	sbalshenp1
cbaden1d	mgillan9v
cbaden1d	sgheorghiepz
jmaclennan4z	edorrqi
cbaden1d	edorrqi
cbaden1d	gsonleyb9
jmaclennan4z	gsonleyb9
cbaden1d	lpipkingu
jmaclennan4z	cbourdells
cbaden1d	cbourdells
jmaclennan4z	sgheorghiepz
cbaden1d	ndysartkm
jmaclennan4z	astreaterik
jmaclennan4z	zhark6r
jmaclennan4z	lnardrupjm
cbaden1d	lnardrupjm
jmaclennan4z	fbazogepw
cbaden1d	fbazogepw
jmaclennan4z	pgreyax
cbaden1d	wmonetib7
jmaclennan4z	wmonetib7
cbaden1d	zhark6r
cbaden1d	mtolworthieh4
jmaclennan4z	mtolworthieh4
cbaden1d	ksyrattbk
cbaden1d	ccastelijnz
jmaclennan4z	ccastelijnz
jmaclennan4z	ksyrattbk
jmaclennan4z	ldanhere5
jmaclennan4z	ccrosgrove1z
cbaden1d	ccrosgrove1z
cbaden1d	kyeardsleybn
cbaden1d	ksillwoodn0
jmaclennan4z	rgodarbp
cbaden1d	tgresonbs
jmaclennan4z	siacomi69
cbaden1d	siacomi69
cbaden1d	pmelvillenh
jmaclennan4z	pmelvillenh
cbaden1d	ascibseync
jmaclennan4z	ascibseync
jmaclennan4z	cdmitrievskijb
jmaclennan4z	cnoted9
jmaclennan4z	tgresonbs
cbaden1d	lbodycombe8d
jmaclennan4z	lbodycombe8d
cbaden1d	cnoted9
cbaden1d	rgodarbp
jmaclennan4z	amowsdaleaw
cbaden1d	amowsdaleaw
jmaclennan4z	hphilsonkv
cbaden1d	hphilsonkv
jmaclennan4z	icadmanla
cbaden1d	icadmanla
cbaden1d	hjarmainjg
cbaden1d	kverdenc1
jmaclennan4z	kverdenc1
jmaclennan4z	hjarmainjg
cbaden1d	mdunnb8
jmaclennan4z	mdunnb8
cbaden1d	ldanhere5
cbaden1d	vgallafant12
jmaclennan4z	vgallafant12
cbaden1d	cdmitrievskijb
jmaclennan4z	ksillwoodn0
cbaden1d	ysheridanif
jmaclennan4z	wwykeme
cbaden1d	wwykeme
jmaclennan4z	ysheridanif
jmaclennan4z	kyeardsleybn
jmaclennan4z	btrousdelldf
cbaden1d	btrousdelldf
jmaclennan4z	alistonemm
cbaden1d	alistonemm
jmaclennan4z	cpalphreyman95
cbaden1d	mpharrow9e
jmaclennan4z	mpharrow9e
cbaden1d	cpalphreyman95
cbaden1d	btidcombn
jmaclennan4z	btidcombn
cbaden1d	skeynes8b
cbaden1d	ginsleyk0
jmaclennan4z	ecraythornfs
jmaclennan4z	aeverlynz
jmaclennan4z	bvynehalldp
cbaden1d	ddigbylk
cbaden1d	odart9p
jmaclennan4z	ydeverehunt77
jmaclennan4z	vciobutarok8
jmaclennan4z	odart9p
jmaclennan4z	ddigbylk
jmaclennan4z	cethelstonb
jmaclennan4z	lhargieko
jmaclennan4z	ddadswellos
jmaclennan4z	ginsleyk0
cbaden1d	cethelstonb
jmaclennan4z	lalwenjy
cbaden1d	lalwenjy
jmaclennan4z	mcircuittcn
cbaden1d	mcircuittcn
jmaclennan4z	drikardiq
cbaden1d	drikardiq
jmaclennan4z	eaxcellu
cbaden1d	eaxcellu
jmaclennan4z	mlindstromc3
cbaden1d	mlindstromc3
cbaden1d	tsaddlercp
jmaclennan4z	tsaddlercp
cbaden1d	lhargieko
cbaden1d	apadghamq3
cbaden1d	jattewha
jmaclennan4z	jattewha
jmaclennan4z	tkainehn
cbaden1d	aeverlynz
jmaclennan4z	apadghamq3
cbaden1d	ecraythornfs
jmaclennan4z	pkeenegh
cbaden1d	tkainehn
cbaden1d	ddadswellos
cbaden1d	ncubbinr0
jmaclennan4z	ncubbinr0
cbaden1d	izaczekm4
cbaden1d	pkeenegh
jmaclennan4z	kohanniganml
cbaden1d	kohanniganml
cbaden1d	vciobutarok8
jmaclennan4z	izaczekm4
cbaden1d	ydeverehunt77
cbaden1d	bvynehalldp
jmaclennan4z	skeynes8b
cbaden1d	isurfleetdo
jmaclennan4z	abootei5
cbaden1d	abootei5
cbaden1d	kknathbo
cbaden1d	cwhitley14
jmaclennan4z	cwhitley14
jmaclennan4z	isurfleetdo
jmaclennan4z	kballaamj7
cbaden1d	kballaamj7
cbaden1d	csheardc
jmaclennan4z	csheardc
cbaden1d	lmahaffeyk
jmaclennan4z	nscothernlj
cbaden1d	nscothernlj
jmaclennan4z	lmahaffeyk
jmaclennan4z	ameddemmendz
jmaclennan4z	kknathbo
cbaden1d	mciobutaro6
jmaclennan4z	mciobutaro6
cbaden1d	ameddemmendz
jmaclennan4z	akrishtopaittis8h
cbaden1d	akrishtopaittis8h
cbaden1d	jdimentrl
jmaclennan4z	jdimentrl
jmaclennan4z	shannang1
cbaden1d	shannang1
jmaclennan4z	fstains93
cbaden1d	cdibbepy
jmaclennan4z	cdibbepy
jmaclennan4z	mbernardog2
cbaden1d	mbernardog2
cbaden1d	lpulleypf
jmaclennan4z	lpulleypf
cbaden1d	kfiddler9c
jmaclennan4z	kfiddler9c
jmaclennan4z	jmurcuttgo
cbaden1d	jmurcuttgo
cbaden1d	mhickford9n
jmaclennan4z	mhickford9n
cbaden1d	adeeproseo5
jmaclennan4z	adeeproseo5
cbaden1d	fstains93
jmaclennan4z	rvellacottkf
cbaden1d	rvellacottkf
jmaclennan4z	brubinfajniu
cbaden1d	brubinfajniu
jmaclennan4z	vbrenardim
cbaden1d	vbrenardim
jmaclennan4z	kmonaghan7q
cbaden1d	kmonaghan7q
cbaden1d	adymottat
jmaclennan4z	gflight6v
cbaden1d	gflight6v
cbaden1d	ilinderjz
jmaclennan4z	adymottat
jmaclennan4z	dgrushinig
jmaclennan4z	fedsalllh
cbaden1d	lpregalp3
jmaclennan4z	gdagonn3
cbaden1d	dgrushinig
cbaden1d	fedsalllh
jmaclennan4z	jmcquiltyaq
jmaclennan4z	gbleythingm
jmaclennan4z	arayman7a
cbaden1d	arayman7a
cbaden1d	gbleythingm
cbaden1d	gdagonn3
cbaden1d	bcahill62
jmaclennan4z	bcahill62
jmaclennan4z	salldreqg
cbaden1d	salldreqg
jmaclennan4z	ddayesnt
cbaden1d	ntomowicznm
jmaclennan4z	wmckelvieag
cbaden1d	jmcquiltyaq
jmaclennan4z	ewintonmb
jmaclennan4z	fberettaqt
cbaden1d	fberettaqt
cbaden1d	ewintonmb
jmaclennan4z	nwinny78
cbaden1d	nwinny78
cbaden1d	wmckelvieag
cbaden1d	ldiklehp
jmaclennan4z	ntomowicznm
jmaclennan4z	ilinderjz
jmaclennan4z	rmacronaldhf
cbaden1d	chadleef5
cbaden1d	eoneilq6
jmaclennan4z	eoneilq6
jmaclennan4z	chadleef5
jmaclennan4z	lmiddellra
jmaclennan4z	lpregalp3
cbaden1d	lmiddellra
cbaden1d	rmacronaldhf
jmaclennan4z	cbrenneke7s
jmaclennan4z	egarken3w
cbaden1d	egarken3w
jmaclennan4z	ldiklehp
cbaden1d	ddayesnt
cbaden1d	cbrenneke7s
lybarra22	ddigbylk
lybarra22	kfiddler9c
lybarra22	apadghamq3
lybarra22	bstlouismo
lybarra22	cmaymandfu
lybarra22	rmacronaldhf
lybarra22	alistonemm
lybarra22	vciobutarok8
lybarra22	rvellacottkf
lybarra22	ncubbinr0
lybarra22	fsiene91
lybarra22	wwykeme
lybarra22	egarken3w
lybarra22	ecraythornfs
lybarra22	kverdenc1
lybarra22	rgodarbp
lybarra22	gbleythingm
lybarra22	lbodycombe8d
lybarra22	kballaamj7
lybarra22	pgreyax
lybarra22	btidcombn
lybarra22	ndysartkm
lybarra22	kknathbo
lybarra22	sgheorghiepz
lybarra22	tsaddlercp
lybarra22	ydeverehunt77
lybarra22	ysheridanif
lybarra22	gflight6v
lybarra22	cwhitley14
lybarra22	chuzzey85
lybarra22	edorrqi
lybarra22	lmahaffeyk
lybarra22	nscothernlj
lybarra22	shannang1
lybarra22	ddayesnt
lybarra22	lmiddellra
lybarra22	izaczekm4
lybarra22	jmurcuttgo
lybarra22	arayman7a
lybarra22	mcircuittcn
lybarra22	kyeardsleybn
lybarra22	wmckelvieag
lybarra22	dgrushinig
lybarra22	icadmanla
lybarra22	drikardiq
lybarra22	vbrenardim
lybarra22	ameddemmendz
lybarra22	tgresonbs
lybarra22	fstains93
lybarra22	ewintonmb
lybarra22	isurfleetdo
lybarra22	eaxcellu
lybarra22	bpidduckg
lybarra22	mciobutaro6
lybarra22	skeynes8b
lybarra22	bcahill62
lybarra22	cdibbepy
lybarra22	aeverlynz
lybarra22	ntomowicznm
lybarra22	ascibseync
lybarra22	lpregalp3
lybarra22	nwinny78
lybarra22	fedsalllh
lybarra22	hjarmainjg
lybarra22	lnardrupjm
lybarra22	adymottat
lybarra22	mgillan9v
lybarra22	astreaterik
lybarra22	ptimsoni7
lybarra22	cpalphreyman95
lybarra22	ldiklehp
lybarra22	rrene9m
lybarra22	ldronsfieldgd
lybarra22	lpipkingu
lybarra22	mhickford9n
lybarra22	mpharrow9e
lybarra22	btrousdelldf
lybarra22	fwicherfe
lybarra22	rstranaghaney
lybarra22	tanderssoncl
lybarra22	ginsleyk0
lybarra22	eoneilq6
lybarra22	mkowalskica
lybarra22	hphilsonkv
lybarra22	amowsdaleaw
lybarra22	salldreqg
lybarra22	fbazogepw
lybarra22	nsimpkissbd
lybarra22	wmonetib7
lybarra22	cbrenneke7s
lybarra22	ksillwoodn0
lybarra22	brubinfajniu
lybarra22	gdagonn3
lybarra22	ldanhere5
lybarra22	efretwellkr
lybarra22	lalwenjy
lybarra22	gsonleyb9
lybarra22	siacomi69
lybarra22	jattewha
lybarra22	gbinhamhe
lybarra22	ddadswellos
lybarra22	cbourdells
lybarra22	mtolworthieh4
lybarra22	kohanniganml
lybarra22	rmcgibbonom
lybarra22	ccrosgrove1z
lybarra22	jabellamv
lybarra22	cdmitrievskijb
lybarra22	spointsjc
lybarra22	abootei5
lybarra22	mlindstromc3
lybarra22	slowthay
lybarra22	ksyrattbk
lybarra22	ccastelijnz
lybarra22	asinnettjh
lybarra22	jmcquiltyaq
lybarra22	mdunnb8
lybarra22	akrishtopaittis8h
lybarra22	jdimentrl
lybarra22	chadleef5
lybarra22	fberettaqt
lybarra22	todonegan64
lybarra22	mtwinningg6
lybarra22	cheatlypm
lybarra22	lpulleypf
lybarra22	pkeenegh
lybarra22	ilinderjz
lybarra22	kmonaghan7q
lybarra22	lhargieko
lybarra22	zhark6r
lybarra22	tkainehn
lybarra22	sbalshenp1
lybarra22	pmelvillenh
lybarra22	adeeproseo5
lybarra22	dkobesoa
lybarra22	mbernardog2
lybarra22	mstoeckq8
lybarra22	odart9p
lybarra22	dtinlinedd
lybarra22	maldieex
lybarra22	bvynehalldp
lybarra22	sbriztmandy
lybarra22	vgallafant12
lybarra22	ekenderfh
lybarra22	cethelstonb
lybarra22	csheardc
lybarra22	lfenckm8
lybarra22	cnoted9
gpudsall2t	bcahill62
gpudsall2t	bstlouismo
gpudsall2t	lpulleypf
gpudsall2t	amowsdaleaw
gpudsall2t	cheatlypm
gpudsall2t	zhark6r
gpudsall2t	nsimpkissbd
gpudsall2t	kyeardsleybn
gpudsall2t	akrishtopaittis8h
gpudsall2t	lhargieko
gpudsall2t	ncubbinr0
gpudsall2t	lmahaffeyk
gpudsall2t	mkowalskica
gpudsall2t	isurfleetdo
gpudsall2t	rmacronaldhf
gpudsall2t	mgillan9v
gpudsall2t	hphilsonkv
gpudsall2t	cnoted9
gpudsall2t	ascibseync
gpudsall2t	ksyrattbk
gpudsall2t	ksillwoodn0
gpudsall2t	ndysartkm
gpudsall2t	lbodycombe8d
gpudsall2t	cpalphreyman95
gpudsall2t	kverdenc1
gpudsall2t	ilinderjz
gpudsall2t	dgrushinig
gpudsall2t	sgheorghiepz
gpudsall2t	gbleythingm
gpudsall2t	sbalshenp1
gpudsall2t	lmiddellra
gpudsall2t	mtwinningg6
gpudsall2t	lnardrupjm
gpudsall2t	brubinfajniu
gpudsall2t	dkobesoa
gpudsall2t	cethelstonb
gpudsall2t	skeynes8b
gpudsall2t	tgresonbs
gpudsall2t	bpidduckg
gpudsall2t	fwicherfe
gpudsall2t	ldronsfieldgd
gpudsall2t	edorrqi
gpudsall2t	ysheridanif
gpudsall2t	mtolworthieh4
gpudsall2t	asinnettjh
gpudsall2t	slowthay
gpudsall2t	aeverlynz
gpudsall2t	vgallafant12
gpudsall2t	sbriztmandy
gpudsall2t	gbinhamhe
gpudsall2t	mciobutaro6
gpudsall2t	egarken3w
gpudsall2t	bvynehalldp
gpudsall2t	kohanniganml
gpudsall2t	ameddemmendz
gpudsall2t	drikardiq
gpudsall2t	kmonaghan7q
gpudsall2t	jattewha
gpudsall2t	ewintonmb
gpudsall2t	kballaamj7
gpudsall2t	ccastelijnz
gpudsall2t	vbrenardim
gpudsall2t	wwykeme
gpudsall2t	gflight6v
gpudsall2t	csheardc
gpudsall2t	ldiklehp
gpudsall2t	siacomi69
gpudsall2t	cdibbepy
gpudsall2t	adymottat
gpudsall2t	cmaymandfu
gpudsall2t	chuzzey85
gpudsall2t	mstoeckq8
gpudsall2t	icadmanla
gpudsall2t	salldreqg
gpudsall2t	fstains93
gpudsall2t	dtinlinedd
gpudsall2t	cdmitrievskijb
gpudsall2t	kfiddler9c
gpudsall2t	alistonemm
gpudsall2t	eaxcellu
gpudsall2t	btrousdelldf
gpudsall2t	wmckelvieag
gpudsall2t	fsiene91
gpudsall2t	mpharrow9e
gpudsall2t	mhickford9n
gpudsall2t	lfenckm8
gpudsall2t	nscothernlj
gpudsall2t	cwhitley14
gpudsall2t	todonegan64
gpudsall2t	vciobutarok8
gpudsall2t	pgreyax
gpudsall2t	cbrenneke7s
gpudsall2t	ddadswellos
gpudsall2t	kknathbo
gpudsall2t	jabellamv
gpudsall2t	ginsleyk0
gpudsall2t	ddayesnt
gpudsall2t	adeeproseo5
gpudsall2t	rmcgibbonom
gpudsall2t	ccrosgrove1z
gpudsall2t	ptimsoni7
gpudsall2t	pkeenegh
gpudsall2t	gdagonn3
gpudsall2t	mbernardog2
gpudsall2t	abootei5
gpudsall2t	fbazogepw
gpudsall2t	hjarmainjg
gpudsall2t	odart9p
gpudsall2t	fberettaqt
gpudsall2t	fedsalllh
gpudsall2t	maldieex
gpudsall2t	jdimentrl
gpudsall2t	jmcquiltyaq
gpudsall2t	lalwenjy
gpudsall2t	ldanhere5
gpudsall2t	rgodarbp
gpudsall2t	mdunnb8
gpudsall2t	astreaterik
gpudsall2t	tsaddlercp
gpudsall2t	ydeverehunt77
gpudsall2t	wmonetib7
gpudsall2t	lpregalp3
gpudsall2t	izaczekm4
gpudsall2t	efretwellkr
gpudsall2t	tanderssoncl
gpudsall2t	rstranaghaney
gpudsall2t	ddigbylk
gpudsall2t	gsonleyb9
gpudsall2t	pmelvillenh
gpudsall2t	rrene9m
gpudsall2t	rvellacottkf
gpudsall2t	chadleef5
gpudsall2t	eoneilq6
gpudsall2t	ntomowicznm
gpudsall2t	tkainehn
gpudsall2t	ecraythornfs
gpudsall2t	spointsjc
gpudsall2t	lpipkingu
gpudsall2t	cbourdells
gpudsall2t	jmurcuttgo
gpudsall2t	nwinny78
gpudsall2t	mlindstromc3
gpudsall2t	btidcombn
gpudsall2t	ekenderfh
gpudsall2t	shannang1
gpudsall2t	arayman7a
gpudsall2t	apadghamq3
gpudsall2t	mcircuittcn
gmontez26	ekenderfh
gmontez26	chadleef5
gmontez26	cwhitley14
gmontez26	mdunnb8
gmontez26	ncubbinr0
gmontez26	edorrqi
gmontez26	kverdenc1
gmontez26	btrousdelldf
gmontez26	cmaymandfu
gmontez26	nsimpkissbd
gmontez26	fbazogepw
gmontez26	mbernardog2
gmontez26	mcircuittcn
gmontez26	fstains93
gmontez26	amowsdaleaw
gmontez26	kfiddler9c
gmontez26	gbleythingm
gmontez26	gdagonn3
gmontez26	wwykeme
gmontez26	kballaamj7
gmontez26	mlindstromc3
gmontez26	rrene9m
gmontez26	vbrenardim
gmontez26	mhickford9n
gmontez26	mciobutaro6
gmontez26	tgresonbs
gmontez26	cdmitrievskijb
gmontez26	mtolworthieh4
gmontez26	ginsleyk0
gmontez26	gbinhamhe
gmontez26	pkeenegh
gmontez26	ndysartkm
gmontez26	lhargieko
gmontez26	vciobutarok8
gmontez26	zhark6r
gmontez26	ddigbylk
gmontez26	ldronsfieldgd
gmontez26	cdibbepy
gmontez26	skeynes8b
gmontez26	wmckelvieag
gmontez26	jdimentrl
gmontez26	ldanhere5
gmontez26	rstranaghaney
gmontez26	tanderssoncl
gmontez26	rmcgibbonom
gmontez26	jmurcuttgo
gmontez26	cbrenneke7s
gmontez26	fedsalllh
gmontez26	jmcquiltyaq
gmontez26	nscothernlj
gmontez26	akrishtopaittis8h
gmontez26	ccrosgrove1z
gmontez26	ydeverehunt77
gmontez26	nwinny78
gmontez26	cpalphreyman95
gmontez26	jattewha
gmontez26	ldiklehp
gmontez26	rvellacottkf
gmontez26	ilinderjz
gmontez26	ksillwoodn0
gmontez26	hphilsonkv
gmontez26	izaczekm4
gmontez26	alistonemm
gmontez26	ntomowicznm
gmontez26	lpulleypf
gmontez26	cheatlypm
gmontez26	fberettaqt
gmontez26	lmahaffeyk
gmontez26	csheardc
gmontez26	ccastelijnz
gmontez26	lbodycombe8d
gmontez26	ewintonmb
gmontez26	ksyrattbk
gmontez26	sbalshenp1
gmontez26	drikardiq
gmontez26	arayman7a
gmontez26	tkainehn
gmontez26	mtwinningg6
gmontez26	lpipkingu
gmontez26	hjarmainjg
gmontez26	rgodarbp
gmontez26	wmonetib7
gmontez26	astreaterik
gmontez26	kmonaghan7q
gmontez26	todonegan64
gmontez26	sbriztmandy
gmontez26	ddayesnt
gmontez26	dtinlinedd
gmontez26	jabellamv
gmontez26	rmacronaldhf
gmontez26	siacomi69
gmontez26	fsiene91
gmontez26	kohanniganml
gmontez26	lalwenjy
gmontez26	spointsjc
gmontez26	odart9p
gmontez26	gflight6v
gmontez26	slowthay
gmontez26	fwicherfe
gmontez26	aeverlynz
gmontez26	mstoeckq8
gmontez26	cethelstonb
gmontez26	icadmanla
gmontez26	ecraythornfs
gmontez26	kknathbo
gmontez26	chuzzey85
gmontez26	efretwellkr
gmontez26	cnoted9
gmontez26	apadghamq3
gmontez26	lfenckm8
gmontez26	gsonleyb9
gmontez26	egarken3w
gmontez26	pmelvillenh
gmontez26	pgreyax
gmontez26	bcahill62
gmontez26	isurfleetdo
gmontez26	ptimsoni7
gmontez26	dkobesoa
gmontez26	ascibseync
gmontez26	adymottat
gmontez26	mpharrow9e
gmontez26	lnardrupjm
gmontez26	bpidduckg
gmontez26	kyeardsleybn
gmontez26	mgillan9v
gmontez26	bvynehalldp
gmontez26	eaxcellu
gmontez26	salldreqg
gmontez26	lpregalp3
gmontez26	shannang1
gmontez26	adeeproseo5
gmontez26	ddadswellos
gmontez26	sgheorghiepz
gmontez26	cbourdells
gmontez26	tsaddlercp
gmontez26	ysheridanif
gmontez26	maldieex
gmontez26	eoneilq6
gmontez26	brubinfajniu
gmontez26	bstlouismo
gmontez26	ameddemmendz
gmontez26	btidcombn
gmontez26	mkowalskica
gmontez26	vgallafant12
gmontez26	asinnettjh
gmontez26	dgrushinig
gmontez26	lmiddellra
gmontez26	abootei5
ejagiela29	pkeenegh
ejagiela29	mtwinningg6
ejagiela29	chadleef5
ejagiela29	fedsalllh
ejagiela29	fwicherfe
ejagiela29	mciobutaro6
ejagiela29	dgrushinig
ejagiela29	lpipkingu
ejagiela29	mbernardog2
ejagiela29	apadghamq3
ejagiela29	csheardc
ejagiela29	spointsjc
ejagiela29	jabellamv
ejagiela29	kverdenc1
ejagiela29	eoneilq6
ejagiela29	kohanniganml
ejagiela29	rstranaghaney
ejagiela29	mdunnb8
ejagiela29	slowthay
ejagiela29	ptimsoni7
ejagiela29	pmelvillenh
ejagiela29	gsonleyb9
ejagiela29	astreaterik
ejagiela29	tkainehn
ejagiela29	cpalphreyman95
ejagiela29	alistonemm
ejagiela29	lnardrupjm
ejagiela29	tgresonbs
ejagiela29	cbrenneke7s
ejagiela29	hjarmainjg
ejagiela29	ksillwoodn0
ejagiela29	ndysartkm
ejagiela29	lhargieko
ejagiela29	ddayesnt
ejagiela29	rrene9m
ejagiela29	ksyrattbk
ejagiela29	jmurcuttgo
ejagiela29	mkowalskica
ejagiela29	bcahill62
ejagiela29	akrishtopaittis8h
ejagiela29	siacomi69
ejagiela29	mcircuittcn
ejagiela29	gflight6v
ejagiela29	dkobesoa
ejagiela29	maldieex
ejagiela29	nscothernlj
ejagiela29	nwinny78
ejagiela29	ccastelijnz
ejagiela29	lmahaffeyk
ejagiela29	zhark6r
ejagiela29	bvynehalldp
ejagiela29	gbleythingm
ejagiela29	sbriztmandy
ejagiela29	ntomowicznm
ejagiela29	mtolworthieh4
ejagiela29	ecraythornfs
ejagiela29	ginsleyk0
ejagiela29	abootei5
ejagiela29	ddadswellos
ejagiela29	cbourdells
ejagiela29	izaczekm4
ejagiela29	fstains93
ejagiela29	ewintonmb
ejagiela29	ldiklehp
ejagiela29	ccrosgrove1z
ejagiela29	ilinderjz
ejagiela29	kyeardsleybn
ejagiela29	eaxcellu
ejagiela29	lpulleypf
ejagiela29	ydeverehunt77
ejagiela29	jmcquiltyaq
ejagiela29	hphilsonkv
ejagiela29	egarken3w
ejagiela29	wmckelvieag
ejagiela29	efretwellkr
ejagiela29	ldronsfieldgd
ejagiela29	vgallafant12
ejagiela29	btrousdelldf
ejagiela29	jdimentrl
ejagiela29	odart9p
ejagiela29	amowsdaleaw
ejagiela29	ameddemmendz
ejagiela29	drikardiq
ejagiela29	mlindstromc3
ejagiela29	kballaamj7
ejagiela29	cethelstonb
ejagiela29	lpregalp3
ejagiela29	ysheridanif
ejagiela29	tsaddlercp
ejagiela29	cdmitrievskijb
ejagiela29	vciobutarok8
ejagiela29	lbodycombe8d
ejagiela29	sgheorghiepz
ejagiela29	rmacronaldhf
ejagiela29	aeverlynz
ejagiela29	rmcgibbonom
ejagiela29	adeeproseo5
ejagiela29	fbazogepw
ejagiela29	cheatlypm
ejagiela29	nsimpkissbd
ejagiela29	jattewha
ejagiela29	dtinlinedd
ejagiela29	vbrenardim
ejagiela29	lalwenjy
ejagiela29	tanderssoncl
ejagiela29	wmonetib7
ejagiela29	pgreyax
ejagiela29	kmonaghan7q
ejagiela29	asinnettjh
ejagiela29	cnoted9
ejagiela29	arayman7a
ejagiela29	ekenderfh
ejagiela29	ddigbylk
ejagiela29	ldanhere5
ejagiela29	rvellacottkf
ejagiela29	lfenckm8
ejagiela29	gbinhamhe
ejagiela29	chuzzey85
ejagiela29	ncubbinr0
ejagiela29	fberettaqt
ejagiela29	cmaymandfu
ejagiela29	edorrqi
ejagiela29	shannang1
ejagiela29	rgodarbp
ejagiela29	mhickford9n
ejagiela29	mpharrow9e
ejagiela29	gdagonn3
ejagiela29	kfiddler9c
ejagiela29	mstoeckq8
ejagiela29	bstlouismo
ejagiela29	brubinfajniu
ejagiela29	bpidduckg
ejagiela29	skeynes8b
ejagiela29	todonegan64
ejagiela29	cdibbepy
ejagiela29	salldreqg
ejagiela29	cwhitley14
ejagiela29	isurfleetdo
ejagiela29	fsiene91
ejagiela29	mgillan9v
ejagiela29	adymottat
ejagiela29	icadmanla
ejagiela29	wwykeme
ejagiela29	lmiddellra
ejagiela29	ascibseync
ejagiela29	sbalshenp1
ejagiela29	kknathbo
ejagiela29	btidcombn
wyurkiewicz4q	todonegan64
shenningham1n	kyeardsleybn
shenningham1n	mgillan9v
shenningham1n	jattewha
wyurkiewicz4q	aeverlynz
wyurkiewicz4q	gsonleyb9
shenningham1n	vciobutarok8
wyurkiewicz4q	mgillan9v
shenningham1n	aeverlynz
shenningham1n	fstains93
wyurkiewicz4q	fstains93
wyurkiewicz4q	jattewha
shenningham1n	rmcgibbonom
shenningham1n	lfenckm8
wyurkiewicz4q	isurfleetdo
shenningham1n	isurfleetdo
shenningham1n	mtolworthieh4
shenningham1n	gsonleyb9
shenningham1n	cdibbepy
shenningham1n	mtwinningg6
wyurkiewicz4q	cdibbepy
wyurkiewicz4q	rmcgibbonom
shenningham1n	mbernardog2
wyurkiewicz4q	maldieex
shenningham1n	maldieex
wyurkiewicz4q	mbernardog2
wyurkiewicz4q	mtolworthieh4
wyurkiewicz4q	mtwinningg6
wyurkiewicz4q	mstoeckq8
wyurkiewicz4q	rgodarbp
shenningham1n	arayman7a
wyurkiewicz4q	arayman7a
shenningham1n	wmonetib7
shenningham1n	ldronsfieldgd
shenningham1n	rgodarbp
wyurkiewicz4q	ldronsfieldgd
wyurkiewicz4q	ksyrattbk
shenningham1n	ksyrattbk
wyurkiewicz4q	btidcombn
shenningham1n	btidcombn
wyurkiewicz4q	wmonetib7
wyurkiewicz4q	vciobutarok8
wyurkiewicz4q	lfenckm8
shenningham1n	ecraythornfs
wyurkiewicz4q	ecraythornfs
wyurkiewicz4q	pgreyax
shenningham1n	pgreyax
wyurkiewicz4q	kyeardsleybn
shenningham1n	mstoeckq8
shenningham1n	todonegan64
wyurkiewicz4q	sgheorghiepz
wyurkiewicz4q	ydeverehunt77
shenningham1n	ydeverehunt77
shenningham1n	ldanhere5
shenningham1n	lmahaffeyk
wyurkiewicz4q	lmahaffeyk
wyurkiewicz4q	ldanhere5
wyurkiewicz4q	nwinny78
shenningham1n	mdunnb8
wyurkiewicz4q	mdunnb8
shenningham1n	nwinny78
wyurkiewicz4q	nscothernlj
shenningham1n	nscothernlj
shenningham1n	kballaamj7
wyurkiewicz4q	kballaamj7
shenningham1n	vgallafant12
wyurkiewicz4q	vgallafant12
wyurkiewicz4q	kverdenc1
wyurkiewicz4q	chadleef5
shenningham1n	chadleef5
shenningham1n	kverdenc1
wyurkiewicz4q	gflight6v
shenningham1n	gflight6v
wyurkiewicz4q	fwicherfe
shenningham1n	fwicherfe
wyurkiewicz4q	cwhitley14
shenningham1n	cwhitley14
wyurkiewicz4q	drikardiq
shenningham1n	drikardiq
wyurkiewicz4q	btrousdelldf
shenningham1n	btrousdelldf
wyurkiewicz4q	ddayesnt
shenningham1n	ddayesnt
shenningham1n	bcahill62
wyurkiewicz4q	sbriztmandy
shenningham1n	sgheorghiepz
shenningham1n	fberettaqt
wyurkiewicz4q	fberettaqt
wyurkiewicz4q	bcahill62
shenningham1n	salldreqg
wyurkiewicz4q	salldreqg
shenningham1n	sbriztmandy
shenningham1n	cmaymandfu
shenningham1n	edorrqi
shenningham1n	ccrosgrove1z
wyurkiewicz4q	tsaddlercp
shenningham1n	tsaddlercp
shenningham1n	lpipkingu
shenningham1n	gbleythingm
shenningham1n	ilinderjz
wyurkiewicz4q	ksillwoodn0
shenningham1n	ksillwoodn0
wyurkiewicz4q	ilinderjz
wyurkiewicz4q	lpipkingu
shenningham1n	brubinfajniu
wyurkiewicz4q	gbleythingm
wyurkiewicz4q	jdimentrl
shenningham1n	jdimentrl
wyurkiewicz4q	brubinfajniu
shenningham1n	akrishtopaittis8h
shenningham1n	pmelvillenh
wyurkiewicz4q	ccrosgrove1z
wyurkiewicz4q	pmelvillenh
wyurkiewicz4q	mkowalskica
wyurkiewicz4q	akrishtopaittis8h
wyurkiewicz4q	amowsdaleaw
shenningham1n	amowsdaleaw
shenningham1n	mkowalskica
shenningham1n	mcircuittcn
wyurkiewicz4q	siacomi69
wyurkiewicz4q	mcircuittcn
shenningham1n	siacomi69
wyurkiewicz4q	mciobutaro6
shenningham1n	mciobutaro6
shenningham1n	lnardrupjm
wyurkiewicz4q	ddigbylk
shenningham1n	ddigbylk
wyurkiewicz4q	ldiklehp
shenningham1n	ldiklehp
wyurkiewicz4q	csheardc
wyurkiewicz4q	rstranaghaney
shenningham1n	rstranaghaney
shenningham1n	csheardc
shenningham1n	lpulleypf
wyurkiewicz4q	lnardrupjm
shenningham1n	lpregalp3
wyurkiewicz4q	lpregalp3
wyurkiewicz4q	edorrqi
wyurkiewicz4q	lpulleypf
wyurkiewicz4q	cmaymandfu
shenningham1n	apadghamq3
shenningham1n	jabellamv
wyurkiewicz4q	jabellamv
wyurkiewicz4q	ekenderfh
shenningham1n	ekenderfh
wyurkiewicz4q	ameddemmendz
shenningham1n	ameddemmendz
shenningham1n	egarken3w
wyurkiewicz4q	egarken3w
shenningham1n	wmckelvieag
wyurkiewicz4q	wmckelvieag
shenningham1n	lmiddellra
wyurkiewicz4q	lmiddellra
wyurkiewicz4q	eoneilq6
shenningham1n	eoneilq6
wyurkiewicz4q	shannang1
shenningham1n	shannang1
wyurkiewicz4q	skeynes8b
shenningham1n	skeynes8b
shenningham1n	mpharrow9e
wyurkiewicz4q	mpharrow9e
shenningham1n	kfiddler9c
wyurkiewicz4q	kfiddler9c
wyurkiewicz4q	pkeenegh
shenningham1n	pkeenegh
wyurkiewicz4q	apadghamq3
shenningham1n	cpalphreyman95
wyurkiewicz4q	cpalphreyman95
shenningham1n	jmcquiltyaq
wyurkiewicz4q	rmacronaldhf
shenningham1n	rmacronaldhf
wyurkiewicz4q	jmcquiltyaq
wyurkiewicz4q	ptimsoni7
shenningham1n	ptimsoni7
shenningham1n	ginsleyk0
shenningham1n	cbourdells
wyurkiewicz4q	cbourdells
wyurkiewicz4q	dgrushinig
shenningham1n	dgrushinig
shenningham1n	hphilsonkv
wyurkiewicz4q	hphilsonkv
wyurkiewicz4q	ginsleyk0
wyurkiewicz4q	vbrenardim
shenningham1n	vbrenardim
wyurkiewicz4q	cbrenneke7s
shenningham1n	cbrenneke7s
shenningham1n	spointsjc
wyurkiewicz4q	spointsjc
shenningham1n	fbazogepw
wyurkiewicz4q	fbazogepw
shenningham1n	ascibseync
wyurkiewicz4q	rrene9m
wyurkiewicz4q	hjarmainjg
shenningham1n	hjarmainjg
shenningham1n	rrene9m
shenningham1n	gdagonn3
wyurkiewicz4q	gdagonn3
wyurkiewicz4q	lalwenjy
wyurkiewicz4q	tanderssoncl
shenningham1n	dkobesoa
wyurkiewicz4q	dkobesoa
shenningham1n	tanderssoncl
shenningham1n	lalwenjy
shenningham1n	ewintonmb
shenningham1n	astreaterik
wyurkiewicz4q	astreaterik
wyurkiewicz4q	ewintonmb
shenningham1n	kmonaghan7q
wyurkiewicz4q	kmonaghan7q
wyurkiewicz4q	ndysartkm
shenningham1n	ndysartkm
wyurkiewicz4q	cnoted9
shenningham1n	cnoted9
wyurkiewicz4q	kknathbo
shenningham1n	kknathbo
shenningham1n	mlindstromc3
wyurkiewicz4q	mlindstromc3
shenningham1n	ysheridanif
wyurkiewicz4q	ysheridanif
shenningham1n	rvellacottkf
shenningham1n	adeeproseo5
wyurkiewicz4q	adeeproseo5
wyurkiewicz4q	rvellacottkf
shenningham1n	eaxcellu
wyurkiewicz4q	eaxcellu
shenningham1n	cdmitrievskijb
wyurkiewicz4q	cdmitrievskijb
shenningham1n	tkainehn
wyurkiewicz4q	tkainehn
wyurkiewicz4q	bvynehalldp
shenningham1n	bvynehalldp
wyurkiewicz4q	ncubbinr0
shenningham1n	ncubbinr0
shenningham1n	gbinhamhe
wyurkiewicz4q	gbinhamhe
shenningham1n	chuzzey85
wyurkiewicz4q	chuzzey85
wyurkiewicz4q	sbalshenp1
shenningham1n	sbalshenp1
wyurkiewicz4q	ascibseync
wyurkiewicz4q	mhickford9n
wyurkiewicz4q	jmurcuttgo
shenningham1n	jmurcuttgo
wyurkiewicz4q	odart9p
shenningham1n	odart9p
shenningham1n	ntomowicznm
wyurkiewicz4q	ntomowicznm
shenningham1n	dtinlinedd
wyurkiewicz4q	dtinlinedd
wyurkiewicz4q	tgresonbs
shenningham1n	ddadswellos
wyurkiewicz4q	ddadswellos
shenningham1n	tgresonbs
shenningham1n	bstlouismo
wyurkiewicz4q	bstlouismo
wyurkiewicz4q	cethelstonb
shenningham1n	cethelstonb
wyurkiewicz4q	zhark6r
shenningham1n	zhark6r
shenningham1n	alistonemm
wyurkiewicz4q	alistonemm
wyurkiewicz4q	bpidduckg
shenningham1n	bpidduckg
shenningham1n	kohanniganml
wyurkiewicz4q	kohanniganml
wyurkiewicz4q	abootei5
shenningham1n	izaczekm4
wyurkiewicz4q	izaczekm4
shenningham1n	fsiene91
wyurkiewicz4q	fsiene91
wyurkiewicz4q	ccastelijnz
shenningham1n	ccastelijnz
shenningham1n	adymottat
wyurkiewicz4q	lbodycombe8d
shenningham1n	lbodycombe8d
shenningham1n	wwykeme
wyurkiewicz4q	wwykeme
shenningham1n	icadmanla
wyurkiewicz4q	adymottat
wyurkiewicz4q	icadmanla
shenningham1n	nsimpkissbd
wyurkiewicz4q	nsimpkissbd
shenningham1n	fedsalllh
wyurkiewicz4q	fedsalllh
shenningham1n	efretwellkr
wyurkiewicz4q	efretwellkr
shenningham1n	lhargieko
wyurkiewicz4q	lhargieko
shenningham1n	slowthay
wyurkiewicz4q	slowthay
wyurkiewicz4q	asinnettjh
shenningham1n	asinnettjh
shenningham1n	abootei5
shenningham1n	cheatlypm
wyurkiewicz4q	cheatlypm
shenningham1n	mhickford9n
cmuck1o	lbodycombe8d
cmuck1o	mhickford9n
cmuck1o	cwhitley14
cmuck1o	kohanniganml
cmuck1o	pkeenegh
cmuck1o	ginsleyk0
cmuck1o	ldronsfieldgd
cmuck1o	rmcgibbonom
cmuck1o	akrishtopaittis8h
cmuck1o	izaczekm4
cmuck1o	nscothernlj
cmuck1o	lmahaffeyk
cmuck1o	salldreqg
cmuck1o	tkainehn
cmuck1o	ccastelijnz
cmuck1o	bcahill62
cmuck1o	jabellamv
cmuck1o	pgreyax
cmuck1o	alistonemm
cmuck1o	ddayesnt
cmuck1o	ncubbinr0
cmuck1o	gflight6v
cmuck1o	kverdenc1
cmuck1o	lnardrupjm
cmuck1o	rgodarbp
cmuck1o	drikardiq
cmuck1o	rstranaghaney
cmuck1o	ewintonmb
cmuck1o	mpharrow9e
cmuck1o	ndysartkm
cmuck1o	rrene9m
cmuck1o	ameddemmendz
cmuck1o	cbourdells
cmuck1o	aeverlynz
cmuck1o	fedsalllh
cmuck1o	adymottat
cmuck1o	nwinny78
cmuck1o	chuzzey85
cmuck1o	lalwenjy
cmuck1o	kballaamj7
cmuck1o	shannang1
cmuck1o	isurfleetdo
cmuck1o	ntomowicznm
cmuck1o	rmacronaldhf
cmuck1o	lfenckm8
cmuck1o	lpipkingu
cmuck1o	cpalphreyman95
cmuck1o	jmcquiltyaq
cmuck1o	fstains93
cmuck1o	sgheorghiepz
cmuck1o	siacomi69
cmuck1o	hjarmainjg
cmuck1o	ilinderjz
cmuck1o	kmonaghan7q
cmuck1o	fberettaqt
cmuck1o	btidcombn
cmuck1o	ksyrattbk
cmuck1o	ascibseync
cmuck1o	sbriztmandy
cmuck1o	ecraythornfs
cmuck1o	gbleythingm
cmuck1o	ptimsoni7
cmuck1o	kyeardsleybn
cmuck1o	wmonetib7
cmuck1o	cmaymandfu
cmuck1o	astreaterik
cmuck1o	odart9p
cmuck1o	cheatlypm
cmuck1o	vbrenardim
cmuck1o	adeeproseo5
cmuck1o	rvellacottkf
cmuck1o	jattewha
cmuck1o	fwicherfe
cmuck1o	ysheridanif
cmuck1o	tgresonbs
cmuck1o	tsaddlercp
cmuck1o	ccrosgrove1z
cmuck1o	hphilsonkv
cmuck1o	ddigbylk
cmuck1o	ekenderfh
cmuck1o	dgrushinig
cmuck1o	wmckelvieag
cmuck1o	gsonleyb9
cmuck1o	lmiddellra
cmuck1o	dtinlinedd
cmuck1o	ldiklehp
cmuck1o	zhark6r
cmuck1o	jdimentrl
cmuck1o	cdmitrievskijb
cmuck1o	tanderssoncl
cmuck1o	mtwinningg6
cmuck1o	cbrenneke7s
cmuck1o	lpregalp3
cmuck1o	mgillan9v
cmuck1o	vgallafant12
cmuck1o	eaxcellu
cmuck1o	ksillwoodn0
cmuck1o	fsiene91
cmuck1o	ldanhere5
cmuck1o	todonegan64
cmuck1o	fbazogepw
cmuck1o	efretwellkr
cmuck1o	amowsdaleaw
cmuck1o	spointsjc
cmuck1o	eoneilq6
cmuck1o	dkobesoa
cmuck1o	gdagonn3
cmuck1o	bvynehalldp
cmuck1o	bstlouismo
cmuck1o	asinnettjh
cmuck1o	bpidduckg
cmuck1o	vciobutarok8
cmuck1o	mdunnb8
cmuck1o	edorrqi
cmuck1o	kknathbo
cmuck1o	ydeverehunt77
cmuck1o	wwykeme
cmuck1o	mtolworthieh4
cmuck1o	icadmanla
cmuck1o	mlindstromc3
cmuck1o	mkowalskica
cmuck1o	nsimpkissbd
cmuck1o	mstoeckq8
cmuck1o	mcircuittcn
cmuck1o	cnoted9
cmuck1o	arayman7a
cmuck1o	lpulleypf
cmuck1o	cdibbepy
cmuck1o	egarken3w
cmuck1o	sbalshenp1
cmuck1o	mciobutaro6
cmuck1o	maldieex
cmuck1o	brubinfajniu
cmuck1o	jmurcuttgo
cmuck1o	mbernardog2
cmuck1o	apadghamq3
cmuck1o	kfiddler9c
cmuck1o	cethelstonb
cmuck1o	btrousdelldf
cmuck1o	gbinhamhe
cmuck1o	skeynes8b
cmuck1o	pmelvillenh
cmuck1o	lhargieko
cmuck1o	chadleef5
cmuck1o	csheardc
cmuck1o	abootei5
cmuck1o	slowthay
cmuck1o	ddadswellos
jfoulstone2w	wmonetib7
jfoulstone2w	vciobutarok8
jfoulstone2w	nscothernlj
jfoulstone2w	pmelvillenh
jfoulstone2w	egarken3w
jfoulstone2w	mdunnb8
jfoulstone2w	slowthay
jfoulstone2w	ewintonmb
jfoulstone2w	brubinfajniu
jfoulstone2w	ameddemmendz
jfoulstone2w	gflight6v
jfoulstone2w	kballaamj7
jfoulstone2w	cbrenneke7s
jfoulstone2w	sbalshenp1
jfoulstone2w	lfenckm8
jfoulstone2w	isurfleetdo
jfoulstone2w	arayman7a
jfoulstone2w	kmonaghan7q
jfoulstone2w	bstlouismo
jfoulstone2w	dgrushinig
jfoulstone2w	gbinhamhe
jfoulstone2w	hjarmainjg
jfoulstone2w	mpharrow9e
jfoulstone2w	adymottat
jfoulstone2w	alistonemm
jfoulstone2w	lalwenjy
jfoulstone2w	odart9p
jfoulstone2w	amowsdaleaw
jfoulstone2w	rrene9m
jfoulstone2w	skeynes8b
jfoulstone2w	cnoted9
jfoulstone2w	ccastelijnz
jfoulstone2w	spointsjc
jfoulstone2w	lhargieko
jfoulstone2w	fedsalllh
jfoulstone2w	pgreyax
jfoulstone2w	izaczekm4
jfoulstone2w	ncubbinr0
jfoulstone2w	hphilsonkv
jfoulstone2w	jabellamv
jfoulstone2w	mbernardog2
jfoulstone2w	aeverlynz
jfoulstone2w	kverdenc1
jfoulstone2w	lnardrupjm
jfoulstone2w	pkeenegh
jfoulstone2w	mtwinningg6
jfoulstone2w	astreaterik
jfoulstone2w	ntomowicznm
jfoulstone2w	nwinny78
jfoulstone2w	cbourdells
jfoulstone2w	mcircuittcn
jfoulstone2w	gdagonn3
jfoulstone2w	ksyrattbk
jfoulstone2w	tsaddlercp
jfoulstone2w	rvellacottkf
jfoulstone2w	ilinderjz
jfoulstone2w	sbriztmandy
jfoulstone2w	csheardc
jfoulstone2w	vbrenardim
jfoulstone2w	fwicherfe
jfoulstone2w	rgodarbp
jfoulstone2w	wmckelvieag
jfoulstone2w	eoneilq6
jfoulstone2w	siacomi69
jfoulstone2w	cpalphreyman95
jfoulstone2w	jattewha
jfoulstone2w	btrousdelldf
jfoulstone2w	mlindstromc3
jfoulstone2w	apadghamq3
jfoulstone2w	mtolworthieh4
jfoulstone2w	ascibseync
jfoulstone2w	kohanniganml
jfoulstone2w	fstains93
jfoulstone2w	tkainehn
jfoulstone2w	cwhitley14
jfoulstone2w	bpidduckg
jfoulstone2w	drikardiq
jfoulstone2w	rstranaghaney
jfoulstone2w	eaxcellu
jfoulstone2w	btidcombn
jfoulstone2w	jmurcuttgo
jfoulstone2w	jmcquiltyaq
jfoulstone2w	ptimsoni7
jfoulstone2w	shannang1
jfoulstone2w	ccrosgrove1z
jfoulstone2w	cmaymandfu
jfoulstone2w	fbazogepw
jfoulstone2w	ddadswellos
jfoulstone2w	mciobutaro6
jfoulstone2w	tgresonbs
jfoulstone2w	dtinlinedd
jfoulstone2w	ldronsfieldgd
jfoulstone2w	kyeardsleybn
jfoulstone2w	zhark6r
jfoulstone2w	todonegan64
jfoulstone2w	asinnettjh
jfoulstone2w	rmcgibbonom
jfoulstone2w	lmiddellra
jfoulstone2w	cheatlypm
jfoulstone2w	edorrqi
jfoulstone2w	wwykeme
jfoulstone2w	mstoeckq8
jfoulstone2w	ekenderfh
jfoulstone2w	bvynehalldp
jfoulstone2w	maldieex
jfoulstone2w	mhickford9n
jfoulstone2w	rmacronaldhf
jfoulstone2w	fsiene91
jfoulstone2w	cdmitrievskijb
jfoulstone2w	ksillwoodn0
jfoulstone2w	efretwellkr
jfoulstone2w	ddigbylk
jfoulstone2w	adeeproseo5
jfoulstone2w	dkobesoa
jfoulstone2w	bcahill62
jfoulstone2w	salldreqg
jfoulstone2w	vgallafant12
jfoulstone2w	cethelstonb
jfoulstone2w	lbodycombe8d
jfoulstone2w	icadmanla
jfoulstone2w	lpipkingu
jfoulstone2w	jdimentrl
jfoulstone2w	nsimpkissbd
jfoulstone2w	mgillan9v
jfoulstone2w	akrishtopaittis8h
jfoulstone2w	lpregalp3
jfoulstone2w	lmahaffeyk
jfoulstone2w	gbleythingm
jfoulstone2w	kknathbo
jfoulstone2w	fberettaqt
jfoulstone2w	ldanhere5
jfoulstone2w	ysheridanif
jfoulstone2w	ddayesnt
jfoulstone2w	gsonleyb9
jfoulstone2w	ecraythornfs
jfoulstone2w	lpulleypf
jfoulstone2w	chadleef5
jfoulstone2w	mkowalskica
jfoulstone2w	chuzzey85
jfoulstone2w	ginsleyk0
jfoulstone2w	cdibbepy
acuddihy1q	ddigbylk
acuddihy1q	mstoeckq8
acuddihy1q	mtwinningg6
acuddihy1q	fsiene91
acuddihy1q	nscothernlj
acuddihy1q	cbrenneke7s
acuddihy1q	chadleef5
acuddihy1q	lpipkingu
acuddihy1q	ccastelijnz
acuddihy1q	pmelvillenh
acuddihy1q	sbalshenp1
acuddihy1q	ptimsoni7
acuddihy1q	asinnettjh
acuddihy1q	nwinny78
acuddihy1q	ginsleyk0
acuddihy1q	gbinhamhe
acuddihy1q	siacomi69
acuddihy1q	rmacronaldhf
acuddihy1q	vgallafant12
acuddihy1q	cethelstonb
acuddihy1q	cdmitrievskijb
acuddihy1q	lfenckm8
acuddihy1q	lpulleypf
acuddihy1q	gflight6v
acuddihy1q	mpharrow9e
acuddihy1q	amowsdaleaw
acuddihy1q	mkowalskica
acuddihy1q	odart9p
acuddihy1q	dgrushinig
acuddihy1q	rgodarbp
acuddihy1q	dtinlinedd
acuddihy1q	btidcombn
acuddihy1q	adeeproseo5
acuddihy1q	lmahaffeyk
acuddihy1q	icadmanla
acuddihy1q	cbourdells
acuddihy1q	ncubbinr0
acuddihy1q	eoneilq6
acuddihy1q	jmurcuttgo
acuddihy1q	chuzzey85
acuddihy1q	fstains93
acuddihy1q	mhickford9n
acuddihy1q	cheatlypm
acuddihy1q	ekenderfh
acuddihy1q	akrishtopaittis8h
acuddihy1q	ddadswellos
acuddihy1q	lnardrupjm
acuddihy1q	kohanniganml
acuddihy1q	hphilsonkv
acuddihy1q	arayman7a
acuddihy1q	jabellamv
acuddihy1q	tsaddlercp
acuddihy1q	bstlouismo
acuddihy1q	csheardc
acuddihy1q	ntomowicznm
acuddihy1q	mcircuittcn
acuddihy1q	adymottat
acuddihy1q	cpalphreyman95
acuddihy1q	mciobutaro6
acuddihy1q	aeverlynz
acuddihy1q	wwykeme
acuddihy1q	ameddemmendz
acuddihy1q	rrene9m
acuddihy1q	bcahill62
acuddihy1q	slowthay
acuddihy1q	vbrenardim
acuddihy1q	lalwenjy
acuddihy1q	todonegan64
acuddihy1q	ldronsfieldgd
acuddihy1q	skeynes8b
acuddihy1q	rvellacottkf
acuddihy1q	astreaterik
acuddihy1q	isurfleetdo
acuddihy1q	salldreqg
acuddihy1q	mlindstromc3
acuddihy1q	tgresonbs
acuddihy1q	lhargieko
acuddihy1q	bpidduckg
acuddihy1q	zhark6r
acuddihy1q	cdibbepy
acuddihy1q	shannang1
acuddihy1q	ysheridanif
acuddihy1q	bvynehalldp
acuddihy1q	ldanhere5
acuddihy1q	mtolworthieh4
acuddihy1q	maldieex
acuddihy1q	ddayesnt
acuddihy1q	wmckelvieag
acuddihy1q	jattewha
acuddihy1q	fberettaqt
acuddihy1q	spointsjc
acuddihy1q	ksyrattbk
acuddihy1q	drikardiq
acuddihy1q	pgreyax
acuddihy1q	mgillan9v
acuddihy1q	gbleythingm
acuddihy1q	lpregalp3
acuddihy1q	brubinfajniu
acuddihy1q	edorrqi
acuddihy1q	eaxcellu
acuddihy1q	apadghamq3
acuddihy1q	ccrosgrove1z
acuddihy1q	kknathbo
acuddihy1q	fbazogepw
acuddihy1q	hjarmainjg
acuddihy1q	rstranaghaney
acuddihy1q	cwhitley14
acuddihy1q	fedsalllh
acuddihy1q	izaczekm4
acuddihy1q	sbriztmandy
acuddihy1q	alistonemm
acuddihy1q	pkeenegh
acuddihy1q	tkainehn
acuddihy1q	gsonleyb9
acuddihy1q	lmiddellra
acuddihy1q	btrousdelldf
acuddihy1q	ewintonmb
acuddihy1q	gdagonn3
acuddihy1q	dkobesoa
acuddihy1q	ecraythornfs
acuddihy1q	nsimpkissbd
acuddihy1q	ksillwoodn0
acuddihy1q	vciobutarok8
acuddihy1q	fwicherfe
acuddihy1q	wmonetib7
acuddihy1q	lbodycombe8d
acuddihy1q	efretwellkr
acuddihy1q	kballaamj7
acuddihy1q	kmonaghan7q
acuddihy1q	ilinderjz
hkuhnwald1y	lhargieko
hkuhnwald1y	kohanniganml
hkuhnwald1y	drikardiq
hkuhnwald1y	bpidduckg
hkuhnwald1y	gflight6v
hkuhnwald1y	cdmitrievskijb
hkuhnwald1y	alistonemm
hkuhnwald1y	ddadswellos
hkuhnwald1y	lnardrupjm
hkuhnwald1y	wwykeme
hkuhnwald1y	skeynes8b
hkuhnwald1y	ksillwoodn0
hkuhnwald1y	izaczekm4
hkuhnwald1y	akrishtopaittis8h
hkuhnwald1y	adymottat
hkuhnwald1y	dkobesoa
hkuhnwald1y	jmurcuttgo
hkuhnwald1y	adeeproseo5
hkuhnwald1y	ysheridanif
hkuhnwald1y	ccastelijnz
hkuhnwald1y	nwinny78
hkuhnwald1y	lpulleypf
hkuhnwald1y	aeverlynz
hkuhnwald1y	mhickford9n
hkuhnwald1y	cbrenneke7s
hkuhnwald1y	rrene9m
hkuhnwald1y	fbazogepw
hkuhnwald1y	slowthay
hkuhnwald1y	pkeenegh
hkuhnwald1y	mcircuittcn
hkuhnwald1y	amowsdaleaw
hkuhnwald1y	kmonaghan7q
hkuhnwald1y	isurfleetdo
hkuhnwald1y	siacomi69
hkuhnwald1y	mlindstromc3
hkuhnwald1y	ncubbinr0
hkuhnwald1y	lpregalp3
hkuhnwald1y	kballaamj7
hkuhnwald1y	arayman7a
hkuhnwald1y	lmiddellra
hkuhnwald1y	sbriztmandy
hkuhnwald1y	fwicherfe
hkuhnwald1y	fsiene91
hkuhnwald1y	lmahaffeyk
hkuhnwald1y	nsimpkissbd
hkuhnwald1y	fberettaqt
hkuhnwald1y	bvynehalldp
hkuhnwald1y	ginsleyk0
hkuhnwald1y	cbourdells
hkuhnwald1y	mtwinningg6
hkuhnwald1y	mgillan9v
hkuhnwald1y	efretwellkr
hkuhnwald1y	mciobutaro6
hkuhnwald1y	kknathbo
hkuhnwald1y	cwhitley14
hkuhnwald1y	cpalphreyman95
hkuhnwald1y	ekenderfh
hkuhnwald1y	jattewha
hkuhnwald1y	ptimsoni7
hkuhnwald1y	ksyrattbk
hkuhnwald1y	wmckelvieag
hkuhnwald1y	odart9p
hkuhnwald1y	brubinfajniu
hkuhnwald1y	lbodycombe8d
hkuhnwald1y	gbleythingm
hkuhnwald1y	csheardc
hkuhnwald1y	cdibbepy
hkuhnwald1y	spointsjc
hkuhnwald1y	zhark6r
hkuhnwald1y	bstlouismo
hkuhnwald1y	chuzzey85
hkuhnwald1y	asinnettjh
hkuhnwald1y	todonegan64
hkuhnwald1y	edorrqi
hkuhnwald1y	rgodarbp
hkuhnwald1y	sbalshenp1
hkuhnwald1y	mstoeckq8
hkuhnwald1y	dgrushinig
hkuhnwald1y	ldronsfieldgd
hkuhnwald1y	lalwenjy
hkuhnwald1y	vbrenardim
hkuhnwald1y	icadmanla
hkuhnwald1y	ntomowicznm
hkuhnwald1y	bcahill62
hkuhnwald1y	wmonetib7
hkuhnwald1y	ddigbylk
hkuhnwald1y	tkainehn
hkuhnwald1y	jabellamv
hkuhnwald1y	cheatlypm
hkuhnwald1y	cethelstonb
hkuhnwald1y	mtolworthieh4
hkuhnwald1y	fedsalllh
hkuhnwald1y	pgreyax
hkuhnwald1y	lpipkingu
hkuhnwald1y	ccrosgrove1z
hkuhnwald1y	ldanhere5
hkuhnwald1y	rvellacottkf
hkuhnwald1y	astreaterik
hkuhnwald1y	nscothernlj
hkuhnwald1y	lfenckm8
hkuhnwald1y	vgallafant12
hkuhnwald1y	btidcombn
hkuhnwald1y	tsaddlercp
hkuhnwald1y	gbinhamhe
hkuhnwald1y	hjarmainjg
hkuhnwald1y	eoneilq6
hkuhnwald1y	ewintonmb
hkuhnwald1y	fstains93
hkuhnwald1y	ilinderjz
hkuhnwald1y	mkowalskica
hkuhnwald1y	eaxcellu
hkuhnwald1y	gsonleyb9
hkuhnwald1y	hphilsonkv
hkuhnwald1y	tgresonbs
hkuhnwald1y	maldieex
hkuhnwald1y	chadleef5
hkuhnwald1y	vciobutarok8
hkuhnwald1y	dtinlinedd
hkuhnwald1y	btrousdelldf
hkuhnwald1y	mpharrow9e
hkuhnwald1y	shannang1
hkuhnwald1y	ecraythornfs
hkuhnwald1y	apadghamq3
hkuhnwald1y	gdagonn3
rlaight1u	bvynehalldp
rlaight1u	asinnettjh
rlaight1u	nwinny78
rlaight1u	mhickford9n
rlaight1u	cethelstonb
rlaight1u	dtinlinedd
rlaight1u	kknathbo
rlaight1u	odart9p
rlaight1u	ekenderfh
rlaight1u	mstoeckq8
rlaight1u	ddigbylk
rlaight1u	mtolworthieh4
rlaight1u	fedsalllh
rlaight1u	mciobutaro6
rlaight1u	ksyrattbk
rlaight1u	mcircuittcn
rlaight1u	amowsdaleaw
rlaight1u	dgrushinig
rlaight1u	sbalshenp1
rlaight1u	efretwellkr
rlaight1u	mkowalskica
rlaight1u	csheardc
rlaight1u	lpulleypf
rlaight1u	chadleef5
rlaight1u	mlindstromc3
rlaight1u	pkeenegh
rlaight1u	lfenckm8
rlaight1u	icadmanla
rlaight1u	lbodycombe8d
rlaight1u	ccrosgrove1z
rlaight1u	wmckelvieag
rlaight1u	lpregalp3
rlaight1u	fberettaqt
rlaight1u	hjarmainjg
rlaight1u	adymottat
rlaight1u	ptimsoni7
rlaight1u	jmurcuttgo
rlaight1u	vgallafant12
rlaight1u	hphilsonkv
rlaight1u	dkobesoa
rlaight1u	mpharrow9e
rlaight1u	ecraythornfs
rlaight1u	brubinfajniu
rlaight1u	ksillwoodn0
rlaight1u	alistonemm
rlaight1u	edorrqi
rlaight1u	cpalphreyman95
rlaight1u	ginsleyk0
rlaight1u	btidcombn
rlaight1u	fstains93
rlaight1u	isurfleetdo
rlaight1u	zhark6r
rlaight1u	gbleythingm
rlaight1u	fbazogepw
rlaight1u	rvellacottkf
rlaight1u	sbriztmandy
rlaight1u	mgillan9v
rlaight1u	lpipkingu
rlaight1u	btrousdelldf
rlaight1u	lhargieko
rlaight1u	lmiddellra
rlaight1u	wwykeme
rlaight1u	izaczekm4
rlaight1u	tgresonbs
rlaight1u	vciobutarok8
rlaight1u	adeeproseo5
rlaight1u	shannang1
rlaight1u	cdibbepy
rlaight1u	kohanniganml
rlaight1u	lmahaffeyk
rlaight1u	nsimpkissbd
rlaight1u	rrene9m
rlaight1u	cbourdells
rlaight1u	todonegan64
rlaight1u	ldronsfieldgd
rlaight1u	ccastelijnz
rlaight1u	cdmitrievskijb
rlaight1u	cheatlypm
rlaight1u	aeverlynz
rlaight1u	nscothernlj
rlaight1u	lnardrupjm
rlaight1u	apadghamq3
rlaight1u	vbrenardim
rlaight1u	gsonleyb9
rlaight1u	ilinderjz
rlaight1u	mtwinningg6
rlaight1u	slowthay
rlaight1u	ewintonmb
rlaight1u	ncubbinr0
rlaight1u	ysheridanif
rlaight1u	eoneilq6
rlaight1u	ldanhere5
rlaight1u	spointsjc
rlaight1u	wmonetib7
rlaight1u	lalwenjy
rlaight1u	ntomowicznm
rlaight1u	bcahill62
rlaight1u	jabellamv
rlaight1u	fsiene91
rlaight1u	gdagonn3
rlaight1u	fwicherfe
rlaight1u	bpidduckg
rlaight1u	drikardiq
rlaight1u	bstlouismo
rlaight1u	arayman7a
rlaight1u	gbinhamhe
rlaight1u	kballaamj7
rlaight1u	akrishtopaittis8h
rlaight1u	pgreyax
rlaight1u	siacomi69
rlaight1u	jattewha
rlaight1u	astreaterik
rlaight1u	cbrenneke7s
rlaight1u	kmonaghan7q
rlaight1u	skeynes8b
bgraser4e	ccastelijnz
xassaf25	bstlouismo
bgraser4e	bstlouismo
bgraser4e	lalwenjy
bgraser4e	kknathbo
xassaf25	bpidduckg
bgraser4e	bpidduckg
bgraser4e	lmiddellra
xassaf25	lmiddellra
bgraser4e	sbalshenp1
xassaf25	sbalshenp1
xassaf25	kknathbo
xassaf25	vgallafant12
bgraser4e	vgallafant12
bgraser4e	wmonetib7
xassaf25	ilinderjz
xassaf25	rrene9m
bgraser4e	ilinderjz
xassaf25	lalwenjy
xassaf25	wmonetib7
bgraser4e	rrene9m
xassaf25	ccastelijnz
bgraser4e	rvellacottkf
bgraser4e	lbodycombe8d
xassaf25	mpharrow9e
bgraser4e	mpharrow9e
bgraser4e	brubinfajniu
xassaf25	brubinfajniu
xassaf25	gdagonn3
xassaf25	rvellacottkf
bgraser4e	lmahaffeyk
bgraser4e	gdagonn3
bgraser4e	bvynehalldp
bgraser4e	jmurcuttgo
xassaf25	ntomowicznm
xassaf25	bvynehalldp
bgraser4e	ntomowicznm
bgraser4e	adymottat
xassaf25	lpulleypf
bgraser4e	lpulleypf
xassaf25	lbodycombe8d
bgraser4e	apadghamq3
xassaf25	apadghamq3
bgraser4e	cpalphreyman95
xassaf25	cpalphreyman95
xassaf25	asinnettjh
bgraser4e	asinnettjh
xassaf25	vbrenardim
xassaf25	lpregalp3
bgraser4e	ewintonmb
xassaf25	jabellamv
xassaf25	ewintonmb
xassaf25	lmahaffeyk
bgraser4e	ddigbylk
xassaf25	ddigbylk
bgraser4e	jabellamv
bgraser4e	lpregalp3
bgraser4e	vbrenardim
xassaf25	jmurcuttgo
xassaf25	adymottat
bgraser4e	nwinny78
xassaf25	nwinny78
bgraser4e	izaczekm4
xassaf25	izaczekm4
xassaf25	ginsleyk0
xassaf25	fedsalllh
bgraser4e	fedsalllh
bgraser4e	fwicherfe
xassaf25	fwicherfe
bgraser4e	gsonleyb9
xassaf25	gsonleyb9
xassaf25	mgillan9v
bgraser4e	gbleythingm
xassaf25	gbleythingm
xassaf25	gbinhamhe
bgraser4e	gbinhamhe
bgraser4e	arayman7a
xassaf25	arayman7a
bgraser4e	mgillan9v
xassaf25	nsimpkissbd
bgraser4e	nsimpkissbd
bgraser4e	shannang1
xassaf25	shannang1
bgraser4e	astreaterik
xassaf25	astreaterik
xassaf25	fstains93
bgraser4e	fstains93
bgraser4e	bcahill62
xassaf25	bcahill62
bgraser4e	mtolworthieh4
xassaf25	ccrosgrove1z
bgraser4e	ccrosgrove1z
xassaf25	spointsjc
xassaf25	mtolworthieh4
bgraser4e	spointsjc
bgraser4e	cdmitrievskijb
xassaf25	cdmitrievskijb
bgraser4e	ginsleyk0
xassaf25	jattewha
bgraser4e	ekenderfh
bgraser4e	edorrqi
xassaf25	edorrqi
xassaf25	ekenderfh
bgraser4e	chadleef5
xassaf25	wmckelvieag
xassaf25	zhark6r
bgraser4e	fberettaqt
xassaf25	dgrushinig
bgraser4e	dgrushinig
bgraser4e	lfenckm8
xassaf25	lpipkingu
bgraser4e	lpipkingu
xassaf25	fberettaqt
bgraser4e	lhargieko
xassaf25	lfenckm8
bgraser4e	wmckelvieag
xassaf25	lhargieko
bgraser4e	kballaamj7
bgraser4e	todonegan64
xassaf25	kballaamj7
bgraser4e	ldanhere5
xassaf25	ldanhere5
xassaf25	todonegan64
xassaf25	alistonemm
bgraser4e	alistonemm
bgraser4e	zhark6r
bgraser4e	sbriztmandy
xassaf25	chadleef5
xassaf25	kohanniganml
bgraser4e	kohanniganml
xassaf25	sbriztmandy
bgraser4e	hjarmainjg
xassaf25	hjarmainjg
bgraser4e	ldronsfieldgd
xassaf25	ldronsfieldgd
bgraser4e	jattewha
bgraser4e	cbrenneke7s
bgraser4e	siacomi69
xassaf25	cbrenneke7s
xassaf25	siacomi69
xassaf25	mlindstromc3
bgraser4e	lnardrupjm
xassaf25	lnardrupjm
bgraser4e	ksillwoodn0
xassaf25	ksillwoodn0
xassaf25	drikardiq
bgraser4e	drikardiq
bgraser4e	cbourdells
xassaf25	cbourdells
xassaf25	ptimsoni7
bgraser4e	ptimsoni7
bgraser4e	dkobesoa
xassaf25	dkobesoa
bgraser4e	mhickford9n
xassaf25	mhickford9n
bgraser4e	fbazogepw
xassaf25	fbazogepw
bgraser4e	cdibbepy
xassaf25	cdibbepy
xassaf25	mtwinningg6
bgraser4e	mtwinningg6
bgraser4e	mstoeckq8
xassaf25	mstoeckq8
xassaf25	eoneilq6
bgraser4e	eoneilq6
bgraser4e	ncubbinr0
xassaf25	ncubbinr0
xassaf25	btrousdelldf
bgraser4e	btrousdelldf
xassaf25	nscothernlj
bgraser4e	nscothernlj
bgraser4e	cethelstonb
xassaf25	cethelstonb
bgraser4e	mlindstromc3
xassaf25	mkowalskica
bgraser4e	mkowalskica
xassaf25	amowsdaleaw
bgraser4e	amowsdaleaw
xassaf25	slowthay
bgraser4e	slowthay
xassaf25	pgreyax
bgraser4e	pgreyax
bgraser4e	btidcombn
xassaf25	hphilsonkv
xassaf25	ksyrattbk
bgraser4e	ksyrattbk
xassaf25	vciobutarok8
bgraser4e	vciobutarok8
bgraser4e	csheardc
xassaf25	icadmanla
xassaf25	efretwellkr
bgraser4e	fsiene91
xassaf25	fsiene91
bgraser4e	efretwellkr
xassaf25	adeeproseo5
bgraser4e	adeeproseo5
bgraser4e	icadmanla
xassaf25	csheardc
bgraser4e	isurfleetdo
xassaf25	isurfleetdo
xassaf25	aeverlynz
bgraser4e	aeverlynz
bgraser4e	mciobutaro6
xassaf25	mciobutaro6
xassaf25	wwykeme
xassaf25	btidcombn
bgraser4e	wwykeme
xassaf25	ecraythornfs
bgraser4e	ecraythornfs
bgraser4e	pkeenegh
bgraser4e	hphilsonkv
xassaf25	pkeenegh
aboocock2p	fbazogepw
aboocock2p	todonegan64
aboocock2p	csheardc
aboocock2p	lpipkingu
aboocock2p	mstoeckq8
aboocock2p	fstains93
aboocock2p	asinnettjh
aboocock2p	cbourdells
aboocock2p	bstlouismo
aboocock2p	ccastelijnz
aboocock2p	ekenderfh
aboocock2p	ptimsoni7
aboocock2p	cpalphreyman95
aboocock2p	gsonleyb9
aboocock2p	apadghamq3
aboocock2p	dkobesoa
aboocock2p	alistonemm
aboocock2p	ldanhere5
aboocock2p	ntomowicznm
aboocock2p	lnardrupjm
aboocock2p	jabellamv
aboocock2p	drikardiq
aboocock2p	vbrenardim
aboocock2p	bpidduckg
aboocock2p	ewintonmb
aboocock2p	sbalshenp1
aboocock2p	ilinderjz
aboocock2p	fedsalllh
aboocock2p	lfenckm8
aboocock2p	kballaamj7
aboocock2p	mgillan9v
aboocock2p	spointsjc
aboocock2p	efretwellkr
aboocock2p	jmurcuttgo
aboocock2p	adeeproseo5
aboocock2p	mtolworthieh4
aboocock2p	gdagonn3
aboocock2p	bcahill62
aboocock2p	lmahaffeyk
aboocock2p	cbrenneke7s
aboocock2p	nwinny78
aboocock2p	astreaterik
aboocock2p	mkowalskica
aboocock2p	dgrushinig
aboocock2p	btrousdelldf
aboocock2p	cethelstonb
aboocock2p	vgallafant12
aboocock2p	fwicherfe
aboocock2p	gbleythingm
aboocock2p	wmckelvieag
aboocock2p	rvellacottkf
aboocock2p	sbriztmandy
aboocock2p	pkeenegh
aboocock2p	ksyrattbk
aboocock2p	kohanniganml
aboocock2p	cdibbepy
aboocock2p	aeverlynz
aboocock2p	jattewha
aboocock2p	eoneilq6
aboocock2p	nsimpkissbd
aboocock2p	pgreyax
aboocock2p	mciobutaro6
aboocock2p	btidcombn
aboocock2p	lalwenjy
aboocock2p	fsiene91
aboocock2p	wmonetib7
aboocock2p	isurfleetdo
aboocock2p	lpulleypf
aboocock2p	kknathbo
aboocock2p	brubinfajniu
aboocock2p	edorrqi
aboocock2p	lpregalp3
aboocock2p	ginsleyk0
aboocock2p	adymottat
aboocock2p	wwykeme
aboocock2p	icadmanla
aboocock2p	ncubbinr0
aboocock2p	hjarmainjg
aboocock2p	gbinhamhe
aboocock2p	nscothernlj
aboocock2p	arayman7a
aboocock2p	mpharrow9e
aboocock2p	lmiddellra
aboocock2p	ddigbylk
aboocock2p	lhargieko
aboocock2p	ksillwoodn0
aboocock2p	fberettaqt
aboocock2p	ldronsfieldgd
aboocock2p	bvynehalldp
aboocock2p	izaczekm4
aboocock2p	mhickford9n
aboocock2p	mlindstromc3
aboocock2p	ccrosgrove1z
sredholes3f	lpregalp3
sredholes3f	fstains93
sredholes3f	sbriztmandy
sredholes3f	efretwellkr
sredholes3f	csheardc
sredholes3f	dkobesoa
sredholes3f	astreaterik
sredholes3f	lalwenjy
sredholes3f	aeverlynz
sredholes3f	bvynehalldp
sredholes3f	eoneilq6
sredholes3f	gsonleyb9
sredholes3f	wwykeme
sredholes3f	arayman7a
sredholes3f	mtolworthieh4
sredholes3f	nwinny78
sredholes3f	bcahill62
sredholes3f	kballaamj7
sredholes3f	vgallafant12
sredholes3f	ptimsoni7
sredholes3f	apadghamq3
sredholes3f	lhargieko
sredholes3f	gdagonn3
sredholes3f	fedsalllh
sredholes3f	todonegan64
sredholes3f	ksillwoodn0
sredholes3f	sbalshenp1
sredholes3f	fbazogepw
sredholes3f	jmurcuttgo
sredholes3f	vbrenardim
sredholes3f	cbrenneke7s
sredholes3f	mstoeckq8
sredholes3f	lpulleypf
sredholes3f	wmckelvieag
sredholes3f	bpidduckg
sredholes3f	fberettaqt
sredholes3f	kknathbo
sredholes3f	lpipkingu
sredholes3f	mlindstromc3
sredholes3f	mgillan9v
sredholes3f	cbourdells
sredholes3f	mciobutaro6
sredholes3f	cethelstonb
sredholes3f	jattewha
sredholes3f	pkeenegh
sredholes3f	lmahaffeyk
sredholes3f	mpharrow9e
sredholes3f	cpalphreyman95
sredholes3f	isurfleetdo
sredholes3f	btrousdelldf
sredholes3f	icadmanla
sredholes3f	drikardiq
sredholes3f	gbleythingm
sredholes3f	ntomowicznm
sredholes3f	ldronsfieldgd
sredholes3f	pgreyax
sredholes3f	bstlouismo
sredholes3f	mhickford9n
sredholes3f	asinnettjh
sredholes3f	edorrqi
sredholes3f	lmiddellra
sredholes3f	lfenckm8
sredholes3f	ccrosgrove1z
sredholes3f	dgrushinig
sredholes3f	brubinfajniu
sredholes3f	alistonemm
sredholes3f	btidcombn
sredholes3f	ilinderjz
sredholes3f	hjarmainjg
sredholes3f	nscothernlj
sredholes3f	ldanhere5
sredholes3f	spointsjc
sredholes3f	jabellamv
sredholes3f	adeeproseo5
sredholes3f	fwicherfe
sredholes3f	ncubbinr0
sredholes3f	fsiene91
sredholes3f	ewintonmb
sredholes3f	mkowalskica
sredholes3f	lnardrupjm
sredholes3f	cdibbepy
sredholes3f	kohanniganml
sredholes3f	ginsleyk0
fguillerman3a	ldanhere5
fguillerman3a	kknathbo
fguillerman3a	gsonleyb9
fguillerman3a	alistonemm
fguillerman3a	kballaamj7
fguillerman3a	lalwenjy
fguillerman3a	bcahill62
fguillerman3a	asinnettjh
fguillerman3a	lmiddellra
fguillerman3a	cbrenneke7s
fguillerman3a	hjarmainjg
fguillerman3a	vgallafant12
fguillerman3a	cdibbepy
fguillerman3a	vbrenardim
fguillerman3a	mgillan9v
fguillerman3a	dkobesoa
fguillerman3a	ginsleyk0
fguillerman3a	sbalshenp1
fguillerman3a	ewintonmb
fguillerman3a	bpidduckg
fguillerman3a	spointsjc
fguillerman3a	sbriztmandy
fguillerman3a	aeverlynz
fguillerman3a	nscothernlj
fguillerman3a	fstains93
fguillerman3a	bstlouismo
fguillerman3a	pgreyax
fguillerman3a	jattewha
fguillerman3a	lpulleypf
fguillerman3a	ilinderjz
fguillerman3a	isurfleetdo
fguillerman3a	arayman7a
fguillerman3a	fberettaqt
fguillerman3a	cpalphreyman95
fguillerman3a	lpregalp3
fguillerman3a	mpharrow9e
fguillerman3a	cethelstonb
fguillerman3a	adeeproseo5
fguillerman3a	apadghamq3
fguillerman3a	fbazogepw
fguillerman3a	todonegan64
fguillerman3a	btrousdelldf
fguillerman3a	ncubbinr0
fguillerman3a	lhargieko
fguillerman3a	fsiene91
fguillerman3a	drikardiq
fguillerman3a	mciobutaro6
fguillerman3a	ptimsoni7
fguillerman3a	mlindstromc3
fguillerman3a	ksillwoodn0
fguillerman3a	jmurcuttgo
fguillerman3a	dgrushinig
fguillerman3a	gdagonn3
fguillerman3a	cbourdells
fguillerman3a	mtolworthieh4
fguillerman3a	gbleythingm
fguillerman3a	lmahaffeyk
fguillerman3a	kohanniganml
fguillerman3a	pkeenegh
fguillerman3a	fedsalllh
fguillerman3a	btidcombn
fguillerman3a	mhickford9n
fguillerman3a	lnardrupjm
fguillerman3a	astreaterik
fguillerman3a	bvynehalldp
fguillerman3a	wmckelvieag
fguillerman3a	efretwellkr
fguillerman3a	wwykeme
fguillerman3a	brubinfajniu
fguillerman3a	eoneilq6
fguillerman3a	mstoeckq8
fguillerman3a	ldronsfieldgd
fguillerman3a	ntomowicznm
fguillerman3a	nwinny78
fguillerman3a	ccrosgrove1z
fguillerman3a	lfenckm8
fguillerman3a	jabellamv
fguillerman3a	csheardc
fguillerman3a	lpipkingu
bbernhardi5b	pgreyax
bbernhardi5b	hjarmainjg
bbernhardi5b	alistonemm
bbernhardi5b	vbrenardim
bbernhardi5b	mciobutaro6
bbernhardi5b	lmahaffeyk
bbernhardi5b	ldanhere5
bbernhardi5b	btrousdelldf
bbernhardi5b	bpidduckg
bbernhardi5b	mpharrow9e
bbernhardi5b	bvynehalldp
bbernhardi5b	mgillan9v
bbernhardi5b	lfenckm8
bbernhardi5b	mhickford9n
bbernhardi5b	cbrenneke7s
bbernhardi5b	pkeenegh
bbernhardi5b	fedsalllh
bbernhardi5b	isurfleetdo
bbernhardi5b	vgallafant12
bbernhardi5b	adeeproseo5
bbernhardi5b	ilinderjz
bbernhardi5b	nscothernlj
bbernhardi5b	arayman7a
bbernhardi5b	gbleythingm
bbernhardi5b	kohanniganml
bbernhardi5b	drikardiq
bbernhardi5b	lnardrupjm
bbernhardi5b	fbazogepw
bbernhardi5b	ptimsoni7
bbernhardi5b	nwinny78
bbernhardi5b	jabellamv
bbernhardi5b	ccrosgrove1z
bbernhardi5b	jattewha
bbernhardi5b	jmurcuttgo
bbernhardi5b	btidcombn
bbernhardi5b	csheardc
bbernhardi5b	lhargieko
bbernhardi5b	wwykeme
bbernhardi5b	ewintonmb
bbernhardi5b	ksillwoodn0
bbernhardi5b	lpulleypf
bbernhardi5b	lpipkingu
bbernhardi5b	mstoeckq8
bbernhardi5b	cpalphreyman95
bbernhardi5b	eoneilq6
bbernhardi5b	ncubbinr0
bbernhardi5b	lmiddellra
bbernhardi5b	sbriztmandy
bbernhardi5b	efretwellkr
bbernhardi5b	mlindstromc3
bbernhardi5b	brubinfajniu
bbernhardi5b	sbalshenp1
bbernhardi5b	todonegan64
bbernhardi5b	dgrushinig
bbernhardi5b	asinnettjh
bbernhardi5b	dkobesoa
bbernhardi5b	mtolworthieh4
bbernhardi5b	cethelstonb
bbernhardi5b	gsonleyb9
bbernhardi5b	fsiene91
bbernhardi5b	cbourdells
bbernhardi5b	kballaamj7
bbernhardi5b	gdagonn3
bbernhardi5b	spointsjc
bbernhardi5b	ldronsfieldgd
bbernhardi5b	wmckelvieag
bbernhardi5b	lpregalp3
efulks1v	sbriztmandy
efulks1v	adeeproseo5
efulks1v	nwinny78
efulks1v	pkeenegh
efulks1v	asinnettjh
efulks1v	jmurcuttgo
efulks1v	lfenckm8
efulks1v	jabellamv
efulks1v	wwykeme
efulks1v	ilinderjz
efulks1v	brubinfajniu
efulks1v	ldronsfieldgd
efulks1v	nscothernlj
efulks1v	btidcombn
efulks1v	lmiddellra
efulks1v	lpregalp3
efulks1v	cethelstonb
efulks1v	mtolworthieh4
efulks1v	efretwellkr
efulks1v	ccrosgrove1z
efulks1v	ewintonmb
efulks1v	cbrenneke7s
efulks1v	bvynehalldp
efulks1v	gbleythingm
efulks1v	jattewha
efulks1v	wmckelvieag
efulks1v	spointsjc
efulks1v	fbazogepw
efulks1v	arayman7a
efulks1v	vgallafant12
efulks1v	ncubbinr0
efulks1v	lnardrupjm
efulks1v	sbalshenp1
efulks1v	cpalphreyman95
efulks1v	bpidduckg
efulks1v	hjarmainjg
efulks1v	fsiene91
efulks1v	lpipkingu
efulks1v	kohanniganml
efulks1v	lhargieko
efulks1v	ksillwoodn0
efulks1v	todonegan64
efulks1v	csheardc
efulks1v	vbrenardim
efulks1v	mlindstromc3
efulks1v	btrousdelldf
efulks1v	mgillan9v
efulks1v	gsonleyb9
efulks1v	gdagonn3
efulks1v	isurfleetdo
efulks1v	dkobesoa
efulks1v	pgreyax
efulks1v	ptimsoni7
efulks1v	mciobutaro6
efulks1v	cbourdells
efulks1v	drikardiq
efulks1v	kballaamj7
efulks1v	dgrushinig
mglasscock3p	jabellamv
mglasscock3p	fbazogepw
mglasscock3p	pgreyax
mglasscock3p	cpalphreyman95
mglasscock3p	cbourdells
mglasscock3p	adeeproseo5
mglasscock3p	drikardiq
mglasscock3p	arayman7a
mglasscock3p	mgillan9v
mglasscock3p	dkobesoa
mglasscock3p	gdagonn3
mglasscock3p	ldronsfieldgd
mglasscock3p	csheardc
mglasscock3p	kballaamj7
mglasscock3p	hjarmainjg
mglasscock3p	gbleythingm
mglasscock3p	btrousdelldf
mglasscock3p	cbrenneke7s
mglasscock3p	nwinny78
mglasscock3p	brubinfajniu
mglasscock3p	isurfleetdo
mglasscock3p	mlindstromc3
mglasscock3p	nscothernlj
mglasscock3p	todonegan64
mglasscock3p	wwykeme
mglasscock3p	efretwellkr
mglasscock3p	ptimsoni7
mglasscock3p	fsiene91
mglasscock3p	spointsjc
mglasscock3p	ilinderjz
mglasscock3p	ccrosgrove1z
mglasscock3p	gsonleyb9
mglasscock3p	btidcombn
mglasscock3p	lpipkingu
mglasscock3p	cethelstonb
mglasscock3p	kohanniganml
mglasscock3p	lfenckm8
mglasscock3p	dgrushinig
mglasscock3p	mciobutaro6
mglasscock3p	lnardrupjm
mglasscock3p	vgallafant12
mglasscock3p	mtolworthieh4
mglasscock3p	ksillwoodn0
mglasscock3p	ewintonmb
mglasscock3p	lhargieko
mglasscock3p	lmiddellra
mglasscock3p	pkeenegh
mglasscock3p	ncubbinr0
mglasscock3p	sbriztmandy
mglasscock3p	lpregalp3
mglasscock3p	jmurcuttgo
gsandels3s	nwinny78
gsandels3s	mtolworthieh4
gsandels3s	gsonleyb9
gsandels3s	ccrosgrove1z
gsandels3s	cbrenneke7s
gsandels3s	ncubbinr0
gsandels3s	adeeproseo5
gsandels3s	mlindstromc3
gsandels3s	lnardrupjm
gsandels3s	dkobesoa
gsandels3s	csheardc
gsandels3s	mgillan9v
gsandels3s	btrousdelldf
gsandels3s	dgrushinig
gsandels3s	pgreyax
gsandels3s	drikardiq
gsandels3s	nscothernlj
gsandels3s	jabellamv
gsandels3s	vgallafant12
gsandels3s	lpipkingu
gsandels3s	lfenckm8
gsandels3s	pkeenegh
gsandels3s	hjarmainjg
gsandels3s	ptimsoni7
gsandels3s	efretwellkr
gsandels3s	fbazogepw
gsandels3s	cethelstonb
gsandels3s	isurfleetdo
gsandels3s	ilinderjz
gsandels3s	kballaamj7
gsandels3s	btidcombn
gsandels3s	gdagonn3
gsandels3s	cpalphreyman95
gsandels3s	jmurcuttgo
gsandels3s	sbriztmandy
gsandels3s	ewintonmb
gsandels3s	gbleythingm
gsandels3s	fsiene91
gsandels3s	spointsjc
gsandels3s	lpregalp3
gsandels3s	arayman7a
gsandels3s	ldronsfieldgd
oclampin49	btrousdelldf
oclampin49	dgrushinig
oclampin49	fbazogepw
oclampin49	lpregalp3
oclampin49	spointsjc
oclampin49	drikardiq
oclampin49	dkobesoa
oclampin49	nscothernlj
oclampin49	lpipkingu
oclampin49	cethelstonb
oclampin49	mtolworthieh4
oclampin49	isurfleetdo
oclampin49	cbrenneke7s
oclampin49	fsiene91
oclampin49	adeeproseo5
oclampin49	efretwellkr
oclampin49	mgillan9v
oclampin49	ncubbinr0
oclampin49	jabellamv
oclampin49	pkeenegh
oclampin49	sbriztmandy
oclampin49	csheardc
oclampin49	mlindstromc3
oclampin49	ewintonmb
oclampin49	ccrosgrove1z
oclampin49	pgreyax
oclampin49	jmurcuttgo
oclampin49	kballaamj7
oclampin49	vgallafant12
oclampin49	cpalphreyman95
oclampin49	gdagonn3
oclampin49	ldronsfieldgd
oclampin49	ptimsoni7
oclampin49	gsonleyb9
oclampin49	hjarmainjg
tdible5h	lpregalp3
tdible5h	gsonleyb9
tdible5h	ncubbinr0
tdible5h	hjarmainjg
tdible5h	ccrosgrove1z
tdible5h	btrousdelldf
tdible5h	mlindstromc3
tdible5h	dgrushinig
tdible5h	adeeproseo5
gcowndley35	hholywell89
gcowndley35	wmarshallsayf
gcowndley35	rbrucklg
gcowndley35	abenkheip
gcowndley35	jmartinet82
gcowndley35	mmcboylekp
gcowndley35	ymcdaidii
gcowndley35	foriginis
gcowndley35	kthairsjd
gcowndley35	mvenable9
gcowndley35	abumfreymw
gcowndley35	mfosskd
gcowndley35	rrowcliffe75
gcowndley35	pparysiakpt
gcowndley35	plavrinovlt
gcowndley35	esouthwardhw
gcowndley35	nthunderse6
gcowndley35	mwhostonp
gcowndley35	rmaccorleych
gcowndley35	dbrownellhq
gcowndley35	btice3e
gcowndley35	sinnocentil3
gcowndley35	gceschiniqb
gcowndley35	mpughsley86
gcowndley35	bcorderoh2
gcowndley35	lelnoughll
gcowndley35	edurrancerr
gcowndley35	upapenao
gcowndley35	kknowlys8z
gcowndley35	edayment2
gcowndley35	cnorthfield9x
gcowndley35	dhemmingwaydu
gcowndley35	kfysh9j
gcowndley35	bciculloc0
gcowndley35	vrobinettegc
gcowndley35	docoskerry7y
gcowndley35	mantuonio6
gcowndley35	sropkingd4
gcowndley35	nwanden65
gcowndley35	rmcguckenno
gcowndley35	shaggas6f
gcowndley35	wepper
gcowndley35	ilapennafw
gcowndley35	dwallicecb
gcowndley35	owoodusd3
gcowndley35	stukelyf8
gcowndley35	steaseah
gcowndley35	tfishbiee1
gcowndley35	smouanew
gcowndley35	ycunliffegl
gcowndley35	ndearthgg
gcowndley35	agravyel
gcowndley35	ewhewayen
gcowndley35	lcastagnetoox
gcowndley35	tmunnshj
gcowndley35	kiacavonea9
gcowndley35	alacaser2
gcowndley35	bbrickwoodnn
gcowndley35	gebrallnk
gcowndley35	sbucklee7n
gcowndley35	aparlour7d
gcowndley35	wglantz7t
gcowndley35	bpretormr
gcowndley35	bmarkingba
gcowndley35	ecollingwoodm1
gcowndley35	jgoering6h
gcowndley35	rrobesonaz
gcowndley35	svolante4
gcowndley35	ajerochk4
gcowndley35	cmcgillacoellcf
gcowndley35	eplatfootje
gcowndley35	amcquorkellk3
gcowndley35	bheindrickci
gcowndley35	dmirandocq
gcowndley35	lbreartonj8
gcowndley35	twanecy
gcowndley35	lbotgerd0
gcowndley35	lmelvilled8
gcowndley35	estreatfi
gcowndley35	eferensqv
gcowndley35	pdormanmf
gcowndley35	rallsopph
gcowndley35	vchappelle96
gcowndley35	kacory8p
gcowndley35	amacgibbonqn
gcowndley35	fmurrellcd
gcowndley35	bquinanem9
gcowndley35	chawkettks
gcowndley35	jsoaresov
gcowndley35	cpylkynytonf1
gcowndley35	spryor61
gcowndley35	bpriddisrm
gcowndley35	nmechell8y
gcowndley35	mcominiek
gcowndley35	asantelloqo
gcowndley35	csimnellf6
gcowndley35	cfalk84
gcowndley35	aseelbach7p
gcowndley35	sbuckoke13
gcowndley35	mstrowlgerw
gcowndley35	bgaitskillr
gcowndley35	glittlejohno3
gcowndley35	epurcellp7
gcowndley35	gmatoshinlc
gcowndley35	wferrieripi
gcowndley35	wpostinmp
gcowndley35	ggodwinmy
gcowndley35	amerceyix
gcowndley35	bgrimoldbyo1
gcowndley35	ahuittj4
gcowndley35	amirfinij
gcowndley35	tjoriokg
gcowndley35	cpeapleju
gcowndley35	ahandrekob
gcowndley35	wschlagtmanshd
gcowndley35	treesoni2
gcowndley35	kfargherhk
gcowndley35	elongfutf9
gcowndley35	chaddrelldt
gcowndley35	jpeacockepd
gcowndley35	rfurzeyrk
gcowndley35	apechet94
gcowndley35	avogeler9s
gcowndley35	lcarnduff4y
gcowndley35	yflowerdewe
gcowndley35	dwaldingqj
gcowndley35	wlantuffele
gcowndley35	lseniori4
gcowndley35	bpodd3g
gcowndley35	avauxl5
gcowndley35	browleyro
gcowndley35	sgronavkx
gcowndley35	blungehh
gcowndley35	istiegersce
gcowndley35	zliddenb6
gcowndley35	wchilde8i
gcowndley35	smatveyevir
gcowndley35	amatula54
gcowndley35	wcorbishley9d
gcowndley35	naxstonih
gcowndley35	skeohaneo2
gcowndley35	apurdy6q
gcowndley35	mhuston6t
gcowndley35	idyerr1
gcowndley35	cpullingermn
jscutter1e	bbrickwoodnn
jscutter1e	smouanew
jscutter1e	wschlagtmanshd
jscutter1e	ahandrekob
jscutter1e	dbrownellhq
jscutter1e	chaddrelldt
jscutter1e	naxstonih
jscutter1e	ahuittj4
jscutter1e	eplatfootje
jscutter1e	ggodwinmy
jscutter1e	zliddenb6
jscutter1e	mmcboylekp
jscutter1e	ecollingwoodm1
jscutter1e	avogeler9s
jscutter1e	pdormanmf
jscutter1e	chawkettks
jscutter1e	rrowcliffe75
jscutter1e	epurcellp7
jscutter1e	mhuston6t
jscutter1e	abumfreymw
jscutter1e	spryor61
jscutter1e	wmarshallsayf
jscutter1e	cfalk84
jscutter1e	smatveyevir
jscutter1e	btice3e
jscutter1e	mwhostonp
jscutter1e	amacgibbonqn
jscutter1e	kfargherhk
jscutter1e	lcarnduff4y
jscutter1e	sbucklee7n
jscutter1e	jsoaresov
jscutter1e	blungehh
jscutter1e	tfishbiee1
jscutter1e	estreatfi
jscutter1e	ewhewayen
jscutter1e	mfosskd
jscutter1e	csimnellf6
jscutter1e	dwallicecb
jscutter1e	amerceyix
jscutter1e	dhemmingwaydu
jscutter1e	ymcdaidii
jscutter1e	bheindrickci
jscutter1e	sgronavkx
jscutter1e	wcorbishley9d
jscutter1e	amirfinij
jscutter1e	ilapennafw
jscutter1e	upapenao
jscutter1e	foriginis
jscutter1e	steaseah
jscutter1e	rbrucklg
jscutter1e	rmaccorleych
jscutter1e	nwanden65
jscutter1e	alacaser2
jscutter1e	sinnocentil3
jscutter1e	gmatoshinlc
jscutter1e	lseniori4
jscutter1e	sropkingd4
jscutter1e	jpeacockepd
jscutter1e	stukelyf8
jscutter1e	shaggas6f
jscutter1e	ycunliffegl
jscutter1e	tmunnshj
jscutter1e	mstrowlgerw
jscutter1e	treesoni2
jscutter1e	lmelvilled8
jscutter1e	amatula54
jscutter1e	mlunnj6
jscutter1e	browleyro
jscutter1e	bpodd3g
jscutter1e	ajerochk4
jscutter1e	rrobesonaz
jscutter1e	fmurrellcd
jscutter1e	gceschiniqb
jscutter1e	rallsopph
jscutter1e	svolante4
jscutter1e	plavrinovlt
jscutter1e	bpretormr
jscutter1e	bgrimoldbyo1
jscutter1e	lcastagnetoox
jscutter1e	dwaldingqj
jscutter1e	asantelloqo
jscutter1e	kthairsjd
jscutter1e	mvenable9
jscutter1e	wglantz7t
jscutter1e	kknowlys8z
jscutter1e	apechet94
jscutter1e	cnorthfield9x
jscutter1e	dmirandocq
jscutter1e	lbotgerd0
jscutter1e	elongfutf9
jscutter1e	ndearthgg
jscutter1e	lbreartonj8
jscutter1e	avauxl5
jscutter1e	skeohaneo2
jscutter1e	kfysh9j
jscutter1e	nthunderse6
jscutter1e	edayment2
jscutter1e	wchilde8i
jscutter1e	aparlour7d
jscutter1e	bciculloc0
jscutter1e	apurdy6q
jscutter1e	agravyel
jscutter1e	twanecy
jscutter1e	wferrieripi
jscutter1e	yflowerdewe
jscutter1e	kacory8p
jscutter1e	vchappelle96
jscutter1e	rmcguckenno
jscutter1e	gebrallnk
jscutter1e	bmarkingba
jscutter1e	eferensqv
jscutter1e	cpylkynytonf1
jscutter1e	mcominiek
jscutter1e	cpullingermn
jscutter1e	bcorderoh2
jscutter1e	sbuckoke13
jscutter1e	cpeapleju
jscutter1e	owoodusd3
jscutter1e	jmartinet82
jscutter1e	tjoriokg
jscutter1e	bpriddisrm
jscutter1e	cmcgillacoellcf
jscutter1e	wepper
jscutter1e	idyerr1
jscutter1e	pparysiakpt
jscutter1e	abenkheip
jscutter1e	glittlejohno3
jscutter1e	mantuonio6
jscutter1e	hholywell89
jscutter1e	wlantuffele
jscutter1e	vrobinettegc
jscutter1e	rfurzeyrk
jscutter1e	mpughsley86
jscutter1e	esouthwardhw
jscutter1e	wpostinmp
jscutter1e	bgaitskillr
jscutter1e	bquinanem9
jscutter1e	kiacavonea9
jscutter1e	istiegersce
jscutter1e	amcquorkellk3
jscutter1e	docoskerry7y
jscutter1e	edurrancerr
jscutter1e	jgoering6h
jscutter1e	nmechell8y
jscutter1e	lelnoughll
jscutter1e	aseelbach7p
cwakley1r	avogeler9s
cwakley1r	tmunnshj
cwakley1r	wlantuffele
cwakley1r	jpeacockepd
cwakley1r	dwallicecb
cwakley1r	wschlagtmanshd
cwakley1r	bgaitskillr
cwakley1r	wmarshallsayf
cwakley1r	rmcguckenno
cwakley1r	mwhostonp
cwakley1r	lmelvilled8
cwakley1r	ycunliffegl
cwakley1r	rbrucklg
cwakley1r	kfargherhk
cwakley1r	kknowlys8z
cwakley1r	cnorthfield9x
cwakley1r	sbucklee7n
cwakley1r	mmcboylekp
cwakley1r	kthairsjd
cwakley1r	amatula54
cwakley1r	lelnoughll
cwakley1r	pdormanmf
cwakley1r	edayment2
cwakley1r	mcominiek
cwakley1r	vrobinettegc
cwakley1r	lbotgerd0
cwakley1r	bgrimoldbyo1
cwakley1r	dbrownellhq
cwakley1r	nmechell8y
cwakley1r	foriginis
cwakley1r	rmaccorleych
cwakley1r	gceschiniqb
cwakley1r	apechet94
cwakley1r	rallsopph
cwakley1r	treesoni2
cwakley1r	tfishbiee1
cwakley1r	sbuckoke13
cwakley1r	wglantz7t
cwakley1r	cpullingermn
cwakley1r	alacaser2
cwakley1r	amcquorkellk3
cwakley1r	bcorderoh2
cwakley1r	shaggas6f
cwakley1r	cpylkynytonf1
cwakley1r	kiacavonea9
cwakley1r	blungehh
cwakley1r	gmatoshinlc
cwakley1r	ahuittj4
cwakley1r	browleyro
cwakley1r	wcorbishley9d
cwakley1r	dwaldingqj
cwakley1r	pparysiakpt
cwakley1r	ndearthgg
cwakley1r	ggodwinmy
cwakley1r	apurdy6q
cwakley1r	cpeapleju
cwakley1r	dmirandocq
cwakley1r	ilapennafw
cwakley1r	lcarnduff4y
cwakley1r	tjoriokg
cwakley1r	aseelbach7p
cwakley1r	bpriddisrm
cwakley1r	rfurzeyrk
cwakley1r	bheindrickci
cwakley1r	esouthwardhw
cwakley1r	sgronavkx
cwakley1r	lcastagnetoox
cwakley1r	wepper
cwakley1r	agravyel
cwakley1r	estreatfi
cwakley1r	aparlour7d
cwakley1r	ecollingwoodm1
cwakley1r	twanecy
cwakley1r	wpostinmp
cwakley1r	jsoaresov
cwakley1r	chawkettks
cwakley1r	vchappelle96
cwakley1r	yflowerdewe
cwakley1r	zliddenb6
cwakley1r	idyerr1
cwakley1r	bciculloc0
cwakley1r	amacgibbonqn
cwakley1r	btice3e
cwakley1r	epurcellp7
cwakley1r	abumfreymw
cwakley1r	jmartinet82
cwakley1r	kfysh9j
cwakley1r	smatveyevir
cwakley1r	sropkingd4
cwakley1r	steaseah
cwakley1r	docoskerry7y
cwakley1r	mhuston6t
cwakley1r	svolante4
cwakley1r	istiegersce
cwakley1r	jgoering6h
cwakley1r	cfalk84
cwakley1r	lseniori4
cwakley1r	bpretormr
cwakley1r	csimnellf6
cwakley1r	rrobesonaz
cwakley1r	avauxl5
cwakley1r	lbreartonj8
cwakley1r	bbrickwoodnn
cwakley1r	ajerochk4
cwakley1r	plavrinovlt
cwakley1r	bmarkingba
cwakley1r	amirfinij
cwakley1r	dhemmingwaydu
cwakley1r	skeohaneo2
cwakley1r	sinnocentil3
cwakley1r	bpodd3g
cwakley1r	abenkheip
cwakley1r	ahandrekob
cwakley1r	amerceyix
cwakley1r	ymcdaidii
cwakley1r	mvenable9
cwakley1r	eplatfootje
cwakley1r	glittlejohno3
cwakley1r	nwanden65
cwakley1r	eferensqv
cwakley1r	fmurrellcd
cwakley1r	wchilde8i
cwakley1r	asantelloqo
cwakley1r	mfosskd
cwakley1r	cmcgillacoellcf
cwakley1r	kacory8p
cwakley1r	mantuonio6
cwakley1r	mlunnj6
cwakley1r	naxstonih
cwakley1r	upapenao
cwakley1r	nthunderse6
cwakley1r	bquinanem9
cwakley1r	wferrieripi
cwakley1r	stukelyf8
cwakley1r	edurrancerr
cwakley1r	owoodusd3
cwakley1r	rrowcliffe75
cwakley1r	elongfutf9
cwakley1r	ewhewayen
cwakley1r	gebrallnk
cwakley1r	chaddrelldt
cwakley1r	mpughsley86
cwakley1r	mstrowlgerw
cwakley1r	hholywell89
cwakley1r	smouanew
cwakley1r	spryor61
agolds1s	wmarshallsayf
agolds1s	wchilde8i
agolds1s	mhuston6t
agolds1s	wschlagtmanshd
agolds1s	ahuittj4
agolds1s	mfosskd
agolds1s	vchappelle96
agolds1s	dhemmingwaydu
agolds1s	dmirandocq
agolds1s	ajerochk4
agolds1s	cpylkynytonf1
agolds1s	svolante4
agolds1s	sbucklee7n
agolds1s	chaddrelldt
agolds1s	rallsopph
agolds1s	mlunnj6
agolds1s	cmcgillacoellcf
agolds1s	bpretormr
agolds1s	rrowcliffe75
agolds1s	agravyel
agolds1s	tmunnshj
agolds1s	alacaser2
agolds1s	jgoering6h
agolds1s	treesoni2
agolds1s	sbuckoke13
agolds1s	amcquorkellk3
agolds1s	hholywell89
agolds1s	stukelyf8
agolds1s	cpeapleju
agolds1s	vrobinettegc
agolds1s	kiacavonea9
agolds1s	bpodd3g
agolds1s	zliddenb6
agolds1s	lmelvilled8
agolds1s	sropkingd4
agolds1s	twanecy
agolds1s	nthunderse6
agolds1s	kfysh9j
agolds1s	wferrieripi
agolds1s	plavrinovlt
agolds1s	edurrancerr
agolds1s	ymcdaidii
agolds1s	estreatfi
agolds1s	edayment2
agolds1s	browleyro
agolds1s	sinnocentil3
agolds1s	esouthwardhw
agolds1s	lbreartonj8
agolds1s	bheindrickci
agolds1s	aseelbach7p
agolds1s	bgaitskillr
agolds1s	kthairsjd
agolds1s	aparlour7d
agolds1s	lcastagnetoox
agolds1s	rfurzeyrk
agolds1s	tjoriokg
agolds1s	spryor61
agolds1s	lcarnduff4y
agolds1s	abumfreymw
agolds1s	bciculloc0
agolds1s	ewhewayen
agolds1s	nwanden65
agolds1s	ilapennafw
agolds1s	idyerr1
agolds1s	blungehh
agolds1s	apurdy6q
agolds1s	rbrucklg
agolds1s	wpostinmp
agolds1s	smatveyevir
agolds1s	ndearthgg
agolds1s	wcorbishley9d
agolds1s	pparysiakpt
agolds1s	mcominiek
agolds1s	tfishbiee1
agolds1s	amerceyix
agolds1s	steaseah
agolds1s	dwallicecb
agolds1s	btice3e
agolds1s	lbotgerd0
agolds1s	wglantz7t
agolds1s	lseniori4
agolds1s	dbrownellhq
agolds1s	amacgibbonqn
agolds1s	shaggas6f
agolds1s	gceschiniqb
agolds1s	docoskerry7y
agolds1s	rrobesonaz
agolds1s	ahandrekob
agolds1s	elongfutf9
agolds1s	avauxl5
agolds1s	bgrimoldbyo1
agolds1s	owoodusd3
agolds1s	bquinanem9
agolds1s	asantelloqo
agolds1s	amirfinij
agolds1s	jmartinet82
agolds1s	kknowlys8z
agolds1s	bpriddisrm
agolds1s	chawkettks
agolds1s	epurcellp7
agolds1s	mwhostonp
agolds1s	ggodwinmy
agolds1s	kfargherhk
agolds1s	skeohaneo2
agolds1s	dwaldingqj
agolds1s	gmatoshinlc
agolds1s	upapenao
agolds1s	mpughsley86
agolds1s	csimnellf6
agolds1s	glittlejohno3
agolds1s	cpullingermn
agolds1s	mvenable9
agolds1s	bmarkingba
agolds1s	jpeacockepd
agolds1s	avogeler9s
agolds1s	istiegersce
agolds1s	gebrallnk
agolds1s	ecollingwoodm1
agolds1s	apechet94
agolds1s	amatula54
agolds1s	rmcguckenno
agolds1s	jsoaresov
agolds1s	kacory8p
agolds1s	mantuonio6
agolds1s	pdormanmf
agolds1s	yflowerdewe
agolds1s	smouanew
agolds1s	eplatfootje
agolds1s	naxstonih
agolds1s	bcorderoh2
agolds1s	cfalk84
agolds1s	mmcboylekp
agolds1s	bbrickwoodnn
agolds1s	foriginis
agolds1s	lelnoughll
agolds1s	fmurrellcd
agolds1s	abenkheip
agolds1s	sgronavkx
agolds1s	ycunliffegl
agolds1s	wlantuffele
agolds1s	rmaccorleych
agolds1s	nmechell8y
agolds1s	mstrowlgerw
agolds1s	wepper
agolds1s	cnorthfield9x
agolds1s	eferensqv
vdoumer2e	jgoering6h
vdoumer2e	browleyro
vdoumer2e	gceschiniqb
vdoumer2e	dbrownellhq
vdoumer2e	rallsopph
vdoumer2e	idyerr1
vdoumer2e	alacaser2
vdoumer2e	mantuonio6
vdoumer2e	aseelbach7p
vdoumer2e	amacgibbonqn
vdoumer2e	mlunnj6
vdoumer2e	lcastagnetoox
vdoumer2e	smatveyevir
vdoumer2e	lbreartonj8
vdoumer2e	skeohaneo2
vdoumer2e	rmcguckenno
vdoumer2e	owoodusd3
vdoumer2e	aparlour7d
vdoumer2e	lbotgerd0
vdoumer2e	gmatoshinlc
vdoumer2e	nmechell8y
vdoumer2e	rbrucklg
vdoumer2e	wpostinmp
vdoumer2e	sinnocentil3
vdoumer2e	amirfinij
vdoumer2e	pdormanmf
vdoumer2e	edurrancerr
vdoumer2e	bpretormr
vdoumer2e	wglantz7t
vdoumer2e	yflowerdewe
vdoumer2e	elongfutf9
vdoumer2e	sbuckoke13
vdoumer2e	mmcboylekp
vdoumer2e	naxstonih
vdoumer2e	avogeler9s
vdoumer2e	asantelloqo
vdoumer2e	btice3e
vdoumer2e	cpylkynytonf1
vdoumer2e	istiegersce
vdoumer2e	kfysh9j
vdoumer2e	jpeacockepd
vdoumer2e	bmarkingba
vdoumer2e	mhuston6t
vdoumer2e	gebrallnk
vdoumer2e	bheindrickci
vdoumer2e	treesoni2
vdoumer2e	shaggas6f
vdoumer2e	wepper
vdoumer2e	bbrickwoodnn
vdoumer2e	bgrimoldbyo1
vdoumer2e	upapenao
vdoumer2e	rrowcliffe75
vdoumer2e	vchappelle96
vdoumer2e	ilapennafw
vdoumer2e	amerceyix
vdoumer2e	bpriddisrm
vdoumer2e	ahandrekob
vdoumer2e	lelnoughll
vdoumer2e	rrobesonaz
vdoumer2e	cnorthfield9x
vdoumer2e	ajerochk4
vdoumer2e	kfargherhk
vdoumer2e	tfishbiee1
vdoumer2e	bciculloc0
vdoumer2e	chawkettks
vdoumer2e	vrobinettegc
vdoumer2e	smouanew
vdoumer2e	ycunliffegl
vdoumer2e	fmurrellcd
vdoumer2e	chaddrelldt
vdoumer2e	mpughsley86
vdoumer2e	wferrieripi
vdoumer2e	estreatfi
vdoumer2e	tjoriokg
vdoumer2e	lseniori4
vdoumer2e	nwanden65
vdoumer2e	edayment2
vdoumer2e	rmaccorleych
vdoumer2e	spryor61
vdoumer2e	ewhewayen
vdoumer2e	amatula54
vdoumer2e	mwhostonp
vdoumer2e	tmunnshj
vdoumer2e	mvenable9
vdoumer2e	foriginis
vdoumer2e	steaseah
vdoumer2e	wmarshallsayf
vdoumer2e	docoskerry7y
vdoumer2e	kiacavonea9
vdoumer2e	mcominiek
vdoumer2e	ymcdaidii
vdoumer2e	csimnellf6
vdoumer2e	wschlagtmanshd
vdoumer2e	wcorbishley9d
vdoumer2e	jmartinet82
vdoumer2e	cpeapleju
vdoumer2e	bpodd3g
vdoumer2e	twanecy
vdoumer2e	hholywell89
vdoumer2e	nthunderse6
vdoumer2e	blungehh
vdoumer2e	ndearthgg
vdoumer2e	epurcellp7
vdoumer2e	bquinanem9
vdoumer2e	eferensqv
vdoumer2e	apurdy6q
vdoumer2e	stukelyf8
vdoumer2e	cpullingermn
vdoumer2e	esouthwardhw
vdoumer2e	lmelvilled8
vdoumer2e	eplatfootje
vdoumer2e	pparysiakpt
vdoumer2e	lcarnduff4y
vdoumer2e	cmcgillacoellcf
vdoumer2e	agravyel
vdoumer2e	sgronavkx
vdoumer2e	glittlejohno3
vdoumer2e	bgaitskillr
vdoumer2e	dhemmingwaydu
vdoumer2e	mstrowlgerw
vdoumer2e	sbucklee7n
vdoumer2e	cfalk84
vdoumer2e	ahuittj4
vdoumer2e	ggodwinmy
vdoumer2e	sropkingd4
vdoumer2e	abumfreymw
vdoumer2e	abenkheip
vdoumer2e	dwallicecb
vdoumer2e	plavrinovlt
vdoumer2e	ecollingwoodm1
vdoumer2e	dmirandocq
vdoumer2e	kthairsjd
vdoumer2e	kacory8p
vdoumer2e	svolante4
vdoumer2e	rfurzeyrk
vdoumer2e	mfosskd
vdoumer2e	kknowlys8z
vdoumer2e	wchilde8i
vdoumer2e	avauxl5
vdoumer2e	dwaldingqj
vdoumer2e	apechet94
vdoumer2e	wlantuffele
vdoumer2e	bcorderoh2
vdoumer2e	zliddenb6
vdoumer2e	amcquorkellk3
vdoumer2e	jsoaresov
jfyers1a	ymcdaidii
jfyers1a	aseelbach7p
jfyers1a	nmechell8y
jfyers1a	wepper
jfyers1a	mcominiek
jfyers1a	treesoni2
jfyers1a	smouanew
jfyers1a	wmarshallsayf
jfyers1a	plavrinovlt
jfyers1a	amirfinij
jfyers1a	foriginis
jfyers1a	rrobesonaz
jfyers1a	eferensqv
jfyers1a	pdormanmf
jfyers1a	mvenable9
jfyers1a	cnorthfield9x
jfyers1a	bgaitskillr
jfyers1a	ecollingwoodm1
jfyers1a	pparysiakpt
jfyers1a	hholywell89
jfyers1a	bmarkingba
jfyers1a	mlunnj6
jfyers1a	sropkingd4
jfyers1a	edayment2
jfyers1a	chaddrelldt
jfyers1a	asantelloqo
jfyers1a	jmartinet82
jfyers1a	gebrallnk
jfyers1a	lbreartonj8
jfyers1a	naxstonih
jfyers1a	blungehh
jfyers1a	agravyel
jfyers1a	rbrucklg
jfyers1a	abumfreymw
jfyers1a	tmunnshj
jfyers1a	mstrowlgerw
jfyers1a	wlantuffele
jfyers1a	glittlejohno3
jfyers1a	bpretormr
jfyers1a	cpeapleju
jfyers1a	mantuonio6
jfyers1a	vrobinettegc
jfyers1a	jgoering6h
jfyers1a	wchilde8i
jfyers1a	dbrownellhq
jfyers1a	lelnoughll
jfyers1a	amatula54
jfyers1a	ewhewayen
jfyers1a	ndearthgg
jfyers1a	cpullingermn
jfyers1a	dwaldingqj
jfyers1a	avogeler9s
jfyers1a	dmirandocq
jfyers1a	wferrieripi
jfyers1a	bquinanem9
jfyers1a	rrowcliffe75
jfyers1a	steaseah
jfyers1a	edurrancerr
jfyers1a	epurcellp7
jfyers1a	apurdy6q
jfyers1a	tjoriokg
jfyers1a	bbrickwoodnn
jfyers1a	jsoaresov
jfyers1a	estreatfi
jfyers1a	ajerochk4
jfyers1a	kknowlys8z
jfyers1a	ahandrekob
jfyers1a	rfurzeyrk
jfyers1a	wpostinmp
jfyers1a	bpodd3g
jfyers1a	rallsopph
jfyers1a	tfishbiee1
jfyers1a	lbotgerd0
jfyers1a	cpylkynytonf1
jfyers1a	chawkettks
jfyers1a	sbuckoke13
jfyers1a	bgrimoldbyo1
jfyers1a	abenkheip
jfyers1a	nwanden65
jfyers1a	alacaser2
jfyers1a	kthairsjd
jfyers1a	skeohaneo2
jfyers1a	lseniori4
jfyers1a	amacgibbonqn
jfyers1a	sbucklee7n
jfyers1a	stukelyf8
jfyers1a	svolante4
jfyers1a	nthunderse6
jfyers1a	mmcboylekp
jfyers1a	apechet94
jfyers1a	bpriddisrm
jfyers1a	csimnellf6
jfyers1a	avauxl5
jfyers1a	twanecy
jfyers1a	jpeacockepd
jfyers1a	browleyro
jfyers1a	dhemmingwaydu
jfyers1a	bcorderoh2
jfyers1a	spryor61
jfyers1a	elongfutf9
jfyers1a	rmaccorleych
jfyers1a	ycunliffegl
jfyers1a	yflowerdewe
jfyers1a	bheindrickci
jfyers1a	aparlour7d
jfyers1a	gmatoshinlc
jfyers1a	cmcgillacoellcf
jfyers1a	zliddenb6
jfyers1a	sinnocentil3
jfyers1a	sgronavkx
jfyers1a	mfosskd
jfyers1a	wschlagtmanshd
jfyers1a	kfysh9j
jfyers1a	wglantz7t
jfyers1a	lmelvilled8
jfyers1a	istiegersce
jfyers1a	vchappelle96
jfyers1a	ggodwinmy
jfyers1a	mhuston6t
jfyers1a	lcastagnetoox
jfyers1a	lcarnduff4y
jfyers1a	smatveyevir
jfyers1a	docoskerry7y
jfyers1a	mpughsley86
jfyers1a	ilapennafw
jfyers1a	kacory8p
jfyers1a	kiacavonea9
jfyers1a	gceschiniqb
jfyers1a	fmurrellcd
jfyers1a	idyerr1
jfyers1a	rmcguckenno
jfyers1a	kfargherhk
jfyers1a	amcquorkellk3
jfyers1a	upapenao
jfyers1a	mwhostonp
jfyers1a	eplatfootje
jfyers1a	dwallicecb
jfyers1a	shaggas6f
jfyers1a	amerceyix
jfyers1a	owoodusd3
jfyers1a	ahuittj4
jfyers1a	wcorbishley9d
jfyers1a	btice3e
jfyers1a	cfalk84
jfyers1a	esouthwardhw
jfyers1a	bciculloc0
dhassell2d	tmunnshj
dhassell2d	jgoering6h
dhassell2d	yflowerdewe
dhassell2d	csimnellf6
dhassell2d	cfalk84
dhassell2d	mpughsley86
dhassell2d	wmarshallsayf
dhassell2d	skeohaneo2
dhassell2d	shaggas6f
dhassell2d	abumfreymw
dhassell2d	steaseah
dhassell2d	wlantuffele
dhassell2d	lbotgerd0
dhassell2d	ggodwinmy
dhassell2d	ajerochk4
dhassell2d	tfishbiee1
dhassell2d	smouanew
dhassell2d	cpylkynytonf1
dhassell2d	abenkheip
dhassell2d	mantuonio6
dhassell2d	dbrownellhq
dhassell2d	sgronavkx
dhassell2d	blungehh
dhassell2d	bquinanem9
dhassell2d	amirfinij
dhassell2d	rfurzeyrk
dhassell2d	nwanden65
dhassell2d	rmaccorleych
dhassell2d	ahandrekob
dhassell2d	wschlagtmanshd
dhassell2d	docoskerry7y
dhassell2d	bciculloc0
dhassell2d	amcquorkellk3
dhassell2d	wglantz7t
dhassell2d	ecollingwoodm1
dhassell2d	naxstonih
dhassell2d	bbrickwoodnn
dhassell2d	bgrimoldbyo1
dhassell2d	gceschiniqb
dhassell2d	edayment2
dhassell2d	wcorbishley9d
dhassell2d	wepper
dhassell2d	rmcguckenno
dhassell2d	avogeler9s
dhassell2d	jpeacockepd
dhassell2d	hholywell89
dhassell2d	chawkettks
dhassell2d	mfosskd
dhassell2d	ymcdaidii
dhassell2d	owoodusd3
dhassell2d	dwaldingqj
dhassell2d	rallsopph
dhassell2d	kthairsjd
dhassell2d	kknowlys8z
dhassell2d	cmcgillacoellcf
dhassell2d	mlunnj6
dhassell2d	nmechell8y
dhassell2d	aseelbach7p
dhassell2d	smatveyevir
dhassell2d	lcastagnetoox
dhassell2d	kfysh9j
dhassell2d	twanecy
dhassell2d	pparysiakpt
dhassell2d	vchappelle96
dhassell2d	bmarkingba
dhassell2d	stukelyf8
dhassell2d	amerceyix
dhassell2d	tjoriokg
dhassell2d	treesoni2
dhassell2d	cnorthfield9x
dhassell2d	avauxl5
dhassell2d	kiacavonea9
dhassell2d	eplatfootje
dhassell2d	pdormanmf
dhassell2d	sropkingd4
dhassell2d	dwallicecb
dhassell2d	wchilde8i
dhassell2d	bpriddisrm
dhassell2d	plavrinovlt
dhassell2d	sbuckoke13
dhassell2d	lcarnduff4y
dhassell2d	rrobesonaz
dhassell2d	bgaitskillr
dhassell2d	jsoaresov
dhassell2d	mwhostonp
dhassell2d	kfargherhk
dhassell2d	istiegersce
dhassell2d	lmelvilled8
dhassell2d	lseniori4
dhassell2d	cpullingermn
dhassell2d	edurrancerr
dhassell2d	wferrieripi
dhassell2d	amacgibbonqn
dhassell2d	mmcboylekp
dhassell2d	dmirandocq
dhassell2d	browleyro
dhassell2d	ewhewayen
dhassell2d	gebrallnk
dhassell2d	sbucklee7n
dhassell2d	bpretormr
dhassell2d	bheindrickci
dhassell2d	jmartinet82
dhassell2d	dhemmingwaydu
dhassell2d	svolante4
dhassell2d	ilapennafw
dhassell2d	mcominiek
dhassell2d	kacory8p
dhassell2d	asantelloqo
dhassell2d	apechet94
dhassell2d	rrowcliffe75
dhassell2d	upapenao
dhassell2d	amatula54
dhassell2d	agravyel
dhassell2d	spryor61
dhassell2d	mvenable9
dhassell2d	lelnoughll
dhassell2d	ndearthgg
dhassell2d	nthunderse6
dhassell2d	elongfutf9
dhassell2d	lbreartonj8
dhassell2d	idyerr1
dhassell2d	chaddrelldt
dhassell2d	sinnocentil3
dhassell2d	bpodd3g
dhassell2d	zliddenb6
dhassell2d	foriginis
dhassell2d	bcorderoh2
dhassell2d	vrobinettegc
dhassell2d	rbrucklg
dhassell2d	fmurrellcd
dhassell2d	ycunliffegl
dhassell2d	eferensqv
dhassell2d	alacaser2
dhassell2d	gmatoshinlc
dhassell2d	wpostinmp
dhassell2d	cpeapleju
dhassell2d	aparlour7d
dhassell2d	epurcellp7
dhassell2d	mhuston6t
dhassell2d	esouthwardhw
dhassell2d	apurdy6q
dhassell2d	estreatfi
dhassell2d	glittlejohno3
dhassell2d	btice3e
dhassell2d	mstrowlgerw
dhassell2d	ahuittj4
chanstock1p	abumfreymw
chanstock1p	bpretormr
chanstock1p	bgrimoldbyo1
chanstock1p	csimnellf6
chanstock1p	bciculloc0
chanstock1p	wpostinmp
chanstock1p	rrobesonaz
chanstock1p	amcquorkellk3
chanstock1p	ewhewayen
chanstock1p	tjoriokg
chanstock1p	dhemmingwaydu
chanstock1p	nthunderse6
chanstock1p	blungehh
chanstock1p	rbrucklg
chanstock1p	ilapennafw
chanstock1p	istiegersce
chanstock1p	apurdy6q
chanstock1p	glittlejohno3
chanstock1p	edurrancerr
chanstock1p	ajerochk4
chanstock1p	rallsopph
chanstock1p	rrowcliffe75
chanstock1p	amerceyix
chanstock1p	nmechell8y
chanstock1p	lcarnduff4y
chanstock1p	wlantuffele
chanstock1p	fmurrellcd
chanstock1p	steaseah
chanstock1p	ndearthgg
chanstock1p	naxstonih
chanstock1p	hholywell89
chanstock1p	sgronavkx
chanstock1p	zliddenb6
chanstock1p	abenkheip
chanstock1p	avogeler9s
chanstock1p	upapenao
chanstock1p	spryor61
chanstock1p	mcominiek
chanstock1p	treesoni2
chanstock1p	btice3e
chanstock1p	mhuston6t
chanstock1p	mmcboylekp
chanstock1p	wglantz7t
chanstock1p	dmirandocq
chanstock1p	apechet94
chanstock1p	pdormanmf
chanstock1p	sbucklee7n
chanstock1p	kfargherhk
chanstock1p	kthairsjd
chanstock1p	plavrinovlt
chanstock1p	asantelloqo
chanstock1p	yflowerdewe
chanstock1p	gmatoshinlc
chanstock1p	foriginis
chanstock1p	kfysh9j
chanstock1p	mvenable9
chanstock1p	bgaitskillr
chanstock1p	ggodwinmy
chanstock1p	rmaccorleych
chanstock1p	rmcguckenno
chanstock1p	lbotgerd0
chanstock1p	nwanden65
chanstock1p	bquinanem9
chanstock1p	lelnoughll
chanstock1p	avauxl5
chanstock1p	dwaldingqj
chanstock1p	jmartinet82
chanstock1p	ecollingwoodm1
chanstock1p	ahuittj4
chanstock1p	sropkingd4
chanstock1p	cpullingermn
chanstock1p	gebrallnk
chanstock1p	lseniori4
chanstock1p	edayment2
chanstock1p	eferensqv
chanstock1p	ycunliffegl
chanstock1p	skeohaneo2
chanstock1p	tmunnshj
chanstock1p	pparysiakpt
chanstock1p	tfishbiee1
chanstock1p	rfurzeyrk
chanstock1p	amirfinij
chanstock1p	smatveyevir
chanstock1p	smouanew
chanstock1p	lbreartonj8
chanstock1p	vchappelle96
chanstock1p	wcorbishley9d
chanstock1p	bmarkingba
chanstock1p	cpeapleju
chanstock1p	eplatfootje
chanstock1p	elongfutf9
chanstock1p	cmcgillacoellcf
chanstock1p	svolante4
chanstock1p	shaggas6f
chanstock1p	wmarshallsayf
chanstock1p	bheindrickci
chanstock1p	bpodd3g
chanstock1p	kacory8p
chanstock1p	mpughsley86
chanstock1p	aseelbach7p
chanstock1p	wchilde8i
chanstock1p	epurcellp7
chanstock1p	dwallicecb
chanstock1p	sinnocentil3
chanstock1p	wepper
chanstock1p	lcastagnetoox
chanstock1p	browleyro
chanstock1p	bcorderoh2
chanstock1p	agravyel
chanstock1p	kknowlys8z
chanstock1p	dbrownellhq
chanstock1p	gceschiniqb
chanstock1p	ahandrekob
chanstock1p	cfalk84
chanstock1p	mwhostonp
chanstock1p	bbrickwoodnn
chanstock1p	aparlour7d
chanstock1p	lmelvilled8
chanstock1p	chawkettks
chanstock1p	stukelyf8
chanstock1p	vrobinettegc
chanstock1p	cnorthfield9x
chanstock1p	amacgibbonqn
chanstock1p	wschlagtmanshd
chanstock1p	cpylkynytonf1
chanstock1p	sbuckoke13
chanstock1p	owoodusd3
chanstock1p	alacaser2
chanstock1p	mfosskd
chanstock1p	amatula54
chanstock1p	wferrieripi
chanstock1p	kiacavonea9
chanstock1p	mantuonio6
chanstock1p	chaddrelldt
chanstock1p	estreatfi
chanstock1p	mlunnj6
chanstock1p	ymcdaidii
kknipe2i	plavrinovlt
kknipe2i	wglantz7t
kknipe2i	yflowerdewe
kknipe2i	wchilde8i
kknipe2i	bgaitskillr
kknipe2i	chaddrelldt
kknipe2i	sgronavkx
kknipe2i	sbuckoke13
kknipe2i	bpodd3g
kknipe2i	nthunderse6
kknipe2i	skeohaneo2
kknipe2i	agravyel
kknipe2i	browleyro
kknipe2i	ggodwinmy
kknipe2i	abenkheip
kknipe2i	alacaser2
kknipe2i	cmcgillacoellcf
kknipe2i	nwanden65
kknipe2i	btice3e
kknipe2i	wcorbishley9d
kknipe2i	edurrancerr
kknipe2i	eplatfootje
kknipe2i	cnorthfield9x
kknipe2i	spryor61
kknipe2i	gmatoshinlc
kknipe2i	mwhostonp
kknipe2i	abumfreymw
kknipe2i	shaggas6f
kknipe2i	kfysh9j
kknipe2i	kthairsjd
kknipe2i	zliddenb6
kknipe2i	rfurzeyrk
kknipe2i	rrobesonaz
kknipe2i	avauxl5
kknipe2i	lelnoughll
kknipe2i	bheindrickci
kknipe2i	cpullingermn
kknipe2i	upapenao
kknipe2i	bquinanem9
kknipe2i	wferrieripi
kknipe2i	lbotgerd0
kknipe2i	rrowcliffe75
kknipe2i	ajerochk4
kknipe2i	bbrickwoodnn
kknipe2i	wepper
kknipe2i	lcastagnetoox
kknipe2i	foriginis
kknipe2i	lcarnduff4y
kknipe2i	csimnellf6
kknipe2i	cpylkynytonf1
kknipe2i	amirfinij
kknipe2i	bgrimoldbyo1
kknipe2i	svolante4
kknipe2i	aseelbach7p
kknipe2i	dbrownellhq
kknipe2i	dwaldingqj
kknipe2i	ycunliffegl
kknipe2i	mlunnj6
kknipe2i	dhemmingwaydu
kknipe2i	amcquorkellk3
kknipe2i	bcorderoh2
kknipe2i	fmurrellcd
kknipe2i	istiegersce
kknipe2i	ecollingwoodm1
kknipe2i	cpeapleju
kknipe2i	mpughsley86
kknipe2i	ilapennafw
kknipe2i	bmarkingba
kknipe2i	chawkettks
kknipe2i	smouanew
kknipe2i	owoodusd3
kknipe2i	amacgibbonqn
kknipe2i	wpostinmp
kknipe2i	vchappelle96
kknipe2i	mhuston6t
kknipe2i	tjoriokg
kknipe2i	smatveyevir
kknipe2i	amerceyix
kknipe2i	bciculloc0
kknipe2i	lbreartonj8
kknipe2i	wschlagtmanshd
kknipe2i	lmelvilled8
kknipe2i	kfargherhk
kknipe2i	wlantuffele
kknipe2i	tmunnshj
kknipe2i	rmcguckenno
kknipe2i	tfishbiee1
kknipe2i	gceschiniqb
kknipe2i	ahuittj4
kknipe2i	lseniori4
kknipe2i	edayment2
kknipe2i	rmaccorleych
kknipe2i	ahandrekob
kknipe2i	dwallicecb
kknipe2i	kacory8p
kknipe2i	vrobinettegc
kknipe2i	epurcellp7
kknipe2i	treesoni2
kknipe2i	gebrallnk
kknipe2i	estreatfi
kknipe2i	aparlour7d
kknipe2i	ymcdaidii
kknipe2i	apechet94
kknipe2i	cfalk84
kknipe2i	elongfutf9
kknipe2i	mcominiek
kknipe2i	hholywell89
kknipe2i	mvenable9
kknipe2i	stukelyf8
kknipe2i	glittlejohno3
kknipe2i	naxstonih
kknipe2i	sbucklee7n
kknipe2i	pparysiakpt
kknipe2i	apurdy6q
kknipe2i	mmcboylekp
kknipe2i	asantelloqo
kknipe2i	jmartinet82
kknipe2i	dmirandocq
kknipe2i	sinnocentil3
kknipe2i	nmechell8y
kknipe2i	ndearthgg
kknipe2i	eferensqv
kknipe2i	kknowlys8z
kknipe2i	avogeler9s
kknipe2i	rallsopph
kknipe2i	rbrucklg
kknipe2i	amatula54
kknipe2i	kiacavonea9
alundbeck2o	cpylkynytonf1
alundbeck2o	wschlagtmanshd
alundbeck2o	abenkheip
alundbeck2o	amatula54
alundbeck2o	mhuston6t
alundbeck2o	avogeler9s
alundbeck2o	ajerochk4
alundbeck2o	amcquorkellk3
alundbeck2o	shaggas6f
alundbeck2o	aseelbach7p
alundbeck2o	abumfreymw
alundbeck2o	kknowlys8z
alundbeck2o	rmaccorleych
alundbeck2o	avauxl5
alundbeck2o	plavrinovlt
alundbeck2o	kfysh9j
alundbeck2o	fmurrellcd
alundbeck2o	gebrallnk
alundbeck2o	bheindrickci
alundbeck2o	dbrownellhq
alundbeck2o	wchilde8i
alundbeck2o	ecollingwoodm1
alundbeck2o	amerceyix
alundbeck2o	istiegersce
alundbeck2o	dwallicecb
alundbeck2o	tmunnshj
alundbeck2o	sbuckoke13
alundbeck2o	apurdy6q
alundbeck2o	btice3e
alundbeck2o	epurcellp7
alundbeck2o	dhemmingwaydu
alundbeck2o	estreatfi
alundbeck2o	nthunderse6
alundbeck2o	gceschiniqb
alundbeck2o	asantelloqo
alundbeck2o	aparlour7d
alundbeck2o	bcorderoh2
alundbeck2o	ilapennafw
alundbeck2o	kfargherhk
alundbeck2o	bquinanem9
alundbeck2o	glittlejohno3
alundbeck2o	agravyel
alundbeck2o	rmcguckenno
alundbeck2o	sbucklee7n
alundbeck2o	jmartinet82
alundbeck2o	wcorbishley9d
alundbeck2o	edayment2
alundbeck2o	bbrickwoodnn
alundbeck2o	mpughsley86
alundbeck2o	amirfinij
alundbeck2o	wferrieripi
alundbeck2o	alacaser2
alundbeck2o	kacory8p
alundbeck2o	mwhostonp
alundbeck2o	bgaitskillr
alundbeck2o	bciculloc0
alundbeck2o	mvenable9
alundbeck2o	owoodusd3
alundbeck2o	kthairsjd
alundbeck2o	elongfutf9
alundbeck2o	chawkettks
alundbeck2o	smouanew
alundbeck2o	lcarnduff4y
alundbeck2o	vchappelle96
alundbeck2o	ggodwinmy
alundbeck2o	lseniori4
alundbeck2o	mlunnj6
alundbeck2o	ymcdaidii
alundbeck2o	lmelvilled8
alundbeck2o	stukelyf8
alundbeck2o	lbreartonj8
alundbeck2o	rrowcliffe75
alundbeck2o	cfalk84
alundbeck2o	lbotgerd0
alundbeck2o	cpeapleju
alundbeck2o	dmirandocq
alundbeck2o	cpullingermn
alundbeck2o	ahandrekob
alundbeck2o	foriginis
alundbeck2o	rbrucklg
alundbeck2o	rfurzeyrk
alundbeck2o	browleyro
alundbeck2o	bpodd3g
alundbeck2o	eplatfootje
alundbeck2o	chaddrelldt
alundbeck2o	upapenao
alundbeck2o	gmatoshinlc
alundbeck2o	wpostinmp
alundbeck2o	naxstonih
alundbeck2o	rallsopph
alundbeck2o	yflowerdewe
alundbeck2o	pparysiakpt
alundbeck2o	wlantuffele
alundbeck2o	spryor61
alundbeck2o	rrobesonaz
alundbeck2o	cnorthfield9x
alundbeck2o	tjoriokg
alundbeck2o	ndearthgg
alundbeck2o	vrobinettegc
alundbeck2o	bmarkingba
alundbeck2o	eferensqv
alundbeck2o	mmcboylekp
alundbeck2o	cmcgillacoellcf
alundbeck2o	mcominiek
alundbeck2o	zliddenb6
alundbeck2o	kiacavonea9
alundbeck2o	nwanden65
alundbeck2o	apechet94
alundbeck2o	wglantz7t
alundbeck2o	sinnocentil3
alundbeck2o	ycunliffegl
alundbeck2o	csimnellf6
alundbeck2o	ahuittj4
alundbeck2o	edurrancerr
alundbeck2o	smatveyevir
alundbeck2o	hholywell89
alundbeck2o	amacgibbonqn
alundbeck2o	bgrimoldbyo1
alundbeck2o	tfishbiee1
alundbeck2o	lcastagnetoox
alundbeck2o	treesoni2
alundbeck2o	nmechell8y
abulgen1	bpodd3g
abulgen1	cfalk84
abulgen1	zliddenb6
abulgen1	bheindrickci
abulgen1	chaddrelldt
abulgen1	wferrieripi
abulgen1	cpeapleju
abulgen1	tjoriokg
abulgen1	amcquorkellk3
abulgen1	ecollingwoodm1
abulgen1	gmatoshinlc
abulgen1	epurcellp7
abulgen1	wcorbishley9d
abulgen1	rallsopph
abulgen1	dhemmingwaydu
abulgen1	ajerochk4
abulgen1	nthunderse6
abulgen1	bmarkingba
abulgen1	apurdy6q
abulgen1	dmirandocq
abulgen1	avauxl5
abulgen1	apechet94
abulgen1	mvenable9
abulgen1	vchappelle96
abulgen1	naxstonih
abulgen1	stukelyf8
abulgen1	lcastagnetoox
abulgen1	wglantz7t
abulgen1	abenkheip
abulgen1	kiacavonea9
abulgen1	nwanden65
abulgen1	cpullingermn
abulgen1	kacory8p
abulgen1	mcominiek
abulgen1	abumfreymw
abulgen1	amacgibbonqn
abulgen1	ndearthgg
abulgen1	cmcgillacoellcf
abulgen1	eferensqv
abulgen1	shaggas6f
abulgen1	edurrancerr
abulgen1	sbucklee7n
abulgen1	mhuston6t
abulgen1	rrowcliffe75
abulgen1	upapenao
abulgen1	kknowlys8z
abulgen1	wlantuffele
abulgen1	cnorthfield9x
abulgen1	fmurrellcd
abulgen1	alacaser2
abulgen1	vrobinettegc
abulgen1	estreatfi
abulgen1	eplatfootje
abulgen1	tfishbiee1
abulgen1	elongfutf9
abulgen1	wchilde8i
abulgen1	bgrimoldbyo1
abulgen1	plavrinovlt
abulgen1	mwhostonp
abulgen1	kthairsjd
abulgen1	dbrownellhq
abulgen1	smatveyevir
abulgen1	ymcdaidii
abulgen1	wschlagtmanshd
abulgen1	bcorderoh2
abulgen1	spryor61
abulgen1	rmcguckenno
abulgen1	ahandrekob
abulgen1	tmunnshj
abulgen1	amerceyix
abulgen1	amatula54
abulgen1	lbreartonj8
abulgen1	bciculloc0
abulgen1	yflowerdewe
abulgen1	wpostinmp
abulgen1	ilapennafw
abulgen1	rrobesonaz
abulgen1	gceschiniqb
abulgen1	chawkettks
abulgen1	bgaitskillr
abulgen1	pparysiakpt
abulgen1	cpylkynytonf1
abulgen1	ycunliffegl
abulgen1	mlunnj6
abulgen1	amirfinij
abulgen1	jmartinet82
abulgen1	agravyel
abulgen1	aseelbach7p
abulgen1	lseniori4
abulgen1	mmcboylekp
abulgen1	btice3e
abulgen1	istiegersce
abulgen1	rfurzeyrk
abulgen1	sbuckoke13
abulgen1	sinnocentil3
abulgen1	rmaccorleych
abulgen1	kfysh9j
abulgen1	nmechell8y
abulgen1	mpughsley86
abulgen1	gebrallnk
abulgen1	lcarnduff4y
abulgen1	browleyro
abulgen1	lbotgerd0
abulgen1	owoodusd3
abulgen1	smouanew
abulgen1	treesoni2
abulgen1	glittlejohno3
abulgen1	asantelloqo
abulgen1	hholywell89
abulgen1	bquinanem9
abulgen1	dwallicecb
abulgen1	aparlour7d
abulgen1	avogeler9s
abulgen1	rbrucklg
abulgen1	kfargherhk
abulgen1	bbrickwoodnn
abulgen1	csimnellf6
abulgen1	ahuittj4
nelger16	cnorthfield9x
nelger16	browleyro
nelger16	nthunderse6
nelger16	mmcboylekp
nelger16	wchilde8i
nelger16	plavrinovlt
nelger16	lseniori4
nelger16	jmartinet82
nelger16	vrobinettegc
nelger16	ycunliffegl
nelger16	bheindrickci
nelger16	zliddenb6
nelger16	tfishbiee1
nelger16	amatula54
nelger16	kfargherhk
nelger16	ymcdaidii
nelger16	wglantz7t
nelger16	wpostinmp
nelger16	dmirandocq
nelger16	amcquorkellk3
nelger16	lcarnduff4y
nelger16	sinnocentil3
nelger16	agravyel
nelger16	cpeapleju
nelger16	mcominiek
nelger16	kiacavonea9
nelger16	treesoni2
nelger16	epurcellp7
nelger16	wlantuffele
nelger16	sbucklee7n
nelger16	kthairsjd
nelger16	rmcguckenno
nelger16	gceschiniqb
nelger16	spryor61
nelger16	dhemmingwaydu
nelger16	eferensqv
nelger16	estreatfi
nelger16	bpodd3g
nelger16	rallsopph
nelger16	naxstonih
nelger16	lbotgerd0
nelger16	shaggas6f
nelger16	mwhostonp
nelger16	chaddrelldt
nelger16	mvenable9
nelger16	aparlour7d
nelger16	bgrimoldbyo1
nelger16	upapenao
nelger16	apechet94
nelger16	edurrancerr
nelger16	alacaser2
nelger16	glittlejohno3
nelger16	cpylkynytonf1
nelger16	chawkettks
nelger16	mhuston6t
nelger16	fmurrellcd
nelger16	mpughsley86
nelger16	btice3e
nelger16	gebrallnk
nelger16	hholywell89
nelger16	tmunnshj
nelger16	ahuittj4
nelger16	amacgibbonqn
nelger16	ajerochk4
nelger16	aseelbach7p
nelger16	tjoriokg
nelger16	amerceyix
nelger16	smouanew
nelger16	elongfutf9
nelger16	owoodusd3
nelger16	cfalk84
nelger16	lcastagnetoox
nelger16	ilapennafw
nelger16	bmarkingba
nelger16	smatveyevir
nelger16	amirfinij
nelger16	apurdy6q
nelger16	bquinanem9
nelger16	wcorbishley9d
nelger16	wferrieripi
nelger16	nmechell8y
nelger16	ndearthgg
nelger16	lbreartonj8
nelger16	rbrucklg
nelger16	avogeler9s
nelger16	csimnellf6
nelger16	dbrownellhq
nelger16	vchappelle96
nelger16	avauxl5
nelger16	bcorderoh2
nelger16	istiegersce
nelger16	eplatfootje
nelger16	dwallicecb
nelger16	cpullingermn
nelger16	ahandrekob
nelger16	rfurzeyrk
nelger16	asantelloqo
nelger16	bciculloc0
nelger16	rrobesonaz
nelger16	bgaitskillr
nelger16	sbuckoke13
nelger16	stukelyf8
nelger16	abenkheip
nelger16	kacory8p
nelger16	rrowcliffe75
nelger16	yflowerdewe
nelger16	mlunnj6
nelger16	wschlagtmanshd
nelger16	ecollingwoodm1
nelger16	bbrickwoodnn
nelger16	nwanden65
jfehner59	shaggas6f
jfehner59	wferrieripi
jfehner59	amcquorkellk3
jfehner59	eferensqv
jfehner59	apurdy6q
jfehner59	mpughsley86
jfehner59	cnorthfield9x
jfehner59	ahuittj4
jfehner59	owoodusd3
jfehner59	hholywell89
jfehner59	bcorderoh2
jfehner59	ajerochk4
jfehner59	rmcguckenno
jfehner59	lseniori4
jfehner59	amerceyix
jfehner59	treesoni2
jfehner59	mmcboylekp
jfehner59	csimnellf6
jfehner59	epurcellp7
jfehner59	gceschiniqb
jfehner59	edurrancerr
jfehner59	vchappelle96
jfehner59	cpullingermn
jfehner59	kiacavonea9
jfehner59	rfurzeyrk
jfehner59	yflowerdewe
jfehner59	wglantz7t
jfehner59	rrowcliffe75
jfehner59	rrobesonaz
jfehner59	dhemmingwaydu
jfehner59	wchilde8i
jfehner59	istiegersce
jfehner59	dmirandocq
jfehner59	amirfinij
jfehner59	glittlejohno3
jfehner59	kfargherhk
jfehner59	rallsopph
jfehner59	alacaser2
jfehner59	fmurrellcd
jfehner59	sbuckoke13
jfehner59	kacory8p
jfehner59	bmarkingba
jfehner59	tfishbiee1
jfehner59	wlantuffele
jfehner59	lbreartonj8
jfehner59	lbotgerd0
jfehner59	bheindrickci
jfehner59	tjoriokg
jfehner59	browleyro
jfehner59	abenkheip
jfehner59	cpylkynytonf1
jfehner59	mcominiek
jfehner59	aseelbach7p
jfehner59	amacgibbonqn
jfehner59	chaddrelldt
jfehner59	ymcdaidii
jfehner59	dwallicecb
jfehner59	ilapennafw
jfehner59	apechet94
jfehner59	gebrallnk
jfehner59	smatveyevir
jfehner59	lcastagnetoox
jfehner59	tmunnshj
jfehner59	asantelloqo
jfehner59	cpeapleju
jfehner59	wpostinmp
jfehner59	plavrinovlt
jfehner59	mvenable9
jfehner59	agravyel
jfehner59	mlunnj6
jfehner59	btice3e
jfehner59	bciculloc0
jfehner59	upapenao
jfehner59	ahandrekob
jfehner59	smouanew
jfehner59	mwhostonp
jfehner59	cfalk84
jfehner59	estreatfi
jfehner59	amatula54
jfehner59	aparlour7d
jfehner59	mhuston6t
jfehner59	vrobinettegc
jfehner59	nwanden65
jfehner59	avogeler9s
jfehner59	nthunderse6
jfehner59	naxstonih
jfehner59	rbrucklg
jfehner59	avauxl5
jfehner59	ndearthgg
jfehner59	sbucklee7n
jfehner59	spryor61
jfehner59	ycunliffegl
jfehner59	eplatfootje
jfehner59	jmartinet82
jfehner59	bpodd3g
jfehner59	ecollingwoodm1
jfehner59	elongfutf9
jfehner59	sinnocentil3
ariditch5q	rfurzeyrk
ariditch5q	wchilde8i
ariditch5q	owoodusd3
ariditch5q	cfalk84
ariditch5q	wglantz7t
ariditch5q	eplatfootje
ariditch5q	cpeapleju
ariditch5q	gceschiniqb
ariditch5q	fmurrellcd
ariditch5q	rrobesonaz
ariditch5q	rallsopph
ariditch5q	wpostinmp
ariditch5q	nwanden65
ariditch5q	lbotgerd0
ariditch5q	sbucklee7n
ariditch5q	kfargherhk
ariditch5q	hholywell89
ariditch5q	shaggas6f
ariditch5q	browleyro
ariditch5q	avauxl5
ariditch5q	lseniori4
ariditch5q	eferensqv
ariditch5q	ajerochk4
ariditch5q	abenkheip
ariditch5q	upapenao
ariditch5q	wlantuffele
ariditch5q	vrobinettegc
ariditch5q	amerceyix
ariditch5q	jmartinet82
ariditch5q	ilapennafw
ariditch5q	istiegersce
ariditch5q	ahandrekob
ariditch5q	agravyel
ariditch5q	cpullingermn
ariditch5q	smatveyevir
ariditch5q	ndearthgg
ariditch5q	amatula54
ariditch5q	mlunnj6
ariditch5q	sbuckoke13
ariditch5q	amacgibbonqn
ariditch5q	nthunderse6
ariditch5q	mhuston6t
ariditch5q	avogeler9s
ariditch5q	wferrieripi
ariditch5q	chaddrelldt
ariditch5q	ecollingwoodm1
ariditch5q	yflowerdewe
ariditch5q	tfishbiee1
ariditch5q	kiacavonea9
ariditch5q	apechet94
ariditch5q	bheindrickci
ariditch5q	lcastagnetoox
ariditch5q	aparlour7d
ariditch5q	ymcdaidii
ariditch5q	bpodd3g
ariditch5q	lbreartonj8
ariditch5q	edurrancerr
ariditch5q	naxstonih
ariditch5q	rbrucklg
ariditch5q	bmarkingba
ariditch5q	mmcboylekp
ariditch5q	plavrinovlt
ariditch5q	dwallicecb
ariditch5q	dmirandocq
ariditch5q	amcquorkellk3
ariditch5q	sinnocentil3
ariditch5q	vchappelle96
ariditch5q	btice3e
ariditch5q	csimnellf6
ariditch5q	smouanew
ariditch5q	kacory8p
ariditch5q	aseelbach7p
ariditch5q	asantelloqo
ariditch5q	apurdy6q
ariditch5q	cpylkynytonf1
ariditch5q	treesoni2
ariditch5q	spryor61
ariditch5q	rmcguckenno
ariditch5q	gebrallnk
ariditch5q	glittlejohno3
ariditch5q	mwhostonp
ariditch5q	bcorderoh2
ariditch5q	tmunnshj
ariditch5q	bciculloc0
ariditch5q	alacaser2
ariditch5q	epurcellp7
ariditch5q	ahuittj4
ariditch5q	dhemmingwaydu
ariditch5q	rrowcliffe75
gmanach5v	smouanew
gmanach5v	ahandrekob
gmanach5v	mwhostonp
gmanach5v	dmirandocq
gmanach5v	gceschiniqb
gmanach5v	wpostinmp
gmanach5v	tfishbiee1
gmanach5v	amerceyix
gmanach5v	glittlejohno3
gmanach5v	lseniori4
gmanach5v	rfurzeyrk
gmanach5v	lbreartonj8
gmanach5v	rallsopph
gmanach5v	upapenao
gmanach5v	plavrinovlt
gmanach5v	wglantz7t
gmanach5v	sinnocentil3
gmanach5v	wferrieripi
gmanach5v	cpylkynytonf1
gmanach5v	kacory8p
gmanach5v	bcorderoh2
gmanach5v	mhuston6t
gmanach5v	naxstonih
gmanach5v	nwanden65
gmanach5v	bciculloc0
gmanach5v	aseelbach7p
gmanach5v	jmartinet82
gmanach5v	mlunnj6
gmanach5v	btice3e
gmanach5v	mmcboylekp
gmanach5v	avogeler9s
gmanach5v	lbotgerd0
gmanach5v	tmunnshj
gmanach5v	eplatfootje
gmanach5v	cpeapleju
gmanach5v	ndearthgg
gmanach5v	nthunderse6
gmanach5v	kiacavonea9
gmanach5v	owoodusd3
gmanach5v	sbuckoke13
gmanach5v	amcquorkellk3
gmanach5v	dwallicecb
gmanach5v	abenkheip
gmanach5v	amatula54
gmanach5v	cfalk84
gmanach5v	ilapennafw
gmanach5v	csimnellf6
gmanach5v	wlantuffele
gmanach5v	sbucklee7n
gmanach5v	browleyro
gmanach5v	bheindrickci
gmanach5v	agravyel
gmanach5v	alacaser2
gmanach5v	apechet94
gmanach5v	edurrancerr
gmanach5v	apurdy6q
gmanach5v	fmurrellcd
gmanach5v	cpullingermn
gmanach5v	chaddrelldt
gmanach5v	wchilde8i
gmanach5v	treesoni2
gmanach5v	ecollingwoodm1
gmanach5v	aparlour7d
gmanach5v	rbrucklg
gmanach5v	shaggas6f
gmanach5v	smatveyevir
gmanach5v	ajerochk4
gmanach5v	vrobinettegc
gmanach5v	bpodd3g
gmanach5v	yflowerdewe
gmanach5v	gebrallnk
gmanach5v	spryor61
gmanach5v	dhemmingwaydu
gmanach5v	lcastagnetoox
gmanach5v	avauxl5
gmanach5v	epurcellp7
gmanach5v	asantelloqo
gmanach5v	bmarkingba
gmanach5v	hholywell89
gmanach5v	kfargherhk
gmanach5v	amacgibbonqn
jfearns5w	sbucklee7n
jfearns5w	smouanew
jfearns5w	dmirandocq
jfearns5w	fmurrellcd
jfearns5w	lseniori4
jfearns5w	amatula54
jfearns5w	hholywell89
jfearns5w	browleyro
jfearns5w	gceschiniqb
jfearns5w	lbreartonj8
jfearns5w	cpylkynytonf1
jfearns5w	bcorderoh2
jfearns5w	wchilde8i
jfearns5w	wlantuffele
jfearns5w	cfalk84
jfearns5w	shaggas6f
jfearns5w	mwhostonp
jfearns5w	asantelloqo
jfearns5w	ndearthgg
jfearns5w	wglantz7t
jfearns5w	rallsopph
jfearns5w	amerceyix
jfearns5w	ajerochk4
jfearns5w	tfishbiee1
jfearns5w	avogeler9s
jfearns5w	kiacavonea9
jfearns5w	aseelbach7p
jfearns5w	eplatfootje
jfearns5w	bpodd3g
jfearns5w	alacaser2
jfearns5w	smatveyevir
jfearns5w	bciculloc0
jfearns5w	ilapennafw
jfearns5w	sinnocentil3
jfearns5w	agravyel
jfearns5w	cpeapleju
jfearns5w	bheindrickci
jfearns5w	upapenao
jfearns5w	kacory8p
jfearns5w	rfurzeyrk
jfearns5w	cpullingermn
jfearns5w	sbuckoke13
jfearns5w	amacgibbonqn
jfearns5w	nwanden65
jfearns5w	mmcboylekp
jfearns5w	mhuston6t
jfearns5w	ahandrekob
jfearns5w	epurcellp7
jfearns5w	naxstonih
jfearns5w	bmarkingba
jfearns5w	treesoni2
jfearns5w	lbotgerd0
jfearns5w	csimnellf6
jfearns5w	amcquorkellk3
jfearns5w	gebrallnk
jfearns5w	abenkheip
jfearns5w	wpostinmp
jfearns5w	aparlour7d
jfearns5w	apechet94
jfearns5w	nthunderse6
jfearns5w	plavrinovlt
jfearns5w	spryor61
jfearns5w	lcastagnetoox
jfearns5w	tmunnshj
jfearns5w	avauxl5
jfearns5w	kfargherhk
jfearns5w	vrobinettegc
jfearns5w	rbrucklg
jfearns5w	mlunnj6
jfearns5w	glittlejohno3
jfearns5w	wferrieripi
jfearns5w	chaddrelldt
jfearns5w	owoodusd3
jfearns5w	edurrancerr
jfearns5w	jmartinet82
jfearns5w	yflowerdewe
uminichi5n	cpeapleju
uminichi5n	mhuston6t
uminichi5n	cfalk84
uminichi5n	abenkheip
uminichi5n	aseelbach7p
uminichi5n	vrobinettegc
uminichi5n	wferrieripi
uminichi5n	kacory8p
uminichi5n	amatula54
uminichi5n	smouanew
uminichi5n	rfurzeyrk
uminichi5n	bmarkingba
uminichi5n	rbrucklg
uminichi5n	ahandrekob
uminichi5n	epurcellp7
uminichi5n	amcquorkellk3
uminichi5n	spryor61
uminichi5n	avauxl5
uminichi5n	nthunderse6
uminichi5n	ilapennafw
uminichi5n	dmirandocq
uminichi5n	kfargherhk
uminichi5n	jmartinet82
uminichi5n	gebrallnk
uminichi5n	wglantz7t
uminichi5n	tfishbiee1
uminichi5n	bpodd3g
uminichi5n	cpylkynytonf1
uminichi5n	owoodusd3
uminichi5n	lbotgerd0
uminichi5n	bheindrickci
uminichi5n	avogeler9s
uminichi5n	nwanden65
uminichi5n	wchilde8i
uminichi5n	yflowerdewe
uminichi5n	sinnocentil3
uminichi5n	amerceyix
uminichi5n	upapenao
uminichi5n	ajerochk4
uminichi5n	asantelloqo
uminichi5n	eplatfootje
uminichi5n	mwhostonp
uminichi5n	rallsopph
uminichi5n	apechet94
uminichi5n	amacgibbonqn
uminichi5n	csimnellf6
uminichi5n	bcorderoh2
uminichi5n	bciculloc0
uminichi5n	alacaser2
uminichi5n	plavrinovlt
uminichi5n	lcastagnetoox
uminichi5n	tmunnshj
uminichi5n	lbreartonj8
uminichi5n	hholywell89
uminichi5n	aparlour7d
uminichi5n	edurrancerr
uminichi5n	agravyel
uminichi5n	smatveyevir
uminichi5n	chaddrelldt
uminichi5n	shaggas6f
uminichi5n	glittlejohno3
uminichi5n	wlantuffele
uminichi5n	treesoni2
uminichi5n	sbucklee7n
uminichi5n	naxstonih
mcapun5u	rfurzeyrk
mcapun5u	bmarkingba
mcapun5u	amerceyix
mcapun5u	mwhostonp
mcapun5u	eplatfootje
mcapun5u	cpeapleju
mcapun5u	rallsopph
mcapun5u	edurrancerr
mcapun5u	nthunderse6
mcapun5u	bpodd3g
mcapun5u	cfalk84
mcapun5u	abenkheip
mcapun5u	ahandrekob
mcapun5u	avogeler9s
mcapun5u	tmunnshj
mcapun5u	wferrieripi
mcapun5u	upapenao
mcapun5u	wchilde8i
mcapun5u	agravyel
mcapun5u	nwanden65
mcapun5u	avauxl5
mcapun5u	amcquorkellk3
mcapun5u	lcastagnetoox
mcapun5u	jmartinet82
mcapun5u	amatula54
mcapun5u	smouanew
mcapun5u	owoodusd3
mcapun5u	naxstonih
mcapun5u	mhuston6t
mcapun5u	bheindrickci
mcapun5u	ajerochk4
mcapun5u	tfishbiee1
mcapun5u	smatveyevir
mcapun5u	treesoni2
mcapun5u	kacory8p
mcapun5u	yflowerdewe
mcapun5u	plavrinovlt
mcapun5u	dmirandocq
mcapun5u	amacgibbonqn
mcapun5u	vrobinettegc
mcapun5u	glittlejohno3
mcapun5u	bciculloc0
mcapun5u	cpylkynytonf1
mcapun5u	rbrucklg
mcapun5u	wlantuffele
mcapun5u	gebrallnk
mcapun5u	sbucklee7n
mcapun5u	lbreartonj8
mcapun5u	spryor61
mcapun5u	bcorderoh2
mcapun5u	alacaser2
mcapun5u	wglantz7t
mcapun5u	aparlour7d
mcapun5u	kfargherhk
mcapun5u	asantelloqo
mcapun5u	aseelbach7p
mcapun5u	sinnocentil3
mcapun5u	ilapennafw
ctomczynski3z	bciculloc0
ctomczynski3z	asantelloqo
ctomczynski3z	smouanew
ctomczynski3z	ilapennafw
ctomczynski3z	amacgibbonqn
ctomczynski3z	bheindrickci
ctomczynski3z	gebrallnk
ctomczynski3z	ahandrekob
ctomczynski3z	kfargherhk
ctomczynski3z	treesoni2
ctomczynski3z	amcquorkellk3
ctomczynski3z	aseelbach7p
ctomczynski3z	cpeapleju
ctomczynski3z	vrobinettegc
ctomczynski3z	naxstonih
ctomczynski3z	dmirandocq
ctomczynski3z	tfishbiee1
ctomczynski3z	nwanden65
ctomczynski3z	yflowerdewe
ctomczynski3z	wlantuffele
ctomczynski3z	cfalk84
ctomczynski3z	sinnocentil3
ctomczynski3z	spryor61
ctomczynski3z	glittlejohno3
ctomczynski3z	alacaser2
ctomczynski3z	plavrinovlt
ctomczynski3z	bcorderoh2
ctomczynski3z	cpylkynytonf1
ctomczynski3z	nthunderse6
ctomczynski3z	wchilde8i
ctomczynski3z	smatveyevir
ctomczynski3z	kacory8p
ctomczynski3z	bpodd3g
ctomczynski3z	upapenao
ctomczynski3z	rbrucklg
ctomczynski3z	jmartinet82
ctomczynski3z	rallsopph
ctomczynski3z	amatula54
ctomczynski3z	mhuston6t
ctomczynski3z	avogeler9s
ctomczynski3z	mwhostonp
ctomczynski3z	avauxl5
ctomczynski3z	agravyel
ctomczynski3z	edurrancerr
ctomczynski3z	abenkheip
ctomczynski3z	wglantz7t
ctomczynski3z	bmarkingba
ctomczynski3z	lcastagnetoox
ctomczynski3z	ajerochk4
ctomczynski3z	sbucklee7n
lcapes41	glittlejohno3
lcapes41	spryor61
lcapes41	nwanden65
lcapes41	wglantz7t
lcapes41	avogeler9s
lcapes41	avauxl5
lcapes41	asantelloqo
lcapes41	agravyel
lcapes41	treesoni2
lcapes41	rallsopph
lcapes41	ilapennafw
lcapes41	bheindrickci
lcapes41	wchilde8i
lcapes41	cfalk84
lcapes41	jmartinet82
lcapes41	sbucklee7n
lcapes41	gebrallnk
lcapes41	edurrancerr
lcapes41	abenkheip
lcapes41	bciculloc0
lcapes41	bmarkingba
lcapes41	cpeapleju
lcapes41	sinnocentil3
lcapes41	upapenao
lcapes41	kacory8p
lcapes41	alacaser2
lcapes41	amacgibbonqn
lcapes41	bcorderoh2
lcapes41	yflowerdewe
lcapes41	cpylkynytonf1
lcapes41	aseelbach7p
lcapes41	lcastagnetoox
lcapes41	bpodd3g
lcapes41	plavrinovlt
lcapes41	amcquorkellk3
lcapes41	mhuston6t
lcapes41	amatula54
lcapes41	dmirandocq
lcapes41	kfargherhk
lcapes41	tfishbiee1
lcapes41	nthunderse6
lcapes41	naxstonih
lcapes41	ahandrekob
lcapes41	mwhostonp
lcapes41	rbrucklg
gruperto43	avauxl5
gruperto43	alacaser2
gruperto43	gebrallnk
gruperto43	dmirandocq
gruperto43	cfalk84
gruperto43	tfishbiee1
gruperto43	bheindrickci
gruperto43	nwanden65
gruperto43	yflowerdewe
gruperto43	glittlejohno3
gruperto43	avogeler9s
gruperto43	sbucklee7n
gruperto43	treesoni2
gruperto43	wchilde8i
gruperto43	bmarkingba
gruperto43	kfargherhk
gruperto43	bciculloc0
gruperto43	edurrancerr
gruperto43	cpeapleju
gruperto43	bcorderoh2
gruperto43	ilapennafw
gruperto43	amcquorkellk3
gruperto43	cpylkynytonf1
gruperto43	amacgibbonqn
gruperto43	mwhostonp
gruperto43	rbrucklg
gruperto43	lcastagnetoox
gruperto43	upapenao
gruperto43	asantelloqo
gruperto43	rallsopph
gruperto43	kacory8p
gruperto43	spryor61
gruperto43	amatula54
gruperto43	jmartinet82
gruperto43	plavrinovlt
gruperto43	ahandrekob
gruperto43	abenkheip
ebarter47	gebrallnk
ebarter47	asantelloqo
ebarter47	cpylkynytonf1
ebarter47	glittlejohno3
ebarter47	cpeapleju
ebarter47	nwanden65
ebarter47	treesoni2
ebarter47	amatula54
ebarter47	cfalk84
ebarter47	mwhostonp
ebarter47	ahandrekob
ebarter47	edurrancerr
ebarter47	alacaser2
ebarter47	tfishbiee1
ebarter47	kfargherhk
ebarter47	sbucklee7n
ebarter47	spryor61
ebarter47	rallsopph
ebarter47	amacgibbonqn
ebarter47	lcastagnetoox
ebarter47	avogeler9s
ebarter47	yflowerdewe
ebarter47	plavrinovlt
ebarter47	dmirandocq
ebarter47	abenkheip
ebarter47	upapenao
ebarter47	bheindrickci
knel4h	avogeler9s
knel4h	alacaser2
knel4h	yflowerdewe
knel4h	cpeapleju
knel4h	kfargherhk
knel4h	asantelloqo
knel4h	rallsopph
knel4h	spryor61
knel4h	treesoni2
knel4h	gebrallnk
knel4h	cfalk84
knel4h	amatula54
knel4h	abenkheip
knel4h	mwhostonp
cmytton57	amatula54
cmytton57	treesoni2
cmytton57	yflowerdewe
cmytton57	rallsopph
cmytton57	asantelloqo
sgrigolashvill1f	londrasek8q
sgrigolashvill1f	tcoattsnf
sgrigolashvill1f	dgearerj
sgrigolashvill1f	jheinlfj
sgrigolashvill1f	jkleinerna
sgrigolashvill1f	hdartnall3m
sgrigolashvill1f	wcampsallb5
sgrigolashvill1f	mminchindonaf
sgrigolashvill1f	mmcgrailnw
sgrigolashvill1f	dmcphersonp5
sgrigolashvill1f	bmcnaye0
sgrigolashvill1f	tgisbyea6
sgrigolashvill1f	janthiftlenp
sgrigolashvill1f	dmcclintockmc
sgrigolashvill1f	dbaccusou
sgrigolashvill1f	tvaudea
sgrigolashvill1f	mdelavaletteparisotoi
sgrigolashvill1f	rlatekoo
sgrigolashvill1f	jcottonl2
sgrigolashvill1f	mike
sgrigolashvill1f	gnoultonkw
sgrigolashvill1f	mphippen6s
sgrigolashvill1f	hwalbridgegs
sgrigolashvill1f	ibozward9z
sgrigolashvill1f	hsutherelhi
sgrigolashvill1f	mbodycombeh5
sgrigolashvill1f	ppattersjf
sgrigolashvill1f	ghanscombefc
sgrigolashvill1f	gcloughergk
sgrigolashvill1f	emcgarahan5j
sgrigolashvill1f	mcellohu
sgrigolashvill1f	bjanczewskiby
sgrigolashvill1f	bsierms
sgrigolashvill1f	kboundeyqq
sgrigolashvill1f	gdiemf7
sgrigolashvill1f	fcobbledickjx
sgrigolashvill1f	msawelle3
sgrigolashvill1f	jenstonqz
sgrigolashvill1f	gpallisteri3
sgrigolashvill1f	jdashkovfk
sgrigolashvill1f	mpragnellln
sgrigolashvill1f	fkalkofero7
sgrigolashvill1f	smccreath7w
sgrigolashvill1f	wkillimister8u
sgrigolashvill1f	nbezantsmz
sgrigolashvill1f	glackemannfp
sgrigolashvill1f	klanmeidl4
sgrigolashvill1f	glory7z
sgrigolashvill1f	ebondsqa
sgrigolashvill1f	nsidwick80
sgrigolashvill1f	aconsterdinem2
sgrigolashvill1f	joteagueh1
sgrigolashvill1f	aswadlin90
sgrigolashvill1f	hstorrpo
sgrigolashvill1f	fgores6o
sgrigolashvill1f	hstovingar
sgrigolashvill1f	abenitl8
sgrigolashvill1f	blockleyok
sgrigolashvill1f	dtrobed5
sgrigolashvill1f	boneary97
sgrigolashvill1f	iaustinsp8
sgrigolashvill1f	ebenkhe67
sgrigolashvill1f	jnisotr5
sgrigolashvill1f	kzumbuschrb
sgrigolashvill1f	rpoolor
sgrigolashvill1f	carpurbg
sgrigolashvill1f	aspollencm
sgrigolashvill1f	moveraldh
sgrigolashvill1f	lgoodrickft
sgrigolashvill1f	pkaufman4t
sgrigolashvill1f	rhastelowbc
sgrigolashvill1f	lhawketdw
sgrigolashvill1f	mpolinib1
sgrigolashvill1f	hhumblestonemt
sgrigolashvill1f	lheathcott5f
sgrigolashvill1f	aragateri
sgrigolashvill1f	tmountcs
sgrigolashvill1f	pjeavesod
sgrigolashvill1f	mstoppc9
sgrigolashvill1f	tbolwellfd
sgrigolashvill1f	vsawneyej
sgrigolashvill1f	rmacgormanaa
sgrigolashvill1f	hlealhg
sgrigolashvill1f	edunneqk
sgrigolashvill1f	hdorgonj9
sgrigolashvill1f	rdarlasson8
sgrigolashvill1f	skellart7v
sgrigolashvill1f	shogbenpv
sgrigolashvill1f	hadnea0
sgrigolashvill1f	dkahenli
sgrigolashvill1f	eharrald50
sgrigolashvill1f	egiacobod7
sgrigolashvill1f	rhefnerl6
sgrigolashvill1f	bsienel1
sgrigolashvill1f	icantillon6e
sgrigolashvill1f	wshooter71
sgrigolashvill1f	dgeerlingfl
sgrigolashvill1f	daldinsil
sgrigolashvill1f	cledgerbm
sgrigolashvill1f	dbannardq1
sgrigolashvill1f	dparletj2
sgrigolashvill1f	dairtone9
sgrigolashvill1f	coniondk
sgrigolashvill1f	bsaffellky
sgrigolashvill1f	tsherry72
sgrigolashvill1f	pchienekj
sgrigolashvill1f	aredbornqu
sgrigolashvill1f	lreaditt9q
sgrigolashvill1f	sjansens5k
sgrigolashvill1f	kdowningo8
sgrigolashvill1f	mmacilhargypn
sgrigolashvill1f	dspellesya4
sgrigolashvill1f	ddockreayeh
sgrigolashvill1f	dnobbse4
sgrigolashvill1f	tastleiv
sgrigolashvill1f	wkirvinhc
sgrigolashvill1f	mtarbertd
sgrigolashvill1f	bcrosonbr
sgrigolashvill1f	hmardypx
sgrigolashvill1f	psturneym6
sgrigolashvill1f	dtinneref
sgrigolashvill1f	gyoulesq7
sgrigolashvill1f	tedgerley40
sgrigolashvill1f	preidia
sgrigolashvill1f	jewerlo
sgrigolashvill1f	whefferbu
sgrigolashvill1f	fowbrickcz
sgrigolashvill1f	sgye5z
sgrigolashvill1f	cdexterfv
tmacleese1m	aragateri
tmacleese1m	mdelavaletteparisotoi
tmacleese1m	jnisotr5
tmacleese1m	bmcnaye0
tmacleese1m	wcampsallb5
tmacleese1m	ebondsqa
tmacleese1m	carpurbg
tmacleese1m	rhefnerl6
tmacleese1m	abenitl8
tmacleese1m	rpoolor
tmacleese1m	jcottonl2
tmacleese1m	pchienekj
tmacleese1m	egiacobod7
tmacleese1m	hwalbridgegs
tmacleese1m	dmcphersonp5
tmacleese1m	shogbenpv
tmacleese1m	rlatekoo
tmacleese1m	ppattersjf
tmacleese1m	tvaudea
tmacleese1m	cledgerbm
tmacleese1m	rmacgormanaa
tmacleese1m	mpragnellln
tmacleese1m	hdartnall3m
tmacleese1m	preidia
tmacleese1m	mminchindonaf
tmacleese1m	dgeerlingfl
tmacleese1m	kdowningo8
tmacleese1m	tmountcs
tmacleese1m	dbaccusou
tmacleese1m	moveraldh
tmacleese1m	mmcgrailnw
tmacleese1m	cdexterfv
tmacleese1m	gpallisteri3
tmacleese1m	tsherry72
tmacleese1m	glory7z
tmacleese1m	hlealhg
tmacleese1m	kzumbuschrb
tmacleese1m	janthiftlenp
tmacleese1m	tedgerley40
tmacleese1m	hadnea0
tmacleese1m	smccreath7w
tmacleese1m	jenstonqz
tmacleese1m	wkillimister8u
tmacleese1m	dgearerj
tmacleese1m	mtarbertd
tmacleese1m	lheathcott5f
tmacleese1m	gcloughergk
tmacleese1m	tcoattsnf
tmacleese1m	rhastelowbc
tmacleese1m	dkahenli
tmacleese1m	dnobbse4
tmacleese1m	mcellohu
tmacleese1m	dtrobed5
tmacleese1m	dairtone9
tmacleese1m	dbannardq1
tmacleese1m	jheinlfj
tmacleese1m	mmacilhargypn
tmacleese1m	bsierms
tmacleese1m	aspollencm
tmacleese1m	glackemannfp
tmacleese1m	wshooter71
tmacleese1m	gyoulesq7
tmacleese1m	sgye5z
tmacleese1m	pkaufman4t
tmacleese1m	daldinsil
tmacleese1m	tbolwellfd
tmacleese1m	tastleiv
tmacleese1m	rdarlasson8
tmacleese1m	iaustinsp8
tmacleese1m	aconsterdinem2
tmacleese1m	hsutherelhi
tmacleese1m	mpolinib1
tmacleese1m	joteagueh1
tmacleese1m	eharrald50
tmacleese1m	kboundeyqq
tmacleese1m	hstovingar
tmacleese1m	hhumblestonemt
tmacleese1m	msawelle3
tmacleese1m	jdashkovfk
tmacleese1m	whefferbu
tmacleese1m	klanmeidl4
tmacleese1m	ebenkhe67
tmacleese1m	ibozward9z
tmacleese1m	jewerlo
tmacleese1m	gdiemf7
tmacleese1m	nsidwick80
tmacleese1m	ghanscombefc
tmacleese1m	wkirvinhc
tmacleese1m	skellart7v
tmacleese1m	dparletj2
tmacleese1m	mphippen6s
tmacleese1m	edunneqk
tmacleese1m	fgores6o
tmacleese1m	blockleyok
tmacleese1m	gnoultonkw
tmacleese1m	mike
tmacleese1m	dspellesya4
tmacleese1m	hstorrpo
tmacleese1m	fcobbledickjx
tmacleese1m	dmcclintockmc
tmacleese1m	jkleinerna
tmacleese1m	mstoppc9
tmacleese1m	fowbrickcz
tmacleese1m	hmardypx
tmacleese1m	icantillon6e
tmacleese1m	fkalkofero7
tmacleese1m	londrasek8q
tmacleese1m	skedslief3
tmacleese1m	aredbornqu
tmacleese1m	bjanczewskiby
tmacleese1m	vsawneyej
tmacleese1m	hdorgonj9
tmacleese1m	bcrosonbr
tmacleese1m	lreaditt9q
tmacleese1m	emcgarahan5j
tmacleese1m	pjeavesod
tmacleese1m	bsienel1
tmacleese1m	tgisbyea6
tmacleese1m	lgoodrickft
tmacleese1m	nbezantsmz
tmacleese1m	psturneym6
tmacleese1m	lhawketdw
tmacleese1m	dtinneref
tmacleese1m	boneary97
tmacleese1m	sjansens5k
tmacleese1m	coniondk
tmacleese1m	aswadlin90
tmacleese1m	bsaffellky
tmacleese1m	mbodycombeh5
tmacleese1m	ddockreayeh
vmaas1b	dmcclintockmc
vmaas1b	hwalbridgegs
vmaas1b	glackemannfp
vmaas1b	jdashkovfk
vmaas1b	rdarlasson8
vmaas1b	dtrobed5
vmaas1b	rmacgormanaa
vmaas1b	blockleyok
vmaas1b	icantillon6e
vmaas1b	mdelavaletteparisotoi
vmaas1b	dbannardq1
vmaas1b	daldinsil
vmaas1b	klanmeidl4
vmaas1b	fgores6o
vmaas1b	dmcphersonp5
vmaas1b	cledgerbm
vmaas1b	wkillimister8u
vmaas1b	dtinneref
vmaas1b	ghanscombefc
vmaas1b	mcellohu
vmaas1b	preidia
vmaas1b	skellart7v
vmaas1b	rpoolor
vmaas1b	hstovingar
vmaas1b	aragateri
vmaas1b	dairtone9
vmaas1b	bjanczewskiby
vmaas1b	dspellesya4
vmaas1b	mike
vmaas1b	egiacobod7
vmaas1b	wshooter71
vmaas1b	coniondk
vmaas1b	lheathcott5f
vmaas1b	glory7z
vmaas1b	aredbornqu
vmaas1b	hmardypx
vmaas1b	ibozward9z
vmaas1b	wcampsallb5
vmaas1b	mphippen6s
vmaas1b	tgisbyea6
vmaas1b	janthiftlenp
vmaas1b	ebenkhe67
vmaas1b	bsierms
vmaas1b	pjeavesod
vmaas1b	mmcgrailnw
vmaas1b	aspollencm
vmaas1b	vsawneyej
vmaas1b	kdowningo8
vmaas1b	bcrosonbr
vmaas1b	tvaudea
vmaas1b	tedgerley40
vmaas1b	hlealhg
vmaas1b	lhawketdw
vmaas1b	aconsterdinem2
vmaas1b	joteagueh1
vmaas1b	eharrald50
vmaas1b	mpragnellln
vmaas1b	fkalkofero7
vmaas1b	smccreath7w
vmaas1b	bsaffellky
vmaas1b	sgye5z
vmaas1b	pkaufman4t
vmaas1b	lgoodrickft
vmaas1b	gnoultonkw
vmaas1b	kzumbuschrb
vmaas1b	hhumblestonemt
vmaas1b	dbaccusou
vmaas1b	londrasek8q
vmaas1b	gcloughergk
vmaas1b	ppattersjf
vmaas1b	mbodycombeh5
vmaas1b	dparletj2
vmaas1b	edunneqk
vmaas1b	pchienekj
vmaas1b	ebondsqa
vmaas1b	dgearerj
vmaas1b	jenstonqz
vmaas1b	fowbrickcz
vmaas1b	jheinlfj
vmaas1b	jcottonl2
vmaas1b	lreaditt9q
vmaas1b	hadnea0
vmaas1b	hdartnall3m
vmaas1b	shogbenpv
vmaas1b	rhefnerl6
vmaas1b	carpurbg
vmaas1b	mpolinib1
vmaas1b	hsutherelhi
vmaas1b	rhastelowbc
vmaas1b	emcgarahan5j
vmaas1b	gdiemf7
vmaas1b	sjansens5k
vmaas1b	hstorrpo
vmaas1b	cdexterfv
vmaas1b	nsidwick80
vmaas1b	abenitl8
vmaas1b	tsherry72
vmaas1b	msawelle3
vmaas1b	ddockreayeh
vmaas1b	nbezantsmz
vmaas1b	tcoattsnf
vmaas1b	wkirvinhc
vmaas1b	skedslief3
vmaas1b	jnisotr5
vmaas1b	rlatekoo
vmaas1b	dnobbse4
vmaas1b	hdorgonj9
vmaas1b	tbolwellfd
vmaas1b	mstoppc9
vmaas1b	gyoulesq7
vmaas1b	bsienel1
vmaas1b	mmacilhargypn
vmaas1b	mminchindonaf
vmaas1b	tastleiv
vmaas1b	boneary97
vmaas1b	dgeerlingfl
vmaas1b	jkleinerna
vmaas1b	iaustinsp8
vmaas1b	kboundeyqq
vmaas1b	whefferbu
vmaas1b	psturneym6
vmaas1b	bmcnaye0
vmaas1b	mtarbertd
vmaas1b	moveraldh
vmaas1b	tmountcs
vmaas1b	aswadlin90
vmaas1b	gpallisteri3
vmaas1b	fcobbledickjx
vmaas1b	dkahenli
vmaas1b	jewerlo
fcourtman2b	shogbenpv
fcourtman2b	vsawneyej
fcourtman2b	wkillimister8u
fcourtman2b	aragateri
fcourtman2b	mtarbertd
fcourtman2b	mpragnellln
fcourtman2b	londrasek8q
fcourtman2b	tastleiv
fcourtman2b	rhefnerl6
fcourtman2b	hadnea0
fcourtman2b	sgye5z
fcourtman2b	jnisotr5
fcourtman2b	dbannardq1
fcourtman2b	aredbornqu
fcourtman2b	janthiftlenp
fcourtman2b	mstoppc9
fcourtman2b	ghanscombefc
fcourtman2b	joteagueh1
fcourtman2b	tvaudea
fcourtman2b	mmacilhargypn
fcourtman2b	sjansens5k
fcourtman2b	skellart7v
fcourtman2b	gpallisteri3
fcourtman2b	bmcnaye0
fcourtman2b	msawelle3
fcourtman2b	pkaufman4t
fcourtman2b	ddockreayeh
fcourtman2b	ebenkhe67
fcourtman2b	rhastelowbc
fcourtman2b	jewerlo
fcourtman2b	gyoulesq7
fcourtman2b	ppattersjf
fcourtman2b	hsutherelhi
fcourtman2b	mpolinib1
fcourtman2b	dgeerlingfl
fcourtman2b	pjeavesod
fcourtman2b	hwalbridgegs
fcourtman2b	hdorgonj9
fcourtman2b	jdashkovfk
fcourtman2b	dtrobed5
fcourtman2b	mmcgrailnw
fcourtman2b	dmcclintockmc
fcourtman2b	bsaffellky
fcourtman2b	fowbrickcz
fcourtman2b	hlealhg
fcourtman2b	tbolwellfd
fcourtman2b	wkirvinhc
fcourtman2b	glory7z
fcourtman2b	smccreath7w
fcourtman2b	aconsterdinem2
fcourtman2b	fcobbledickjx
fcourtman2b	wshooter71
fcourtman2b	mcellohu
fcourtman2b	edunneqk
fcourtman2b	fgores6o
fcourtman2b	hstorrpo
fcourtman2b	tmountcs
fcourtman2b	gcloughergk
fcourtman2b	jcottonl2
fcourtman2b	rpoolor
fcourtman2b	hdartnall3m
fcourtman2b	tedgerley40
fcourtman2b	lgoodrickft
fcourtman2b	dtinneref
fcourtman2b	bsierms
fcourtman2b	preidia
fcourtman2b	gdiemf7
fcourtman2b	icantillon6e
fcourtman2b	jkleinerna
fcourtman2b	abenitl8
fcourtman2b	boneary97
fcourtman2b	cdexterfv
fcourtman2b	rmacgormanaa
fcourtman2b	tcoattsnf
fcourtman2b	eharrald50
fcourtman2b	fkalkofero7
fcourtman2b	jenstonqz
fcourtman2b	aswadlin90
fcourtman2b	skedslief3
fcourtman2b	dkahenli
fcourtman2b	dparletj2
fcourtman2b	moveraldh
fcourtman2b	ibozward9z
fcourtman2b	lhawketdw
fcourtman2b	coniondk
fcourtman2b	daldinsil
fcourtman2b	mbodycombeh5
fcourtman2b	hmardypx
fcourtman2b	kdowningo8
fcourtman2b	mike
fcourtman2b	psturneym6
fcourtman2b	bsienel1
fcourtman2b	kboundeyqq
fcourtman2b	gnoultonkw
fcourtman2b	mminchindonaf
fcourtman2b	iaustinsp8
fcourtman2b	glackemannfp
fcourtman2b	lheathcott5f
fcourtman2b	mdelavaletteparisotoi
fcourtman2b	hstovingar
fcourtman2b	emcgarahan5j
fcourtman2b	dgearerj
fcourtman2b	dbaccusou
fcourtman2b	carpurbg
fcourtman2b	kzumbuschrb
fcourtman2b	bcrosonbr
fcourtman2b	whefferbu
fcourtman2b	ebondsqa
fcourtman2b	blockleyok
fcourtman2b	aspollencm
fcourtman2b	nsidwick80
fcourtman2b	dspellesya4
fcourtman2b	cledgerbm
fcourtman2b	tgisbyea6
fcourtman2b	dmcphersonp5
fcourtman2b	dairtone9
fcourtman2b	klanmeidl4
fcourtman2b	rdarlasson8
fcourtman2b	mphippen6s
fcourtman2b	pchienekj
fcourtman2b	egiacobod7
fcourtman2b	lreaditt9q
fcourtman2b	rlatekoo
fcourtman2b	hhumblestonemt
fcourtman2b	tsherry72
fcourtman2b	jheinlfj
fcourtman2b	dnobbse4
fcourtman2b	bjanczewskiby
fcourtman2b	nbezantsmz
fcourtman2b	wcampsallb5
tscurr19	gcloughergk
tscurr19	rlatekoo
tscurr19	dgeerlingfl
tscurr19	hhumblestonemt
tscurr19	tedgerley40
tscurr19	dmcphersonp5
tscurr19	mbodycombeh5
tscurr19	pjeavesod
tscurr19	dbaccusou
tscurr19	mpragnellln
tscurr19	dbannardq1
tscurr19	jewerlo
tscurr19	kboundeyqq
tscurr19	psturneym6
tscurr19	egiacobod7
tscurr19	lheathcott5f
tscurr19	jnisotr5
tscurr19	icantillon6e
tscurr19	aconsterdinem2
tscurr19	jenstonqz
tscurr19	mmcgrailnw
tscurr19	lhawketdw
tscurr19	skellart7v
tscurr19	msawelle3
tscurr19	hstorrpo
tscurr19	janthiftlenp
tscurr19	shogbenpv
tscurr19	mphippen6s
tscurr19	bjanczewskiby
tscurr19	hadnea0
tscurr19	tastleiv
tscurr19	iaustinsp8
tscurr19	pchienekj
tscurr19	glackemannfp
tscurr19	tcoattsnf
tscurr19	fgores6o
tscurr19	wshooter71
tscurr19	fkalkofero7
tscurr19	gyoulesq7
tscurr19	lreaditt9q
tscurr19	mminchindonaf
tscurr19	aswadlin90
tscurr19	aredbornqu
tscurr19	wkillimister8u
tscurr19	eharrald50
tscurr19	mmacilhargypn
tscurr19	londrasek8q
tscurr19	gdiemf7
tscurr19	glory7z
tscurr19	kzumbuschrb
tscurr19	fowbrickcz
tscurr19	smccreath7w
tscurr19	bsaffellky
tscurr19	tmountcs
tscurr19	carpurbg
tscurr19	hwalbridgegs
tscurr19	mpolinib1
tscurr19	mstoppc9
tscurr19	cdexterfv
tscurr19	mtarbertd
tscurr19	dgearerj
tscurr19	tsherry72
tscurr19	mike
tscurr19	blockleyok
tscurr19	dnobbse4
tscurr19	lgoodrickft
tscurr19	skedslief3
tscurr19	ibozward9z
tscurr19	emcgarahan5j
tscurr19	tgisbyea6
tscurr19	dmcclintockmc
tscurr19	pkaufman4t
tscurr19	jheinlfj
tscurr19	klanmeidl4
tscurr19	dairtone9
tscurr19	rpoolor
tscurr19	tbolwellfd
tscurr19	hdartnall3m
tscurr19	kdowningo8
tscurr19	bmcnaye0
tscurr19	bsierms
tscurr19	mdelavaletteparisotoi
tscurr19	rhefnerl6
tscurr19	wkirvinhc
tscurr19	ebenkhe67
tscurr19	jcottonl2
tscurr19	hstovingar
tscurr19	ppattersjf
tscurr19	dparletj2
tscurr19	dspellesya4
tscurr19	whefferbu
tscurr19	aragateri
tscurr19	preidia
tscurr19	ebondsqa
tscurr19	dtrobed5
tscurr19	rhastelowbc
tscurr19	ddockreayeh
tscurr19	gpallisteri3
tscurr19	mcellohu
tscurr19	ghanscombefc
tscurr19	tvaudea
tscurr19	bsienel1
tscurr19	daldinsil
tscurr19	nbezantsmz
tscurr19	rmacgormanaa
tscurr19	sgye5z
tscurr19	abenitl8
tscurr19	dtinneref
tscurr19	hlealhg
tscurr19	hdorgonj9
tscurr19	jkleinerna
tscurr19	wcampsallb5
tscurr19	edunneqk
tscurr19	vsawneyej
tscurr19	cledgerbm
tscurr19	nsidwick80
tscurr19	sjansens5k
tscurr19	jdashkovfk
tscurr19	fcobbledickjx
tscurr19	joteagueh1
tscurr19	dkahenli
tscurr19	aspollencm
tscurr19	bcrosonbr
tscurr19	moveraldh
tscurr19	boneary97
tscurr19	rdarlasson8
tscurr19	coniondk
tscurr19	hmardypx
tscurr19	hsutherelhi
tscurr19	gnoultonkw
wheskin2h	bmcnaye0
wheskin2h	jcottonl2
wheskin2h	kzumbuschrb
wheskin2h	gcloughergk
wheskin2h	mike
wheskin2h	nbezantsmz
wheskin2h	gpallisteri3
wheskin2h	dbaccusou
wheskin2h	bsienel1
wheskin2h	tmountcs
wheskin2h	bsierms
wheskin2h	rhefnerl6
wheskin2h	daldinsil
wheskin2h	preidia
wheskin2h	mpragnellln
wheskin2h	dspellesya4
wheskin2h	wcampsallb5
wheskin2h	dkahenli
wheskin2h	bcrosonbr
wheskin2h	abenitl8
wheskin2h	smccreath7w
wheskin2h	mpolinib1
wheskin2h	eharrald50
wheskin2h	wshooter71
wheskin2h	tcoattsnf
wheskin2h	aragateri
wheskin2h	pjeavesod
wheskin2h	gyoulesq7
wheskin2h	coniondk
wheskin2h	dnobbse4
wheskin2h	tgisbyea6
wheskin2h	gnoultonkw
wheskin2h	iaustinsp8
wheskin2h	ddockreayeh
wheskin2h	shogbenpv
wheskin2h	jkleinerna
wheskin2h	jdashkovfk
wheskin2h	hdartnall3m
wheskin2h	aspollencm
wheskin2h	dgeerlingfl
wheskin2h	hmardypx
wheskin2h	pchienekj
wheskin2h	jewerlo
wheskin2h	mdelavaletteparisotoi
wheskin2h	hsutherelhi
wheskin2h	rlatekoo
wheskin2h	hadnea0
wheskin2h	edunneqk
wheskin2h	carpurbg
wheskin2h	jnisotr5
wheskin2h	boneary97
wheskin2h	bsaffellky
wheskin2h	klanmeidl4
wheskin2h	egiacobod7
wheskin2h	wkillimister8u
wheskin2h	skedslief3
wheskin2h	sgye5z
wheskin2h	lhawketdw
wheskin2h	kdowningo8
wheskin2h	skellart7v
wheskin2h	moveraldh
wheskin2h	mphippen6s
wheskin2h	lgoodrickft
wheskin2h	hstorrpo
wheskin2h	hstovingar
wheskin2h	aswadlin90
wheskin2h	fowbrickcz
wheskin2h	fgores6o
wheskin2h	glory7z
wheskin2h	ibozward9z
wheskin2h	cledgerbm
wheskin2h	msawelle3
wheskin2h	mbodycombeh5
wheskin2h	joteagueh1
wheskin2h	mtarbertd
wheskin2h	tsherry72
wheskin2h	ghanscombefc
wheskin2h	rpoolor
wheskin2h	psturneym6
wheskin2h	fkalkofero7
wheskin2h	mmcgrailnw
wheskin2h	mmacilhargypn
wheskin2h	hlealhg
wheskin2h	aredbornqu
wheskin2h	mminchindonaf
wheskin2h	whefferbu
wheskin2h	lreaditt9q
wheskin2h	dtrobed5
wheskin2h	dbannardq1
wheskin2h	ppattersjf
wheskin2h	kboundeyqq
wheskin2h	londrasek8q
wheskin2h	dgearerj
wheskin2h	cdexterfv
wheskin2h	dmcphersonp5
wheskin2h	pkaufman4t
wheskin2h	ebenkhe67
wheskin2h	mcellohu
wheskin2h	mstoppc9
wheskin2h	sjansens5k
wheskin2h	emcgarahan5j
wheskin2h	dtinneref
wheskin2h	janthiftlenp
wheskin2h	hwalbridgegs
wheskin2h	tedgerley40
wheskin2h	rmacgormanaa
wheskin2h	nsidwick80
wheskin2h	hdorgonj9
wheskin2h	glackemannfp
wheskin2h	dparletj2
wheskin2h	rdarlasson8
wheskin2h	tbolwellfd
wheskin2h	fcobbledickjx
wheskin2h	blockleyok
wheskin2h	aconsterdinem2
wheskin2h	wkirvinhc
wheskin2h	hhumblestonemt
wheskin2h	dmcclintockmc
wheskin2h	dairtone9
wheskin2h	gdiemf7
wheskin2h	ebondsqa
wheskin2h	jheinlfj
wheskin2h	bjanczewskiby
wheskin2h	jenstonqz
wheskin2h	tvaudea
wheskin2h	icantillon6e
wheskin2h	rhastelowbc
wheskin2h	lheathcott5f
wheskin2h	vsawneyej
wheskin2h	tastleiv
hlefleming2n	dtrobed5
hlefleming2n	fcobbledickjx
hlefleming2n	dmcphersonp5
hlefleming2n	hstovingar
hlefleming2n	gpallisteri3
hlefleming2n	aspollencm
hlefleming2n	blockleyok
hlefleming2n	hdorgonj9
hlefleming2n	mstoppc9
hlefleming2n	hadnea0
hlefleming2n	bmcnaye0
hlefleming2n	kzumbuschrb
hlefleming2n	jkleinerna
hlefleming2n	dnobbse4
hlefleming2n	iaustinsp8
hlefleming2n	hdartnall3m
hlefleming2n	jewerlo
hlefleming2n	dairtone9
hlefleming2n	abenitl8
hlefleming2n	dgearerj
hlefleming2n	hhumblestonemt
hlefleming2n	tcoattsnf
hlefleming2n	dgeerlingfl
hlefleming2n	mtarbertd
hlefleming2n	dmcclintockmc
hlefleming2n	boneary97
hlefleming2n	mpolinib1
hlefleming2n	ppattersjf
hlefleming2n	mmacilhargypn
hlefleming2n	aragateri
hlefleming2n	joteagueh1
hlefleming2n	jheinlfj
hlefleming2n	pkaufman4t
hlefleming2n	jcottonl2
hlefleming2n	glory7z
hlefleming2n	eharrald50
hlefleming2n	lgoodrickft
hlefleming2n	bsierms
hlefleming2n	skellart7v
hlefleming2n	preidia
hlefleming2n	mike
hlefleming2n	skedslief3
hlefleming2n	fowbrickcz
hlefleming2n	klanmeidl4
hlefleming2n	edunneqk
hlefleming2n	ddockreayeh
hlefleming2n	hlealhg
hlefleming2n	bsienel1
hlefleming2n	moveraldh
hlefleming2n	tvaudea
hlefleming2n	shogbenpv
hlefleming2n	pchienekj
hlefleming2n	gcloughergk
hlefleming2n	tbolwellfd
hlefleming2n	mbodycombeh5
hlefleming2n	dspellesya4
hlefleming2n	tmountcs
hlefleming2n	rhefnerl6
hlefleming2n	hsutherelhi
hlefleming2n	rhastelowbc
hlefleming2n	wshooter71
hlefleming2n	londrasek8q
hlefleming2n	sgye5z
hlefleming2n	mmcgrailnw
hlefleming2n	wkirvinhc
hlefleming2n	psturneym6
hlefleming2n	mcellohu
hlefleming2n	gnoultonkw
hlefleming2n	tgisbyea6
hlefleming2n	lreaditt9q
hlefleming2n	carpurbg
hlefleming2n	aswadlin90
hlefleming2n	jdashkovfk
hlefleming2n	whefferbu
hlefleming2n	rpoolor
hlefleming2n	pjeavesod
hlefleming2n	icantillon6e
hlefleming2n	smccreath7w
hlefleming2n	bsaffellky
hlefleming2n	sjansens5k
hlefleming2n	dkahenli
hlefleming2n	lheathcott5f
hlefleming2n	lhawketdw
hlefleming2n	janthiftlenp
hlefleming2n	hmardypx
hlefleming2n	kdowningo8
hlefleming2n	rmacgormanaa
hlefleming2n	bjanczewskiby
hlefleming2n	kboundeyqq
hlefleming2n	hstorrpo
hlefleming2n	emcgarahan5j
hlefleming2n	cdexterfv
hlefleming2n	dbaccusou
hlefleming2n	nbezantsmz
hlefleming2n	bcrosonbr
hlefleming2n	egiacobod7
hlefleming2n	nsidwick80
hlefleming2n	wkillimister8u
hlefleming2n	jnisotr5
hlefleming2n	mphippen6s
hlefleming2n	gyoulesq7
hlefleming2n	glackemannfp
hlefleming2n	tastleiv
hlefleming2n	ghanscombefc
hlefleming2n	ebenkhe67
hlefleming2n	rdarlasson8
hlefleming2n	aredbornqu
hlefleming2n	mdelavaletteparisotoi
hlefleming2n	tsherry72
hlefleming2n	tedgerley40
hlefleming2n	hwalbridgegs
hlefleming2n	rlatekoo
hlefleming2n	mpragnellln
hlefleming2n	gdiemf7
hlefleming2n	dtinneref
hlefleming2n	msawelle3
hlefleming2n	cledgerbm
hlefleming2n	coniondk
hlefleming2n	fkalkofero7
hlefleming2n	mminchindonaf
hlefleming2n	fgores6o
hlefleming2n	dbannardq1
hlefleming2n	wcampsallb5
hlefleming2n	vsawneyej
hlefleming2n	dparletj2
hlefleming2n	ebondsqa
hlefleming2n	ibozward9z
hlefleming2n	daldinsil
hlefleming2n	jenstonqz
hlefleming2n	aconsterdinem2
tthacker2s	tbolwellfd
tthacker2s	bsierms
tthacker2s	mdelavaletteparisotoi
tthacker2s	joteagueh1
tthacker2s	eharrald50
tthacker2s	glory7z
tthacker2s	mphippen6s
tthacker2s	hadnea0
tthacker2s	jenstonqz
tthacker2s	wcampsallb5
tthacker2s	whefferbu
tthacker2s	egiacobod7
tthacker2s	gyoulesq7
tthacker2s	dtinneref
tthacker2s	dnobbse4
tthacker2s	tvaudea
tthacker2s	hlealhg
tthacker2s	mmacilhargypn
tthacker2s	gcloughergk
tthacker2s	ppattersjf
tthacker2s	dbaccusou
tthacker2s	abenitl8
tthacker2s	rhefnerl6
tthacker2s	dmcclintockmc
tthacker2s	bmcnaye0
tthacker2s	lhawketdw
tthacker2s	psturneym6
tthacker2s	mpolinib1
tthacker2s	jewerlo
tthacker2s	msawelle3
tthacker2s	hwalbridgegs
tthacker2s	sgye5z
tthacker2s	bsaffellky
tthacker2s	shogbenpv
tthacker2s	cdexterfv
tthacker2s	dtrobed5
tthacker2s	bcrosonbr
tthacker2s	bjanczewskiby
tthacker2s	gpallisteri3
tthacker2s	londrasek8q
tthacker2s	vsawneyej
tthacker2s	moveraldh
tthacker2s	hdorgonj9
tthacker2s	mmcgrailnw
tthacker2s	hsutherelhi
tthacker2s	dbannardq1
tthacker2s	bsienel1
tthacker2s	aswadlin90
tthacker2s	mike
tthacker2s	tedgerley40
tthacker2s	jkleinerna
tthacker2s	edunneqk
tthacker2s	sjansens5k
tthacker2s	carpurbg
tthacker2s	kdowningo8
tthacker2s	gnoultonkw
tthacker2s	aredbornqu
tthacker2s	tgisbyea6
tthacker2s	nbezantsmz
tthacker2s	skedslief3
tthacker2s	fcobbledickjx
tthacker2s	dspellesya4
tthacker2s	ebondsqa
tthacker2s	emcgarahan5j
tthacker2s	gdiemf7
tthacker2s	rhastelowbc
tthacker2s	hdartnall3m
tthacker2s	wshooter71
tthacker2s	mtarbertd
tthacker2s	dgearerj
tthacker2s	ghanscombefc
tthacker2s	fkalkofero7
tthacker2s	dkahenli
tthacker2s	kzumbuschrb
tthacker2s	lgoodrickft
tthacker2s	jdashkovfk
tthacker2s	dgeerlingfl
tthacker2s	boneary97
tthacker2s	rmacgormanaa
tthacker2s	kboundeyqq
tthacker2s	skellart7v
tthacker2s	tsherry72
tthacker2s	dmcphersonp5
tthacker2s	dairtone9
tthacker2s	iaustinsp8
tthacker2s	janthiftlenp
tthacker2s	ibozward9z
tthacker2s	aspollencm
tthacker2s	blockleyok
tthacker2s	tcoattsnf
tthacker2s	icantillon6e
tthacker2s	jcottonl2
tthacker2s	coniondk
tthacker2s	jnisotr5
tthacker2s	aragateri
tthacker2s	aconsterdinem2
tthacker2s	ebenkhe67
tthacker2s	jheinlfj
tthacker2s	ddockreayeh
tthacker2s	klanmeidl4
tthacker2s	smccreath7w
tthacker2s	cledgerbm
tthacker2s	tastleiv
tthacker2s	fgores6o
tthacker2s	dparletj2
tthacker2s	hmardypx
tthacker2s	pchienekj
tthacker2s	mpragnellln
tthacker2s	lreaditt9q
tthacker2s	wkirvinhc
tthacker2s	rlatekoo
tthacker2s	hstorrpo
tthacker2s	pjeavesod
tthacker2s	pkaufman4t
tthacker2s	daldinsil
tthacker2s	preidia
tthacker2s	tmountcs
tthacker2s	mcellohu
tthacker2s	mbodycombeh5
tthacker2s	wkillimister8u
tthacker2s	fowbrickcz
tthacker2s	nsidwick80
tthacker2s	mstoppc9
tthacker2s	glackemannfp
mperham3k	ebondsqa
mperham3k	fgores6o
mperham3k	gpallisteri3
mperham3k	glackemannfp
mperham3k	wkirvinhc
mperham3k	wcampsallb5
mperham3k	joteagueh1
mperham3k	psturneym6
mperham3k	bmcnaye0
mperham3k	sgye5z
mperham3k	dgeerlingfl
mperham3k	bsaffellky
mperham3k	mike
mperham3k	lreaditt9q
mperham3k	bsienel1
mperham3k	jnisotr5
mperham3k	gyoulesq7
mperham3k	ppattersjf
mperham3k	dairtone9
mperham3k	hsutherelhi
mperham3k	msawelle3
mperham3k	shogbenpv
mperham3k	tedgerley40
mperham3k	ibozward9z
mperham3k	cdexterfv
mperham3k	egiacobod7
mperham3k	glory7z
mperham3k	ebenkhe67
mperham3k	aragateri
mperham3k	preidia
mperham3k	pjeavesod
mperham3k	wshooter71
mperham3k	dspellesya4
mperham3k	skellart7v
mperham3k	londrasek8q
mperham3k	nbezantsmz
mperham3k	fcobbledickjx
mperham3k	coniondk
mperham3k	ghanscombefc
mperham3k	jenstonqz
mperham3k	dnobbse4
mperham3k	pchienekj
mperham3k	emcgarahan5j
mperham3k	jdashkovfk
mperham3k	skedslief3
mperham3k	tmountcs
mperham3k	cledgerbm
mperham3k	rmacgormanaa
mperham3k	ddockreayeh
mperham3k	dmcphersonp5
mperham3k	smccreath7w
mperham3k	klanmeidl4
mperham3k	fkalkofero7
mperham3k	nsidwick80
mperham3k	dgearerj
mperham3k	gcloughergk
mperham3k	mcellohu
mperham3k	sjansens5k
mperham3k	icantillon6e
mperham3k	kzumbuschrb
mperham3k	mphippen6s
mperham3k	bjanczewskiby
mperham3k	mstoppc9
mperham3k	dbannardq1
mperham3k	dbaccusou
mperham3k	pkaufman4t
mperham3k	iaustinsp8
mperham3k	hadnea0
mperham3k	jcottonl2
mperham3k	tvaudea
mperham3k	bcrosonbr
mperham3k	lhawketdw
mperham3k	hwalbridgegs
mperham3k	hdartnall3m
mperham3k	hlealhg
mperham3k	boneary97
mperham3k	tastleiv
mperham3k	edunneqk
mperham3k	dkahenli
mperham3k	jheinlfj
mperham3k	mmacilhargypn
mperham3k	jkleinerna
mperham3k	aconsterdinem2
mperham3k	hdorgonj9
mperham3k	jewerlo
mperham3k	mdelavaletteparisotoi
mperham3k	whefferbu
mperham3k	mmcgrailnw
mperham3k	bsierms
mperham3k	mtarbertd
mperham3k	tgisbyea6
mperham3k	lgoodrickft
mperham3k	aredbornqu
mperham3k	dtrobed5
mperham3k	carpurbg
mperham3k	dmcclintockmc
mperham3k	rhastelowbc
mperham3k	hstorrpo
mperham3k	gdiemf7
mperham3k	aswadlin90
mperham3k	vsawneyej
mperham3k	tsherry72
mperham3k	daldinsil
mperham3k	rhefnerl6
mperham3k	blockleyok
mperham3k	dtinneref
mperham3k	rlatekoo
mperham3k	gnoultonkw
mperham3k	eharrald50
mperham3k	abenitl8
mperham3k	mpolinib1
mperham3k	kboundeyqq
mperham3k	tbolwellfd
mperham3k	kdowningo8
mperham3k	moveraldh
mperham3k	tcoattsnf
wniblo32	glory7z
wniblo32	pkaufman4t
wniblo32	ebondsqa
wniblo32	jdashkovfk
wniblo32	klanmeidl4
wniblo32	tvaudea
wniblo32	jewerlo
wniblo32	aswadlin90
wniblo32	tsherry72
wniblo32	tmountcs
wniblo32	dtinneref
wniblo32	gnoultonkw
wniblo32	jkleinerna
wniblo32	bsierms
wniblo32	joteagueh1
wniblo32	carpurbg
wniblo32	wkirvinhc
wniblo32	aconsterdinem2
wniblo32	moveraldh
wniblo32	jcottonl2
wniblo32	blockleyok
wniblo32	bjanczewskiby
wniblo32	coniondk
wniblo32	preidia
wniblo32	dbaccusou
wniblo32	hdartnall3m
wniblo32	cledgerbm
wniblo32	tbolwellfd
wniblo32	mtarbertd
wniblo32	mike
wniblo32	bmcnaye0
wniblo32	ibozward9z
wniblo32	dnobbse4
wniblo32	daldinsil
wniblo32	skellart7v
wniblo32	tastleiv
wniblo32	vsawneyej
wniblo32	sjansens5k
wniblo32	edunneqk
wniblo32	tgisbyea6
wniblo32	glackemannfp
wniblo32	hlealhg
wniblo32	ghanscombefc
wniblo32	hsutherelhi
wniblo32	cdexterfv
wniblo32	iaustinsp8
wniblo32	lreaditt9q
wniblo32	jenstonqz
wniblo32	hdorgonj9
wniblo32	nsidwick80
wniblo32	londrasek8q
wniblo32	kzumbuschrb
wniblo32	icantillon6e
wniblo32	dkahenli
wniblo32	rlatekoo
wniblo32	tedgerley40
wniblo32	dmcphersonp5
wniblo32	jnisotr5
wniblo32	ebenkhe67
wniblo32	mstoppc9
wniblo32	dmcclintockmc
wniblo32	wshooter71
wniblo32	aragateri
wniblo32	psturneym6
wniblo32	fgores6o
wniblo32	fcobbledickjx
wniblo32	lgoodrickft
wniblo32	dgeerlingfl
wniblo32	emcgarahan5j
wniblo32	fkalkofero7
wniblo32	bsienel1
wniblo32	egiacobod7
wniblo32	hadnea0
wniblo32	dspellesya4
wniblo32	boneary97
wniblo32	msawelle3
wniblo32	mphippen6s
wniblo32	dairtone9
wniblo32	bcrosonbr
wniblo32	rhastelowbc
wniblo32	tcoattsnf
wniblo32	eharrald50
wniblo32	abenitl8
wniblo32	whefferbu
wniblo32	shogbenpv
wniblo32	rmacgormanaa
wniblo32	sgye5z
wniblo32	wcampsallb5
wniblo32	hstorrpo
wniblo32	hwalbridgegs
wniblo32	mmacilhargypn
wniblo32	jheinlfj
wniblo32	mdelavaletteparisotoi
wniblo32	kdowningo8
wniblo32	smccreath7w
wniblo32	gpallisteri3
wniblo32	dgearerj
wniblo32	nbezantsmz
wniblo32	dbannardq1
wniblo32	rhefnerl6
wniblo32	gcloughergk
wniblo32	lhawketdw
wniblo32	kboundeyqq
wniblo32	skedslief3
wniblo32	aredbornqu
wniblo32	pchienekj
wniblo32	gdiemf7
wniblo32	mmcgrailnw
wniblo32	gyoulesq7
shinge39	wshooter71
shinge39	rmacgormanaa
shinge39	hadnea0
shinge39	lhawketdw
shinge39	bcrosonbr
shinge39	hsutherelhi
shinge39	jenstonqz
shinge39	rhefnerl6
shinge39	coniondk
shinge39	moveraldh
shinge39	tcoattsnf
shinge39	aconsterdinem2
shinge39	tvaudea
shinge39	gyoulesq7
shinge39	cdexterfv
shinge39	emcgarahan5j
shinge39	bjanczewskiby
shinge39	smccreath7w
shinge39	glory7z
shinge39	msawelle3
shinge39	ibozward9z
shinge39	dtinneref
shinge39	psturneym6
shinge39	boneary97
shinge39	glackemannfp
shinge39	bsierms
shinge39	sgye5z
shinge39	wcampsallb5
shinge39	bmcnaye0
shinge39	fcobbledickjx
shinge39	nsidwick80
shinge39	tgisbyea6
shinge39	iaustinsp8
shinge39	gnoultonkw
shinge39	dairtone9
shinge39	tastleiv
shinge39	kboundeyqq
shinge39	dspellesya4
shinge39	daldinsil
shinge39	kzumbuschrb
shinge39	mphippen6s
shinge39	jcottonl2
shinge39	fkalkofero7
shinge39	pchienekj
shinge39	hstorrpo
shinge39	jdashkovfk
shinge39	joteagueh1
shinge39	dgeerlingfl
shinge39	hwalbridgegs
shinge39	ghanscombefc
shinge39	jkleinerna
shinge39	mmcgrailnw
shinge39	gpallisteri3
shinge39	blockleyok
shinge39	sjansens5k
shinge39	jheinlfj
shinge39	icantillon6e
shinge39	dkahenli
shinge39	ebondsqa
shinge39	dmcclintockmc
shinge39	skedslief3
shinge39	dbannardq1
shinge39	vsawneyej
shinge39	lgoodrickft
shinge39	bsienel1
shinge39	aswadlin90
shinge39	mstoppc9
shinge39	eharrald50
shinge39	kdowningo8
shinge39	londrasek8q
shinge39	mtarbertd
shinge39	aragateri
shinge39	nbezantsmz
shinge39	pkaufman4t
shinge39	dmcphersonp5
shinge39	preidia
shinge39	rhastelowbc
shinge39	edunneqk
shinge39	skellart7v
shinge39	hlealhg
shinge39	tbolwellfd
shinge39	cledgerbm
shinge39	mmacilhargypn
shinge39	dgearerj
shinge39	tedgerley40
shinge39	abenitl8
shinge39	dbaccusou
shinge39	gdiemf7
shinge39	mdelavaletteparisotoi
shinge39	lreaditt9q
shinge39	jewerlo
shinge39	gcloughergk
shinge39	ebenkhe67
shinge39	tmountcs
shinge39	wkirvinhc
shinge39	whefferbu
shinge39	rlatekoo
shinge39	fgores6o
shinge39	hdorgonj9
shinge39	hdartnall3m
shinge39	mike
shinge39	shogbenpv
shinge39	tsherry72
bduffitt3d	sgye5z
bduffitt3d	bjanczewskiby
bduffitt3d	fkalkofero7
bduffitt3d	icantillon6e
bduffitt3d	gcloughergk
bduffitt3d	dkahenli
bduffitt3d	dgeerlingfl
bduffitt3d	hwalbridgegs
bduffitt3d	gpallisteri3
bduffitt3d	coniondk
bduffitt3d	psturneym6
bduffitt3d	mmcgrailnw
bduffitt3d	tsherry72
bduffitt3d	dbaccusou
bduffitt3d	hdorgonj9
bduffitt3d	vsawneyej
bduffitt3d	londrasek8q
bduffitt3d	jcottonl2
bduffitt3d	wshooter71
bduffitt3d	lreaditt9q
bduffitt3d	ghanscombefc
bduffitt3d	lgoodrickft
bduffitt3d	cledgerbm
bduffitt3d	aswadlin90
bduffitt3d	hdartnall3m
bduffitt3d	glackemannfp
bduffitt3d	eharrald50
bduffitt3d	fgores6o
bduffitt3d	rmacgormanaa
bduffitt3d	cdexterfv
bduffitt3d	rhefnerl6
bduffitt3d	lhawketdw
bduffitt3d	jheinlfj
bduffitt3d	joteagueh1
bduffitt3d	abenitl8
bduffitt3d	mphippen6s
bduffitt3d	boneary97
bduffitt3d	sjansens5k
bduffitt3d	hstorrpo
bduffitt3d	mtarbertd
bduffitt3d	fcobbledickjx
bduffitt3d	aragateri
bduffitt3d	pkaufman4t
bduffitt3d	tmountcs
bduffitt3d	rhastelowbc
bduffitt3d	nbezantsmz
bduffitt3d	skedslief3
bduffitt3d	mstoppc9
bduffitt3d	bmcnaye0
bduffitt3d	jenstonqz
bduffitt3d	dspellesya4
bduffitt3d	ebenkhe67
bduffitt3d	hsutherelhi
bduffitt3d	tbolwellfd
bduffitt3d	dmcphersonp5
bduffitt3d	tastleiv
bduffitt3d	dmcclintockmc
bduffitt3d	whefferbu
bduffitt3d	shogbenpv
bduffitt3d	skellart7v
bduffitt3d	gdiemf7
bduffitt3d	tcoattsnf
bduffitt3d	dairtone9
bduffitt3d	pchienekj
bduffitt3d	edunneqk
bduffitt3d	ebondsqa
bduffitt3d	tvaudea
bduffitt3d	nsidwick80
bduffitt3d	mmacilhargypn
bduffitt3d	tedgerley40
bduffitt3d	daldinsil
bduffitt3d	glory7z
bduffitt3d	jdashkovfk
bduffitt3d	dgearerj
bduffitt3d	kboundeyqq
bduffitt3d	hlealhg
bduffitt3d	rlatekoo
bduffitt3d	iaustinsp8
bduffitt3d	aconsterdinem2
bduffitt3d	jkleinerna
bduffitt3d	wkirvinhc
bduffitt3d	wcampsallb5
bduffitt3d	blockleyok
bduffitt3d	kzumbuschrb
bduffitt3d	gnoultonkw
bduffitt3d	moveraldh
bduffitt3d	mdelavaletteparisotoi
bduffitt3d	msawelle3
bduffitt3d	gyoulesq7
bduffitt3d	dtinneref
bduffitt3d	bsienel1
bduffitt3d	mike
bduffitt3d	bcrosonbr
bduffitt3d	hadnea0
bduffitt3d	preidia
bduffitt3d	ibozward9z
bduffitt3d	kdowningo8
bduffitt3d	dbannardq1
bduffitt3d	jewerlo
lfishley18	kdowningo8
lfishley18	icantillon6e
lfishley18	jenstonqz
lfishley18	bsienel1
lfishley18	boneary97
lfishley18	dtinneref
lfishley18	rlatekoo
lfishley18	kboundeyqq
lfishley18	glory7z
lfishley18	lgoodrickft
lfishley18	daldinsil
lfishley18	cledgerbm
lfishley18	wcampsallb5
lfishley18	rmacgormanaa
lfishley18	bjanczewskiby
lfishley18	jkleinerna
lfishley18	wkirvinhc
lfishley18	skellart7v
lfishley18	tvaudea
lfishley18	gcloughergk
lfishley18	pchienekj
lfishley18	fcobbledickjx
lfishley18	abenitl8
lfishley18	jcottonl2
lfishley18	dbannardq1
lfishley18	sjansens5k
lfishley18	psturneym6
lfishley18	jewerlo
lfishley18	rhastelowbc
lfishley18	tcoattsnf
lfishley18	hdorgonj9
lfishley18	tmountcs
lfishley18	jheinlfj
lfishley18	moveraldh
lfishley18	bmcnaye0
lfishley18	lreaditt9q
lfishley18	dmcphersonp5
lfishley18	tsherry72
lfishley18	fkalkofero7
lfishley18	lhawketdw
lfishley18	dkahenli
lfishley18	fgores6o
lfishley18	kzumbuschrb
lfishley18	mike
lfishley18	nbezantsmz
lfishley18	hstorrpo
lfishley18	pkaufman4t
lfishley18	vsawneyej
lfishley18	skedslief3
lfishley18	ebenkhe67
lfishley18	sgye5z
lfishley18	mstoppc9
lfishley18	mmacilhargypn
lfishley18	gpallisteri3
lfishley18	ibozward9z
lfishley18	cdexterfv
lfishley18	tedgerley40
lfishley18	preidia
lfishley18	hadnea0
lfishley18	mdelavaletteparisotoi
lfishley18	mphippen6s
lfishley18	nsidwick80
lfishley18	ebondsqa
lfishley18	rhefnerl6
lfishley18	dgeerlingfl
lfishley18	hwalbridgegs
lfishley18	mtarbertd
lfishley18	hsutherelhi
lfishley18	edunneqk
lfishley18	bcrosonbr
lfishley18	londrasek8q
lfishley18	shogbenpv
lfishley18	hdartnall3m
lfishley18	dspellesya4
lfishley18	aconsterdinem2
lfishley18	aragateri
lfishley18	aswadlin90
lfishley18	jdashkovfk
lfishley18	glackemannfp
lfishley18	iaustinsp8
lfishley18	msawelle3
lfishley18	eharrald50
lfishley18	wshooter71
lfishley18	dmcclintockmc
lfishley18	blockleyok
lfishley18	gnoultonkw
mmartynikhin5a	tvaudea
mmartynikhin5a	kboundeyqq
mmartynikhin5a	lgoodrickft
mmartynikhin5a	fcobbledickjx
mmartynikhin5a	kzumbuschrb
mmartynikhin5a	shogbenpv
mmartynikhin5a	mtarbertd
mmartynikhin5a	rhastelowbc
mmartynikhin5a	skedslief3
mmartynikhin5a	jewerlo
mmartynikhin5a	icantillon6e
mmartynikhin5a	hsutherelhi
mmartynikhin5a	hdorgonj9
mmartynikhin5a	skellart7v
mmartynikhin5a	dmcphersonp5
mmartynikhin5a	wshooter71
mmartynikhin5a	abenitl8
mmartynikhin5a	daldinsil
mmartynikhin5a	iaustinsp8
mmartynikhin5a	hadnea0
mmartynikhin5a	dspellesya4
mmartynikhin5a	hwalbridgegs
mmartynikhin5a	wcampsallb5
mmartynikhin5a	wkirvinhc
mmartynikhin5a	fgores6o
mmartynikhin5a	mstoppc9
mmartynikhin5a	glackemannfp
mmartynikhin5a	ebenkhe67
mmartynikhin5a	dtinneref
mmartynikhin5a	jheinlfj
mmartynikhin5a	mphippen6s
mmartynikhin5a	mdelavaletteparisotoi
mmartynikhin5a	lreaditt9q
mmartynikhin5a	jdashkovfk
mmartynikhin5a	gpallisteri3
mmartynikhin5a	moveraldh
mmartynikhin5a	gnoultonkw
mmartynikhin5a	vsawneyej
mmartynikhin5a	jcottonl2
mmartynikhin5a	bsienel1
mmartynikhin5a	tedgerley40
mmartynikhin5a	dbannardq1
mmartynikhin5a	bjanczewskiby
mmartynikhin5a	jenstonqz
mmartynikhin5a	bmcnaye0
mmartynikhin5a	fkalkofero7
mmartynikhin5a	preidia
mmartynikhin5a	nbezantsmz
mmartynikhin5a	psturneym6
mmartynikhin5a	hdartnall3m
mmartynikhin5a	tmountcs
mmartynikhin5a	eharrald50
mmartynikhin5a	boneary97
mmartynikhin5a	ebondsqa
mmartynikhin5a	sjansens5k
mmartynikhin5a	londrasek8q
mmartynikhin5a	edunneqk
mmartynikhin5a	glory7z
mmartynikhin5a	rmacgormanaa
mmartynikhin5a	bcrosonbr
mmartynikhin5a	mike
mmartynikhin5a	tcoattsnf
mmartynikhin5a	hstorrpo
mmartynikhin5a	aconsterdinem2
mmartynikhin5a	nsidwick80
mmartynikhin5a	mmacilhargypn
mmartynikhin5a	cledgerbm
mmartynikhin5a	ibozward9z
mmartynikhin5a	gcloughergk
mmartynikhin5a	dgeerlingfl
mmartynikhin5a	pchienekj
mmartynikhin5a	aragateri
mmartynikhin5a	jkleinerna
mmartynikhin5a	dkahenli
mmartynikhin5a	tsherry72
tacome5p	lgoodrickft
tacome5p	rmacgormanaa
tacome5p	nsidwick80
tacome5p	aconsterdinem2
tacome5p	jewerlo
tacome5p	nbezantsmz
tacome5p	hdartnall3m
tacome5p	boneary97
tacome5p	wshooter71
tacome5p	mphippen6s
tacome5p	cledgerbm
tacome5p	iaustinsp8
tacome5p	gnoultonkw
tacome5p	ibozward9z
tacome5p	tedgerley40
tacome5p	mmacilhargypn
tacome5p	hsutherelhi
tacome5p	pchienekj
tacome5p	dtinneref
tacome5p	hadnea0
tacome5p	preidia
tacome5p	edunneqk
tacome5p	lreaditt9q
tacome5p	jdashkovfk
tacome5p	fgores6o
tacome5p	dkahenli
tacome5p	sjansens5k
tacome5p	glackemannfp
tacome5p	dgeerlingfl
tacome5p	londrasek8q
tacome5p	skedslief3
tacome5p	tmountcs
tacome5p	dbannardq1
tacome5p	icantillon6e
tacome5p	kboundeyqq
tacome5p	mike
tacome5p	kzumbuschrb
tacome5p	jenstonqz
tacome5p	bsienel1
tacome5p	abenitl8
tacome5p	mstoppc9
tacome5p	glory7z
tacome5p	skellart7v
tacome5p	eharrald50
tacome5p	moveraldh
tacome5p	ebondsqa
tacome5p	hwalbridgegs
tacome5p	tcoattsnf
tacome5p	hdorgonj9
tacome5p	dspellesya4
tacome5p	jheinlfj
tacome5p	rhastelowbc
tacome5p	mdelavaletteparisotoi
tacome5p	gpallisteri3
tacome5p	wcampsallb5
tacome5p	tsherry72
tacome5p	bjanczewskiby
tacome5p	jkleinerna
tacome5p	bcrosonbr
tacome5p	fkalkofero7
tacome5p	psturneym6
tacome5p	tvaudea
tacome5p	fcobbledickjx
tacome5p	aragateri
tacome5p	hstorrpo
tacome5p	dmcphersonp5
tacome5p	jcottonl2
tacome5p	daldinsil
sfulkes5x	skellart7v
sfulkes5x	nsidwick80
sfulkes5x	jcottonl2
sfulkes5x	dmcphersonp5
sfulkes5x	tcoattsnf
sfulkes5x	bcrosonbr
sfulkes5x	tedgerley40
sfulkes5x	glackemannfp
sfulkes5x	skedslief3
sfulkes5x	dbannardq1
sfulkes5x	mphippen6s
sfulkes5x	jenstonqz
sfulkes5x	ibozward9z
sfulkes5x	edunneqk
sfulkes5x	tvaudea
sfulkes5x	dspellesya4
sfulkes5x	moveraldh
sfulkes5x	cledgerbm
sfulkes5x	fcobbledickjx
sfulkes5x	gpallisteri3
sfulkes5x	hwalbridgegs
sfulkes5x	boneary97
sfulkes5x	wshooter71
sfulkes5x	fkalkofero7
sfulkes5x	jdashkovfk
sfulkes5x	rmacgormanaa
sfulkes5x	abenitl8
sfulkes5x	mdelavaletteparisotoi
sfulkes5x	kboundeyqq
sfulkes5x	tsherry72
sfulkes5x	hdartnall3m
sfulkes5x	mmacilhargypn
sfulkes5x	pchienekj
sfulkes5x	eharrald50
sfulkes5x	fgores6o
sfulkes5x	ebondsqa
sfulkes5x	rhastelowbc
sfulkes5x	dgeerlingfl
sfulkes5x	tmountcs
sfulkes5x	icantillon6e
sfulkes5x	hstorrpo
sfulkes5x	hsutherelhi
sfulkes5x	bjanczewskiby
sfulkes5x	hadnea0
sfulkes5x	iaustinsp8
sfulkes5x	nbezantsmz
sfulkes5x	bsienel1
sfulkes5x	jewerlo
sfulkes5x	aconsterdinem2
sfulkes5x	londrasek8q
sfulkes5x	mike
sfulkes5x	mstoppc9
sfulkes5x	psturneym6
sfulkes5x	lgoodrickft
sfulkes5x	dtinneref
sfulkes5x	aragateri
sfulkes5x	kzumbuschrb
sfulkes5x	lreaditt9q
cbarten53	jewerlo
cbarten53	hstorrpo
cbarten53	tvaudea
cbarten53	mike
cbarten53	pchienekj
cbarten53	boneary97
cbarten53	bsienel1
cbarten53	moveraldh
cbarten53	nbezantsmz
cbarten53	icantillon6e
cbarten53	tcoattsnf
cbarten53	hsutherelhi
cbarten53	glackemannfp
cbarten53	fcobbledickjx
cbarten53	edunneqk
cbarten53	bjanczewskiby
cbarten53	fkalkofero7
cbarten53	hdartnall3m
cbarten53	dmcphersonp5
cbarten53	dgeerlingfl
cbarten53	mdelavaletteparisotoi
cbarten53	cledgerbm
cbarten53	lgoodrickft
cbarten53	skellart7v
cbarten53	mmacilhargypn
cbarten53	jdashkovfk
cbarten53	eharrald50
cbarten53	mphippen6s
cbarten53	rhastelowbc
cbarten53	aragateri
cbarten53	bcrosonbr
cbarten53	skedslief3
cbarten53	wshooter71
cbarten53	jcottonl2
cbarten53	gpallisteri3
cbarten53	tsherry72
cbarten53	kzumbuschrb
cbarten53	rmacgormanaa
cbarten53	kboundeyqq
cbarten53	fgores6o
cbarten53	ibozward9z
cbarten53	abenitl8
cbarten53	psturneym6
cbarten53	iaustinsp8
cbarten53	hadnea0
cbarten53	londrasek8q
cbarten53	nsidwick80
dtorricina3x	fgores6o
dtorricina3x	mmacilhargypn
dtorricina3x	skedslief3
dtorricina3x	jewerlo
dtorricina3x	kboundeyqq
dtorricina3x	hadnea0
dtorricina3x	abenitl8
dtorricina3x	dgeerlingfl
dtorricina3x	londrasek8q
dtorricina3x	eharrald50
dtorricina3x	rhastelowbc
dtorricina3x	rmacgormanaa
dtorricina3x	mdelavaletteparisotoi
dtorricina3x	bcrosonbr
dtorricina3x	hdartnall3m
dtorricina3x	nbezantsmz
dtorricina3x	bsienel1
dtorricina3x	iaustinsp8
dtorricina3x	tvaudea
dtorricina3x	wshooter71
dtorricina3x	hsutherelhi
dtorricina3x	mphippen6s
dtorricina3x	ibozward9z
dtorricina3x	nsidwick80
dtorricina3x	boneary97
dtorricina3x	moveraldh
dtorricina3x	icantillon6e
dtorricina3x	skellart7v
dtorricina3x	lgoodrickft
dtorricina3x	glackemannfp
dtorricina3x	fcobbledickjx
dtorricina3x	pchienekj
dtorricina3x	edunneqk
dtorricina3x	kzumbuschrb
dtorricina3x	bjanczewskiby
dtorricina3x	hstorrpo
dtorricina3x	cledgerbm
dtorricina3x	psturneym6
dtorricina3x	aragateri
dtorricina3x	jcottonl2
dtorricina3x	gpallisteri3
dtorricina3x	mike
gtuplin3y	pchienekj
gtuplin3y	iaustinsp8
gtuplin3y	ibozward9z
gtuplin3y	bjanczewskiby
gtuplin3y	skedslief3
gtuplin3y	rmacgormanaa
gtuplin3y	mmacilhargypn
gtuplin3y	nbezantsmz
gtuplin3y	hdartnall3m
gtuplin3y	mphippen6s
gtuplin3y	kzumbuschrb
gtuplin3y	londrasek8q
gtuplin3y	hsutherelhi
gtuplin3y	moveraldh
gtuplin3y	tvaudea
gtuplin3y	cledgerbm
gtuplin3y	glackemannfp
gtuplin3y	dgeerlingfl
gtuplin3y	jcottonl2
gtuplin3y	mike
gtuplin3y	wshooter71
gtuplin3y	nsidwick80
gtuplin3y	gpallisteri3
gtuplin3y	edunneqk
gtuplin3y	mdelavaletteparisotoi
gtuplin3y	fgores6o
gtuplin3y	psturneym6
gtuplin3y	kboundeyqq
gtuplin3y	bsienel1
gtuplin3y	jewerlo
gtuplin3y	aragateri
gtuplin3y	lgoodrickft
gtuplin3y	rhastelowbc
gtuplin3y	fcobbledickjx
llergan4f	psturneym6
llergan4f	glackemannfp
llergan4f	gpallisteri3
llergan4f	skedslief3
llergan4f	jewerlo
llergan4f	lgoodrickft
llergan4f	dgeerlingfl
llergan4f	londrasek8q
llergan4f	tvaudea
llergan4f	kzumbuschrb
llergan4f	ibozward9z
llergan4f	aragateri
llergan4f	iaustinsp8
llergan4f	nsidwick80
llergan4f	bjanczewskiby
llergan4f	fgores6o
llergan4f	edunneqk
llergan4f	mmacilhargypn
llergan4f	moveraldh
llergan4f	pchienekj
llergan4f	nbezantsmz
llergan4f	cledgerbm
llergan4f	mdelavaletteparisotoi
llergan4f	rhastelowbc
llergan4f	mike
llergan4f	wshooter71
llergan4f	fcobbledickjx
llergan4f	hdartnall3m
llergan4f	jcottonl2
llergan4f	kboundeyqq
llergan4f	mphippen6s
llergan4f	rmacgormanaa
llergan4f	bsienel1
tpeacher4n	skedslief3
tpeacher4n	mike
tpeacher4n	glackemannfp
tpeacher4n	mmacilhargypn
tpeacher4n	rmacgormanaa
tpeacher4n	hdartnall3m
tpeacher4n	nsidwick80
tpeacher4n	dgeerlingfl
tpeacher4n	aragateri
tpeacher4n	moveraldh
tpeacher4n	nbezantsmz
tpeacher4n	londrasek8q
tpeacher4n	psturneym6
tpeacher4n	kboundeyqq
tpeacher4n	edunneqk
tpeacher4n	fcobbledickjx
tpeacher4n	pchienekj
tpeacher4n	gpallisteri3
tpeacher4n	bsienel1
tpeacher4n	mphippen6s
tpeacher4n	bjanczewskiby
tpeacher4n	fgores6o
tpeacher4n	kzumbuschrb
tpeacher4n	mdelavaletteparisotoi
ahamshaw1g	hricartq0
ahamshaw1g	lespinospr
ahamshaw1g	gblyth9g
ahamshaw1g	cknibbsn1
ahamshaw1g	jscamalin
ahamshaw1g	rsleafordgx
ahamshaw1g	cborellic
ahamshaw1g	wcoulthardki
ahamshaw1g	ismaling7f
ahamshaw1g	daimerap
ahamshaw1g	wslides8o
ahamshaw1g	ptemplefz
ahamshaw1g	mleishmanct
ahamshaw1g	abourbonrf
ahamshaw1g	cblasingpu
ahamshaw1g	ebannerbt
ahamshaw1g	bshermarpa
ahamshaw1g	icucksonl9
ahamshaw1g	mghilardiet
ahamshaw1g	dpeetff
ahamshaw1g	theakins2a
ahamshaw1g	goatteskz
ahamshaw1g	sblythindc
ahamshaw1g	deylesk9
ahamshaw1g	kwaggec2
ahamshaw1g	awrathallrg
ahamshaw1g	mdupoyam
ahamshaw1g	jmayworthbj
ahamshaw1g	sthomsonec
ahamshaw1g	sroizht
ahamshaw1g	lmarshlandac
ahamshaw1g	nivanichev6i
ahamshaw1g	cpitcockfb
ahamshaw1g	tbleddoneo
ahamshaw1g	mredhousefn
ahamshaw1g	swillsheekl
ahamshaw1g	gcroppr8
ahamshaw1g	ccraigiehy
ahamshaw1g	jrapier9u
ahamshaw1g	fdaleman9y
ahamshaw1g	agauche7e
ahamshaw1g	efancuttcw
ahamshaw1g	kcartneroq
ahamshaw1g	mshakespear6n
ahamshaw1g	bkingdomqy
ahamshaw1g	cmcgahernl
ahamshaw1g	ehryniewickijr
ahamshaw1g	ktruman73
ahamshaw1g	rwoakesbv
ahamshaw1g	jgilroyjq
ahamshaw1g	mcastan70
ahamshaw1g	abigriggiz
ahamshaw1g	cgierckeoy
ahamshaw1g	npollitti9
ahamshaw1g	mdecristofalom7
ahamshaw1g	smcnabbda
ahamshaw1g	bgloucester8j
ahamshaw1g	csmelliehv
ahamshaw1g	nhewlingsp0
ahamshaw1g	ngrishagina5
ahamshaw1g	lboothlp
ahamshaw1g	lconnollyfa
ahamshaw1g	acherrieai
ahamshaw1g	rstonesgr
ahamshaw1g	htuttps
ahamshaw1g	cnewalln9
ahamshaw1g	ccaldowp2
ahamshaw1g	cthorogood6m
ahamshaw1g	btrevaskuskk
ahamshaw1g	cshacklegw
ahamshaw1g	emcvittyny
ahamshaw1g	ameffinp6
ahamshaw1g	ntynanfy
ahamshaw1g	aabramski7
ahamshaw1g	onewarkbl
ahamshaw1g	nhaslockev
ahamshaw1g	hlemmerst
ahamshaw1g	jgouldenc5
ahamshaw1g	imegarrell98
ahamshaw1g	ebriked
ahamshaw1g	mvileal
ahamshaw1g	dgallichankn
ahamshaw1g	jchandersdr
ahamshaw1g	sposvnerku
ahamshaw1g	rgomersallfq
ahamshaw1g	kkopkerq
ahamshaw1g	lpickrillof
ahamshaw1g	pcraftshx
ahamshaw1g	azottoliio
ahamshaw1g	gshaylerql
ahamshaw1g	abrisleyab
ahamshaw1g	sfearnsidel0
ahamshaw1g	tgutteridgecc
ahamshaw1g	bmowsdillg3
ahamshaw1g	jriddickcx
ahamshaw1g	mempringhamav
ahamshaw1g	dtyndallhr
ahamshaw1g	lkryskax
ahamshaw1g	gabbetth3
ahamshaw1g	vpilsworth6p
ahamshaw1g	msitford74
ahamshaw1g	mmuatj3
ahamshaw1g	brayerj1
ahamshaw1g	mschuckmg
ahamshaw1g	jsimcoxja
ahamshaw1g	ltreecen5
ahamshaw1g	ktamesd1
ahamshaw1g	kbenner8n
ahamshaw1g	gaustoni0
ahamshaw1g	ecurrmmj
ahamshaw1g	sfinanm5
ahamshaw1g	cbroadbere9t
ahamshaw1g	edambrosilq
ahamshaw1g	coxshottas
ahamshaw1g	egrayera3
ahamshaw1g	mbalecv
ahamshaw1g	dovisenl
ahamshaw1g	jovery6a
ahamshaw1g	hugloweu
ahamshaw1g	laptedid
ahamshaw1g	lgeeritzpc
ahamshaw1g	jmowbrayge
ahamshaw1g	emerrittqw
ahamshaw1g	rgillesonq9
ahamshaw1g	dloughanh0
ahamshaw1g	rnormanvell6y
ahamshaw1g	rpergensjs
ahamshaw1g	gwyllieq2
ahamshaw1g	mwheeldoneb
ahamshaw1g	rbirts7o
ahamshaw1g	spraundlck
ahamshaw1g	gsimanh
ahamshaw1g	smachostedq
ahamshaw1g	fdovingtonk2
ahamshaw1g	ksayse6k
ahamshaw1g	bswaylandd6
ahamshaw1g	cverner79
ahamshaw1g	idownsel7
ahamshaw1g	bjaggia1
ahamshaw1g	atolmanj0
ahamshaw1g	edallin5
ahamshaw1g	lambrodinv
ahamshaw1g	borneblow4u
ahamshaw1g	lwaulker8r
ahamshaw1g	eberdaleqp
ahamshaw1g	cwartonbyrp
ahamshaw1g	cknibbsgi
ktock1c	cwartonbyrp
ktock1c	ntynanfy
ktock1c	sthomsonec
ktock1c	jchandersdr
ktock1c	gcroppr8
ktock1c	hricartq0
ktock1c	ptemplefz
ktock1c	nivanichev6i
ktock1c	smachostedq
ktock1c	gwyllieq2
ktock1c	lespinospr
ktock1c	cverner79
ktock1c	bswaylandd6
ktock1c	spraundlck
ktock1c	gsimanh
ktock1c	cmcgahernl
ktock1c	fdovingtonk2
ktock1c	lgeeritzpc
ktock1c	sfearnsidel0
ktock1c	mbalecv
ktock1c	edallin5
ktock1c	cknibbsn1
ktock1c	sfinanm5
ktock1c	theakins2a
ktock1c	abigriggiz
ktock1c	mdupoyam
ktock1c	icucksonl9
ktock1c	mdecristofalom7
ktock1c	idownsel7
ktock1c	jriddickcx
ktock1c	mvileal
ktock1c	azottoliio
ktock1c	ktamesd1
ktock1c	agauche7e
ktock1c	sroizht
ktock1c	jmayworthbj
ktock1c	cknibbsgi
ktock1c	dgallichankn
ktock1c	npollitti9
ktock1c	lwaulker8r
ktock1c	lboothlp
ktock1c	mschuckmg
ktock1c	abourbonrf
ktock1c	lkryskax
ktock1c	jmowbrayge
ktock1c	jovery6a
ktock1c	ccraigiehy
ktock1c	gaustoni0
ktock1c	borneblow4u
ktock1c	efancuttcw
ktock1c	rwoakesbv
ktock1c	bmowsdillg3
ktock1c	dloughanh0
ktock1c	ccaldowp2
ktock1c	hugloweu
ktock1c	daimerap
ktock1c	cbroadbere9t
ktock1c	dpeetff
ktock1c	rgomersallfq
ktock1c	acherrieai
ktock1c	gblyth9g
ktock1c	mempringhamav
ktock1c	rsleafordgx
ktock1c	rpergensjs
ktock1c	pcraftshx
ktock1c	onewarkbl
ktock1c	dovisenl
ktock1c	bgloucester8j
ktock1c	cshacklegw
ktock1c	fdaleman9y
ktock1c	smcnabbda
ktock1c	tbleddoneo
ktock1c	jrapier9u
ktock1c	rgillesonq9
ktock1c	aabramski7
ktock1c	cpitcockfb
ktock1c	emcvittyny
ktock1c	nhewlingsp0
ktock1c	jsimcoxja
ktock1c	hlemmerst
ktock1c	lambrodinv
ktock1c	lconnollyfa
ktock1c	bshermarpa
ktock1c	kkopkerq
ktock1c	rnormanvell6y
ktock1c	vpilsworth6p
ktock1c	goatteskz
ktock1c	msitford74
ktock1c	cblasingpu
ktock1c	ecurrmmj
ktock1c	gabbetth3
ktock1c	jscamalin
ktock1c	ismaling7f
ktock1c	atolmanj0
ktock1c	egrayera3
ktock1c	jgilroyjq
ktock1c	nhaslockev
ktock1c	ehryniewickijr
ktock1c	cborellic
ktock1c	mwheeldoneb
ktock1c	cgierckeoy
ktock1c	kbenner8n
ktock1c	cnewalln9
ktock1c	ngrishagina5
ktock1c	brayerj1
ktock1c	bjaggia1
ktock1c	kwaggec2
ktock1c	mcastan70
ktock1c	eberdaleqp
ktock1c	sblythindc
ktock1c	mredhousefn
ktock1c	kcartneroq
ktock1c	ebriked
ktock1c	btrevaskuskk
ktock1c	dtyndallhr
ktock1c	mghilardiet
ktock1c	imegarrell98
ktock1c	mshakespear6n
ktock1c	deylesk9
ktock1c	lmarshlandac
ktock1c	wcoulthardki
ktock1c	tgutteridgecc
ktock1c	mmuatj3
ktock1c	swillsheekl
ktock1c	rbirts7o
ktock1c	cthorogood6m
ktock1c	csmelliehv
ktock1c	lpickrillof
ktock1c	sposvnerku
ktock1c	ksayse6k
ktock1c	gshaylerql
ktock1c	bffoulkesjo
ktock1c	abrisleyab
ktock1c	htuttps
ktock1c	mleishmanct
ktock1c	ebannerbt
ktock1c	rstonesgr
ktock1c	wslides8o
ktock1c	laptedid
ktock1c	bkingdomqy
ktock1c	coxshottas
ktock1c	jgouldenc5
ktock1c	emerrittqw
ktock1c	awrathallrg
ktock1c	ktruman73
ktock1c	edambrosilq
ktock1c	ltreecen5
ktock1c	ameffinp6
ejeavon21	nhaslockev
ejeavon21	rsleafordgx
ejeavon21	deylesk9
ejeavon21	gwyllieq2
ejeavon21	msitford74
ejeavon21	bshermarpa
ejeavon21	coxshottas
ejeavon21	rgomersallfq
ejeavon21	awrathallrg
ejeavon21	rnormanvell6y
ejeavon21	rstonesgr
ejeavon21	atolmanj0
ejeavon21	mdupoyam
ejeavon21	bgloucester8j
ejeavon21	wslides8o
ejeavon21	dovisenl
ejeavon21	ktruman73
ejeavon21	eberdaleqp
ejeavon21	daimerap
ejeavon21	cborellic
ejeavon21	mvileal
ejeavon21	abigriggiz
ejeavon21	ccaldowp2
ejeavon21	cblasingpu
ejeavon21	imegarrell98
ejeavon21	fdaleman9y
ejeavon21	borneblow4u
ejeavon21	cshacklegw
ejeavon21	mdecristofalom7
ejeavon21	sblythindc
ejeavon21	lespinospr
ejeavon21	dloughanh0
ejeavon21	mwheeldoneb
ejeavon21	jmowbrayge
ejeavon21	gsimanh
ejeavon21	ebannerbt
ejeavon21	kcartneroq
ejeavon21	gshaylerql
ejeavon21	azottoliio
ejeavon21	emcvittyny
ejeavon21	ccraigiehy
ejeavon21	ngrishagina5
ejeavon21	edallin5
ejeavon21	cknibbsn1
ejeavon21	ltreecen5
ejeavon21	brayerj1
ejeavon21	jsimcoxja
ejeavon21	mempringhamav
ejeavon21	kbenner8n
ejeavon21	goatteskz
ejeavon21	vpilsworth6p
ejeavon21	bswaylandd6
ejeavon21	ismaling7f
ejeavon21	smcnabbda
ejeavon21	mbalecv
ejeavon21	sthomsonec
ejeavon21	dgallichankn
ejeavon21	ksayse6k
ejeavon21	acherrieai
ejeavon21	bjaggia1
ejeavon21	fdovingtonk2
ejeavon21	agauche7e
ejeavon21	csmelliehv
ejeavon21	abrisleyab
ejeavon21	sfearnsidel0
ejeavon21	cbroadbere9t
ejeavon21	cgierckeoy
ejeavon21	jrapier9u
ejeavon21	hricartq0
ejeavon21	ebriked
ejeavon21	tbleddoneo
ejeavon21	icucksonl9
ejeavon21	mschuckmg
ejeavon21	abourbonrf
ejeavon21	theakins2a
ejeavon21	cpitcockfb
ejeavon21	jovery6a
ejeavon21	mcastan70
ejeavon21	cnewalln9
ejeavon21	efancuttcw
ejeavon21	cthorogood6m
ejeavon21	lgeeritzpc
ejeavon21	sroizht
ejeavon21	ameffinp6
ejeavon21	mshakespear6n
ejeavon21	smachostedq
ejeavon21	lmarshlandac
ejeavon21	idownsel7
ejeavon21	jscamalin
ejeavon21	ktamesd1
ejeavon21	cwartonbyrp
ejeavon21	lambrodinv
ejeavon21	hlemmerst
ejeavon21	jgilroyjq
ejeavon21	ecurrmmj
ejeavon21	rwoakesbv
ejeavon21	emerrittqw
ejeavon21	spraundlck
ejeavon21	btrevaskuskk
ejeavon21	nivanichev6i
ejeavon21	ehryniewickijr
ejeavon21	mredhousefn
ejeavon21	rpergensjs
ejeavon21	gaustoni0
ejeavon21	kwaggec2
ejeavon21	cmcgahernl
ejeavon21	htuttps
ejeavon21	bkingdomqy
ejeavon21	ntynanfy
ejeavon21	ptemplefz
ejeavon21	cknibbsgi
ejeavon21	lkryskax
ejeavon21	onewarkbl
ejeavon21	mleishmanct
ejeavon21	nhewlingsp0
ejeavon21	sposvnerku
ejeavon21	aabramski7
ejeavon21	mmuatj3
ejeavon21	dtyndallhr
ejeavon21	egrayera3
ejeavon21	rbirts7o
ejeavon21	swillsheekl
ejeavon21	jchandersdr
ejeavon21	rgillesonq9
ejeavon21	bmowsdillg3
ejeavon21	lpickrillof
ejeavon21	lboothlp
ejeavon21	jriddickcx
ejeavon21	laptedid
ejeavon21	lwaulker8r
ejeavon21	bffoulkesjo
ejeavon21	hugloweu
ejeavon21	gcroppr8
ejeavon21	jmayworthbj
ejeavon21	edambrosilq
ejeavon21	gblyth9g
ejeavon21	sfinanm5
ejeavon21	wcoulthardki
ejeavon21	dpeetff
ejeavon21	tgutteridgecc
ejeavon21	mghilardiet
ejeavon21	cverner79
ejeavon21	gabbetth3
ejeavon21	jgouldenc5
ejeavon21	npollitti9
ejeavon21	lconnollyfa
ejeavon21	pcraftshx
ejeavon21	kkopkerq
dfarington2j	sfearnsidel0
dfarington2j	tbleddoneo
dfarington2j	rwoakesbv
dfarington2j	cnewalln9
dfarington2j	sblythindc
dfarington2j	mcastan70
dfarington2j	onewarkbl
dfarington2j	atolmanj0
dfarington2j	idownsel7
dfarington2j	cblasingpu
dfarington2j	coxshottas
dfarington2j	laptedid
dfarington2j	ksayse6k
dfarington2j	mdecristofalom7
dfarington2j	jchandersdr
dfarington2j	emerrittqw
dfarington2j	mshakespear6n
dfarington2j	mmuatj3
dfarington2j	aabramski7
dfarington2j	mwheeldoneb
dfarington2j	hlemmerst
dfarington2j	ktruman73
dfarington2j	dpeetff
dfarington2j	spraundlck
dfarington2j	agauche7e
dfarington2j	mschuckmg
dfarington2j	bjaggia1
dfarington2j	fdovingtonk2
dfarington2j	ltreecen5
dfarington2j	abrisleyab
dfarington2j	wcoulthardki
dfarington2j	dovisenl
dfarington2j	mempringhamav
dfarington2j	cgierckeoy
dfarington2j	theakins2a
dfarington2j	ccaldowp2
dfarington2j	gcroppr8
dfarington2j	bmowsdillg3
dfarington2j	sroizht
dfarington2j	cbroadbere9t
dfarington2j	ccraigiehy
dfarington2j	abourbonrf
dfarington2j	tgutteridgecc
dfarington2j	jscamalin
dfarington2j	bkingdomqy
dfarington2j	bgloucester8j
dfarington2j	htuttps
dfarington2j	brayerj1
dfarington2j	mdupoyam
dfarington2j	csmelliehv
dfarington2j	cknibbsgi
dfarington2j	nivanichev6i
dfarington2j	cthorogood6m
dfarington2j	rnormanvell6y
dfarington2j	rstonesgr
dfarington2j	emcvittyny
dfarington2j	hugloweu
dfarington2j	abigriggiz
dfarington2j	msitford74
dfarington2j	edallin5
dfarington2j	dgallichankn
dfarington2j	cverner79
dfarington2j	vpilsworth6p
dfarington2j	jsimcoxja
dfarington2j	kbenner8n
dfarington2j	kkopkerq
dfarington2j	jriddickcx
dfarington2j	imegarrell98
dfarington2j	rpergensjs
dfarington2j	swillsheekl
dfarington2j	deylesk9
dfarington2j	btrevaskuskk
dfarington2j	gblyth9g
dfarington2j	azottoliio
dfarington2j	gaustoni0
dfarington2j	ecurrmmj
dfarington2j	daimerap
dfarington2j	rsleafordgx
dfarington2j	smcnabbda
dfarington2j	lespinospr
dfarington2j	gshaylerql
dfarington2j	nhewlingsp0
dfarington2j	kwaggec2
dfarington2j	awrathallrg
dfarington2j	ntynanfy
dfarington2j	jgilroyjq
dfarington2j	wslides8o
dfarington2j	rgomersallfq
dfarington2j	ehryniewickijr
dfarington2j	hricartq0
dfarington2j	ngrishagina5
dfarington2j	cshacklegw
dfarington2j	nhaslockev
dfarington2j	mvileal
dfarington2j	sthomsonec
dfarington2j	eberdaleqp
dfarington2j	gsimanh
dfarington2j	lpickrillof
dfarington2j	dloughanh0
dfarington2j	bshermarpa
dfarington2j	lboothlp
dfarington2j	cpitcockfb
dfarington2j	lmarshlandac
dfarington2j	borneblow4u
dfarington2j	jmowbrayge
dfarington2j	cborellic
dfarington2j	cmcgahernl
dfarington2j	ptemplefz
dfarington2j	ebannerbt
dfarington2j	kcartneroq
dfarington2j	mleishmanct
dfarington2j	efancuttcw
dfarington2j	mbalecv
dfarington2j	rgillesonq9
dfarington2j	jrapier9u
dfarington2j	npollitti9
dfarington2j	cwartonbyrp
dfarington2j	egrayera3
dfarington2j	ebriked
dfarington2j	ameffinp6
dfarington2j	edambrosilq
dfarington2j	acherrieai
dfarington2j	sfinanm5
dfarington2j	gabbetth3
dfarington2j	lambrodinv
dfarington2j	gwyllieq2
dfarington2j	icucksonl9
dfarington2j	jmayworthbj
dfarington2j	bffoulkesjo
dfarington2j	goatteskz
dfarington2j	lgeeritzpc
dfarington2j	dtyndallhr
dfarington2j	mredhousefn
dfarington2j	sposvnerku
dfarington2j	mghilardiet
dfarington2j	jovery6a
dfarington2j	ismaling7f
dfarington2j	pcraftshx
dfarington2j	cknibbsn1
dfarington2j	jgouldenc5
dfarington2j	ktamesd1
dfarington2j	lkryskax
dfarington2j	lwaulker8r
dfarington2j	rbirts7o
dfarington2j	smachostedq
dfarington2j	fdaleman9y
dfarington2j	bswaylandd6
dfarington2j	lconnollyfa
poldknow2z	bffoulkesjo
poldknow2z	mcastan70
poldknow2z	bmowsdillg3
poldknow2z	gwyllieq2
poldknow2z	jmayworthbj
poldknow2z	mwheeldoneb
poldknow2z	cshacklegw
poldknow2z	vpilsworth6p
poldknow2z	ismaling7f
poldknow2z	lambrodinv
poldknow2z	mghilardiet
poldknow2z	dtyndallhr
poldknow2z	rwoakesbv
poldknow2z	azottoliio
poldknow2z	cblasingpu
poldknow2z	lpickrillof
poldknow2z	edallin5
poldknow2z	sposvnerku
poldknow2z	theakins2a
poldknow2z	csmelliehv
poldknow2z	mredhousefn
poldknow2z	kcartneroq
poldknow2z	ccaldowp2
poldknow2z	efancuttcw
poldknow2z	rgomersallfq
poldknow2z	rbirts7o
poldknow2z	kbenner8n
poldknow2z	jgilroyjq
poldknow2z	abigriggiz
poldknow2z	tgutteridgecc
poldknow2z	cverner79
poldknow2z	gabbetth3
poldknow2z	idownsel7
poldknow2z	agauche7e
poldknow2z	ltreecen5
poldknow2z	hlemmerst
poldknow2z	jriddickcx
poldknow2z	brayerj1
poldknow2z	kwaggec2
poldknow2z	ksayse6k
poldknow2z	cborellic
poldknow2z	bkingdomqy
poldknow2z	rsleafordgx
poldknow2z	lboothlp
poldknow2z	ebannerbt
poldknow2z	msitford74
poldknow2z	fdovingtonk2
poldknow2z	sthomsonec
poldknow2z	wcoulthardki
poldknow2z	eberdaleqp
poldknow2z	smcnabbda
poldknow2z	tbleddoneo
poldknow2z	ebriked
poldknow2z	cmcgahernl
poldknow2z	ntynanfy
poldknow2z	wslides8o
poldknow2z	cnewalln9
poldknow2z	rnormanvell6y
poldknow2z	ktruman73
poldknow2z	cgierckeoy
poldknow2z	egrayera3
poldknow2z	bgloucester8j
poldknow2z	ktamesd1
poldknow2z	atolmanj0
poldknow2z	lmarshlandac
poldknow2z	gsimanh
poldknow2z	lgeeritzpc
poldknow2z	spraundlck
poldknow2z	onewarkbl
poldknow2z	gcroppr8
poldknow2z	acherrieai
poldknow2z	swillsheekl
poldknow2z	bshermarpa
poldknow2z	cbroadbere9t
poldknow2z	aabramski7
poldknow2z	ngrishagina5
poldknow2z	npollitti9
poldknow2z	btrevaskuskk
poldknow2z	ecurrmmj
poldknow2z	gshaylerql
poldknow2z	borneblow4u
poldknow2z	imegarrell98
poldknow2z	lespinospr
poldknow2z	hugloweu
poldknow2z	sfearnsidel0
poldknow2z	dovisenl
poldknow2z	mdupoyam
poldknow2z	deylesk9
poldknow2z	smachostedq
poldknow2z	abourbonrf
poldknow2z	cthorogood6m
poldknow2z	jgouldenc5
poldknow2z	awrathallrg
poldknow2z	pcraftshx
poldknow2z	jmowbrayge
poldknow2z	htuttps
poldknow2z	icucksonl9
poldknow2z	ptemplefz
poldknow2z	sblythindc
poldknow2z	mleishmanct
poldknow2z	mschuckmg
poldknow2z	rgillesonq9
poldknow2z	laptedid
poldknow2z	rstonesgr
poldknow2z	cpitcockfb
poldknow2z	jsimcoxja
poldknow2z	ehryniewickijr
poldknow2z	rpergensjs
poldknow2z	mbalecv
poldknow2z	emerrittqw
poldknow2z	cwartonbyrp
poldknow2z	jrapier9u
poldknow2z	sroizht
poldknow2z	mdecristofalom7
poldknow2z	emcvittyny
poldknow2z	lconnollyfa
poldknow2z	nivanichev6i
poldknow2z	jchandersdr
poldknow2z	dpeetff
poldknow2z	hricartq0
poldknow2z	coxshottas
poldknow2z	kkopkerq
poldknow2z	goatteskz
poldknow2z	jovery6a
poldknow2z	mvileal
poldknow2z	mempringhamav
poldknow2z	gaustoni0
poldknow2z	edambrosilq
poldknow2z	mshakespear6n
poldknow2z	nhewlingsp0
poldknow2z	nhaslockev
poldknow2z	lkryskax
poldknow2z	ameffinp6
poldknow2z	cknibbsn1
poldknow2z	sfinanm5
poldknow2z	daimerap
poldknow2z	dgallichankn
poldknow2z	lwaulker8r
poldknow2z	mmuatj3
poldknow2z	jscamalin
poldknow2z	gblyth9g
poldknow2z	bjaggia1
poldknow2z	fdaleman9y
poldknow2z	abrisleyab
poldknow2z	dloughanh0
poldknow2z	bswaylandd6
poldknow2z	cknibbsgi
poldknow2z	ccraigiehy
cdahlberg30	cthorogood6m
cdahlberg30	ehryniewickijr
cdahlberg30	gsimanh
cdahlberg30	cshacklegw
cdahlberg30	gwyllieq2
cdahlberg30	ebriked
cdahlberg30	emcvittyny
cdahlberg30	mghilardiet
cdahlberg30	abrisleyab
cdahlberg30	tgutteridgecc
cdahlberg30	nhewlingsp0
cdahlberg30	bgloucester8j
cdahlberg30	gblyth9g
cdahlberg30	wslides8o
cdahlberg30	ltreecen5
cdahlberg30	hugloweu
cdahlberg30	kwaggec2
cdahlberg30	fdovingtonk2
cdahlberg30	jovery6a
cdahlberg30	mredhousefn
cdahlberg30	ecurrmmj
cdahlberg30	lgeeritzpc
cdahlberg30	mwheeldoneb
cdahlberg30	borneblow4u
cdahlberg30	abourbonrf
cdahlberg30	eberdaleqp
cdahlberg30	cgierckeoy
cdahlberg30	htuttps
cdahlberg30	gaustoni0
cdahlberg30	imegarrell98
cdahlberg30	dovisenl
cdahlberg30	nhaslockev
cdahlberg30	sblythindc
cdahlberg30	hlemmerst
cdahlberg30	wcoulthardki
cdahlberg30	mcastan70
cdahlberg30	vpilsworth6p
cdahlberg30	nivanichev6i
cdahlberg30	smachostedq
cdahlberg30	ntynanfy
cdahlberg30	mempringhamav
cdahlberg30	agauche7e
cdahlberg30	awrathallrg
cdahlberg30	ptemplefz
cdahlberg30	npollitti9
cdahlberg30	sfearnsidel0
cdahlberg30	atolmanj0
cdahlberg30	tbleddoneo
cdahlberg30	ebannerbt
cdahlberg30	gabbetth3
cdahlberg30	sroizht
cdahlberg30	mdecristofalom7
cdahlberg30	jchandersdr
cdahlberg30	sposvnerku
cdahlberg30	coxshottas
cdahlberg30	lconnollyfa
cdahlberg30	ccraigiehy
cdahlberg30	bffoulkesjo
cdahlberg30	emerrittqw
cdahlberg30	mdupoyam
cdahlberg30	mvileal
cdahlberg30	abigriggiz
cdahlberg30	icucksonl9
cdahlberg30	rstonesgr
cdahlberg30	msitford74
cdahlberg30	bswaylandd6
cdahlberg30	cverner79
cdahlberg30	lambrodinv
cdahlberg30	ismaling7f
cdahlberg30	rbirts7o
cdahlberg30	dtyndallhr
cdahlberg30	jriddickcx
cdahlberg30	cnewalln9
cdahlberg30	brayerj1
cdahlberg30	sfinanm5
cdahlberg30	mleishmanct
cdahlberg30	acherrieai
cdahlberg30	bshermarpa
cdahlberg30	ccaldowp2
cdahlberg30	swillsheekl
cdahlberg30	ngrishagina5
cdahlberg30	mshakespear6n
cdahlberg30	egrayera3
cdahlberg30	lpickrillof
cdahlberg30	jsimcoxja
cdahlberg30	jmayworthbj
cdahlberg30	ameffinp6
cdahlberg30	jmowbrayge
cdahlberg30	lwaulker8r
cdahlberg30	cbroadbere9t
cdahlberg30	spraundlck
cdahlberg30	cpitcockfb
cdahlberg30	efancuttcw
cdahlberg30	dloughanh0
cdahlberg30	rnormanvell6y
cdahlberg30	sthomsonec
cdahlberg30	jrapier9u
cdahlberg30	btrevaskuskk
cdahlberg30	cborellic
cdahlberg30	idownsel7
cdahlberg30	edambrosilq
cdahlberg30	lboothlp
cdahlberg30	hricartq0
cdahlberg30	goatteskz
cdahlberg30	daimerap
cdahlberg30	azottoliio
cdahlberg30	edallin5
cdahlberg30	bkingdomqy
cdahlberg30	rgillesonq9
cdahlberg30	dgallichankn
cdahlberg30	deylesk9
cdahlberg30	lmarshlandac
cdahlberg30	pcraftshx
cdahlberg30	ksayse6k
cdahlberg30	cknibbsn1
cdahlberg30	mmuatj3
cdahlberg30	kkopkerq
cdahlberg30	cwartonbyrp
cdahlberg30	theakins2a
cdahlberg30	onewarkbl
cdahlberg30	bmowsdillg3
cdahlberg30	dpeetff
cdahlberg30	ktamesd1
cdahlberg30	smcnabbda
cdahlberg30	lkryskax
cdahlberg30	cknibbsgi
cdahlberg30	jscamalin
cdahlberg30	mbalecv
cdahlberg30	csmelliehv
cdahlberg30	gcroppr8
cdahlberg30	jgouldenc5
cdahlberg30	rpergensjs
cdahlberg30	ktruman73
cdahlberg30	lespinospr
cdahlberg30	rsleafordgx
cdahlberg30	jgilroyjq
cdahlberg30	fdaleman9y
cdahlberg30	mschuckmg
cdahlberg30	gshaylerql
cdahlberg30	rwoakesbv
cdahlberg30	aabramski7
cdahlberg30	cmcgahernl
cdahlberg30	laptedid
cdahlberg30	rgomersallfq
cdahlberg30	bjaggia1
cdahlberg30	kcartneroq
cdahlberg30	cblasingpu
cdahlberg30	kbenner8n
twynn20	daimerap
twynn20	atolmanj0
twynn20	sfearnsidel0
twynn20	lgeeritzpc
twynn20	mbalecv
twynn20	mempringhamav
twynn20	ebannerbt
twynn20	cnewalln9
twynn20	smcnabbda
twynn20	dpeetff
twynn20	ismaling7f
twynn20	lkryskax
twynn20	cbroadbere9t
twynn20	mcastan70
twynn20	ebriked
twynn20	jsimcoxja
twynn20	lpickrillof
twynn20	ptemplefz
twynn20	bgloucester8j
twynn20	bshermarpa
twynn20	mredhousefn
twynn20	tgutteridgecc
twynn20	sthomsonec
twynn20	imegarrell98
twynn20	emerrittqw
twynn20	mwheeldoneb
twynn20	awrathallrg
twynn20	npollitti9
twynn20	ccraigiehy
twynn20	rpergensjs
twynn20	cgierckeoy
twynn20	htuttps
twynn20	cmcgahernl
twynn20	kbenner8n
twynn20	sblythindc
twynn20	cverner79
twynn20	mleishmanct
twynn20	sposvnerku
twynn20	sfinanm5
twynn20	gaustoni0
twynn20	jmayworthbj
twynn20	icucksonl9
twynn20	csmelliehv
twynn20	mschuckmg
twynn20	jovery6a
twynn20	efancuttcw
twynn20	edallin5
twynn20	coxshottas
twynn20	wslides8o
twynn20	lboothlp
twynn20	ecurrmmj
twynn20	lmarshlandac
twynn20	gblyth9g
twynn20	emcvittyny
twynn20	dovisenl
twynn20	onewarkbl
twynn20	kcartneroq
twynn20	fdovingtonk2
twynn20	deylesk9
twynn20	wcoulthardki
twynn20	abourbonrf
twynn20	eberdaleqp
twynn20	jriddickcx
twynn20	jgilroyjq
twynn20	rbirts7o
twynn20	rsleafordgx
twynn20	vpilsworth6p
twynn20	ktruman73
twynn20	bkingdomqy
twynn20	gshaylerql
twynn20	sroizht
twynn20	jscamalin
twynn20	rwoakesbv
twynn20	ngrishagina5
twynn20	agauche7e
twynn20	cborellic
twynn20	nhewlingsp0
twynn20	hricartq0
twynn20	mmuatj3
twynn20	abrisleyab
twynn20	dgallichankn
twynn20	nivanichev6i
twynn20	cthorogood6m
twynn20	aabramski7
twynn20	egrayera3
twynn20	borneblow4u
twynn20	nhaslockev
twynn20	spraundlck
twynn20	gabbetth3
twynn20	bffoulkesjo
twynn20	gsimanh
twynn20	goatteskz
twynn20	mdecristofalom7
twynn20	jgouldenc5
twynn20	ameffinp6
twynn20	jmowbrayge
twynn20	mshakespear6n
twynn20	kkopkerq
twynn20	cknibbsgi
twynn20	rgomersallfq
twynn20	cpitcockfb
twynn20	mvileal
twynn20	dloughanh0
twynn20	lespinospr
twynn20	gcroppr8
twynn20	rnormanvell6y
twynn20	cshacklegw
twynn20	acherrieai
twynn20	fdaleman9y
twynn20	edambrosilq
twynn20	bswaylandd6
twynn20	cwartonbyrp
twynn20	btrevaskuskk
twynn20	hugloweu
twynn20	lwaulker8r
twynn20	cblasingpu
twynn20	bmowsdillg3
twynn20	theakins2a
twynn20	ktamesd1
twynn20	azottoliio
twynn20	dtyndallhr
twynn20	mghilardiet
twynn20	ntynanfy
twynn20	brayerj1
twynn20	ksayse6k
twynn20	jchandersdr
twynn20	idownsel7
twynn20	jrapier9u
twynn20	lconnollyfa
twynn20	abigriggiz
twynn20	ehryniewickijr
twynn20	mdupoyam
twynn20	bjaggia1
twynn20	rgillesonq9
twynn20	swillsheekl
twynn20	laptedid
twynn20	rstonesgr
twynn20	smachostedq
twynn20	gwyllieq2
twynn20	hlemmerst
twynn20	ccaldowp2
twynn20	tbleddoneo
twynn20	cknibbsn1
twynn20	msitford74
twynn20	ltreecen5
twynn20	kwaggec2
twynn20	pcraftshx
twynn20	lambrodinv
mpybus3c	bffoulkesjo
mpybus3c	tgutteridgecc
mpybus3c	rgillesonq9
mpybus3c	kcartneroq
mpybus3c	jsimcoxja
mpybus3c	msitford74
mpybus3c	aabramski7
mpybus3c	sroizht
mpybus3c	mredhousefn
mpybus3c	laptedid
mpybus3c	npollitti9
mpybus3c	gaustoni0
mpybus3c	rstonesgr
mpybus3c	csmelliehv
mpybus3c	deylesk9
mpybus3c	ebriked
mpybus3c	brayerj1
mpybus3c	cpitcockfb
mpybus3c	theakins2a
mpybus3c	edambrosilq
mpybus3c	icucksonl9
mpybus3c	jmowbrayge
mpybus3c	emerrittqw
mpybus3c	fdovingtonk2
mpybus3c	jovery6a
mpybus3c	gsimanh
mpybus3c	jscamalin
mpybus3c	bswaylandd6
mpybus3c	egrayera3
mpybus3c	hugloweu
mpybus3c	lkryskax
mpybus3c	gwyllieq2
mpybus3c	jrapier9u
mpybus3c	coxshottas
mpybus3c	jchandersdr
mpybus3c	dtyndallhr
mpybus3c	borneblow4u
mpybus3c	sthomsonec
mpybus3c	tbleddoneo
mpybus3c	lambrodinv
mpybus3c	bshermarpa
mpybus3c	smcnabbda
mpybus3c	kkopkerq
mpybus3c	mdecristofalom7
mpybus3c	ismaling7f
mpybus3c	emcvittyny
mpybus3c	smachostedq
mpybus3c	jgilroyjq
mpybus3c	sblythindc
mpybus3c	mmuatj3
mpybus3c	lboothlp
mpybus3c	mcastan70
mpybus3c	sfinanm5
mpybus3c	bgloucester8j
mpybus3c	ehryniewickijr
mpybus3c	jgouldenc5
mpybus3c	ktruman73
mpybus3c	abigriggiz
mpybus3c	cwartonbyrp
mpybus3c	cmcgahernl
mpybus3c	ccraigiehy
mpybus3c	swillsheekl
mpybus3c	imegarrell98
mpybus3c	ameffinp6
mpybus3c	nhewlingsp0
mpybus3c	lmarshlandac
mpybus3c	spraundlck
mpybus3c	lconnollyfa
mpybus3c	lpickrillof
mpybus3c	mghilardiet
mpybus3c	ebannerbt
mpybus3c	atolmanj0
mpybus3c	rwoakesbv
mpybus3c	mschuckmg
mpybus3c	kwaggec2
mpybus3c	jmayworthbj
mpybus3c	acherrieai
mpybus3c	abourbonrf
mpybus3c	ltreecen5
mpybus3c	eberdaleqp
mpybus3c	mempringhamav
mpybus3c	cnewalln9
mpybus3c	ktamesd1
mpybus3c	dloughanh0
mpybus3c	agauche7e
mpybus3c	rnormanvell6y
mpybus3c	vpilsworth6p
mpybus3c	goatteskz
mpybus3c	hricartq0
mpybus3c	idownsel7
mpybus3c	gabbetth3
mpybus3c	edallin5
mpybus3c	lespinospr
mpybus3c	cknibbsn1
mpybus3c	cgierckeoy
mpybus3c	ngrishagina5
mpybus3c	pcraftshx
mpybus3c	gcroppr8
mpybus3c	efancuttcw
mpybus3c	mbalecv
mpybus3c	jriddickcx
mpybus3c	bjaggia1
mpybus3c	nhaslockev
mpybus3c	mdupoyam
mpybus3c	sfearnsidel0
mpybus3c	cshacklegw
mpybus3c	fdaleman9y
mpybus3c	hlemmerst
mpybus3c	bkingdomqy
mpybus3c	rbirts7o
mpybus3c	cbroadbere9t
mpybus3c	wslides8o
mpybus3c	cknibbsgi
mpybus3c	ntynanfy
mpybus3c	cthorogood6m
mpybus3c	rsleafordgx
mpybus3c	kbenner8n
mpybus3c	azottoliio
mpybus3c	mshakespear6n
mpybus3c	cborellic
mpybus3c	rpergensjs
mpybus3c	dovisenl
mpybus3c	cverner79
mpybus3c	dgallichankn
mpybus3c	ecurrmmj
mpybus3c	awrathallrg
mpybus3c	ksayse6k
mpybus3c	wcoulthardki
mpybus3c	onewarkbl
mpybus3c	daimerap
mpybus3c	gshaylerql
mpybus3c	dpeetff
mpybus3c	ccaldowp2
mpybus3c	htuttps
mpybus3c	sposvnerku
mpybus3c	ptemplefz
mpybus3c	mwheeldoneb
mpybus3c	lgeeritzpc
mpybus3c	gblyth9g
mpybus3c	lwaulker8r
mpybus3c	btrevaskuskk
mpybus3c	mvileal
mpybus3c	cblasingpu
mpybus3c	bmowsdillg3
agregh17	vpilsworth6p
agregh17	dpeetff
agregh17	cthorogood6m
agregh17	kkopkerq
agregh17	jmayworthbj
agregh17	goatteskz
agregh17	laptedid
agregh17	cnewalln9
agregh17	cwartonbyrp
agregh17	sfinanm5
agregh17	atolmanj0
agregh17	cgierckeoy
agregh17	bgloucester8j
agregh17	dloughanh0
agregh17	wcoulthardki
agregh17	bshermarpa
agregh17	mdupoyam
agregh17	btrevaskuskk
agregh17	gabbetth3
agregh17	mdecristofalom7
agregh17	ebriked
agregh17	ktruman73
agregh17	gwyllieq2
agregh17	ameffinp6
agregh17	bffoulkesjo
agregh17	dtyndallhr
agregh17	imegarrell98
agregh17	gblyth9g
agregh17	rnormanvell6y
agregh17	cbroadbere9t
agregh17	htuttps
agregh17	cmcgahernl
agregh17	icucksonl9
agregh17	azottoliio
agregh17	eberdaleqp
agregh17	bmowsdillg3
agregh17	jchandersdr
agregh17	acherrieai
agregh17	msitford74
agregh17	jgouldenc5
agregh17	jgilroyjq
agregh17	mmuatj3
agregh17	lconnollyfa
agregh17	lwaulker8r
agregh17	mvileal
agregh17	csmelliehv
agregh17	gaustoni0
agregh17	tbleddoneo
agregh17	brayerj1
agregh17	abourbonrf
agregh17	rpergensjs
agregh17	kwaggec2
agregh17	spraundlck
agregh17	nhewlingsp0
agregh17	mshakespear6n
agregh17	cknibbsgi
agregh17	swillsheekl
agregh17	lgeeritzpc
agregh17	ptemplefz
agregh17	emerrittqw
agregh17	fdovingtonk2
agregh17	ksayse6k
agregh17	kcartneroq
agregh17	hugloweu
agregh17	smcnabbda
agregh17	cpitcockfb
agregh17	jscamalin
agregh17	cblasingpu
agregh17	onewarkbl
agregh17	lespinospr
agregh17	ktamesd1
agregh17	lambrodinv
agregh17	ccraigiehy
agregh17	rsleafordgx
agregh17	ccaldowp2
agregh17	bkingdomqy
agregh17	gsimanh
agregh17	mcastan70
agregh17	cknibbsn1
agregh17	tgutteridgecc
agregh17	bswaylandd6
agregh17	rwoakesbv
agregh17	edallin5
agregh17	mschuckmg
agregh17	mwheeldoneb
agregh17	idownsel7
agregh17	mredhousefn
agregh17	nhaslockev
agregh17	bjaggia1
agregh17	sroizht
agregh17	borneblow4u
agregh17	efancuttcw
agregh17	hlemmerst
agregh17	lkryskax
agregh17	gcroppr8
agregh17	ecurrmmj
agregh17	rgillesonq9
agregh17	pcraftshx
agregh17	kbenner8n
agregh17	abigriggiz
agregh17	mempringhamav
agregh17	emcvittyny
agregh17	sblythindc
agregh17	sposvnerku
agregh17	jriddickcx
agregh17	aabramski7
agregh17	sfearnsidel0
agregh17	lboothlp
agregh17	jrapier9u
agregh17	hricartq0
agregh17	fdaleman9y
agregh17	edambrosilq
agregh17	jmowbrayge
agregh17	ngrishagina5
agregh17	rbirts7o
agregh17	jovery6a
agregh17	coxshottas
agregh17	gshaylerql
agregh17	dgallichankn
agregh17	jsimcoxja
agregh17	theakins2a
agregh17	daimerap
agregh17	cshacklegw
agregh17	lmarshlandac
agregh17	ebannerbt
agregh17	smachostedq
agregh17	mghilardiet
agregh17	ltreecen5
agregh17	lpickrillof
agregh17	cborellic
agregh17	rstonesgr
agregh17	wslides8o
ddebanke4w	nhewlingsp0
ddebanke4w	icucksonl9
ddebanke4w	lespinospr
ddebanke4w	hugloweu
ddebanke4w	bkingdomqy
ddebanke4w	mmuatj3
ddebanke4w	wcoulthardki
ddebanke4w	mempringhamav
ddebanke4w	mghilardiet
ddebanke4w	laptedid
ddebanke4w	ngrishagina5
ddebanke4w	kkopkerq
ddebanke4w	sroizht
ddebanke4w	lgeeritzpc
ddebanke4w	brayerj1
ddebanke4w	acherrieai
ddebanke4w	abourbonrf
ddebanke4w	hricartq0
ddebanke4w	cbroadbere9t
ddebanke4w	onewarkbl
ddebanke4w	ccaldowp2
ddebanke4w	fdovingtonk2
ddebanke4w	jscamalin
ddebanke4w	sfearnsidel0
ddebanke4w	cnewalln9
ddebanke4w	sblythindc
ddebanke4w	mdupoyam
ddebanke4w	rgillesonq9
ddebanke4w	rstonesgr
ddebanke4w	lwaulker8r
ddebanke4w	cborellic
ddebanke4w	jriddickcx
ddebanke4w	cblasingpu
ddebanke4w	rpergensjs
ddebanke4w	jrapier9u
ddebanke4w	mcastan70
ddebanke4w	lmarshlandac
ddebanke4w	cpitcockfb
ddebanke4w	mshakespear6n
ddebanke4w	lkryskax
ddebanke4w	swillsheekl
ddebanke4w	borneblow4u
ddebanke4w	coxshottas
ddebanke4w	bgloucester8j
ddebanke4w	kbenner8n
ddebanke4w	imegarrell98
ddebanke4w	fdaleman9y
ddebanke4w	kwaggec2
ddebanke4w	lconnollyfa
ddebanke4w	azottoliio
ddebanke4w	goatteskz
ddebanke4w	cwartonbyrp
ddebanke4w	emerrittqw
ddebanke4w	jmayworthbj
ddebanke4w	cknibbsn1
ddebanke4w	ameffinp6
ddebanke4w	kcartneroq
ddebanke4w	nhaslockev
ddebanke4w	cgierckeoy
ddebanke4w	bshermarpa
ddebanke4w	bswaylandd6
ddebanke4w	rwoakesbv
ddebanke4w	cthorogood6m
ddebanke4w	cknibbsgi
ddebanke4w	mdecristofalom7
ddebanke4w	sposvnerku
ddebanke4w	gwyllieq2
ddebanke4w	gshaylerql
ddebanke4w	dloughanh0
ddebanke4w	theakins2a
ddebanke4w	ltreecen5
ddebanke4w	mwheeldoneb
ddebanke4w	idownsel7
ddebanke4w	spraundlck
ddebanke4w	rbirts7o
ddebanke4w	abigriggiz
ddebanke4w	emcvittyny
ddebanke4w	gblyth9g
ddebanke4w	ccraigiehy
ddebanke4w	lpickrillof
ddebanke4w	eberdaleqp
ddebanke4w	bffoulkesjo
ddebanke4w	vpilsworth6p
ddebanke4w	jgouldenc5
ddebanke4w	edallin5
ddebanke4w	bmowsdillg3
ddebanke4w	ecurrmmj
ddebanke4w	jsimcoxja
ddebanke4w	ebriked
ddebanke4w	edambrosilq
ddebanke4w	rsleafordgx
ddebanke4w	gabbetth3
ddebanke4w	gaustoni0
ddebanke4w	jovery6a
ddebanke4w	ktruman73
ddebanke4w	pcraftshx
ddebanke4w	csmelliehv
ddebanke4w	htuttps
ddebanke4w	jchandersdr
ddebanke4w	rnormanvell6y
ddebanke4w	msitford74
ddebanke4w	dtyndallhr
ddebanke4w	hlemmerst
ddebanke4w	gsimanh
ddebanke4w	cmcgahernl
ddebanke4w	smcnabbda
ddebanke4w	ptemplefz
ddebanke4w	dpeetff
ddebanke4w	mschuckmg
ddebanke4w	sfinanm5
ddebanke4w	lambrodinv
ddebanke4w	jmowbrayge
ddebanke4w	gcroppr8
ddebanke4w	daimerap
ddebanke4w	dgallichankn
ddebanke4w	wslides8o
ddebanke4w	mvileal
ddebanke4w	ebannerbt
ddebanke4w	tgutteridgecc
ddebanke4w	btrevaskuskk
ddebanke4w	smachostedq
ddebanke4w	jgilroyjq
ddebanke4w	ktamesd1
bfosbraey45	jmayworthbj
bfosbraey45	sblythindc
bfosbraey45	gblyth9g
bfosbraey45	emcvittyny
bfosbraey45	imegarrell98
bfosbraey45	mvileal
bfosbraey45	ebriked
bfosbraey45	lpickrillof
bfosbraey45	cblasingpu
bfosbraey45	gwyllieq2
bfosbraey45	jgilroyjq
bfosbraey45	nhaslockev
bfosbraey45	jgouldenc5
bfosbraey45	mwheeldoneb
bfosbraey45	lgeeritzpc
bfosbraey45	cmcgahernl
bfosbraey45	wcoulthardki
bfosbraey45	rnormanvell6y
bfosbraey45	borneblow4u
bfosbraey45	cwartonbyrp
bfosbraey45	ameffinp6
bfosbraey45	hugloweu
bfosbraey45	swillsheekl
bfosbraey45	cknibbsn1
bfosbraey45	msitford74
bfosbraey45	ltreecen5
bfosbraey45	lespinospr
bfosbraey45	bswaylandd6
bfosbraey45	gcroppr8
bfosbraey45	mdupoyam
bfosbraey45	jchandersdr
bfosbraey45	mshakespear6n
bfosbraey45	jsimcoxja
bfosbraey45	cbroadbere9t
bfosbraey45	laptedid
bfosbraey45	jriddickcx
bfosbraey45	ccaldowp2
bfosbraey45	bkingdomqy
bfosbraey45	abourbonrf
bfosbraey45	kcartneroq
bfosbraey45	idownsel7
bfosbraey45	daimerap
bfosbraey45	mcastan70
bfosbraey45	ktruman73
bfosbraey45	rstonesgr
bfosbraey45	bmowsdillg3
bfosbraey45	jovery6a
bfosbraey45	jrapier9u
bfosbraey45	azottoliio
bfosbraey45	ccraigiehy
bfosbraey45	ebannerbt
bfosbraey45	ptemplefz
bfosbraey45	bshermarpa
bfosbraey45	edallin5
bfosbraey45	mschuckmg
bfosbraey45	spraundlck
bfosbraey45	dgallichankn
bfosbraey45	wslides8o
bfosbraey45	rgillesonq9
bfosbraey45	rbirts7o
bfosbraey45	rsleafordgx
bfosbraey45	lambrodinv
bfosbraey45	tgutteridgecc
bfosbraey45	cthorogood6m
bfosbraey45	ktamesd1
bfosbraey45	mdecristofalom7
bfosbraey45	cgierckeoy
bfosbraey45	vpilsworth6p
bfosbraey45	lwaulker8r
bfosbraey45	edambrosilq
bfosbraey45	mmuatj3
bfosbraey45	emerrittqw
bfosbraey45	eberdaleqp
bfosbraey45	lconnollyfa
bfosbraey45	acherrieai
bfosbraey45	dloughanh0
bfosbraey45	theakins2a
bfosbraey45	ngrishagina5
bfosbraey45	btrevaskuskk
bfosbraey45	sposvnerku
bfosbraey45	rwoakesbv
bfosbraey45	fdaleman9y
bfosbraey45	coxshottas
bfosbraey45	csmelliehv
bfosbraey45	sroizht
bfosbraey45	jmowbrayge
bfosbraey45	cborellic
bfosbraey45	fdovingtonk2
bfosbraey45	jscamalin
bfosbraey45	kbenner8n
bfosbraey45	icucksonl9
bfosbraey45	ecurrmmj
bfosbraey45	sfinanm5
bfosbraey45	mghilardiet
bfosbraey45	smcnabbda
bfosbraey45	sfearnsidel0
bfosbraey45	nhewlingsp0
bfosbraey45	dtyndallhr
bfosbraey45	htuttps
bfosbraey45	hricartq0
bfosbraey45	gshaylerql
bfosbraey45	gabbetth3
bfosbraey45	pcraftshx
bfosbraey45	abigriggiz
bfosbraey45	bffoulkesjo
bfosbraey45	gaustoni0
bfosbraey45	kkopkerq
bfosbraey45	smachostedq
bfosbraey45	dpeetff
bfosbraey45	kwaggec2
bfosbraey45	cpitcockfb
bfosbraey45	gsimanh
bfosbraey45	hlemmerst
bfosbraey45	cnewalln9
dkeiling48	ktamesd1
dkeiling48	smcnabbda
dkeiling48	rstonesgr
dkeiling48	smachostedq
dkeiling48	pcraftshx
dkeiling48	cborellic
dkeiling48	jmowbrayge
dkeiling48	ccraigiehy
dkeiling48	daimerap
dkeiling48	sposvnerku
dkeiling48	fdaleman9y
dkeiling48	azottoliio
dkeiling48	jovery6a
dkeiling48	jsimcoxja
dkeiling48	mshakespear6n
dkeiling48	idownsel7
dkeiling48	abourbonrf
dkeiling48	gaustoni0
dkeiling48	hlemmerst
dkeiling48	jrapier9u
dkeiling48	fdovingtonk2
dkeiling48	mcastan70
dkeiling48	cthorogood6m
dkeiling48	icucksonl9
dkeiling48	hricartq0
dkeiling48	gcroppr8
dkeiling48	ameffinp6
dkeiling48	gwyllieq2
dkeiling48	spraundlck
dkeiling48	rsleafordgx
dkeiling48	mdecristofalom7
dkeiling48	ltreecen5
dkeiling48	btrevaskuskk
dkeiling48	sfearnsidel0
dkeiling48	lambrodinv
dkeiling48	emerrittqw
dkeiling48	cmcgahernl
dkeiling48	ecurrmmj
dkeiling48	htuttps
dkeiling48	cknibbsn1
dkeiling48	bffoulkesjo
dkeiling48	bshermarpa
dkeiling48	gsimanh
dkeiling48	dgallichankn
dkeiling48	kkopkerq
dkeiling48	cnewalln9
dkeiling48	kwaggec2
dkeiling48	ebannerbt
dkeiling48	vpilsworth6p
dkeiling48	borneblow4u
dkeiling48	wcoulthardki
dkeiling48	dloughanh0
dkeiling48	jriddickcx
dkeiling48	jgilroyjq
dkeiling48	jscamalin
dkeiling48	ptemplefz
dkeiling48	ebriked
dkeiling48	dpeetff
dkeiling48	swillsheekl
dkeiling48	ccaldowp2
dkeiling48	jchandersdr
dkeiling48	sfinanm5
dkeiling48	mvileal
dkeiling48	coxshottas
dkeiling48	bkingdomqy
dkeiling48	kbenner8n
dkeiling48	bmowsdillg3
dkeiling48	csmelliehv
dkeiling48	mmuatj3
dkeiling48	gblyth9g
dkeiling48	abigriggiz
dkeiling48	dtyndallhr
dkeiling48	lconnollyfa
dkeiling48	imegarrell98
dkeiling48	eberdaleqp
dkeiling48	cgierckeoy
dkeiling48	edallin5
dkeiling48	hugloweu
dkeiling48	nhaslockev
dkeiling48	lpickrillof
dkeiling48	gshaylerql
dkeiling48	mghilardiet
dkeiling48	ngrishagina5
dkeiling48	theakins2a
dkeiling48	mwheeldoneb
dkeiling48	jgouldenc5
dkeiling48	edambrosilq
dkeiling48	lwaulker8r
dkeiling48	wslides8o
dkeiling48	emcvittyny
dkeiling48	cblasingpu
dkeiling48	sblythindc
dkeiling48	mschuckmg
dkeiling48	cbroadbere9t
dkeiling48	rnormanvell6y
dkeiling48	jmayworthbj
dkeiling48	msitford74
dkeiling48	tgutteridgecc
dkeiling48	cpitcockfb
dkeiling48	nhewlingsp0
dkeiling48	cwartonbyrp
dkeiling48	laptedid
dkeiling48	mdupoyam
dkeiling48	lespinospr
dkeiling48	sroizht
dkeiling48	kcartneroq
dkeiling48	ktruman73
kalastair4g	kwaggec2
kalastair4g	fdaleman9y
kalastair4g	jgilroyjq
kalastair4g	cwartonbyrp
kalastair4g	ebriked
kalastair4g	swillsheekl
kalastair4g	mmuatj3
kalastair4g	gshaylerql
kalastair4g	ptemplefz
kalastair4g	fdovingtonk2
kalastair4g	spraundlck
kalastair4g	cbroadbere9t
kalastair4g	lpickrillof
kalastair4g	abigriggiz
kalastair4g	mdecristofalom7
kalastair4g	smachostedq
kalastair4g	kcartneroq
kalastair4g	tgutteridgecc
kalastair4g	jchandersdr
kalastair4g	borneblow4u
kalastair4g	gwyllieq2
kalastair4g	cpitcockfb
kalastair4g	jmowbrayge
kalastair4g	ktamesd1
kalastair4g	mdupoyam
kalastair4g	daimerap
kalastair4g	nhaslockev
kalastair4g	sblythindc
kalastair4g	hlemmerst
kalastair4g	wslides8o
kalastair4g	rnormanvell6y
kalastair4g	jrapier9u
kalastair4g	cknibbsn1
kalastair4g	cthorogood6m
kalastair4g	kbenner8n
kalastair4g	cborellic
kalastair4g	bkingdomqy
kalastair4g	mschuckmg
kalastair4g	mshakespear6n
kalastair4g	sposvnerku
kalastair4g	csmelliehv
kalastair4g	hricartq0
kalastair4g	pcraftshx
kalastair4g	mghilardiet
kalastair4g	sfinanm5
kalastair4g	jscamalin
kalastair4g	btrevaskuskk
kalastair4g	mcastan70
kalastair4g	ltreecen5
kalastair4g	bffoulkesjo
kalastair4g	rstonesgr
kalastair4g	mvileal
kalastair4g	eberdaleqp
kalastair4g	ccraigiehy
kalastair4g	dtyndallhr
kalastair4g	gcroppr8
kalastair4g	ebannerbt
kalastair4g	azottoliio
kalastair4g	gaustoni0
kalastair4g	ngrishagina5
kalastair4g	emerrittqw
kalastair4g	rsleafordgx
kalastair4g	dgallichankn
kalastair4g	idownsel7
kalastair4g	ecurrmmj
kalastair4g	htuttps
kalastair4g	sfearnsidel0
kalastair4g	jmayworthbj
kalastair4g	ccaldowp2
kalastair4g	wcoulthardki
kalastair4g	kkopkerq
kalastair4g	imegarrell98
kalastair4g	theakins2a
kalastair4g	laptedid
kalastair4g	msitford74
kalastair4g	vpilsworth6p
kalastair4g	lconnollyfa
kalastair4g	lambrodinv
kalastair4g	smcnabbda
kalastair4g	edambrosilq
kalastair4g	cblasingpu
kalastair4g	gsimanh
kalastair4g	icucksonl9
kalastair4g	jovery6a
kalastair4g	cgierckeoy
kalastair4g	coxshottas
kalastair4g	bmowsdillg3
kalastair4g	dloughanh0
kalastair4g	jgouldenc5
kalastair4g	mwheeldoneb
kalastair4g	ktruman73
kalastair4g	lwaulker8r
kalastair4g	gblyth9g
kalastair4g	cmcgahernl
kalastair4g	bshermarpa
kalastair4g	nhewlingsp0
kalastair4g	edallin5
kalastair4g	cnewalln9
kalastair4g	jriddickcx
mragdale4m	nhewlingsp0
mragdale4m	hricartq0
mragdale4m	ccraigiehy
mragdale4m	jchandersdr
mragdale4m	cgierckeoy
mragdale4m	mmuatj3
mragdale4m	jriddickcx
mragdale4m	icucksonl9
mragdale4m	vpilsworth6p
mragdale4m	ptemplefz
mragdale4m	ebriked
mragdale4m	cthorogood6m
mragdale4m	gshaylerql
mragdale4m	ecurrmmj
mragdale4m	cmcgahernl
mragdale4m	idownsel7
mragdale4m	mdupoyam
mragdale4m	jmowbrayge
mragdale4m	bmowsdillg3
mragdale4m	gblyth9g
mragdale4m	mvileal
mragdale4m	kwaggec2
mragdale4m	csmelliehv
mragdale4m	lpickrillof
mragdale4m	sblythindc
mragdale4m	rstonesgr
mragdale4m	cpitcockfb
mragdale4m	bffoulkesjo
mragdale4m	jmayworthbj
mragdale4m	jrapier9u
mragdale4m	dloughanh0
mragdale4m	jgouldenc5
mragdale4m	kcartneroq
mragdale4m	mghilardiet
mragdale4m	fdovingtonk2
mragdale4m	tgutteridgecc
mragdale4m	ccaldowp2
mragdale4m	ktruman73
mragdale4m	ktamesd1
mragdale4m	cbroadbere9t
mragdale4m	sfinanm5
mragdale4m	bshermarpa
mragdale4m	ltreecen5
mragdale4m	rsleafordgx
mragdale4m	cborellic
mragdale4m	wslides8o
mragdale4m	ngrishagina5
mragdale4m	wcoulthardki
mragdale4m	gcroppr8
mragdale4m	daimerap
mragdale4m	pcraftshx
mragdale4m	mshakespear6n
mragdale4m	azottoliio
mragdale4m	kkopkerq
mragdale4m	fdaleman9y
mragdale4m	lambrodinv
mragdale4m	cwartonbyrp
mragdale4m	kbenner8n
mragdale4m	lwaulker8r
mragdale4m	mwheeldoneb
mragdale4m	dtyndallhr
mragdale4m	bkingdomqy
mragdale4m	smcnabbda
mragdale4m	swillsheekl
mragdale4m	abigriggiz
mragdale4m	emerrittqw
mragdale4m	borneblow4u
mragdale4m	rnormanvell6y
mragdale4m	laptedid
mragdale4m	mschuckmg
mragdale4m	nhaslockev
mragdale4m	btrevaskuskk
mragdale4m	msitford74
mragdale4m	gsimanh
mragdale4m	spraundlck
mragdale4m	ebannerbt
mragdale4m	hlemmerst
mragdale4m	lconnollyfa
mragdale4m	mdecristofalom7
mragdale4m	jovery6a
mragdale4m	smachostedq
mragdale4m	dgallichankn
mragdale4m	gwyllieq2
mragdale4m	jscamalin
mragdale4m	sfearnsidel0
mragdale4m	imegarrell98
mragdale4m	coxshottas
mragdale4m	sposvnerku
mragdale4m	mcastan70
mragdale4m	cnewalln9
dbelamy58	jriddickcx
dbelamy58	emerrittqw
dbelamy58	dgallichankn
dbelamy58	bshermarpa
dbelamy58	nhewlingsp0
dbelamy58	cmcgahernl
dbelamy58	ecurrmmj
dbelamy58	sblythindc
dbelamy58	icucksonl9
dbelamy58	mvileal
dbelamy58	coxshottas
dbelamy58	csmelliehv
dbelamy58	jmowbrayge
dbelamy58	cborellic
dbelamy58	smcnabbda
dbelamy58	imegarrell98
dbelamy58	bmowsdillg3
dbelamy58	lwaulker8r
dbelamy58	dtyndallhr
dbelamy58	wslides8o
dbelamy58	azottoliio
dbelamy58	mdecristofalom7
dbelamy58	jscamalin
dbelamy58	kkopkerq
dbelamy58	bkingdomqy
dbelamy58	daimerap
dbelamy58	mdupoyam
dbelamy58	nhaslockev
dbelamy58	lconnollyfa
dbelamy58	mschuckmg
dbelamy58	tgutteridgecc
dbelamy58	cpitcockfb
dbelamy58	smachostedq
dbelamy58	bffoulkesjo
dbelamy58	cthorogood6m
dbelamy58	vpilsworth6p
dbelamy58	ltreecen5
dbelamy58	fdovingtonk2
dbelamy58	ccraigiehy
dbelamy58	hlemmerst
dbelamy58	jovery6a
dbelamy58	gwyllieq2
dbelamy58	sposvnerku
dbelamy58	jchandersdr
dbelamy58	ktruman73
dbelamy58	mwheeldoneb
dbelamy58	ptemplefz
dbelamy58	gblyth9g
dbelamy58	mshakespear6n
dbelamy58	lpickrillof
dbelamy58	gcroppr8
dbelamy58	rsleafordgx
dbelamy58	sfinanm5
dbelamy58	gshaylerql
dbelamy58	jgouldenc5
dbelamy58	jrapier9u
dbelamy58	fdaleman9y
dbelamy58	cbroadbere9t
dbelamy58	borneblow4u
dbelamy58	cnewalln9
dbelamy58	ngrishagina5
dbelamy58	laptedid
dbelamy58	wcoulthardki
dbelamy58	idownsel7
dbelamy58	hricartq0
dbelamy58	cwartonbyrp
dbelamy58	ccaldowp2
dbelamy58	jmayworthbj
dbelamy58	ebannerbt
dbelamy58	sfearnsidel0
dbelamy58	mcastan70
dbelamy58	ktamesd1
dbelamy58	kwaggec2
dbelamy58	ebriked
dbelamy58	msitford74
dbelamy58	kbenner8n
dbelamy58	rstonesgr
dbelamy58	spraundlck
dbelamy58	lambrodinv
dbelamy58	rnormanvell6y
dbelamy58	kcartneroq
cgiffen4a	rstonesgr
cgiffen4a	cpitcockfb
cgiffen4a	borneblow4u
cgiffen4a	mdecristofalom7
cgiffen4a	msitford74
cgiffen4a	sfinanm5
cgiffen4a	bshermarpa
cgiffen4a	bmowsdillg3
cgiffen4a	gblyth9g
cgiffen4a	lconnollyfa
cgiffen4a	mvileal
cgiffen4a	mschuckmg
cgiffen4a	rnormanvell6y
cgiffen4a	sfearnsidel0
cgiffen4a	mshakespear6n
cgiffen4a	ccraigiehy
cgiffen4a	mwheeldoneb
cgiffen4a	mdupoyam
cgiffen4a	fdaleman9y
cgiffen4a	csmelliehv
cgiffen4a	cnewalln9
cgiffen4a	kkopkerq
cgiffen4a	ccaldowp2
cgiffen4a	cthorogood6m
cgiffen4a	lpickrillof
cgiffen4a	ecurrmmj
cgiffen4a	wslides8o
cgiffen4a	imegarrell98
cgiffen4a	icucksonl9
cgiffen4a	bkingdomqy
cgiffen4a	ptemplefz
cgiffen4a	smcnabbda
cgiffen4a	cwartonbyrp
cgiffen4a	nhaslockev
cgiffen4a	jovery6a
cgiffen4a	fdovingtonk2
cgiffen4a	gshaylerql
cgiffen4a	jchandersdr
cgiffen4a	dtyndallhr
cgiffen4a	kcartneroq
cgiffen4a	jrapier9u
cgiffen4a	kwaggec2
cgiffen4a	rsleafordgx
cgiffen4a	ebriked
cgiffen4a	jgouldenc5
cgiffen4a	nhewlingsp0
cgiffen4a	daimerap
cgiffen4a	wcoulthardki
cgiffen4a	smachostedq
cgiffen4a	cbroadbere9t
cgiffen4a	idownsel7
cgiffen4a	mcastan70
cgiffen4a	coxshottas
cgiffen4a	hricartq0
cgiffen4a	jmowbrayge
cgiffen4a	cmcgahernl
cgiffen4a	bffoulkesjo
cgiffen4a	ltreecen5
cgiffen4a	jriddickcx
cgiffen4a	gcroppr8
cgiffen4a	hlemmerst
cgiffen4a	dgallichankn
cgiffen4a	emerrittqw
cgiffen4a	azottoliio
cgiffen4a	kbenner8n
cgiffen4a	ebannerbt
cgiffen4a	gwyllieq2
cgiffen4a	lambrodinv
cgiffen4a	vpilsworth6p
cgiffen4a	cborellic
cgiffen4a	spraundlck
cgiffen4a	ktamesd1
cgiffen4a	sblythindc
cgiffen4a	jscamalin
scansfield4b	borneblow4u
scansfield4b	ccraigiehy
scansfield4b	kwaggec2
scansfield4b	sfearnsidel0
scansfield4b	emerrittqw
scansfield4b	imegarrell98
scansfield4b	jmowbrayge
scansfield4b	sfinanm5
scansfield4b	gwyllieq2
scansfield4b	jchandersdr
scansfield4b	mshakespear6n
scansfield4b	cborellic
scansfield4b	mcastan70
scansfield4b	msitford74
scansfield4b	ktamesd1
scansfield4b	mschuckmg
scansfield4b	spraundlck
scansfield4b	bshermarpa
scansfield4b	jovery6a
scansfield4b	jgouldenc5
scansfield4b	csmelliehv
scansfield4b	wcoulthardki
scansfield4b	cnewalln9
scansfield4b	mwheeldoneb
scansfield4b	nhewlingsp0
scansfield4b	rstonesgr
scansfield4b	smachostedq
scansfield4b	bkingdomqy
scansfield4b	ltreecen5
scansfield4b	ebriked
scansfield4b	ecurrmmj
scansfield4b	hricartq0
scansfield4b	gblyth9g
scansfield4b	mdupoyam
scansfield4b	dgallichankn
scansfield4b	nhaslockev
scansfield4b	icucksonl9
scansfield4b	daimerap
scansfield4b	ebannerbt
scansfield4b	smcnabbda
scansfield4b	sblythindc
scansfield4b	bffoulkesjo
scansfield4b	gshaylerql
scansfield4b	ccaldowp2
scansfield4b	bmowsdillg3
scansfield4b	cwartonbyrp
scansfield4b	rsleafordgx
scansfield4b	vpilsworth6p
scansfield4b	rnormanvell6y
scansfield4b	lambrodinv
scansfield4b	cthorogood6m
scansfield4b	fdaleman9y
scansfield4b	kkopkerq
scansfield4b	cpitcockfb
scansfield4b	mdecristofalom7
scansfield4b	kbenner8n
scansfield4b	cbroadbere9t
scansfield4b	hlemmerst
scansfield4b	idownsel7
scansfield4b	jscamalin
scansfield4b	azottoliio
scansfield4b	coxshottas
scansfield4b	wslides8o
scansfield4b	cmcgahernl
scansfield4b	lpickrillof
scansfield4b	ptemplefz
ggethings4x	bkingdomqy
ggethings4x	bshermarpa
ggethings4x	hlemmerst
ggethings4x	spraundlck
ggethings4x	idownsel7
ggethings4x	rsleafordgx
ggethings4x	ebriked
ggethings4x	cpitcockfb
ggethings4x	ccaldowp2
ggethings4x	jscamalin
ggethings4x	bffoulkesjo
ggethings4x	ccraigiehy
ggethings4x	wslides8o
ggethings4x	ptemplefz
ggethings4x	lambrodinv
ggethings4x	sfearnsidel0
ggethings4x	msitford74
ggethings4x	rnormanvell6y
ggethings4x	mdupoyam
ggethings4x	mcastan70
ggethings4x	rstonesgr
ggethings4x	imegarrell98
ggethings4x	cthorogood6m
ggethings4x	jchandersdr
ggethings4x	cwartonbyrp
ggethings4x	wcoulthardki
ggethings4x	jovery6a
ggethings4x	hricartq0
ggethings4x	kwaggec2
ggethings4x	sfinanm5
ggethings4x	gwyllieq2
ggethings4x	daimerap
ggethings4x	icucksonl9
ggethings4x	borneblow4u
ggethings4x	jmowbrayge
ggethings4x	mwheeldoneb
ggethings4x	fdaleman9y
ggethings4x	dgallichankn
ggethings4x	mdecristofalom7
ggethings4x	cborellic
ggethings4x	kbenner8n
ggethings4x	csmelliehv
ggethings4x	jgouldenc5
ggethings4x	emerrittqw
ggethings4x	gblyth9g
ggethings4x	lpickrillof
ggethings4x	bmowsdillg3
ggethings4x	coxshottas
ggethings4x	mschuckmg
ggethings4x	ebannerbt
ggethings4x	smachostedq
ggethings4x	sblythindc
ggethings4x	ktamesd1
ggethings4x	cmcgahernl
ggethings4x	ltreecen5
ggethings4x	mshakespear6n
ggethings4x	cbroadbere9t
ggethings4x	nhaslockev
ggethings4x	azottoliio
ggethings4x	vpilsworth6p
lromero83	mwheeldoneb
lromero83	smachostedq
fbarbosa5d	smachostedq
fbarbosa5d	wslides8o
lromero83	wslides8o
lromero83	mdecristofalom7
fbarbosa5d	mdecristofalom7
lromero83	sfinanm5
fbarbosa5d	sfinanm5
lromero83	mschuckmg
fbarbosa5d	mschuckmg
fbarbosa5d	mwheeldoneb
lromero83	jchandersdr
fbarbosa5d	jchandersdr
fbarbosa5d	sblythindc
lromero83	sblythindc
lromero83	idownsel7
lromero83	msitford74
lromero83	dgallichankn
fbarbosa5d	bshermarpa
lromero83	rsleafordgx
lromero83	bshermarpa
lromero83	vpilsworth6p
fbarbosa5d	vpilsworth6p
fbarbosa5d	rsleafordgx
lromero83	icucksonl9
fbarbosa5d	icucksonl9
lromero83	wcoulthardki
fbarbosa5d	cthorogood6m
fbarbosa5d	idownsel7
fbarbosa5d	msitford74
lromero83	cthorogood6m
fbarbosa5d	dgallichankn
fbarbosa5d	wcoulthardki
fbarbosa5d	ebannerbt
lromero83	mdupoyam
fbarbosa5d	mdupoyam
fbarbosa5d	kwaggec2
fbarbosa5d	csmelliehv
lromero83	csmelliehv
lromero83	kwaggec2
fbarbosa5d	spraundlck
lromero83	spraundlck
lromero83	nhaslockev
fbarbosa5d	nhaslockev
lromero83	ebannerbt
fbarbosa5d	bmowsdillg3
lromero83	ptemplefz
fbarbosa5d	ptemplefz
lromero83	bmowsdillg3
lromero83	azottoliio
fbarbosa5d	azottoliio
fbarbosa5d	emerrittqw
lromero83	emerrittqw
lromero83	jscamalin
fbarbosa5d	jscamalin
fbarbosa5d	kbenner8n
lromero83	kbenner8n
lromero83	ccaldowp2
lromero83	mcastan70
fbarbosa5d	mcastan70
lromero83	cpitcockfb
lromero83	hlemmerst
fbarbosa5d	hlemmerst
lromero83	jgouldenc5
fbarbosa5d	cpitcockfb
fbarbosa5d	imegarrell98
fbarbosa5d	jgouldenc5
lromero83	imegarrell98
fbarbosa5d	ccaldowp2
lromero83	cwartonbyrp
fbarbosa5d	coxshottas
lromero83	coxshottas
lromero83	ccraigiehy
lromero83	mshakespear6n
fbarbosa5d	fdaleman9y
lromero83	fdaleman9y
fbarbosa5d	mshakespear6n
lromero83	hricartq0
fbarbosa5d	hricartq0
fbarbosa5d	cwartonbyrp
fbarbosa5d	ccraigiehy
fbarbosa5d	cbroadbere9t
fbarbosa5d	rnormanvell6y
lromero83	rnormanvell6y
lromero83	lambrodinv
fbarbosa5d	lambrodinv
lromero83	borneblow4u
fbarbosa5d	borneblow4u
fbarbosa5d	ebriked
lromero83	ebriked
fbarbosa5d	bffoulkesjo
lromero83	bffoulkesjo
fbarbosa5d	jovery6a
lromero83	jovery6a
lromero83	cbroadbere9t
fbarbosa5d	cborellic
lromero83	cborellic
lromero83	rstonesgr
lromero83	ktamesd1
fbarbosa5d	rstonesgr
fbarbosa5d	ktamesd1
nclaxson5i	ktamesd1
nclaxson5i	bffoulkesjo
nclaxson5i	vpilsworth6p
nclaxson5i	ccraigiehy
nclaxson5i	coxshottas
nclaxson5i	jscamalin
nclaxson5i	cpitcockfb
nclaxson5i	cbroadbere9t
nclaxson5i	cthorogood6m
nclaxson5i	icucksonl9
nclaxson5i	fdaleman9y
nclaxson5i	rsleafordgx
nclaxson5i	lambrodinv
nclaxson5i	emerrittqw
nclaxson5i	sfinanm5
nclaxson5i	kbenner8n
nclaxson5i	kwaggec2
nclaxson5i	mschuckmg
nclaxson5i	mshakespear6n
nclaxson5i	bmowsdillg3
nclaxson5i	ptemplefz
nclaxson5i	mwheeldoneb
nclaxson5i	csmelliehv
nclaxson5i	rnormanvell6y
nclaxson5i	imegarrell98
nclaxson5i	ccaldowp2
nclaxson5i	bshermarpa
nclaxson5i	mcastan70
nclaxson5i	smachostedq
nclaxson5i	spraundlck
nclaxson5i	sblythindc
nclaxson5i	rstonesgr
nclaxson5i	ebannerbt
nclaxson5i	wslides8o
nclaxson5i	ebriked
nclaxson5i	idownsel7
nclaxson5i	hlemmerst
nclaxson5i	wcoulthardki
nclaxson5i	dgallichankn
nclaxson5i	jgouldenc5
nclaxson5i	azottoliio
nclaxson5i	hricartq0
\.


--
-- TOC entry 2847 (class 0 OID 16452)
-- Dependencies: 201
-- Data for Name: secretaries; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.secretaries (username, password, email, telephone, address) FROM stdin;
agradwell88	0b86de3d034e73661128de6aadb004176f434e304fb29cc57c3f607217a0030db2d9cf68664a7d73c1639f87c4b8bfde2ee68e7ea34809bbc85d2b8c73d14128	abigailgradwell@yahoo.com	2108488600	756 Victoria Trail
mjurzyk60	0382db40f1889177de16ce790f387621ef55760d7db7cfed5ba94736f4583fd7340f06ca9cf0347f3252ff8714e0f4dc50b7010b93bcfe75f887b1b192427257	marcelojurzyk@hotmail.com	2104065056	993 Summerview Crossing
noherlihy3n	5a102dae1e5c776d4f0df92ca79e5d4849ecbfffd3ecafe39fcbc26bea0acc249f7db882d0250fa992e2050db275c340c16ebed73b250c23c86fcd699883f731	nataloherlihy@gmail.com	2102573306	18 Karstens Trail
dmalley3r	c175c55941c2e1db7a5b208cac781b3fab58ba9d330ade4ed69cc032efd685f2ae1f01450da3573f37f33e500096c64216fcbd502b6d3aa7ce4e60245d36eaff	dukemalley@gmail.com	6956196491	323 Mosinee Crossing
tspruce5o	489e4a79b1e113ddb440a481edfe997e6c246981a6c22c24288f10acae568b2be428f832fb5da9122053f0cfcc7fd4c14c341ef0d4e8e36c06e98f362d66f284	tiffaniespruce@yahoo.com	2105216973	7 Vahlen Avenue
acowper87	e0afbd06b2c124d3fa7c072a8e57dd7d20a602759e9aaca854729fce899d05995ede9fca5b7e0e418edeb91fe9a2ab8c78fa4ab3ff135b53022b617a8461b013	anyacowper@gmail.com	2103527166	5 Manufacturers Place
lduke3q	d3e5ed3cdd7b326a40fd2cb567503897696ccb955bc5fac3654cdac6decb703831461d99d28e7eba35bdcae8bf670a287c4564d4a068c4359b064af4d347af60	lothaireduke@aol.com	6970215421	03 Warrior Way
wnerheny4v	9afab7fc9093b524277e825bf1e3e2e67c170fb043c38c68ef0f37455436f6bf34cba53f2b925a8fdabd148a8dc68f5c53555a81f75a838123deab228c4e341a	wilbertnerheny@yahoo.com	6907405208	0 Vahlen Junction
gmckinnon4r	97a72e4403eaa9a242b63c50ce985a10a35b14604a2ccf4f5273b5e052866bd453d36b7acc205746cf56ff3c2fbbe51ef7211d1054b5127db8da17a658cbd743	granmckinnon@gmail.com	2106520505	51 Delaware Center
aweben4s	8955d7e05fd5f9aab1ee21cb1432108fb101a11e4526c6b89ac1bc89f69e7eb92c070128bf3c9e1643b020ab526ee4f42c2bc02c901410ac53784ea14fa5562c	angieweben@hotmail.com	6906562713	1 Everett Junction
spoure7c	7ad72d3a2a2bc1d4b0121008adc42bd542cabe2b9f8e1188c3fea6a8c60f47cde9f02721503627fad10a324c2e8101c24c2c79ab450206ddd4c6853984d9eb5e	shenapoure@yahoo.com	6900005517	3941 Messerschmidt Terrace
cmaciaszczyk7m	17ed93eeb73e698c4c29e4a8b33a15b23e9c24b228ab2285c2e7dced0039b430d3c103d663866cd79d080cb4b5e6f1446fced0552b145c9b8de198daf910cc9f	callamaciaszczyk@hotmail.com	6915715474	8728 Atwood Hill
\.


--
-- TOC entry 2843 (class 0 OID 16427)
-- Dependencies: 197
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.students (username, password, registrationnumber, email, telephone, address, ects) FROM stdin;
nkytley8s	9162757c6278d822fd30867a16a8920e9ec2746db17bbabf8bdb55964de776489cba898822d7c221ca4f200f185d64010b77b3df7235df0b2e9865794186d99b	CS020	nonahkytley@yahoo.com	2108639827	334 Park Meadow Trail	40
mlegganhz	15418d95252f255b38910fac3c7455579f8720c41c1952da2c1aa1633997623083498343aa7ba172149cf8a1ecf7c9fe9d1678a38bba326d854a8e2df640398d	CS057	mommyleggan@gmail.com	2103902126	9897 Anniversary Place	75
cdanell46	c5498c2b9e7b5b52a257bd1a54db2015f5d8bcf633ae959524d99516d6876de7c2a65e3b37c769dbcc5d243ee3a28a75415df5137161398ef833f07b072a7841	MA001	consueladanell@gmail.com	2104552406	717 Oak Valley Parkway	100
mbamblett6b	895dfe72d85b8f34d0cdcd7c109aa2e3828ff70b99c030ef07e13ce61b0c013433774fd71994e01dd51164efed80b3f907fdc3b73d8d39236f556e8c2f45aba9	MA017	matabamblett@gmail.com	6928382141	164 Clove Place	50
bgodsafeau	65d3ae9488af13a4f5a13cadcbac39eaf896f24193618e8e979dd22437df778625eae51672d61b8bae3e8eaf4a1ffad71669ef29a7b701b5d9a8c949509a090c	MA022	brentgodsafe@gmail.com	2104297738	5716 Sloan Hill	45
jdivesfg	6be681028de330d2a21bdf83a4ec30af7f3b20db1a09ec75128ffcaa8ea11d07be3aa8a9e7900728fc56b2ab0511277ea168ba5255db6f8f372453ad329958b6	MA053	jackiedives@gmail.com	6931288848	04 Evergreen Pass	110
amontgomeryhb	bed564c361392924108a01e7bf56b6d5588bf210d9f462ba6d6595ccf704d13a81c385390f601c1ef6894168dee4590abafd356a176ec4f5f113766cd96e2608	MA072	appoloniamontgomery@yahoo.com	6913186820	634 Shoshone Parkway	35
gpuddephattlf	4ee87f478da8d4d6d926b2941dccf9832475cd6ab3eddf2e75ec86f83e5b283b0278239208997c9148084d80c9026855569d871638224ac856f26b8b5d2361aa	MA086	gavenpuddephatt@gmail.com	2100346241	2861 Scoville Alley	40
slodfordoj	64b42298e8cfb60a6d1ac74613b41dd55fa100996432dcd40559cac479cef9d25c8e21faf8a91f447d698a9782ba7c3204198a07598431b1387a04212ea9224b	MA102	selestinalodford@hotmail.com	2101255183	93827 Moulton Crossing	65
ithomersonbi	ed5ffc652411de9874a52aa4b15ebcdb292c5bd29b48f4e7050d7d44ac22d2554fdf4f18877bbe752359387a60b9d0610da732536bbedce5c323bfb05918d640	CS029	irwinthomerson@hotmail.com	2103441817	891 Stang Pass	120
treinmar8g	77c1ba0c0f2e8307ae82d7b6f78de1cfc39417e696db6e02394458898eabb5b75a17714014ca6fb539b85c76857feb2dfa4b8f2b85cfe2ddef33b188bcb8e846	CS018	thorvaldreinmar@yahoo.com	2107202588	6 Cody Junction	85
llerouxlr	f3d61fbf514ec9dce3d92c7543a41bdcbe590b64d70d43f7d813405e25c9746d0db98dd3aa8cf5904ca58908fb405b731f4def85f152393d507322fb45f41aef	CS086	lemuelleroux@yahoo.com	2105429635	964 Hoepker Place	90
cbefroyns	14219b47f0de8190cfff12bf866386849c6e3bfeed0adcaee54c33104f48bd495d645570fc6fc82f12db6fabcc42d419989fc040e2e0fd408742c6480d9242a6	CS093	cleviebefroy@gmail.com	2107139475	45 Rutledge Pass	100
mstockill8f	eec24762916036573e023271f058f76d5535ff69974a52868c56ede74ad734730a94da2210caf446c10610f623217debf7d8cc64cf09d12209402cbb1b6d0fa5	CS127	maureenstockill@gmail.com	6979541256	1 Clyde Gallagher Trail	70
jmcquiltyaq	4fea45a1193fda1ba180ccfd1cb0637ad5ea0fd782c63f548454c50759561954f5121b9f4041709622f290d74ed162840756112875cd894f86b5a5669fa7e679	PHY013	jeraldmcquilty@hotmail.com	6986731783	4614 1st Place	40
fstains93	9b3e0837d75782582cc337797f5b8a3f409e2abb01e3bd6711f4128d928bbdefcc8c8be75a024487fc76bd7eccf20d02663caf7c5386bf4e037e06d5ebca35f7	PHY017	farrastains@gmail.com	2108647140	164 Clove Place	75
mkowalskica	c0e1835ee19a7f184585a1e18e82b1f3330ccbfefa3cf949d53a810f2914449e2c9fbb1c82e583b21ee565abc73a4a0f2789fe56e8c36db4c603b5d4b9846590	PHY034	mohandiskowalski@hotmail.fr	2106881436	917 Oriole Alley	70
kballaamj7	a26c22ebd33d2010a9fe92c046a5bcfad91e2bc66101e5d7a65af634cfa5eebe3965a705d8c3e4670472fd6796c0fa855e1a173e5ab342ca083402a2a840240f	PHY071	krishaballaam@yahoo.com	2101725525	517 Ronald Regan Lane	100
lfenckm8	34ac60e4f433631cd79074706b1ff6f6c43acb3d6fa22458ad9392021a3d8c83a3ffe65a227db1033fda7c8b39b1bf0bb80d0e68ab51cb13a67b7e7a2e53dfc2	PHY086	lenniefenck@aol.com	2108762499	2861 Scoville Alley	95
nscothernlj	471d1fd57660647facb01af96b177e50c5ac8f7901482bde2577ec74412f1a6c32eff43f7306d3c63028e21675b0ffc55b4da6e1d8c32c202906a5206e4a660c	PHY094	northrupscothern@aol.com	6999029044	87087 Namekagon Crossing	100
akrishtopaittis8h	3ea5dd30560328a748ab0a8d1e3b0f29f29d3fcd76012009af76c8f6b2edf6e2a19714c1c2be4ea3767f97c10a56f7142a2b7964f2ce16153b6da41844ea2b49	PHY130	adelinakrishtopaittis@aol.com	2109506777	264 Prairie Rose Court	55
jgoering6h	692184d4984e2a0435516c21f7547ff6ad7ee6dd1f54d6146a98ff34ca20e74ca6087c4fe01a3474b869d06ebc7026f5f2bdde99c1dac94c6c0375877c90bcab	CHEN010	jamesgoering@yahoo.com	6968317462	497 Hayes Way	35
smatveyevir	a6afa5a2a6f74cc9bb9dc91250ec074babbe8f5d4bbfc39d01dcc668d32cecd041b656046977591352d06b7fe44dfdacac90d4ac2d786bab67311048d8b1c2c9	CHEN071	sharlinematveyev@orange.fr	6985110040	184 John Wall Alley	95
bpretormr	061f41c5168bc7674f6e0dfd0d1e82fe235f554bc43e8f9a5c653746498a8b3ac608ff8eb98f72be808faf97ec41815e0c42c28c935deb280ef088ce88121e26	CHEN095	buddypretor@yahoo.com	2102814717	0679 Manitowish Center	40
rmacgormanaa	1666be426272c4a9d8fa093de04c7af2912e1577743545ae836daa291a2f755f82136648fec6e9ab505a507f2a20b5a1a9918af0f6ccfb52f57cd589238b0537	NSE026	rethamacgorman@aol.com	2102660147	864 Packers Terrace	110
bmcnaye0	e7fa307e98a954b4786eeb2b1cea7120f75c4020f1ff55a6103d5d3bf7789adcd62bab6e4da4a8b3d0e26f494bbb169d6dfde90977eb667139c28ca9bf7d8e0d	NSE046	betteannemcnay@yahoo.com	6916585633	01458 Annamark Place	70
mdelavaletteparisotoi	28bff80a2f9488d4b7bdb22f607570d1aad8b5e2e4d5559d946eb6a9009ac69792d10b91291b02723755fe56f4e013da2661f7d04fe695e68d24f2c6701e1d31	NSE099	michealdelavaletteparisot@hotmail.com	6929668532	24823 Golf Park	110
rdarlasson8	19465846c83ad6a03a24a03369655086a3a2e693bc328851ca04eb97d531c7b10a69b890c7cd7802f27a5433889379270d8ee3e23f043544286bf3ceeb91e8f8	NSE122	richiedarlasson@hotmail.com	2103771101	652 Anderson Parkway	35
sthomsonec	acbb70c21e1f00f6b1365d83ff789c21cb8908a1f69c33c645911552d834c13a879b8268e70fffac7648a900e2efc33a27af706ca57db29132a685def811673a	AAN051	shellythomson@hotmail.com	2103289550	21 Nelson Point	40
edambrosilq	399a9b154b624904172a5a176ba86ec1d8e1d2ea3650b7e6bb9cf866b042b8cf1ef661cd93c70c0e2a4d4dc7565351b5f5b40db823f4f247afe1022e9c2aee9e	AAN094	emlynndambrosi@gmail.com	6919397861	778 Schurz Point	65
rmaccorleych	0eb34e393b24107614d67d9d587e512da560b86dc1211c23aa54a968b00942533212dac0072f37899f7f4a2fa00ed6ee6c4e6719240eba11fd283473a01ce173	CHEN031	reginaldmaccorley@yahoo.fr	2108521983	19544 Becker Junction	55
abumfreymw	3ae0ffa0da678d62544c98313b11ba846763aafff886f022f3c9a60c4d53776c91c0fb27947a8b2816288de33fdad10e88cfbaf7786491d8e8b12a65c20addba	CHEN079	alysabumfrey@wanadoo.fr	6998080898	32703 Swallow Place	55
nsidwick80	64a89fb57b89d506e0c7e908f8ed3871db7d9731a3ea140d68068d47e69fb679a451f5dc32f02b6daace19c29c5a08a0a6a3c33a83edbd7f81360f44993f825b	NSE007	nealysidwick@hotmail.com	6983425431	8373 Fieldstone Trail	110
bcrosonbr	59950843aef4d49bdc1fd2d2d00930bb52336554e78c345c3aa7b4ff7a142095f64869bcfa9cdfbd6beaf82eaf24c7f9b1ef891d81610a171db184f0d5f3ae13	NSE028	barbicroson@hotmail.com	6930911206	63023 Mandrake Center	90
bsierms	27999cf537512a8179e3de40b1a9720fbd3f710797aa344212c997625d00ceeed6afb261cd2eed1c2e0beb7e93f69b920ca017530d1d93dcc937015be612bb88	NSE079	briannasier@yahoo.com	6930625508	32703 Swallow Place	55
blockleyok	878928d45c02df8bc5bcf1520cfd68f20e61452a7902fc3d3e8c3ba9a377fa1ff97f29d96c4c8e604531e88d517eb4736795fa5599531d69f76f1a4204dc9574	NSE100	blondielockley@gmail.com	2101957751	656 Rutledge Street	65
cpitcockfb	3931e066316268ec0167919836635ea4f30cc5baf7647b4b38574f1151dcf5d8fade499c02b902c5f1e4f3c5570060f3685be78e14da375e0cdaab9209db3481	AAN046	cleopatrapitcock@yahoo.com	6941562344	764 Westend Junction	110
gabbetth3	7b3d33fd7fd7db19d32545f11214640f348e56bec1909b8498aa7ef6bf969173efdbcd38345db18f2829a2d33591a94a8239182a1ff7cdd86fb9a748c865e0bb	AAN070	gabbieabbett@yahoo.com	6958058791	7 Hayes Place	55
hricartq0	40e43fb4daf72cc5286d21816e1e94693e54d0e1e9ca3105803bcb25e49a05e03dd01b44d3ab6468e66948688f7707dd6f9a4e95349f095d36b60aeffb35d978	AAN114	hermannricart@gmail.com	2106739267	3014 New Castle Park	110
lkryskax	92221b4428f6e779e2ab9d470337179b98b7ba0bedf7c7dc2aad7f773780dee731d9b2e13ea990ba2439e7477a54beb75f0b5f28bc9649beb1358ba8fe69138d	AAN130	lynneakryska@wanadoo.fr	6947180764	70034 Anhalt Hill	50
sfearnsidel0	76c16f69aabeecd45774d97568c5481ba8259d719c218bec25c1b5429dcee4fe789374e42f1a71315d03114290899861d3e9c4deb5e03fc50e7c378579145b77	AAN132	sidneyfearnside@gmail.com	2106503055	3558 American Ash Parkway	90
mbalecv	035f727fd1be06e104e84553d26fd2ad77453e7bfdc02450c7de68e2fca820c6a5cb4f0802366531a307cfab047109b72ee57297325a66a53d3ff8d976122bc2	AAN134	marjbale@yahoo.com	6928282039	4046 Anzinger Center	40
smcnabbda	61ee4dec0614d86502258630c654ad5dae6e8975b0381fee96ac6defabc62f08e08a26acb2e4bea594d1ea13785c95574c1f03fb22f752866c5c57182051c310	AAN135	stewardmcnabb@hotmail.com	6916903938	33784 Butterfield Circle	85
rgomersallfq	0e0a4d6645e1da110281fadc98e8145d6bd226814e0ffc0321d190117de8ab8136e9d6fa9cb2fc2560ecd218df107b5e0e9ffbeb500a16f4cc5966269ec8e44b	AAN138	ramsaygomersall@yahoo.com	2106547835	60 Eagle Crest Pass	35
swillsheekl	ccb3873903bf59d0f62f553133782f3e6a4c0419de8c6012dec818ea0216e4499988cf1065d7c2e97d417fddd4653317f018c9484336b4d28bac735a29c70dc1	AAN139	starlenewillshee@gmail.com	6925182146	2120 Fordem Pass	70
cknibbsn1	7de77e76fe2cea7d29c43c5b92d03f0a84f3392dd327124c30da4f522c31dc88e43e32b8e5e63127b4316f48b7fe93b22c8dbe866469c30bead197664ece508c	AAN141	carverknibbs@hotmail.com	6926625993	79 Burning Wood Street	65
lambrodinv	2ff24684bd9a3a36ad02d35083a841bac1b760c3292ec26e52c0793639dee321603ad1dd738fd0bd53d150446b31104d21065395c07a6d64ad4b00cd083d533e	AAN144	louiseambrodi@hotmail.com	2105478708	422 Algoma Trail	100
borneblow4u	f2425f1c030f6c750cdf5a8805fdfec23e14cd999ccde0b6265a1aaee3794c8851f8ba41a9aa41299b36b15697142554f13b80e23b6c0894eb5d9ddca6800505	AAN145	bartyorneblow@gmail.com	2100092593	5 Sachs Point	95
tbortoletti6l	1015717f4d93ef8c74748f47ccf816b039f8c771a7eda44d6b06e55b64c5806b15175a2e56e0f95bc417f3aefb96200ddc641055c69277dc97b5c5fa5633b295	MA018	torreybortoletti@gmail.com	6991165312	86339 Rowland Parkway	35
bmccomas6x	ab3c0565774d4549363f3504a291774f7187ffc962bc7466dd35b489c3677c2ee5cc5a37310391b91d39f8a67997035a26808c4372fd9a2397300dff4e0addbb	MA020	barbemccomas@hotmail.fr	6931081021	7 Briar Crest Hill	85
rsaxby8m	f8d999d55c6b13e78baf35303d2d5529897f54c09d88e6071233f4bc291a9a74e2c1d441c7ef522deeb782b00bd9f3c0e66820629c3fae8d4d597deebf177eb8	MA023	raddysaxby@hotmail.com	6925089630	4 Village Lane	45
rrippin8w	54e2d72aa1c5d68eadb9f36df2b35e7d3761932a99ab5f4fd687376b281118212c79d0dca4c3e00dca8439265d6f4a987e9dfd887dcb5589069f682a9f6ec08c	MA025	raffrippin@hotmail.com	6906112514	910 South Drive	75
cdarnody9w	b4172d7bf9e3a161c71274c11dda6d9cb1785a6405145fec74d76ecfd2283b9724e4c51e287099f80e0489914b167461be006212491f903e0855338c037feca5	MA027	caryldarnody@yahoo.com	6960468959	34 Miller Drive	80
gmackin9l	8570a9551e294a71a3411c520c3b75fdb245597036a2cba18b4620d7dcd653e02b0047000923dcc3ba5379d879d6b7278b960e1ca9b23d9fca6384c6e6cc2bb4	MA029	giuliamackin@gmail.com	6976785635	549 Shasta Crossing	110
sdishman9b	0ad0ac2752eb392a96190842e9ccb9de4f5a7ad6cd8465b87816d24cd0c0a203eeb6b68332e2492c1d3c8949d972e42f926efdc7f16c2ac2949ea7d0c8554843	MA031	scottydishman@gmail.com	6907600779	7077 Pleasure Place	100
egrevilleae	92d79a65dbc958be8c3936cd097fe0b0bdacecd8c66073e0199c9cbd0a33320327d6cdd50610b0fa8cf650af6df8e34d4edc8549e8e34c05be6a65ff28dfb8e4	MA033	elkegreville@orange.fr	6986745911	42762 Onsgard Junction	70
dboshersbq	e3d11b6f501250c528631a26c293e2c17e07d39581f170cac6c739f594111a74c6026734297f004cf046a18f0806dab9923a0a7aaa36834c8a8065b7975112ef	MA035	deborahboshers@yahoo.com	6989508850	495 Kennedy Point	50
bborerc6	9ebea160f6ecba12fca1d28939719200c84aa66b858234aac9cd46f189c7e20f87874cd22fdc2313739a8388527f7febc66e3423189f0af278d4d70baf1b8693	MA037	brittborer@yahoo.com	2106528949	4744 Washington Road	55
cfrodshamcj	ff11902f81ee7d843237c8181aa71b1e5044fbb7e3ab695643d89b0319ab8ce1d099755e210adc2b5874b1ae812554f620467ca939c508d0450d193ee7713a79	MA039	concordiafrodsham@gmail.com	6963893359	8 Tomscot Terrace	85
sbroadwoodco	7227fe2b3ef4cfb7143902776e3647f89f911cae107493782707e389d3c00cb694f5ac25dd6509c05505ed17f6eeadeab3a4099910518b2ccae7b7c630322658	MA040	shandeebroadwood@yahoo.com	2109733260	9 Westerfield Court	35
pilyukhovb0	9ce03253f6ddf421411a951de9a8c57be62f6924681cd568aee96cad068993a17e915ee20eb094a2975f3126f51e8a02d9e864f2fb4412eb079c064cb5526ee7	MA042	paulineilyukhov@gmail.com	2108992034	1167 Holmberg Drive	115
gjurgensonfm	3ecaf72d08935ed914e8e2c6d22ef0cfda82045c687df773d02157ef345dd99ad080fc5efc180fa3fde95d68951d136f857d8307928d8876a9439ca56bf88eae	MA044	garejurgenson@gmail.com	6925332243	41850 Transport Terrace	55
dcowxdx	f9a4fb6ab31161392def32cd91b0d1a71b0bb46cf854ee465c9d6bc611b3107e3d1b8d48864c7aea46af449f7ef4acda3e650d6eb2ebdc67f14c3d0632690eff	MA046	dollycowx@gmail.com	2105291326	1758 Arapahoe Terrace	55
esemmencee7	d4fa1b755a2074dea3c0c80de3e0c9515bd531dc12ca299dcc5dd29fcd2e84cf2c7037c96436c0870c8526306a350f5df40d751bcd178b9c93a7cd5e375d2bd2	MA048	etheldasemmence@gmail.com	2102488503	0084 John Wall Road	95
daugustinei	95ff9849b3a33369dd03955279ea16c304026d63c8626ac941f0d6b688f33b59b5a2a70af7df6aa617fb32284bb6008db3d278f885890f85a87ca0cbf9674b43	MA050	daveyaugustin@aol.com	2105519666	89 Comanche Way	70
tlenahanf0	433c92307805ea72321929d69f0f89b6cc48ced0c2852ac3df31e6d4f3641edb4c599e0271cab3a2b843dbda8ce929cb4410e665971a58b25db84836ba0079de	MA052	thorstenlenahan@gmail.com	2108443139	97 Declaration Court	50
dkeggindg	a469f82985d86f6f7ab04ebd4bf901c9aeb4469872fb825e0340615667594a051510006c6baec0b034e51d432c1e2ffe3afe02fa7f7987daca2180f6c2cca4bb	MA055	danicakeggin@hotmail.fr	2106316871	091 Transport Street	80
paylwardfx	2c1d4b256ae9cf1c4f2231f113aee003eb278df7769d4bbe4ba0d5c6c98d400064e02e73c544e70989a7d7132970bf4640ea437efbbf5cd5b776adbffb52f469	MA057	pennyaylward@gmail.com	2101940350	39216 Duke Way	110
pbonasg4	631764f98b599a910bef4d25448f4aa1949c19e738566651c5b3803fadb16f632882f4ccb655e26bf2d522b21e095b84b222b10109a8dc6c762f95ea387f3c16	MA059	penbonas@gmail.com	6956822522	3 Becker Parkway	75
cpetrellig5	c240af7e025ba7e487f56118446779500f538f7f488c7cb29afafadf364a470283e41463b738d355c3515cf759db5242518090ffc52528d87cb14e8b9046d1b9	MA060	carpetrelli@hotmail.com	6990609464	22216 Schmedeman Parkway	85
mkocherg8	1d72842fa4ed913c8e428e76a69fbb403d3e9fb979d3f6ac1f5624d4c230c5cf1a4bfe4e9fbcdce620cb74762e94e6290c193d2a4c4ab9d76dfa795a6aa7a1e5	MA062	merridiekocher@hotmail.co.uk	6959295445	57 Bunker Hill Trail	70
aheareg9	753e108240cbad11254f76a68b06a50760e7a863aaf0c29c103f07605238158c0f2ce7d4fc1585dd519b9dabe34428eb90f6351876680fbb539e64d790805591	MA064	auberonheare@msn.com	2109470876	15311 Merrick Circle	90
ljanugb	8707203317af2a16b74ade6036fd8f2a46be1de83459d9f789d7722bb4ee22a3cee83f9a744b83042c4c8e9aa689307f165a283570e0b101431188037b9acb77	MA065	lindiejanu@gmail.com	2108875725	759 Rockefeller Crossing	40
spickettgp	98b31e96b747f93786d8c29f3e5b9e55236e0a613c7cac00a0b2183ca05e963b451c585a2269d569d0ae93185e6e77cc2c49cc774ceabb5a18efb3ba476989aa	MA067	shelleypickett@gmail.com	2104902108	3734 Sheridan Circle	75
fhakergy	b7d49154daea4f6971d259504973b94be33f443afcc09bea9f5b85f9dcd72aa85f181183e88f55dc40b117c3f8ff1aaa2ab8f9bfe4d7d7192aaabcdaf89b41cb	MA069	fanhaker@gmail.com	6972531752	8 Talisman Terrace	95
fcatlowh9	713e5f6498237d730e81d805968e66f44afcae3f6199ea18817839981f8ea92cf5768f63c66470070c6b352e51277fa32b6eb60e8e1faff1201f4095ba068225	MA071	finacatlow@gmail.com	2105955745	517 Ronald Regan Lane	60
ktatekb	d2253e8098654507a18413fbb24a343f413d23dea1a192a695f885f085ea7bbd0870bb143b0e9c54b475e5a133072902c0d462e1af51eb8988ad6315ad5d122e	MA074	konstancetate@gmail.com	6974425074	74719 Esch Plaza	45
aflipsenkh	5f27a65373b85fb10d49afb78bf8fda921cd764f3206522517fdc1a84beaa5b706cf89c7cf44732596b7e20acdb4287e2e1b10c0f5b6dac01d6d7be24ad98b3b	MA076	antheflipsen@hotmail.com	2101875495	35 Heath Point	105
wgoszji	bdfc826ac0bc35448524671ef5ba251b20f5676ba35e4fc395855af1ec6c2e99d2b373c90fb303f7e19815bb47eda0517934bdbd8a2b5581d4e70bef34a26e5a	MA078	windygosz@aol.com	6918603019	2838 Lerdahl Parkway	70
agovenlockjw	f752ab4a503b70c91beab51b68f43631e11144b1cdc6e5a4a2284ec4b3a4dcbd4f02a11fd3854ca8d7e3279584ae2a24bb2bed5b5ac29d16cc8c5f078ada0b97	MA080	ashleegovenlock@gmail.com	2107232078	0 Mockingbird Alley	40
lshalcrosk6	a417baa9f1591ca1c0392d14ce073691dec81b721bf8a5e30808e93ac7c488511f36c581ad5d26146bc2a979ccda2a287e4a50574c57237fa5e5694f53ae55f0	MA082	laverneshalcros@gmail.com	2105504474	86894 Warbler Plaza	105
nlorinczlb	03c5e5af6695c892b49fb29d7646bb1925704d75e60e9a89b7c0b092516992fa848b02bb3a04623ec3c28ba06586e72873615adfa592893707dd08530b5f1eb7	MA084	nevillelorincz@hotmail.com	2107887168	80528 Sutteridge Lane	110
bdowdneyld	f9cbf1611822f94a0eaec4968ac24dbbbb6e3cc037c5f9bf2bf11246048defd8ab4d8a7ab3f53ef38b9a859b61c14cb44020ba305254c6eeea2eafa12172c0a5	MA085	barbara-annedowdney@hotmail.com	2105114243	6 Loftsgordon Plaza	70
rcasfordlu	29da4023fbcc3758e56f27c647fcde8cf12ccee1587ddf46975dc6669a595c4cc9ddf4fc8b595dc14fc3c536d061627066fdfa2e09ae5e44761bb67d5fff0b11	MA087	rowlandcasford@wanadoo.fr	2103713160	6 Moland Hill	75
vgenerylz	8a12bfa8b007c0d6aaf7da1215675725c403f6e3c2030eb296b820b570363272a5f616c5892171958217c95e5d8bf355f92ed386ddf86c0d3cc3e1fd0153e0cd	MA089	virginagenery@gmail.com	6906694962	7573 4th Junction	115
tdeemanmi	04244305b4115a55b7e7ebdaf9a1a7941e43a6573f961d5a4d8594f3da98c83f3f82252c7cd3fe32b67afb3f401ad48fef1658f05f76ea44dbc14533b0f3380e	MA091	tobiahdeeman@hotmail.com	2103168282	4170 Florence Road	115
cschottlip4	62a21058e38f0345664879fa8806e6bb46d974b595724ef57363675795789480623ff48cbddd68688a6fc7ac35c308864fcc326a765069bfdc196ed13603524f	MA092	cecillaschottli@hotmail.fr	6939898027	1324 Waxwing Trail	50
dlearmountn8	8de75005439e78e22ade32803126c1989d9af475c8c5cc4669b9b8938d7dcc0155da0d4fc622fecb60ecaa8622b8d2196e6292565e77aa74cb833440b3341314	MA094	doreenlearmount@gmail.com	6924803403	87087 Namekagon Crossing	80
kmacrannellnj	587b679535c16301ef5c06bb2b087ddf3639eebf1fda9d394f200788b216559b27cbeec1f450c3acc69bb7df890f5dfb49d68ff9d93321b3313844152c5ede33	MA096	karlamacrannell@aol.com	6972835599	170 Holy Cross Pass	115
kclorleynr	7070080a34f97069e3038318bda71ca58657c818fbfbd960ba55fbe8e06308199a2748a7328197cf0f9edb35210f3c5d27417779634eda65a637a2ad04113794	MA098	kelseyclorley@hotmail.com	6923650320	82 Pine View Parkway	40
wpullmano4	0bf7865d85d763694ecbda206fe8340df653b67f8e5d4545be0c5f0e2a04837523b0e3c5365a99e25342b6ed79387a58fa672aec0f5616e70821d94c659f55a9	MA100	walliwpullman@gmail.com	6924022708	7320 Grayhawk Place	110
lkolczynskion	75894ea6911f716bb739e071335a929b8a6d7258824f3d01923314872b5526c6a383a559ee4d35244f59155b5ba8d3b4a74c088409bee43cdedbeb3668446d48	MA103	liamkolczynski@hotmail.com	2100734164	89487 Bunker Hill Hill	100
vbursnallpb	827494124c280714a1614a4ff1831c951d9e68f2194dbd2bfafa4a7f6826007868f0b426f37e0db0db5f6d228cf96bc477d508781972f4e543e9bbc0a0055d5a	MA105	vivbursnall@gmail.com	2108622703	88 Scoville Lane	45
pcarradiceqm	3e814cab4889837d4cccaebd5a0cc784c12a97ae64ea84aaa429936ab1bec9d615e3375fb37e58c37dcbb5df675411801c84d870ad797f9df6af21154c6f3a09	MA107	patriziacarradice@gmail.com	6936560786	53694 Fordem Crossing	65
eotuohyqc	ab9abbc0cd98530126ac88af06308100340250df50a14890786d2e9de98ee1f3b6dbef5ddc8060fb90aa96f2dcc7f4f75b03ac0ef792e1bf3fd3be27f9403e0a	MA109	erinotuohy@gmail.com	6935561136	7 Mallory Point	100
lpearseqe	359d6c340838af3f3293b0a2d779d0f39e29e42a3230beb7c405e8214e619b3bc84617655e7cd693412cdec5da114c07a2a50fe24d3d3921882da9ac485d965c	MA111	leonapearse@gmail.com	2108656569	3714 Comanche Point	70
rscrannyqr	6bc0f11ea091de6b30c94b3db0d59ce3d633bd87001ef746eaa84de9b7539235df6f5c889243a8d347fdc2faaac7284145faea8f39ad0e4c74146bf4c7e6eee4	MA113	robbynscranny@hotmail.com	2101254377	0107 Summerview Circle	60
kblampyr4	1f44652ca37c828b870bbb6bcd6661491860246a4951dd549bb2e93f7cfa2c56fe50a0f0d45efafb9c3cdaaaaefa876ebc6e68f83b811bd14b65beb85dca2ad5	MA115	korryblampy@gmail.com	2109177731	1177 Mendota Way	75
scomellinir9	6974bcdcb80bb24575a0a108d92b841cf533aaa66269956bfaff881c54c4984fc734a6e17cdf498a35249e72207ba8f2de653cec460ac453b6eaa4496d77c16d	MA117	somersetcomellini@gmail.com	2106145969	41688 Eastlawn Park	95
ableasbya	5ef1f03efc28d146acbd3e9f6f6d044e11a7e632632d5dc9261bb84bb044f1edc6b8ad72cc40d26000fdd2712d93236acf2ccbf04d2f59df68b5385d78cce498	MA119	anallesebleasby@gmail.com	2104742728	89843 Petterle Road	55
gcathels	24747726226e3fad737324941883dff958f66ec0dd436b0b228c53d10ba783935a6f637ec4e22730e4533091521d17e39b7f7545e1ebb6af9bd46ebec28cc88e	MA121	gaultierocathel@msn.com	6973902946	3 Northwestern Trail	115
lsweating92	100c4024227ab3c048c5a5a0bd43e9c7296bbaf18fbc3ad3779f8cb40127142287b7b0fe0ef82e8c35c49709a3c387c77975d654601b398dfb06e9f025c0d25f	MA123	lorrysweating@hotmail.com	6902342675	93 Hintze Road	105
mingray15	39eac2a435a5f5617c7490bea0683808ba22befb1aa6550fa9ff887cea5fb32b9d360e9acc553bf57086ed2e87111db415d9edc5ebb9a73b60cbbaaaff2bd717	MA124	melodyingray@hotmail.co.uk	6983721217	58606 Manitowish Terrace	75
sclearekt	c70b76d1eea82308d22a941baf16b6a9dad38da5569bcfa04614de547f547fd446b2c54d612095d705923889ba3d62b170a6f3c7ddcef58bb3f3110b3448234a	MA126	sybilcleare@yahoo.com	6968993286	59838 Kim Center	55
rtyttertonmk	7bc070a6b4e2e6ff7bf9206b67c602cf742d43591e966f9d2a27900fb18048096e624a5f46794ce91c72ccaa4fe7d78ae942eafec3e93b5422706b02b900c3e4	MA128	racheltytterton@yahoo.com	2105971767	84221 Rigney Park	95
lcarnduff4y	46abc838aea5594859a4ce4d56427d99b6837216042efda201d1a075635e9cf9334be2cc98cc784fc11a911c1a371f5448cc587ab0b675872e770d4f632108e1	CHEN000	lucycarnduff@gmail.com	6972543191	1 Corben Parkway	60
kfairey9a	5065ea3ebf4d10296e059432e148837c8f8284ec295dbf4c8c07c851e08f54d42746cf53e82a0ed3cdb960d5609e200b6dd309104f323a6a74ba9bf2703910b3	CS025	kelsyfairey@hotmail.com	2105519297	4 Trailsway Street	110
hbarnard9r	fd76c26ddc5e5135a9a351b51f1c06bbadbdeb858735ac1cd539f08849e01ad31c3eae39b689f539254bc7b424238abb1982facd92b15423e2ad353d1f4a0967	CS027	harlenebarnard@gmail.com	6937248177	3179 Quincy Plaza	120
hpetrolli63	a2f1b2704788aefd97516a9b080183556c7729eb88a23ace6383d6f4303b62a15883f899ad27d2f4c44e28849922316a5b6dcafdf6b20a028d5657e45d20bb99	CS000	henriettapetrolli@gmail.com	6954551648	589 Lake View Road	80
rpearne6d	ab9b982eab744ad6c6f67d27493fd6b2c35595bb4c914453e490df07ff0743a820bd5934573ed8d919ecbb83f403d201477047fed2ef32e7361b9fe3c03cfc49	CS002	rachellepearne@gmail.com	6952821119	308 Dakota Pass	115
achinge6j	df0f9391265ab274d5b5ee4bc9b57bfee96162671481628dfda3bf386fcc1373287f3638be048660f8576b4f336a5102e6a6d8dbf807c8c5abb81ec4f05b252b	CS004	arlenachinge@hotmail.com	6926776206	34 Bartelt Pass	100
cbenedettini6g	37e0ea77a3394be3fb8878b763d964153888562835f31408d07c0659505afb60b4d9da01ebf7085ddc8ca1642de4efbf77e6331398c6298a947b9e45795589f2	CS006	cletusbenedettini@gmail.com	2100857927	2 Basil Road	95
emonnoyer6u	a5a856cc3673278dafc28022205ef1707f934ff96155d3335f450865a5a3e20ff5a929745eb1a6da19c69c049862c50c132abbe5c1ea1acf88a8cf09e92a6fe2	CS007	eadamonnoyer@orange.fr	2106606549	026 Hermina Circle	55
edene7b	b32f9a10c41c028995ff4c51798302c3b1db9dcb6f39223aa0d3b9e12f305cc3cc231d8df08760c233643c69364e2e628c32f40662ba4b78e6859b25b62e4375	CS009	eliasdene@msn.com	2100003684	604 Ronald Regan Hill	40
ccashford7l	26bea81eb63bce66ec13d10d29cfbcb4fe5a72c1215a56162f1534a5a4f8ea7e316bfbf08a8919579a9570ed5a89ca0c023229c62c1d597fc332045ec81858bf	CS011	carmelacashford@gmail.com	2106535034	3822 Corben Court	90
fraynesaj	9fe93db2d205669382682bbd000130888944d6e0aeae7a32eb9e0640d4b6299a4feb447fa7e8c8633ad5dbe845d3da74116228d3506417c8b76f0d480b642b8a	CS013	freddyraynes@yahoo.com	6968604581	5 Anzinger Crossing	75
cbartalinian	782b02a16c6142e44b4d44f6cb7785dd7f8e1a0ca0e9957e673e3c095572237b387f03641e67c8a5f6e8f6fb899a98729f3e463f3b9f46c57a733996041beb20	CS015	clevebartalini@hotmail.com	2107823204	64191 Independence Court	65
tburniston8l	3601849b5d92232d38a6afc6523bd1251ae4f79eddee288a2c86cc59b4392ec9d415745c927e940e851f684a474b279b73b4d84b5e02208922342295d907ff29	CS017	tobiasburniston@gmail.com	6940278175	9581 Clarendon Lane	50
ehaggarty8x	da11a23221b766eb4b025f5c8789950b80e3e7986d9ec778f1098f85d06d320cdc32c807e85008c7917e1ecee61688e6cb1da0a50372ea0ab12cf23e45f3def6	CS019	ebenhaggarty@hotmail.co.uk	6908995626	3 Bay Road	80
taloshikin9k	606211607cdaa88911a70a63688d0cd076eebed00abf996d582f3a00f97fd2707ea46a2d047aeec575849a4a72d76ee0053ec1b4fe1241eb055298639a6cd13f	CS022	trishaloshikin@gmail.com	6948189315	42084 Hintze Junction	100
abilton9i	e2ff83758e34ce7e30879800569b92d5bc1e42a6da697166266dc7da82764eaa5a64b858fbe960a212158ac56998060cff3c243f30d23e10fd6c3f3e714ecde5	CS024	arlenbilton@gmail.com	2106082134	7823 Reindahl Avenue	45
jmoodycg	169fbcb15c03c9a11d8414a2650f486b859d2bf1881a7db602f488aaf65512bb02a4ace7019c23fb66e5392d8c5996e475db99b18d4da180c32cf5aa12830baa	CS031	jesusmoody@gmail.com	6918384173	8 Arizona Avenue	35
bshelleycu	8f22900a34ced3c3b75edc03d8a00e1c90dccda2dc843b70e489627c8c323f5f2678768af12a0a73cd815b70150489094950b428a28988d8e6bb1f8838b642f0	CS033	barthshelley@gmail.com	2101139355	70490 Weeping Birch Street	110
cdallander2v	dac3851cbc4153bef14e87c595ad5463e5af786501858524431ca28ea31ebdb8f5d2b02acb6ba1e6d328f9e86c4cd1084bd5c933b142edbdcee6183db9431ccc	CS035	currdallander@gmail.com	6958034123	36 Fairfield Lane	85
bburnhamsb4	e5b3d4797424b786feb75d2a1a3d600594bfc5d93352f70b4667c381ab37b7de408ee977f08620811570391a8f02f319e792fa9e1e3d70a4b86429540e825862	CS037	beckaburnhams@gmail.com	6959991403	2 Summit Parkway	35
jbrigstockfr	a9e8e3fafca7ce81adbac02f9920f3a87a685ecb0f7a4f646423b86daa6c5da2ddf8e76802f37c3c52f741819a753b833dc3898615cf8e93941499e740848209	CS132	jessamynbrigstock@yahoo.fr	6942100620	2819 Bunker Hill Junction	85
jminneybf	882a6c8b59c44ebb3e4ab90b87375f46e8c1e621a3e76b1b501615d00b67716ee355845a1f2b8edb184e3cec0351175206926debb80a5a42b6c6f7334a583f29	CS039	judminney@aol.com	6937980718	730 Pleasure Point	45
wdolanee	e2098922d5525a429f50aa9849368a13447c9eae383d7d9f54dd47651e8ec518c99cc512286417b80be5d3a658ca663f9c62c71579afe49c9076ea5d12fad6f3	CS041	wooddolan@hotmail.fr	6964141255	5540 Swallow Place	110
dwatermandj	11fc897289e9f9290dc804555a3f62cca983ea6588174f04b97efec567e8873058dd5c8cfcee5d71f2b872a65986b35280167ef9e0efedcb74f70ad6a7ec1a77	CS042	dillonwaterman@gmail.com	2106233638	7381 Little Fleur Pass	85
slowndsds	3a2af49f4d17fa3137a09ae1d53d32bda00d97f0eb8d523175b06c91f11d4ed446065c6353040f5f454ecbae1e5ffc229e114848e887db8d0ed5af53dfd46bc1	CS044	selbylownds@orange.fr	2108730027	3 Schiller Drive	90
dwarburtondm	79f575222c697ff90b50dfc6d79eba1ad313ec1b6f8eb8fa33d4d47fb03793bf0eca19dbee4e25fbdc280641a61baed1d45a10fd111a84eb513c371d2499f2f1	CS046	daffiwarburton@aol.com	2102073664	52261 Amoth Point	35
ctoulmine2	6f0214ae624efd466a55c88861713b598612b2a555591a1227affdeaf611d1a7bde1ca5da7c860b1942a585d50ddab2f45744fd43aea986ae1ea0e3ece3ee973	CS048	cyrilltoulmin@wanadoo.fr	2100612959	088 Mallard Junction	65
aheddenev	026fecbc928325787e8bdf81efb51790b365ed865db0fb8353ab9ed2324e16c3bc5d89caffa82eb899fb2e984d3f1edc0e71ccf7d01fcace826902ca408e756b	CS050	alasterhedden@gmail.com	6988248093	9171 Lukken Drive	115
cmalanem	68652822144b654ea3b650227090e3d12de6c283bff0bd7528ebfd12ced569cc3dba252798fa8c8cb82cfd816040c5cd05cbda26f1ddc9704a56e9dac17e0fab	CS052	cobbmalan@gmail.com	6934882204	71371 Northport Crossing	110
tgetleyep	69832fe654d0b34e1fae8c072a6d77e60b45d3775071b8192f90928a8934ef174f613e9afa1d4dad1d37a740f61e409c4e193ba6a8e68177f3d5831c5cc80368	CS054	tonigetley@hotmail.com	2101701302	92 Shelley Terrace	60
hclaussenh7	7c32f98fd7fcc7641de9191448dfe76f1b004371ac09132c15651d9b8987177d52563a5184d40587685c082941b26a340c44cd865c311ebcbe995d8ebca119bc	CS056	hiltonclaussen@gmail.com	2108849107	52 Kedzie Center	80
hmitkcovgf	471e4464becd304e8b39d039163409f0c94e1b7dce28259149d5471300f4554b377d0586b92559a27a3f40116b30a046a98bf0321dd7c9a8c9acaa5ff7a5072d	CS059	herschelmitkcov@gmail.com	2106107593	191 Northridge Hill	55
fpenninohs	5fa0817a1f0d9cbf553b6e559a4532953df6d7b667c07b47440809ef4159cc80582725bf1dc0983466eceb7652998935ce590b6feafb65307ef09df7feb7de65	CS061	feneliapennino@yahoo.com	2105286379	80 Sundown Junction	70
jfrapwellgv	b0da9aec61fb09a98229a8c95feca5683a640525e0596ecba0a338c3f615e22c370d97c43b2e2cc1a42a51cf26b943f5bd676d3731e5f11575279b00ebd6605a	CS063	julianafrapwell@aol.com	6970356219	7 Hermina Court	110
hgreensitehl	cc7c2a508b38857f9950a48a8b2e9f8c870f3867dc66d25f74829b9cb118f2baf4d49675e1b3946f749348471a4667a77b29f36ed88d57612362390af961a34b	CS065	hyacinthiagreensite@hotmail.fr	6941657902	2 Judy Lane	70
rforreho	15e1bfc37bc3d06947b73cf41c9f98118bd68e2be3974f138253239f7dc93408425341c1ba8add665a8c9c2369ef8361d2b1ea19e552988d2a080a21e2e473b3	CS066	ravenforre@hotmail.com	2107086811	7607 Granby Lane	50
ncholtonka	03fade6657f91fa41ba868f5bfd63f3ef6c0dc24f2444d3c5068ecfdaa1e01089b95caba21f23e1aab1512f5307cf268fadec55f93e1fae96e71afa2872226e9	CS068	nikanikicholton@gmail.com	6925632123	13397 Twin Pines Point	60
lmirrleesi6	275aba9213f2072741beec09675ea1a711445065eb2a81789ba0fd2f06aac41d624ad76f235e049cc5668a21db9a94ac6e453abd395ab511436db0e87e871df1	CS070	louisemirrlees@gmail.com	2109811713	7945 Kings Center	60
osaywellie	8ecef39b9e371a14b3e5a4347f68335f2998653f05b61d83e5dae06fd25ec1b4c24da095f7c1c95518b8df858d7db1ea5f254545ca5fcf0ddb1f4df3795321da	CS072	owensaywell@gmail.com	2104161471	3527 Warrior Plaza	75
bscotsonk7	eb29e126bbca2be98e75b047a4b2195a0800231f27a853e6fd9a8c7dad459a1ccb9cbe3415ca775e6b5924d020ac714b8adff88a71a31c3c804b165bf8411992	CS074	barbabasscotson@hotmail.com	2101297754	6 Heath Drive	70
myonniej5	c36538cbe754b80107f3ce61b70a2665185fa61f23ca7c34ac3d84f664d7fcc7708b24ee41443c5d327a07a07dff4329272c0910796c067d14955a3efffdb521	CS076	mooreyonnie@gmail.com	2104725929	67 Crownhardt Hill	70
tboswardjk	e8a399b9e13303af326ae2f860c6d5ec7ebe4ea86252bff6a2387a98e1f2cbc35f53de56d3047bd52cc663229f51a1910add9e8e326d8488816b2e0a612bd7a0	CS078	taddeuszbosward@yahoo.com	2104201492	4189 Mesta Road	50
ajoanicjn	14501424e972345edc81a73cd55bd8fb3b41dce484d0d77cf7eee7e959558e81ed2843c0abd2e2ad6aa4deba4fd409112f1cd3c0de71bdb67bc1b6a6c836c825	CS080	augustajoanic@hotmail.co.uk	2109900749	47 Bashford Parkway	85
lcherriemx	b1e219121e56a7ceea50f336aa17b2a37a46347c98217a95376ed84136bf2d26055218c6fe992477b4d1eea12cace1a5d2db160e7d8924b3a0656d3d525e0b1d	CS082	lorrincherrie@hotmail.fr	6920874368	64385 Summer Ridge Lane	65
bcleminsonlm	85023f4825e743b6a638b8d05ed702e9da4f379879c35eec2bef06b0847514f49f5f4f0cbecfd70a6d1294b71c9e9d77b72aa622c69e692b3c549a5d18f24ec6	CS084	billcleminson@gmail.com	2101746940	0 Farragut Park	95
dbleackleymq	53833ddc04a1603a95e40bfebbc2b5eb7f3d472cca1ee19441dd93912853cb7598a4b75ca407650bfed04a5dab512c1d39347906e01d359953d2ea04ce865a94	CS085	drubleackley@yahoo.com	2103155571	1 Garrison Pass	100
ofrowm0	7734e48775fdf1d70458054fff5d82e534eca3e5c77ae417d20220abd8d496fbe3bb11a77b2f106f5f981b0b40c9db476d65e53d745e94ba6c847d93a91fa19d	CS090	olgafrow@gmail.com	6907260151	556 Fair Oaks Terrace	115
swiddowsonmd	1746fbf2ab1905aaf4ee99121d8e11d36eaa6a2eb8de1e3439000b49fdd7f1afb5e81fbaa66cf4b1114335e8f1b92bb5ffe82348130c87ae2e19f478386f163f	CS092	sonniwiddowson@yahoo.com	6903120528	095 New Castle Park	40
fmosebynb	401521af9d2b4319abecc424b2228d463366f31359e35f4443089dec6a3243dfeade11d6a027cf04a1b1981b9af42d45ccf7859d69ab1286bf75549639494061	CS094	francesmoseby@gmail.com	2104580028	05923 Fieldstone Street	55
tolesog	55f277c158d323f2f874d2bd37923c18727245b3f2150e2d4601589dd88c667566f19c6c4778bdd1f5e7e34f6f7e449f5d2ed83edb0fff31157ebe2435e3c2d0	CS096	tammyoles@aol.com	2102317890	892 Michigan Court	35
rmouncherlw	b7855c323154c56d16a03a51f88f8d9f6d9915e53237f5bb1a189dd30a5592a533bc97311e60f96d8f77a2b0d215d91001a7fd82f9bd300efe183f4aa4257ad5	CS088	rubemouncher@hotmail.co.uk	2102827979	50 Oneill Point	50
glantrynu	2cc6500ccdd53ffe802a1eff47627f3d621122ec5a900e281e13832d0efa4b1d070f69a265c8968fbdd82728a2f6995cc69e3d42059407dd30a83a0351f54b5d	CS098	giuliolantry@gmail.com	6971663453	98532 Jay Court	100
mchinnoe	a076b19243859dd396337f84bb1f1f5b297f43dadea6f254c9186ac5526ceb7e115f2213ab3edf5d773f33994769e2bd4fba7e4bec8d9acef732c213416ee76b	CS100	monrochinn@gmail.com	2104959883	539 Anniversary Trail	70
rparkissono9	726b8b4014ea708ac585aa5a489cddbc64986d4c6c7422c1225258763b90d04495c7780aebd951540cefefbdab9fdd58a343f236ecfc3ed449d1cb1969e05b21	CS102	romaparkisson@hotmail.fr	2102981474	637 Logan Street	35
astoven2	b1e73eba6950f0229c1d1ea16505868189eaed215ad1b5f89297420f047fa5eea120d15e5b54fb83ff183d65ad448b76ca10893ab084cc099412a26bada3c04f	CS104	aleecestove@gmail.com	2106812136	7144 Schiller Point	60
cvanleijsp9	e1a19777b1f942d4c3f9d6de4078e399b8db7a4e368e039edd78be2bb5ad70a27773419b081b1bff9ee2d16a9f83e70504705ede7abbfcdffee62d9ca4864ffd	CS106	carmenvanleijs@gmail.com	6958248483	946 Burning Wood Trail	105
vbennedsenn6	b1e7371a29c45fa4268ed363503a51ac07958f7cdd90f68bf155d85926a949624ac19eb881a86ecc9fe788cc698410be81f2fdf58641c72051602f28391bb4a7	CS108	violetbennedsen@gmail.com	2107544925	1 Tennyson Hill	105
arenn33	14546af84c55668319d1683c366a6fb7d090cc46f7e8af3308772432e9e075390584bcbecb6aab6a87489e9f2a8a3cca7a7a61227a3dd2816a8272482dcfc20a	CS110	allissarenn@orange.fr	6997711555	6016 Nelson Pass	45
dmeakingpl	87e4ce8379bec8a13b82c9e952a140ad33431e2fb576843447afe0d6779f3dda1d14226ef77d95b35163eaf869af517fedb4394159af73b2e000b6df6ce6f5ad	CS111	dariameaking@aol.com	2109833024	32366 Brickson Park Crossing	50
jcarlesr6	5596d3c21f035e4c137f0ce95bf7c90ff376a72a6ab43d273a5ca80d83ac44d2b75368c656b42cc29ef7341153b6bb3d50cb7fb2ff861e16e13ee834c23e3502	CS113	jacintacarles@yahoo.com	6978572024	656 Bobwhite Pass	85
cdeekesq5	c8e14105b2882128ad2c6eb0a7d641a3a45b68bf226094b8d053f95970d4d44c6accf7193c50aec44e25bd6c099bc4b07403aef8f098424b1e878af12ba1e1d2	CS115	corriedeekes@hotmail.com	2101387681	97590 Jenna Plaza	35
tgeryqh	dd1bf993d21cdffe0bd97c6b949ad1d6a36cae411e1461904c72fec000ce341bda48fe83e414f339128965c1cc6a614a6a8e58399c39810e92f66b321ad28afe	CS117	tamragery@hotmail.com	2102724065	246 Chinook Crossing	75
galthorperc	4dcc24ac6d688511ebb8af8acc7bf30f8a9b9f2421da5d551fcb6be5870b365a5b9a952e5f8e4e7676c9453bc76ed76bf89d8ef88dd58dbcfe5fb2d96c13ae49	CS119	geriannealthorpe@gmail.com	2109767547	64 Village Center	40
jmcgeraghtygj	ed855f3acbb00ae033ba6d413fce3020cb6d29f637b02e9ab5ea8b677e154762251b462b1b7ac605f7800add013e9fe3dbd99d440948d87a72a79d7640f1e3ff	CS121	jacynthmcgeraghty@hotmail.com	6971197746	26019 Logan Plaza	35
wmascallg0	c2ec72dc983c9cec2cf79e86833a67058f4690ec8899da6b271dadea69533ff74f75b3c74c06c5b2e8525a43e763496db3d3d2e03ee40d936ca18696964e9e6d	CS123	willowmascall@yahoo.com	6933156721	17 Luster Pass	50
trogisterq	7dc71f5d39e394cbdca6827e326fd79126653c7010a4f1445d7038a39b6f845ceae1973322626d8ae7d1e88e707264208f431d41460512baa282471bdfaaf89b	CS125	tarrancerogister@yahoo.com	6945930961	0640 Laurel Alley	75
abussea2	7786ff656db542434a8f4e55ea48e0507836505241214ac95d6b30f6c165d029a2984d9859152a8a39ab584f8fb35b17e975b8a5bb53949f951ed6e55fdca0a3	CS128	ailenebusse@gmail.com	6990038312	6 Judy Junction	90
gmushettb2	8dda6f6698fe2a6794f94f17ed6a170ec98c2a63fbb3381484a8f0669dfad09cdf144ae8ce4ca1245cfb9fd92399e26192b96072ac4cb333f0d515d7bf42d3a7	CS130	gustimushett@gmail.com	2102329009	68235 Glendale Park	70
amatula54	79ccd24d202ed00791cbf0e97db422f1145730d6417daeca103a1be1e7805377f935436e7f481418105db98c881985518ac18658db5660088ce63cb401686f74	CHEN001	aldinmatula@gmail.com	6954725667	88 Shoshone Road	120
hasburyo	4b2af6c6e5fd1141e97bbdbcaa4562792a9ce4d0f1934957fd894f130bcc4e160df8ebd48bee5be81ccadaf016e8c82538f2b0e714547ebb782c4c86e6191c49	CS134	harleyasbury@gmail.com	2103591828	9 Northport Alley	85
dgrzegorczykng	13363b9b322d43468f5fc7516f4fe6e3cfbf6c932ea19b954064baea004186fd513ac54dec81ed34a7cffc2d0ff70d1a7e59be307509a2ebfb346f0c1ac091a4	CS135	dodigrzegorczyk@gmail.com	6908056889	075 Starling Junction	85
wmickelwright3t	480092d0e7924f590fb71a8e44eecee1780bba246640c94e2a0a9b8afd0e92f3910adf158133f9fd74254399135607c11600968ea54ac299760b6dd4c1d9e207	CS137	waldomickelwright@gmail.com	6953693446	00807 Sage Parkway	70
gmeale7k	5ede106bbae526c81b790952adace93ba379053bc6f98ffb79e37e05d0bb1d132d9b2017359bef90e8375c46f244f83d0ff2bd2f942d8a6b23190849f193c1ec	CS139	gibbiemeale@yahoo.com	6991836317	20 Delaware Terrace	110
tpridittqs	c152768457ccef43046c77a45b3e715d02a6d44aa757fcba362d0cadea547d2329424f7ddae85bd1b7939f16fce371442e0e56b896b94613175d3e0cda7a4493	MA131	thedricpriditt@yahoo.com	2108732422	7 Pierstorff Trail	85
blukash6z	880f1e737e2042eefdd130bc61a707ee9bc034b7dc2c8cc302062779a91ffd88851ffe91bc9aef005385f7bf98f4970f54272c4addd3d2090cbc08d7d6b89d2e	MA133	bryantylukash@gmail.com	6985470615	32415 Mariners Cove Trail	45
skeynes8b	87a1740cf403a16abeef73c18b87a223b2c7bf01dd05fa78db64ff0a4a92a7f2f7bda1e5edb4adda10bab2c4143d890c14fed2067644ad20f4c2ba71ad407b79	PHY000	sanderkeynes@aol.com	6950870939	60 Summerview Street	55
todonegan64	9c6588891d3c44b8aa8a26851ccebce2ec706344a357594b623233c2cd68a8d3b49e7b3204d9575cff6d6f3b9ac25f8bfafe043cffb1da4e74f41f17b0b5b867	PHY002	tessyodonegan@gmail.com	2105539204	1 Mariners Cove Road	90
siacomi69	fcfbc33d79c03465cb42a0915fc76b5285db1dbd1379dc602b83a2fdbc6dcaba7b83c8e3d9928abc08fde16c9034034560732a9c7676a957c7269c1a430e6c89	PHY004	sherlineiacomi@yahoo.com	2102703692	1577 Anniversary Lane	60
zhark6r	0180f70f4fe8f2dd2579d3f2a5925a7d8b6082d4d8ff8c45b399c0eafe212859ce2864279a1f297f3c89203761a175b3a4c7cc54b74c2c4eed56184413927ab8	PHY006	zitahark@hotmail.com	2106397260	6734 Cardinal Alley	60
nwinny78	5aad0983922b6f5bb25ae00d9e54202803a8a9f4a8a616b0697ff39a261bde1a7069383caef8abfed60007f61ca7c7f1779de2c5f1cdc7401cca04797f5c6600	PHY008	neilswinny@gmail.com	2109447495	9 Lotheville Drive	95
gflight6v	6dcc131703e07538d41311fb07c4bcd49c17569f7e6907ca629676324fceebb61c8ce2c370cfb7806931925c607f1dd2cc5859e15fd02d3155c69032c49684f4	PHY009	glorianeflight@yahoo.com	6984736487	43999 Shoshone Way	50
kmonaghan7q	c89a983d340d24e0fbc3d41f0166216778d91dc88febb032ca26f7ee71f7368d9e0d5b78b650682ee520de50c4be6a4a98f1e56f0f8ce50819b8468f8863f080	PHY011	kallymonaghan@hotmail.com	2108659210	87242 Kingsford Alley	55
adymottat	28ea9b8458a80358ab86c719bee0867cb10e1360f12ef435a995daebce38d5caf2e8eff3e01a29d860ab3423ddd382ffbe6e5d3a2652abbb768235444ee8cd96	PHY014	aldousdymott@orange.fr	6970898923	37962 Fuller Junction	65
eoneilq6	510d07ca0770ed0198df64a739acd985d350865c9ebd4202797b198d9e3e8e8d381fe3b934de39c0c90431d49f68028d084876d93277d3ab4669c7a9013aad76	PHY119	elishaoneil@yahoo.com	6974941883	89843 Petterle Road	80
fsiene91	c8d3deaa43393cf396b448971bb8e92ef42b86a7a6a5a9ceeef49c9e3d88930ea5ac6396659548560b0975d6d6ff99b3109f4d05a75a0f7476e8be08c62f8d67	PHY016	ferrellsiene@gmail.com	2100680873	178 Iowa Parkway	100
cpalphreyman95	b9de5c872b9fa6b70925b45bf3955606a0b958b8d3a9ebca7d7d207d50942676c2629a3846868254af13f4038c42216aadc5e085f6be684219a8ee75367dc2de	PHY018	chickypalphreyman@gmail.com	2102600095	86339 Rowland Parkway	100
mhickford9n	e35f75877ec1d4f8ea9384fd25d973e11ee41d3dfa91f532140396988f0b55344ab5c8d5e1ba8fd6c1e0b5c7c565a4a424130d36fef58248d38caaa6fb73fb45	PHY020	myrtiahickford@orange.fr	6908359892	7 Briar Crest Hill	80
mpharrow9e	c98b31e035fee8a44d32ae5a74e6bc70448f68fc740b962288cc64dd4742e60f2c4fe02b6c4691d1b2e91a68e08a469943adfe8be9988ac937f280dfd0f445e5	PHY022	manfredpharrow@hotmail.com	2104272144	5716 Sloan Hill	80
wmckelvieag	eb2e1c809062a75aa423e65178e6f9a71447426daf670168fa62c86bc7a7df68d145cbb8b46d170f1872b8ac8770b04b0c97f06b422de034dde0e5b70faf6b0e	PHY024	whittakermckelvie@yahoo.fr	2101820636	7 Golf Course Terrace	85
kverdenc1	b9936a7367b79d17b0bb35131c640d76b32ed96bb738146851c811c303acbc2a030abc113b36e5cf13fb5626e54b5a1d5fda31232a356c1cc4a9d32deae97013	PHY026	karleneverden@gmail.com	2104315079	9 Autumn Leaf Pass	40
ksyrattbk	5706fb6e4211e049963ae1b520e18e9583565532f7c334125e31abfb2e8c557662a5dfda833cd58a2e58d90d85d52ca5d3e5ed23e113bf8c8c9f928bc3ccce2b	PHY028	kensyratt@orange.fr	6953247236	43908 Colorado Street	65
kyeardsleybn	5eb38601f4b59b34d78b4b1324ceed59207563139c48135023e94a892d76eb1a581ea0a66ac0380876f493e962ff016392d324fb1897cc86c1beba987b9a40fc	PHY030	katinayeardsley@yahoo.com	6958514780	860 Mallard Avenue	40
tgresonbs	e2ba6de1e336631c69131bda0509cff4b1e6629b23024cc50347ff8a4b30d2d97622c3095fec00f86713e63f58dfcad8e93c0fff6497a85cf34e93ab304c818d	PHY032	tessgreson@orange.fr	6952807749	394 Swallow Pass	55
kknathbo	6dee30bd814e956c30475fc2ee41c3fd531f537a3aaae1e3dbaca26f12722dbd6ee65292dc0a9f6feea8e03c2b1bd7e5034b533396ab61c2bec239c17def391a	PHY033	karrahknath@yahoo.com	6919234645	42762 Onsgard Junction	75
pgreyax	0d4a548fd7e5246aea1be070b3486bd9eb8c7143e5cd1cb1f6a66c6e7fb4768f2997a65f026c6dab76525c936dc74ac6bbdf7f5926b8a1f2004b25bc707f8277	PHY036	paigegrey@gmail.com	6956326045	15042 David Place	100
slowthay	792d918ed222b3cebe232c1600e8c44c95a800c7f4e1d5f26e3b14a4d61ed009b51ec3bbf9bdc5b9f575a9b1bd78e2903e20636dd7d6cdde776e4622ff1c4e4b	PHY038	susettelowth@gmail.com	2101795846	41271 Hoard Road	60
amowsdaleaw	5346a3e407fa5250869f5f120067a52e361259f3673d5f509af6acad208c08946cff68c9fdbfafa04e72d011c52cb350b646d76b2a3d31743076c95b1acc5795	PHY040	annabellmowsdale@aol.com	2101237692	9 Westerfield Court	60
ekenderfh	8602fb19140bb53af63e7c57added0ec61120542818820992c0a0211fb9d3c90f4101d1a31dfdad5ca009668eb1bffc6d3af80cd494ff150af5482ce8c581d76	PHY042	evenkender@gmail.com	6976549328	1167 Holmberg Drive	65
ldanhere5	978256bad2f83e163113b7f1945a047b4dadb18820b9911ca95c88e6632ab8a195fde093ecc033185c4a35e9d5f2934e2570ee5343cbc85b400722922a70ea02	PHY044	lanaedanher@yahoo.com	6935672692	41850 Transport Terrace	80
ameddemmendz	231b2939d399462148ebf9c8f0ed3d1140034b1cafd6fc3dac638798b2de8b7686c9d1398f0913c7181bb3c820941db1f1a92e0ea81ff0b29ada848abab42c68	PHY046	araldomeddemmen@hotmail.fr	2105632336	1758 Arapahoe Terrace	45
maldieex	b125a0b544f43eaa8970d6a6403cd742fb85349c649bb47c537bdf0f9e49630fc8db02e01afbb87e6fd86fe5149e5e89202036351a060abfc10c285a82dfc81f	PHY048	marcellealdie@aol.com	6948767833	0084 John Wall Road	50
fwicherfe	15b198f1ad3580d296973488713114061dd584b0bace662a7f2f8b0f8c66fd8424db3d1a7456e3b80ec257343bbbd65a24c05f789e9c8c73b4f63d07364f9e1e	PHY050	finleywicher@hotmail.com	6992435487	89 Comanche Way	70
btrousdelldf	04ebfce7b4adc34e88dab3b4e1352400d6bd54d8726ae348e4bff21942efd79e3bb256b3afbedfa3539ece7982a406c4b28ca410fe5f61aba1294a44666e0af3	PHY052	bernitatrousdell@yahoo.com	2107902768	97 Declaration Court	120
shannang1	d8e85906a7afa0722ece03e07061c71586d04869a488542bd09c58574fcb1c37cc8da8c37d0bb573a37ee1b6cbd47fc9779d41638675f8c18d733099536feba0	PHY054	stafanihannan@yahoo.com	2109423428	3 Wayridge Hill	60
mbernardog2	f8287347a5d7cf0844c5e9f97422c2bae7f1997b59b67fddb9164f6667eb7c82aca578ab9abc1432136199f1a2c36cc28dd83de3fd34beec9cd0055b48543170	PHY055	magdalenebernardo@hotmail.fr	6982926364	091 Transport Street	40
pkeenegh	60269b9e07b7bbf3709c5214fb3a179ab9c4555c9ab5e9e3f387bead63bebb338081ff61237f240add67f19c8d44833df65e2413d3d390540dad45fd73751bb4	PHY057	prentisskeene@hotmail.com	6906053991	39216 Duke Way	105
jmurcuttgo	61a70eb35024c5bdbc091bd50461f256848aed6f1bdace0f3dde311cb742fc5f92dfc961523343a2a1ce37634b2124fc466a532ff4870005594a7be9462293e4	PHY059	jarredmurcutt@gmail.com	6914440511	3 Becker Parkway	100
ecraythornfs	1e5d847ddfa08886b27a2b269063e2a1fc2f60961f648640892c4ec04f544fef8212da9242e0c91eadecf57174627132642b88ec11eeae13e453283a2d781131	PHY061	edincraythorn@hotmail.com	6987922332	3 Loomis Park	60
jattewha	842895aa59c095ad0caac789229aefde7661d31be3e137253c7ccd20a11ad852e58e986393f6feeb611d77baf1a0893913e9d5c6be5843d22983220e5ada6687	PHY063	jessalinattew@gmail.com	6925818312	80 Miller Pass	85
tkainehn	7b8da88f478a1c46a1459dc87f45199c16fdcf899afa377e8e9640697e76ddb5911839fe75911ab3389e49adeb1bf17a933d0be98150fcf644a62a417efd98d9	PHY065	timotheakaine@gmail.com	6954525846	759 Rockefeller Crossing	50
rmacronaldhf	2b6f370f5142b1da9a6ac6a8354e8f2d95af4bf9f47717689d0144c73208b5185b6a2da65ecb7634177927e58480e8e0cc3ec365f7c65d7d516a742f7e6cb44f	PHY067	roycemacronald@gmail.com	6919206164	3734 Sheridan Circle	45
rvellacottkf	cb7f5ca2cd10b55fe3d195fa2fd4af1823f1fcdfa68f1c773ba0765494312b9f39711f51ccf9523895d5cd72820c2ac9eef5ab10ce1e78e67d25214a6d0b3f1c	PHY069	robinettevellacott@gmail.com	2101740778	8 Talisman Terrace	65
ysheridanif	9a854febd170c5275a89bcecdd52e83f3950c416598362e8628f9740c73e938409163a060ad2f1b9c563d1d488bc2fa7e7506940c26600408db9590d2aba5884	PHY072	yardsheridan@msn.com	6925006642	634 Shoshone Parkway	55
drikardiq	e50b3ba2bead790dc4a7ddbf4eebd742fd501f67eeae949dba40ec80cc54df72e441920af59f66cfc0348f655eca83a215bc1b6fc22aff8fe85e02f46623d16a	PHY074	dannelrikard@gmail.com	6938415729	74719 Esch Plaza	110
bmarkingba	76db9f8d671221b901cfca02a538407306e46cc526febbf0a8f195ecbc44af0fd8b87959b068f7c9d7f8e2fb0452423d5e6f7ccb02cc146fd6276fdaa9185366	CHEN039	buddiemarking@gmail.com	6945957544	62774 Dayton Point	105
astreaterik	6305b89954d41a8118d280d429f92e407e36e17f0af0f62f9d4082fcc26a12ec52429bbfc9ea6473cb176fe6b127da50661706176716cecefccc6da2eff995ac	PHY076	anettstreater@hotmail.com	2104141692	35 Heath Point	75
cdmitrievskijb	bb2aaf857d47f23082c6bbb2d614b87a001565686ea668ad87fe93793b6acc57bd2021dff472f8aafd8e6f1df84a7599c054aa3a7770f34115b25ad45ab47fcc	PHY078	corbetdmitrievski@hotmail.fr	6914272463	2838 Lerdahl Parkway	60
lnardrupjm	c045e99211c89d6f902e4df6b2b88e0b85280e70e4f954a4909d70e96b3157a83f0cae536d45a7c4b98d2ff0728e487f338fc1f780b68c11f0079235607f4528	PHY080	lymannardrup@yahoo.fr	2102979957	0 Mockingbird Alley	95
spointsjc	f2581b6bd0421dd1a7e2a8b450b35da715e3644c35b2302afd3ec92f4542fa969493452df97945d43cb3e17ba68540b324e134f798fedaae6f2176e963ada589	PHY081	sashapoints@gmail.com	6953986099	68460 Pearson Lane	100
hjarmainjg	f6ab45d2df1e7f5398f2c063f15ea501c2211152aa80020c8d9874676ee68783ff842bb49c9dc9f0b09b3d9de425baa0704ea86cc1f3ba84d485350cf4b11a88	PHY083	haliejarmain@yahoo.com	6988637337	26 Forest Run Lane	115
ilinderjz	f1c76e0344091651bf31b135657ba529aae4a5962401d280041a73381cd855426bb9fdaa44539925bda498a0631bc200eafa0320ff23341b7cf941f4e34711c6	PHY085	isidorelinder@gmail.com	2105342590	6 Loftsgordon Plaza	95
ksillwoodn0	0071eddada4d78bd5f9f3c68af185d1be52e55fe090fb47e2069533ee1f2ced62ace94f1f64a14ac2fd507a15db9488c31c05a8df9261bb554ece83d976ef0eb	PHY087	karelsillwood@hotmail.com	2108274834	6 Moland Hill	90
lhargieko	1c77936f45815b52e86d6c6e071d85df3e5b20adf3de20f2b71a016d3b24cebdcfe290a8eed3c27137ce2a442f962fab1bce158e23dac3a8c53213e892b225e1	PHY089	lishahargie@hotmail.fr	2108465423	7573 4th Junction	90
fedsalllh	8075c1dcf4fd7f109af1c60d11048c2db5b5d570ab32a4f78e3e7ab297d200dad9a3a89e7598aee086071a5592d938d16fd25c1a18ed917b39a410cb634ba1f2	PHY091	feliceedsall@gmail.com	6981457409	4170 Florence Road	80
icadmanla	b7eee429430addb998f8c4bbc7c89f9fdb5d20f19e69f4bcb3a25bf927643e9f7e4c94931d55c27ff495e7eaf10c3348babd40fc2ac777c89ffc965ef5ab836d	PHY093	inacadman@gmail.com	2102725865	107 Sunfield Court	70
wwykeme	9502a0aefa7f56624d1d5d9956859495867cf7e10349b8cf92b31c67467d9621d725c09a8ea6eeb628c5f65ccea7a5672f53eae3ef0550c8f1a9efbba280928e	PHY096	wilekwyke@yahoo.com	6970734824	170 Holy Cross Pass	90
cbourdells	c19214d35285cb1111951d1d988c492b307fc90d7aaed099c04f86b10f84171ecbb1fdec845267662ea9061d8cc87bcd4399b53c9eea0e893a2f4e8f7c7f2588	PHY097	colmanbourdel@yahoo.com	2103294886	350 Harbort Place	90
kohanniganml	8bb88614bdcc0c2bb4a27c970f5870f8495fb67c68535d070ebcfd0e717cb34cfc607fad80ce0577acf2c4c615f9059fe91b3820d7079fe29cc9a70e0f2f14c4	PHY099	kaelaohannigan@hotmail.fr	6977361304	40258 Melby Plaza	90
bstlouismo	a65df7fd7c5f5e347789753a3c9232767b7e319eebc01f44234ee1edbb7f1c25572054d7d44450b391f6c06798afd22440149174ee636d99ec68d5d5007dd578	PHY101	boyciestlouis@gmail.com	2105463255	96810 Butternut Junction	75
ddadswellos	e9e3e574af9214237e9097b28d42b7c3052787daeffc94cc4a6d68d16266d48ab151da8f0bc1b1cc73ddaf519a7ff5238eeb5a244d8f540281252ca7bcbd9903	PHY103	dallisdadswell@gmail.com	2109506657	89487 Bunker Hill Hill	50
ascibseync	2f6a79323a36af900ac2fe9d412ec8f83dbf3f045d8e8566b01d4413b734f1460e403e9c045bea7313e09e601ea58e20afc23a4315856acc06927b3b1806da99	PHY105	aurliescibsey@orange.fr	6970999670	88 Scoville Lane	40
ntomowicznm	ff52cf55fc6ae685629305694793e5ee7c428bfc0ef0973f542ade424a9bf15e326002b60bb3b564df6f7512ece3cc898e8eae0b0a8721f16d8e37a7f7c433a6	PHY107	nanetetomowicz@hotmail.com	6900778382	53694 Fordem Crossing	75
aeverlynz	bfad81f098c74dc04bfd0fcb8d71e29c027ffc393416424aebc1eed04d65f6c98985d5cef1399fcb8de0c2ffc4769a19cdb44435771cf7836390d47860c9955b	PHY109	alviniaeverly@hotmail.com	2100595399	7 Mallory Point	75
rmcgibbonom	7c23a3ef0ee18b736650783ad5c2f2baffce7f8978406f267b76925c7c181abb9e4ef12de31b73dded8a14bdd5060c16881a7ce0e258ba45e2c2c82ce1d3ae3e	PHY111	rosmundamcgibbon@gmail.com	2108243035	3714 Comanche Point	40
gdagonn3	79107b8eb58ef6136ccfe198a71b58a8c30a499bbdac44e52097d7f4fd9cdf4de3a7c6093640ab6a020be8bfe15e6d984084ef6ffa537f1eba1e5e91a9acd164	PHY113	gonzalodagon@hotmail.com	2108323167	0107 Summerview Circle	110
cheatlypm	2f52cc49e5b2f4c1792040593e62e2a97adc5cf05240b32a23107954ab16619e5afa63c2449c8a8341fb882ac7d81b9b8dfb774f701e859d9439526d061ad3c2	PHY115	cloeheatly@yahoo.com	6995962452	1177 Mendota Way	55
apadghamq3	764c6be51f4827bd6b9c5809582462c35127bc6ea3f232584fed3c0a5a88b6974c36f5235e386ba45c988576e15e28968be53b7935169eab27ad2bc0e128d2cc	PHY116	ainsleypadgham@yahoo.com	6937471654	41982 Macpherson Crossing	75
docoskerry7y	bebd75b9f4fc235705de827443c319232eb363f4e705c35c7d5ada095f5f7f8ecef920fcc45913778b0f43a801bc82a030e3aad82f268a04ac2651d4dcd76781	CHEN002	donnajeanocoskerry@hotmail.fr	6919446211	4 Morning Park	35
salldreqg	053dcf7a8f83ef5061b952ba048437649c67bfce79dc88167252a3feb73fd4c2923946f3f110f1c8f7892aea664ce6db76ae916e46ae09ee676dfc9eac62b480	PHY121	sandealldre@yahoo.com	2103826024	3 Northwestern Trail	45
edorrqi	2f98236144e97c5e2598dec61a7fff7884840d497efb89b348a68cbc30926f092a760a0beeeebd9ed1e043bdfd4d0add5381176ee8708da74bf74b8c0e7593b1	PHY122	ellwooddorr@yahoo.com	6985216435	635 Carey Circle	70
ncubbinr0	d41600bb7167b11d332e056b572da7d54aec4734109f0907baa4cc3401386fded590625e5632b473e5be3e8168accac06dcd5735660370c3954207b7f204225e	PHY124	nickycubbin@gmail.com	6963980519	58606 Manitowish Terrace	115
lmiddellra	fd11901e8878b6bbebf51ccedfc9b9da52bc6e3772a8119b37040c6a44ced0d3ac9a3f5187fccb7902fb1efa9f344c2f6315aa7bb76485834ab300bb8b408f7d	PHY126	leliamiddell@hotmail.com	6902417309	59838 Kim Center	90
mciobutaro6	82344d0595d4b30f834b63e531bf8caf2a979e5e87aa574fef6f9ada2d595648f023f2927792a8088bd5160a07ad156add933be044f921ec2a9de22da6c354a9	PHY128	morissaciobutaro@gmail.com	6941071492	84221 Rigney Park	90
mdunnb8	248d9d96517c1f7fa6778304ac451dfd2b687181a92581df5dc50b7fcfbd93395d1f832d064991293292829dde0090a28355aebf3912556c2e274cf1140879b3	PHY131	marindunn@gmail.com	6965008133	7 Pierstorff Trail	40
cethelstonb	e230807bf4fdee4301929684d4668dde6b42c5b816ba9f4ada8459e51dac0e573516770059160ebf4b36bab3214bbc6c8c3394f84e65a94c79543c8230bec5b0	PHY133	caressaethelston@hotmail.com	6969368080	32415 Mariners Cove Trail	100
rfurzeyrk	43ec8f7033eabfd0e5a18aa1526b70967ce8bbd629e299f232c6196b226fe15d2062348fcc574aadcfcca16db85d0d7c8d190498ebe823d6a48e44e24fb6e2ef	CHEN109	rosalyndfurzey@gmail.com	6987425547	93 Kings Lane	90
bpriddisrm	ce9302d8e0c7a5c7ef048575a9a29ce6087f72761f834da24eccc981ff442290c4ecb80bdd3100b3e2f20dbad30ecffb3adf9090c338a556a07d23c688ca41d9	CHEN110	bartpriddis@yahoo.com	6974157970	20 Starling Circle	35
edurrancerr	1115c4a2112970f1e17f7e19020f131ac4059369a72bc39d43ff37624bdcca1ec752a8deff909c3335d0861502ff72deb5191d4859be05793de9c9647621995d	CHEN111	estelldurrance@yahoo.com	2101660846	4630 Menomonie Hill	110
btice3e	9e18634417424b68a92e0e5804d2d25c2cabd732053122df5800df1e2e367c0b71b2cc331994ac86187a8693d0e402af241395943dbebf09b7f366b46f6e270c	CHEN112	brittenytice@gmail.com	6977489046	83 Tennyson Drive	75
idyerr1	4a53786b4086c7454279bc05aa47f5fa9348298f4d001a1a5fb7196631e55e57b630156868f7552a6149cdb50f7d9cc2877f7388dac6f69e684fbe4747ff5051	CHEN113	ignacedyer@gmail.com	6992610882	86386 Canary Road	35
ymcdaidii	a0e94cc51e2fa8d2841ffa17d90c60e536709d34a6a656d48f5b3efb75baff1903ca94786103acdefc01a9334ef9c5821112b8c83512cb8b98182d42f3cbe835	CHEN124	yolandamcdaid@gmail.com	6946972893	5985 Grayhawk Street	70
kthairsjd	5051c40dda580638d88b056fdbaf6a4bd81e3c55a8750dccdaf81d146a4c8326a1421ec2a5ec0b6b8b81878b2944ea38fb002108fd4cb1333324858e59797aa6	CHEN125	kerbythairs@aol.com	2100958108	7 Sachs Place	60
mwhostonp	c2d89ffe098440b0c857c2c4c8d492c4d959dad4151005f04e5361c23c37aa14e970604cd7c8d62e4d757d268a44d72bc5b3703e616e447849644a6cc4838210	CHEN126	mileswhoston@gmail.com	2106181821	4 Merrick Circle	115
mvenable9	fb0f84b96d4658e8575bfa79ffd7ec7526fb3c45e1c1f85368cef535e66a412707f56927628e436a73bdad83ada0271cccfc183cbb6dc41267aa2b32e0d093c5	CHEN127	madelynvenable@orange.fr	2104078444	41728 Dayton Place	65
yflowerdewe	747783cec4ec4f94b02b7d8d9961f3b463a6a46d6e3b29b7c24484e2028faeb43f7c573c20fb9c7eff1703bc2be0a26b893628d9d839d70ccf18da79d1087f6d	CHEN128	yoshikoflowerdew@gmail.com	6980664394	36239 Roxbury Junction	120
bpidduckg	f57e9adc4b791e52a14e5bb19c403f3602ab6982f84ff39d6e691aa08739f5356d5012288f699c33d80a77b826865449304918edeba739a03162c25f89edca3c	PHY135	bibbyepidduck@aol.com	6926101142	9890 Oxford Junction	85
eaxcellu	dcdeb69bc473db3144b36582f1519628f023f3bebfdfd63f9a708663b09c89cb54eed3963bc8f04da201be265c65ea271062e290eb40eb924f55aaf4df7d1553	PHY137	emyleeaxcell@hotmail.com	2100125045	3 Homewood Point	50
lbodycombe8d	968036c89103afdb33e0cd55225ccc53b9f23cc08ca51c1d4dae713d75146c678818737351c7289b089526388f11b964956827e778a2205b5f7cfa01485faa6c	PHY139	loreenbodycombe@gmail.com	2105047521	622 Mallard Center	60
isurfleetdo	af42b2810aa78f9d9a912618dbf0f3b4734c34ae7e6eb82985c98287e4f5307b49606128c7c8b778d5818d101b473e4aa8feabbcbbbd5cd715a4dcdc97cd5eb0	PHY141	imeldasurfleet@yahoo.com	2106511689	248 Anniversary Avenue	110
btidcombn	b99e99f04b27bdf5f0c536853fff4f203e4ab1f8be4a34e5da75c2a6e80e6df50f32e5f4c5bb0127b6f36230d15c1726178647d12e145d23cc8b2689554c065f	PHY143	bordytidcomb@gmail.com	6912803042	41277 Carioca Pass	95
mike	706ab439a1362c5af4093c9956c1540c2e43e63c9da4c125ade8b381c592e1a635b616e522fdfa44802f32b886913a371abbba652ba0d5937ee1f4e24354b3fd	NSE127	michailkalliafas@msn.com	6915165484	41728 Dayton Place	110
bgrimoldbyo1	77ee797c9599c6db1c8217eba1ede4d8456afd926f96db62be2efdbab3b1d0347c23ac782daabadeab6383bc8ed5cc02c62f65b7ed736eafe750db32a9a64f67	CHEN104	batgrimoldby@gmail.com	6973802823	97 Talmadge Road	60
mantuonio6	572aefc10a2164cdf99f5b5dd44412bdfe99f03ba7e66b7b094ee5b1538f0b2e65fc3dd1e5e13fdfd43e255c80e190b255fa7f60b2525becab172fe21624b0da	CHEN105	marnieantuoni@hotmail.com	2100476990	88169 Meadow Ridge Park	40
ahandrekob	b544efa764e9874391c4240ac588c18b88fb426e967aad02d81a3bf93e23f787fe7e304db13e7d0f3c1795c6cc642163c74173f1298ac00393759fa5d4ae1658	CHEN106	alvinahandrek@aol.com	2103101247	90 Rusk Drive	110
lcastagnetoox	5d54be1eb8c47d3eb07d155d963b77d829495dbf55f0f9f53e3c628bf1196cab26dd7e8485a20085b770fe021e4ac006e1177e433d3b9d60e53d26cbc3ecfded	CHEN107	lorrycastagneto@gmail.com	2103418003	40451 Rockefeller Circle	110
jpeacockepd	ab95d3388ad402556fcd4bd89f00cef918d8f4bfcb9d1d019eeae6d6266545ef5d87ad12429ac2d1d56a4f6f2d5c11130a06ca1967f224322843d23fcba11af6	CHEN108	joelynnpeacocke@aol.com	6949541623	494 Graceland Pass	35
browleyro	7faeaf8598ee1f45d5d971b30f55d64cee03107dd76e2e062b2b79cdd28dd81be852196c03d42971adffdd2e673fcc0d4f801e4103692ab9d89d771d512831f1	CHEN114	broddierowley@gmail.com	2100438678	54305 Arrowood Place	80
bpodd3g	766bc6c55527bfc4b95aa0c2808967563727fd9c6e8a4c649b184a2a25f4c29d1c564d72397c3fc8a81c23097da0b8b2b5ad47a9887197cadd17f4ebf490bff9	CHEN115	bilipodd@orange.fr	6960248944	1 Truax Drive	100
pparysiakpt	12491654a783a47632c36a20c9241825f3cef59bf3589b406661782d27a997ac104445f59d8b530585f7d58a77cd8c57386257088dc9a748c72885e84069653d	CHEN116	padraicparysiak@gmail.com	6942479778	0 Weeping Birch Alley	55
gceschiniqb	278530dc9f1d1dec5170e83a501053d3020f7ebb335293280358e4720bd32342627c63b8ca5ae31a8eaabf3ef5fe2a4c45bff657ce2249442ce5762cad8ec550	CHEN117	gussieceschini@gmail.com	6934952796	77167 Mariners Cove Trail	80
eferensqv	47e2b9cc5fba82b67c0d4f39aeb96cf32f4e01b228b3defdebeafaeb4f681c89f56a5d7385db500c0fb6fb124936a89a731b931a8a7786c823d6caf2897de3c6	CHEN118	elyshaferens@yahoo.com	6907312516	3148 Cordelia Plaza	70
dwaldingqj	22c3edbe5d02d2ef0d19249fa596f02a0254ac33a3832bef29bbdc168238cdd98b78340d22f8a7fc005f2b0890b5eb4a2010edd72a3be1fa6c7aaaed603b7246	CHEN119	dannyewalding@gmail.com	2102759376	8 Anthes Alley	45
alacaser2	4fdccdc3e877ca3d30e0cd4544744ac7e132aaca45d450a35f05239fc8d3e2b85b87254af340ae7df8096065d0a6650378b6c80b6995e71c1496b4899eeaf3e2	CHEN120	alejandralacase@hotmail.com	6906720087	50 Aberg Alley	115
asantelloqo	3acf3353f38864815014104e98fc80044e4c64f801f4f8639f670b48a29368c6d7aa7743a5e19117eaec55bbeb882117658120ae810bc53cfbca9cf7021d9569	CHEN121	arabellesantello@yahoo.com	6949983054	04711 Donald Plaza	120
amacgibbonqn	0f8f4127d96ff62abe94c6c0613be24525454edad2ff441ed1ddb6ae6b0ae81c59861c30d7a784f3fb24efeb9e81b7361aae3c90496d4d829345eff7fea20c0f	CHEN122	avamacgibbon@gmail.com	2100169142	652 Anderson Parkway	110
lseniori4	b9d703049af680c92c45b5ea6c76d12d6c9f189f5118436c19ed48f715368d3155c58a0bf78853b25fab7da9900e38d54db8813843d469862021c152d1174eec	CHEN123	leonaniesenior@yahoo.com	6906407564	5796 Graceland Trail	80
tedgerley40	19ffa9104545a0dcb54011f58ab78be21e7c5f596cea07c870efe58068a53f4ac9d1cd64e9014f5a18faaace4fc34d980781035eedf793a8350d2fd1d89ed851	NSE000	theoedgerley@gmail.com	6997750742	1 Corben Parkway	80
sgheorghiepz	be279dfb3024f77e7e8bc430137a3c1f7186c76e44cbaadc149f8ee269ad0bebe238e6cdcd6c247a5aee6b301f65db87b99c0d8722361e1365a3b900ce170dad	PHY145	shirlinegheorghie@gmail.com	6917697315	527 Brickson Park Circle	35
ginsleyk0	f54ee4ba8c13089c0a8289ff3e8c3e10fe9785074b5def9de28c82d2c969f3d1dadc56f8976b27b5106f432b5c01ae334c81db1b9ac7ebe9e167a2524a92b932	PHY147	gwenorainsley@yahoo.com	2100196199	6936 Kenwood Circle	75
mpughsley86	9241a10c1b6097fda84e5c2600d885408980667666137b7c1b5e16736e07c18ab7847df9366fe6a8eafe208a7312d7196ee4e8c31d805481831165068edd10bf	CHEN004	marinapughsley@gmail.com	2102575687	87 Linden Center	65
hholywell89	c6e1a9f9f00f15cb5c083c1752b875b2403f44c5c75a886077c8a1c14db84eec5d73fa1b517380a29de5ea778b50269e9e651d6da4fc8ea7865b1251614a35c4	CHEN005	henriettaholywell@hotmail.com	6943065970	4398 Dapin Plaza	85
nwanden65	5d86598b70ad54f0fc7b7571e99de282caa656b460b7aef4747af26b21a08ce528a1e89a282c43b80e163029f1bf4ac5b03183c193b1341c3e3f1858e2b6b969	CHEN007	nestawanden@yahoo.com	2103116174	8373 Fieldstone Trail	110
sbucklee7n	b502ea85e7c3e346ae2431ef72a244891450469aad8eca31babbad8ea90cf962198d00ca0ed683e94f4d340e50bfe11647b16a0b0ab33c5a18d56cde413c731f	CHEN009	sallybucklee@yahoo.com	2104459070	57 Waubesa Alley	110
apurdy6q	59da0c926927233a5ce6e8f19375da3f221c1cf965c8c368c5e062dd77547055e99a8fe5feb8f85c6ca52d15e07d2b3a3e73022986a5e3a66d246a32d44ba353	CHEN011	artuspurdy@gmail.com	6962511688	3145 Oakridge Drive	75
rrowcliffe75	ffa6dc26af4019033813cc4083fe44f8cbd1dea236866f516d8ad59b3432537097fee28f82f3461482eb3c12a0390c9fbe63619b0d3e0c6603ed7677df3a251f	CHEN013	rogrowcliffe@hotmail.com	2108052045	35272 Anzinger Court	70
wglantz7t	ff475c9a37f87bb4159e3602e12b9aabd25d701bfa36bc1d776beb9d7c5a8132b750ab68b518d9ce25dbbcfabcada1b378b197951e02e82e985d2a96e76a4885	CHEN015	wardglantz@gmail.com	6912808179	61980 Randy Road	100
upapenao	b3c82f69fb60def9f9d8df05763063c0bc44c4b35f3e66c87d7da13de2603eccd223ed3a71b31f6341e813c0a842d037599173206ed708e8500c338c3be3c81b	CHEN017	ulrikaumekopapen@aol.com	2109424189	931 Arapahoe Avenue	110
nmechell8y	72ffdc7d84ddefa2c84f5487ff5ddd4b3dc7b3a9a7b1ee980d5e1c2a0ab96926709c188b53524e9cd769a95d4592f5ac691f9399a2769b14e403650ed6f89bc9	CHEN019	neelmechell@yahoo.fr	6954119209	71 Kim Drive	60
avogeler9s	4f96f638ceb24ecf7bac8a0c72edcb8888635dd2c6c7c1b759d4620cf007a5aed909f79c83522a000f52bf21ab38572ada1bb770c1dca0d807a13318d05f1f72	CHEN021	ainslievogeler@gmail.com	6971008542	99226 Orin Plaza	115
vchappelle96	9c2a252c4243ab7dc2e1325fc6ffb0f9d01d7110c52cbf76fe9f9095cc7bcf328b85f8508af672c82cf5ea72a94002502395f7d32447635c782d4bc8c2b23fb9	CHEN023	vaughanchappelle@gmail.com	6927295708	860 Clyde Gallagher Pass	70
bciculloc0	7ee3f3a6d8e309ba83e16b5fb6e0ee1cb239fce7e9099fff481c637894ed5beb2237e53b0c6d03a0f9ac89d9f5e34631ffd2dc546b81d7186c5c2b99abbc0893	CHEN025	berkeleycicullo@aol.com	6936613979	7 Clemons Court	105
rrobesonaz	efbd8d184cd7310d87e8b44ccf9e2bfe4c91c5885961e41443ad41227a7365bf89f51d43ae76a686636b8333a335136e385ded85936d4c01e153a49588c2b21b	CHEN027	renaudrobeson@yahoo.com	6903827780	4 Schlimgen Junction	70
fmurrellcd	64209687ccdb185eb94f10f29706e96534836de5e15a137e5c24565a74edab743f2afa8b0322b552b143838360cef9f47dbc0018054793bfd3cf23fe09896589	CHEN028	frederichmurrell@gmail.com	2102629273	63023 Mandrake Center	80
cmcgillacoellcf	403812e4b856f1643738eca51018fbd9e8a20cc69144a140b30b3496e625d30f30266cd34eca707b3b091fa54584bcbbb2a291ad3200d3b93aa2107d5fac2a16	CHEN030	caseymcgillacoell@aol.com	2100417272	984 Continental Terrace	55
twanecy	9fea257abf0deebb46febecd4bb486ca86eb8f485ee18f7d72580350ffd08b6d4238ff73d2c6eea320262e1b1703a4935afacc8dbe0bc1e5e40d5a5aa5eac9c4	CHEN034	trumannwane@gmail.com	6922006154	713 Scott Park	35
lbotgerd0	7f2683b580561b40845391f733a9dee9e21919486be8e78ddb9a5c7f61426c6cd447aada3215c513ce7a0e32e58b1256e01df907c40e997cc559031214843d63	CHEN035	ludovikabotger@gmail.com	2100266365	1972 Arkansas Point	85
sropkingd4	5268d20dfd579bf4955a72595ad49607207b8ca1b10188c0bc954c2adba300e0a7007e70c082c33b63439a54aed2b1a12e2943d568b6bcda47c60e9822d9c42d	CHEN037	spenceropking@hotmail.com	2108653845	9906 Burning Wood Terrace	40
estreatfi	3f96085c10c123893cf7361a4eb80d1eb380e790f2bacc041388a66f3bfcdd1ad79da69a1b7c6b19ac327d858d8bc62a57eb4ea1a9e364e0a4a6662b7f2fa962	CHEN040	elyshastreat@gmail.com	6988709105	9400 Myrtle Place	65
dhemmingwaydu	13b114a68b62d735c25e961a4d33ac7602f14c3858721a38e024b8a3f04838c5ad80f3969d5df9b8c71703450be537fdc796b90eb15f924576d00b83d9e88342	CHEN042	dominicahemmingway@gmail.com	6910950475	8 Melby Circle	75
wepper	212b169916500c1f3e753d784cf5a2d9275b15321692802d4647335dd54578b651fef27f31b792a988bb7a926f0741f1ae635d2dd7e70e55a429be718dd2546a	CHEN044	westbrookepp@gmail.com	2102008908	0964 Northwestern Park	45
mcominiek	d1988b697ca21a456099d052b57771e052be2031eec0b947c51c4c36809044434d2f6ac3535702709e00dfc1eac79c40201ef23d71d61123941de0f0c97d6509	CHEN046	mylocomini@gmail.com	6908473588	01458 Annamark Place	65
ewhewayen	50dea742f4c8bc1c20691db63cf99120ceaa8d0e1b4459787b18092cd63d80433a58a0e75eaf54b19e883b2218a5afdbf3db524258701c07b6f4c0c7ba042ce4	CHEN048	eugeniawheway@gmail.com	6967639600	7 Surrey Court	40
cpylkynytonf1	33c8fc0eb8b9995d34f716cae92d041a1b0e2861d940a57ffee6b0b63f93e71435a18343d88297c190ff5ba7454a96a15b376229b3ca8ac710eaf5601d8562a7	CHEN050	cybillpylkynyton@gmail.com	2109985191	710 Grayhawk Alley	110
tmunnshj	403f812fdd4076bc08506bf7a3ea90aacb15f01a6fa3481e1789ddc0a2abff4cc47c75cfb9d07da2a76c03cd2feae733c9c6d0a2dcac4fe8fc24d39eb29b6f08	CHEN052	tamarramunns@hotmail.com	6933443711	379 Morningstar Crossing	90
esouthwardhw	7692c420f14360be967fef8486ac90fab3c9ebdcce08ca4a77bf076269676ba0ca6021698a0505a4e2d233ae3490acd26b017667656a3aec07212d79abbbd82d	CHEN054	ervsouthward@hotmail.com	6929646600	09 Dayton Court	35
ilapennafw	e495ad71a511813c67febfff61d2a7bf5421d92f38e9d782175541f1cfa0713c162237db23950234c8a4cac6c5a324ff6f78861b99219e212524cb005841c270	CHEN056	ingarlapenna@orange.fr	2102627312	2699 Montana Avenue	105
hwalbridgegs	f81bf67e045499afa4209128ef4c7d5a10c829f108792d723ddf583031ab21f083349aa642b70a67b9d25f3da3c4bde6b070ba9fade0e68b0e2679f979d2d106	NSE066	helsawalbridge@hotmail.fr	6923839158	3329 American Parkway	80
wkirvinhc	46edfc3c8050bb508a32696c295d5cdd963d2669d0a2c07c66e045fa844c85842d55f3bb21b39393ae1e9fb1109820a6404a579f410a674daca396072c3f6aae	NSE067	wardekirvin@gmail.com	6976449475	3 Pleasure Center	70
joteagueh1	5048f88b1ad15268f7890f931349ca403bdbf676235cf4ee942b2212c839593caa161a6799ba0d86bebbf01c067630a2c4a49c79b5a58a758604b65f71859d34	NSE068	jennineoteague@gmail.com	6976979263	7930 Acker Hill	60
ndearthgg	8e4e46c8471ffc6e8cf11aa666d6b3501e0a7b46b9337c6ebdcf24629c4c434cfb19ca0571045fd07a8adb99957af3e3231b4e731e42db70c7325b5617963f53	CHEN058	nolandearth@yahoo.com	2103045283	9981 Wayridge Street	80
ycunliffegl	0ca53d68d023bce763671a855acc07287d36fbae4cbc32d782c50e1bb7b26c76193899b1e89a9f8701f5efe86aa544f5a191c350d9d2208deba731307b85e792	CHEN059	yankcunliffe@hotmail.co.uk	2106162850	7 Clyde Gallagher Street	65
wschlagtmanshd	0adafe8f5d6805796602490796e19cea352d5f06e0a6da76c25e218514068e110d47ccee1c2bce12d6f309a693a8bbb62fa81b9e14b1118df14719577facd4f2	CHEN061	worthingtonschlagtmans@gmail.com	2103467562	171 Maple Wood Hill	60
dbrownellhq	88a4188bf81be2c4c429334f12916b112b1a3a7bdc0902b4310d58d46b4cb357fcee7a4c7ac395ccea914b671f60f35f83123449cf25c36a8cf747b3ffafc817	CHEN063	dyanebrownell@hotmail.fr	6966228295	7055 Melrose Road	60
tjoriokg	7322ea3549207c125c29efdf2eeff3df6112c181b8c44ed4966ba0e5b5c61b6c01251213de30dba1c9e7ef9b74c9c6051a3ef2af4d0475d07fb745a3370e2c3c	CHEN066	toiboidjorio@msn.com	6935874186	3329 American Parkway	65
mlunnj6	4c3e38bde145d76326108170bad5f3d697c86f679dba404f07bdc69280553701341dd737367ea2fd9e5d1268ba8ff785b8e3404c78ff3b7fe11344af5abc2bef	CHEN067	mortylunn@gmail.com	6965004934	3 Pleasure Center	80
amirfinij	9bad0bd2f70dc8b1e492b50f2b44d452afa04b350b575c98e41e128f8aea5157ae394592ae508f7e179feb1857bf7e83abbf8c500b61777442c209b0c877634e	CHEN069	adrianamirfin@gmail.com	6975250665	056 Eastwood Drive	65
foriginis	3a801a8518fdf4ca98cc634ab7fe300a9dbd9bc58612426b67b0c099f36bf760faaeda6230324b7494559d4f92436cada53b69b68091797b1e90dc40b4ccc08d	CHEN072	falitoorigin@gmail.com	2102616770	6547 Moland Crossing	50
lbreartonj8	b5b28ef696dcd00b63f0cb9270927f8c17b91ab48997df75557fcb3cbf787e2d315150517a944b818bcee392d644c225db431e14feec6be96d1d6db8e4b5a784	CHEN074	lindseybrearton@gmail.com	6911815650	3 Sugar Alley	90
amcquorkellk3	158facba9ca456ad324f0c1a5d28896fb46940cf8f4b0686634e1f86a3f7de7c6363d0d39e5984b7ed818dcc192613939c62d5ce4a3ede0fb8392cf558042c06	CHEN076	anselmamcquorkell@aol.com	6963565100	8884 Almo Avenue	105
ajerochk4	039f3a4019b21e5525af5156540f4f7c1636da922fe70367c766f642d33834f92b80c196b6ba1e11c4d58bb5771c4f23b4dd37c6afda7d1888c0b5dd77a5b6ba	CHEN078	amaletajeroch@gmail.com	6929529618	7 Troy Drive	95
ggodwinmy	eced78a0335ecb1bf48b2f992b8354c29a5027e3746009ad46e239ce29a63cef4ee42185bd77151464d84e85ac8f916ccb35a521440a468cff757a755d80072e	CHEN080	gideongodwin@yahoo.com	2102979406	07550 Golden Leaf Circle	50
plavrinovlt	eb181937d8de3eede3041700fa2eba38e39cae776be82fc32d6af9dc81d5f2c3c1c5f709ccf193c34605b6dc3305c09f0d2bc69debb62529b85286d9f402e4b2	CHEN082	philippalavrinov@gmail.com	6904538677	88 Trailsway Plaza	110
sgronavkx	87981ea9ca354c846cac3a79da35bc76c15a3bbad772906d20dc675a8a059da50b7c01f4b741586119c2f0c6604082c055c57f2f1bd41c77fcc191a64c3337a8	CHEN084	sybilgronav@aol.com	2100115075	0 Mccormick Parkway	45
sinnocentil3	4775d1c6600c62cdf73db7176f91e4097e8e011fc2790cb51327319831b3ab12392ed9756330745a9a62ca235b1f88457223a705093093726fb9637c4ee162e7	CHEN086	saunchoinnocenti@gmail.com	6987606295	12 Messerschmidt Court	100
wpostinmp	6c2bf8f97aa283c58288488a02b7baa5a5e9de85831aa87a6f38debcd1b4856b41b61b93adfe4d7c1d64893f38e662e57ed7a00fa065cf66d5ab3aad627d5b16	CHEN088	waltpostin@orange.fr	2103525060	107 Golf Circle	80
rbrucklg	1e43e954de74b2d3cabdba88a40f8e5ff516758f2b987a4fed90585fc1c9d9722361e1ff6a372575127c340d7ff9b882aeb930a9045aa5b8e63bbf43a518bd57	CHEN090	ritabruck@yahoo.com	2103868659	318 Colorado Court	105
cpullingermn	e87b1b3302b3f5d84f2aec8b310ccd33686632417293f8f40e42e0335bdfea82daf5a7a5714a58f995db1a41616d54ac35c46f41b8403e3000fddb540403c65c	CHEN092	colenepullinger@gmail.com	6967581999	7251 Elmside Terrace	80
bquinanem9	88f3e3e74cf484fd17da1cc3f455438d48d2604e8550775f07e739daa7e9bbd6842fd980c167ebedc1885462e0c8726f9238119e4af7461a64d8787682ade5af	CHEN094	bobquinane@hotmail.com	6929982949	077 Kenwood Avenue	60
epurcellp7	ea88a81ea8d8fee6e347fd379d26fd8192611da1ae55ba0a3b54c8fda66d4ae68fb0193cfed11e966dfb87383c0394228db33902f8c7ee28fb5d038ceb4d0c14	CHEN097	elisabetpurcell@gmail.com	6904042111	4 Montana Road	85
bbrickwoodnn	674178e46f55cd4b07349defd4ea7d29169b5b6ba60da60bbd24f71caf1cc40b9bd0e8d1c7bfc54a34efe1cdf6b7a2423852263c426f67787fb4319f5d600683	CHEN099	bobbeebrickwood@hotmail.fr	6975179087	24823 Golf Park	60
skeohaneo2	f4ab48fde748b5589f9acbf895eee17ed38a7c00a698aebb7666f5cd4a236478da9428700b2731cc8d18ef594e36d24cc46fb9e5fc4daae3911afe3a3d1d6dcf	CHEN101	sayrekeohane@msn.com	2109782029	2202 Sutherland Avenue	45
jsoaresov	214f51d4f072b09d5a1011b8370316b2fe2a6abfcb179ecf305d7bd828ca291a485f13c48ff1201b841f88c663164796b22796aa77bc081647db2b2f0e5eafb3	CHEN103	junesoares@hotmail.com	2109595733	749 Buell Way	35
bgaitskillr	8fa97961738c22edbe4daf504f52170be24bf48e3e4b7224bb339f6b162aed4970e511f91ce81eda1f19740a7691fe639bdeaad03d974c7a25f54c802508a861	CHEN130	bryantgaitskill@yahoo.com	2100503173	0 Golf Drive	60
wcorbishley9d	d754fdf0eacfcb8e3e6c22b1dec7ef4ec7f1b05a5dafe443f1284c602a0cebc4adb18560040f0c159b380d9e2f3a1fe0c0df9435610fc821930ed52ce835db2c	CHEN132	wilhelminacorbishley@aol.com	2107635658	229 Montana Place	60
kfysh9j	8d71c4099596468091420505209db434b09f455b0fa7ea5cbe53c8a06b1dec54db63308e03dfb8412ebb6f388fff62a8f406b52d9aabf6080257051fd20f2229	CHEN134	karlenefysh@gmail.com	6965236844	944 Main Junction	55
jovery6a	f223e629dd43f04f830ed8f822300040d9861e9cce795a1d0a1694c46eefe54ec56da34069ffde0154e4b83bc7f1654f4be8302c4a38b921ca77ea0b45dac87c	AAN000	jasunovery@yahoo.fr	6976560035	1 Cherokee Terrace	95
ktruman73	2a27b73d568e76b070881ffa5b49cb0d0ea41163d15911b840a14a8ab30596db9c218f6741460dafe17114e0f1f54296f0191ee707fb16948b355d89e3dde0c4	AAN001	kaspertruman@yahoo.com	6905779137	00 Burning Wood Trail	75
cthorogood6m	c7046f308ceaeed857fa31e588b8771d61e7c463f34bf1188f02e6a9c83a9263efa4f096f366c75acd230c60d948fdb4b3edf19de6833dcfe8f0b7ea17d9e8a4	AAN002	cathrynthorogood@yahoo.com	6917444758	8874 Golf Pass	100
mshakespear6n	9e1e4881cc43291cafce2165be0b5e15936b65ec40d01c7aa726de52c95bcddafd1e28c9586e20f0bbf4c2b6a9f473cf3699c0265913412cdcf60fd368ebb3cb	AAN003	mandieshakespear@gmail.com	2100841972	7 Pearson Crossing	105
nivanichev6i	1c264b98a2b257708ea76c88392d81b789cc7ebf8847773890de32c970453cb9fee18eb8ed289d1cc898ac35beefca88011e5911f83d944c2556a4d4622bd65a	AAN004	nyssaivanichev@gmail.com	6995997711	0876 Warrior Court	35
vpilsworth6p	df3e0364b1afe783ac6f01adde40b44d0ee074daf181d669b9f88440d74a344a7d146dac599661a86b4f472b2b119fcf6b516869e8705b50959f3470b1403f1b	AAN005	valeriepilsworth@gmail.com	2105962665	9250 Riverside Drive	105
rnormanvell6y	586881d442811e8df44fb2f5b184cd10c7d1dc460245810626befec5c3600b8b53380f7ef09c901424237b9066490b393d3b1c6485e8090cc2c4897b6f522734	AAN006	robenianormanvell@orange.fr	6968313514	235 Crownhardt Drive	100
msitford74	8c6b1197eb3350a75cb5010553ce9a235c9857550c9cb12862d3d157ae12453972e445a842ab3f4599884f0571090d5c592c362e444aa36ec801f329e7fa13c2	AAN007	mariyasitford@gmail.com	6919948569	0 Bonner Alley	95
cverner79	19f9bffbae8520d4c6e6d8c1a19f0376ed6b7bae0d74193299d8bfc1c0a89b46010eb4b92dc1ea06aefde301e3fae22d05ba668df662a5ebe1ef244b2f225f5c	AAN008	chrysaverner@gmail.com	6902310014	59 Westport Court	40
agauche7e	62a62d86fdd88bbaef30cb89e6ddd4b4a7afe3337c0a9c2b9f299b692cdf6a379a2ac2f7342708fd9dbde359c33a6fa7e851dd0539492e7bd74854197f4a6be5	AAN009	alligauche@gmail.com	6926835393	70 Kinsman Point	40
ismaling7f	9a47586407ff3489d247aa37174e21391c0437b93d06800e423b89d8a9889ce800e541439d3e04883b5b8779943901cafb3d99643d7fc2b6f46a062cb9afa2dd	AAN010	iansmaling@gmail.com	6936653157	131 Talisman Court	40
rbirts7o	2d3eb86ff3c288ebd7116c0917fd0d27b09442ff3ce351717aea13059a0400cf129c1dbec605ff7cbea5a3e101a323232ba0fc99e97aa5b475cf65a0918fc56f	AAN011	ravenbirts@yahoo.com	6985250914	3142 Annamark Lane	55
csimnellf6	3ae290ab1df73705991cbd5bd2a14e8404b435fd0e464b4f1ca3a28ee2d4c5fba2349e5b2d9eafe7c28772aeb9c6f93f254e53c25f5745458326fe0d2eaf9b61	CHEN135	conniesimnell@gmail.com	2105510229	2 Crowley Way	85
dwallicecb	4631e2dddc6682e2d02a648f2671ca451383afae57d7babea0435bd128157d79d0094bc741f0c2064670f0b8013c7cf500727dfe5e25b85aee9d111197ee874d	CHEN137	delilahwallice@gmail.com	6999459871	3 Portage Way	75
edayment2	b01a97f55f8c366c290f6fe3c959944143bb0640e006dddb180306184a0b170297fc4a62d90c2b796eb1f5ac8fa603d0ee4ac54042e57a756c0c44fdc12dc1dd	CHEN139	edithadayment@yahoo.com	2106348879	9 Spohn Junction	50
aseelbach7p	0cc306c8e71a49fbb013b5822e0fb8681947a976d34b48745bec571000e73ed45e0ed72343a0770eb33206fcc69d273bb15866e068e28060616141e19266a3ef	CHEN141	adelleseelbach@yahoo.com	2102920838	2960 Namekagon Point	100
wchilde8i	f7ef96a8c2105c8c9e319caee694c0435fc7d9f722e7f14beda028c9f8fb1fd8966af83d987e5ee6b795677794b65967ae313db45fd39b3bdf93c8d3c5998eb4	CHEN143	wendichilde@hotmail.com	2106664544	0139 Lunder Drive	105
wferrieripi	bc707662636a75f7561199183227d408bd8d8e74531ca7739a3d6d81135fc8e8d6d99b69569cdf56239730d35ef09d8ddbfb7c6b40844ce2f9e4f7cc1d20550b	CHEN145	winnahferrieri@yahoo.com	2100248576	83 East Avenue	90
lheathcott5f	570dc38e5c7858f438a835b5b4edb328e3c6d66cc2e800944dd8d20348e411d4a45db969d4a1834fb9cfd464b8160abac16e5408e3c4a58330c7a36c15bcf577	NSE002	lorenheathcott@orange.fr	6911169876	4 Morning Park	35
sjansens5k	53a9dddf52edc413ba047249a2fcd891d66a13549f808e575ac40e9f472e74df83f5d327a411c44274e871a093f19e1710644b52d78f808bd14f32fa06a7322d	NSE004	sybilajansens@orange.fr	2102383541	87 Linden Center	75
glory7z	ba621932b6a81d032e656f726e76c7a7f560d53a35721599af18d9847f8d0287f7b6bfd838c4e421963045ddfb41000c02fdf2a252b4ec66b32b20b595d3ecdb	NSE006	genelory@hotmail.fr	2107793718	274 Kim Street	75
dtyndallhr	b4932f6563f2228887d1b7c04be9e365e5a63c6817bb00abbbd17fcdfe5a0ca4a13d834f9c0ad9ac620bb38e28e8d83a94129be883c8f3b1c75a62e316d3aa65	AAN055	dasyatyndall@hotmail.com	6965997012	714 Macpherson Drive	80
ebenkhe67	96d66453bdf0d22b62be3a0bf017dc5865917ae010860c0a35cc2419dbf0dbcf2d893822f8996d7daa150da1accda94bc869727ab7b322461ef0fc47426a22a4	NSE009	ermannobenkhe@gmail.com	2103536580	57 Waubesa Alley	70
mphippen6s	c270c21d282f41f4d36360e9d92aacbb4e4385b65a75cb27ffa22fc7e5eb2ca1162dfcca9c05cd2a028f67e44a49d11aa9ff803586a06b121b9cf9ffed6efa0b	NSE011	mickiephippen@aol.com	6998759264	3145 Oakridge Drive	105
fgores6o	60beb8926452f21793d1f2677bb2d629e9dd6f5d622070391a557a7c661447fd2127961032621d10ec3015699907e9bc14170471d2fc057b07f92076a377f051	NSE012	flinngores@aol.com	2102444670	2448 Fordem Hill	115
tsherry72	f07266a12b53b9ec68a34a529a68e3c929e223caa9221b8b7e322dc6b40a3d5c4d81b307e9f55b060ea0a679314475d71b2bc055f989841927f2453cb6d61e76	NSE014	tashasherry@gmail.com	6936486902	464 Lien Circle	85
hstovingar	4618a275c009bf183f9bfcef5f0e528ef108f7d8ca7ba7e455fcdeabc525bc2d945778eb018674b18b1bb36c32bc9ae76aa8bbd934264c02e24b1f774dce1377	NSE016	harbertstoving@yahoo.com	6964426476	8767 Fulton Terrace	35
wkillimister8u	32f728543e7deaeb8138c55f3197bfc1aa1224f28cb7d27d92552ddc630530d99ec2c5116d9c564dd6d4eab1c1bc0644e612bad941c1e1d5f735a23c1eb39dee	NSE018	wolfgangkillimister@yahoo.com	6958958473	99666 Kenwood Lane	40
boneary97	7392f35c600553a2e85e64b3a159c1921d67fdc903e3bf57b1d034a44ef5f63a62e6a0495c7b3c59c4f8174944d40004dc3affcf17839aba7e7492ee52d0956b	NSE020	byromoneary@hotmail.fr	2103691464	85 Marcy Lane	90
hadnea0	06f6e6a4ad74c20adeccf4633744c2185dcfe5105946ad5b7ae957001ba217e21db1ceae7f71b973b1780234377935ea9a0bd834a5b2a3af7394bbc156284f9d	NSE022	herscheladne@gmail.com	6963123396	99502 Autumn Leaf Pass	90
lreaditt9q	5f699cfa98b0b190d6b8fa3ed284e64f4d999a27a160f13754e674256855976aab982b44c5ae54158a6896beeef11052ce04f22d947aa4c4e9e8fa44fc493184	NSE024	linnellreaditt@gmail.com	6987558692	381 Delaware Pass	80
mminchindonaf	b1d4a5958cad5fd207c4c561813c3e58dfc18e633ee6e6c5b4b7697da52d2b209f3d3d9eb885f4f9091a9556cb8208ac803a3069c7c5e754e5eae3c3e2969de3	NSE027	merielminchindon@wanadoo.fr	6978798922	4 Schlimgen Junction	35
fowbrickcz	e972c574c41ec1bd5dcb3a4aa4f93c5d9636daddecf3f3b31f62866d6e4f3ab89b224008f54b5bd48525b916f3d81655ce8a066a8cc7fd4e44b1f13a0c185f03	NSE030	felishaowbrick@wanadoo.fr	2105938596	984 Continental Terrace	40
aspollencm	9039c0bfe7670a1008a2f7f7f2b9daf55845110381c4bc8a53f54e05da98576209e5ee17ee85884d5cec91f42f6d22879e941b377fc7d70edaaab991faaadd3f	NSE032	anettspollen@hotmail.com	6925394331	545 Barnett Circle	40
bjanczewskiby	e0083e6c70cb01e5253afb39eb27fb119aebafd79f9fa7b1f5abcb23a67b541319b41473e8588bf973da77b1f3e160280c1f9073d7710af1789d7baa3ba9ab63	NSE033	bironjanczewski@orange.fr	6978055865	1 Ruskin Point	105
tmountcs	bad61b9e553f16a6166e7b6813abcd08c9068da8ccfee1a9a20d52c3e713636367482714d92fe4036161491d8e4d01f27b1101556abcf34ac5512e3e631d3ef5	NSE035	teenamount@orange.fr	2104287488	1972 Arkansas Point	80
carpurbg	cab5edc7d55bb5a168809d58534d5ca771a848aa3152c562e4d0c12ce340630bd2fd65804a4c9496918d6d2ce27ffbab3f9246cd5a16c933499f8cb47b57a17f	NSE037	candisarpur@gmail.com	2106958211	9906 Burning Wood Terrace	50
egiacobod7	7596bd5d1465b94f624effdaa63fe0e12c21c2336662181313c7a3b395f6bf584a2ef5ea42278890fcd0b6ac66c7546e1ada57cc4c3c586ac34f21e742a7be70	NSE039	eveleengiacobo@hotmail.com	6913256468	62774 Dayton Point	50
jdashkovfk	3599bcfca04b609516020e2b8404f12bcb4783a05bb80174acf28e321d7a391d155750db2b247b9667350e7e0d81258a5366c008153656104d970cc2c36d92ba	NSE041	johnathdashkov@hotmail.com	2108430010	59 Northview Road	85
ddockreayeh	ebabf3cbd5cb6306114953b0f6514cd253e7a0f3e81a138c23f7bdd591522f46ac9219466857b613304e08e32a8979323dd0435883c141f9c9f67eb81c07decf	NSE043	darsiedockreay@gmail.com	6929748764	424 7th Circle	45
coniondk	351cf0b1062377721f0659dbe4c915cddba40ddc0d13979dd6a258cca1ed9f4962d38cfdfac9eb930cf1f14e09a9d9e4e4e325efdd3d56af999634834072898f	NSE045	coleonion@gmail.com	6955441423	6 Dorton Circle	60
dtinneref	26ec17fe83c83fb29f52603b49d455c4a7fd115a777ac6a9635173447979ab50ab30cc07438f12e45b737b6e87d84672e67f6c0b9efb7b7fdd99f670de06ef3a	NSE048	dontinner@hotmail.com	6982613375	7 Surrey Court	80
lhawketdw	b8b0e0cbd87cb21d948329767196e69b296538733d52835664d59c5e27ec24f4079d54e73f27fc364eaed464bc94c24bef5624637f6081e79d373246ff1ea9cf	NSE050	lucinahawket@yahoo.com	6954514867	710 Grayhawk Alley	65
dairtone9	b02ea3dcd3a2c63a637e7b57ae856366b53ffc33f00335f5f5a85ffe3325a86a3942d55c4b63b7d2bfc6d1dccdcfa42b4b505261f52d157b184684238983496f	NSE052	donavonairton@hotmail.com	6922207790	379 Morningstar Crossing	60
vsawneyej	eb710c6a4aa245efbb046c68b699d54ec1706ae1d1e356ba2e6cf59790cd1e265534cc949d130e5c64da76c19cb5654f85a9a7c66d9ec0ebbaa04b2ff3362f6e	NSE054	vergilsawney@gmail.com	6940922884	09 Dayton Court	70
tbolwellfd	88d9e82285abc4622646c88bd91ca70a4ca32204ca81b2cf0522c88609decc0fcf06e23c17e20bbdb9f617382a39775221634aa4f766279abe53962b91440398	NSE056	tobitbolwell@gmail.com	2100354394	2699 Montana Avenue	60
skedslief3	a0e8b566baa8368b23a9508043b24e92151a3896d08229f3137bb68cd6cdc245671a3b1507d42c19afd3cfa994704bd9069e4dc86d48c5971c7d2ee144343e26	NSE057	skylerkedslie@hotmail.com	2101592705	1 Springview Hill	105
hlealhg	af29e5aea31d6bf2839bf004b6b725c8834527dacbc7f48736fbb4892f02d66cf45519ea8abbcbbf8daafb764677471f71a972f39a8d676461f141f3af6fda4b	NSE059	hellileal@gmail.com	6971100899	7 Clyde Gallagher Street	60
mcellohu	49fa7a38b477076060c5bd4af87fe6a4d6522741ca5586881823674566f13c9cffc1976d662ba8a0fa1005f4f1cb565b7fe28d70afa6366e6dc2ba90551bea6d	NSE061	minervacello@orange.fr	6954498765	171 Maple Wood Hill	45
lgoodrickft	3fc5315a9c92769d97789b85374c834ac2a2f0e7f038d3ce177e5b1b7fbf29b6753311cef2e343695c9762790b51f6362fcea7b8d09eed42ff4f9d1ffc5d84d4	NSE063	larsgoodrick@gmail.com	6924341652	7055 Melrose Road	100
gcloughergk	f4a505765b06101bc758be143fd47be6bae5372f9cc488c46611cbb0d3118dfcb4a954f02d37fb49ad612652bef95b68c18d85f90422b938846b024570d4c9d1	NSE065	gavrielleclougher@hotmail.com	6956240088	0733 Mcbride Park	70
pchienekj	d7a77c6d3a28c2a72d08abb66275823a79e644791f73a30cb8a9bee3da7910fd0217cba21bbb523db93cd5b9a36ff03ce418c7436cf0b77e59f7f6a26a68556d	NSE070	petrinachiene@gmail.com	6926375691	43 Jenifer Way	115
efranz4p	983af01c7215faa532d9093b8bdaa1331a5696d1b236cb5e6d49c5ad1f55b342856914caaa64cac8f2422867214360fdc19a6bc02b2fe66aab90f871c34f0354	MA007	edikfranz@yahoo.com	6964390470	693 Crowley Hill	90
ekenningham5e	29d88c2d464633b5059c951e73e343d6aad78238a796574c559b57278a2ebbd068bd82235e92127c4e3c9bbffda369c676dab9783057d151b1694f6820065bbe	MA008	eleonorakenningham@gmail.com	2105979393	9 Lotheville Drive	65
lcale5g	436e321e0d37840fbfc578aa5d7f281679ec810dd45920d8f44d0da86b916f06ce8d36cfbb6045771be093ad5c1f71ae12f229e41b241ca6b436e8cdfb0f3b4a	MA009	leoracale@hotmail.co.uk	6949759682	43999 Shoshone Way	45
zmcowis4o	1f13d08f856ee643375bfc178d2bc6dc34d5ffb033671a9b0af76ec2dfda8da41cca829ea1db4ea0a8eae087e738546f18f84d57fd9c0e6c9c99900d75813158	MA010	zonnyamcowis@gmail.com	6904444603	20 Delaware Park	115
asleep52	0b1790cb4691585ac2837dd799cf5adf1ae6b690657daad239b9501f8d83f7ed9f13e075553eb313f445a8ecf59c79f60ac24d2d073b23bd068a1ca8fd46f9b5	MA011	almiresleep@yahoo.com	2104967274	87242 Kingsford Alley	80
jjennaroy5l	207f3d3f3d4979a1e7b48865801c9838ef0b57428b20336ea054509404d42d09b0ba57b42e0a273743ec71245c96754462642cd944be26b5a120020615dc6c89	MA012	jesseejennaroy@gmail.com	2103249296	2028 Center Way	60
rsigert5m	b7d5339e331a11c3485c98220be0e8aa2fe9bea190131c9da4de18e59cbdb23be24c11dbca8ea93b1697011aaba347c88e125a4375fa327f46df49e67fee3473	MA013	robinettsigert@aol.com	2107958495	4614 1st Place	55
avanderwalt7h	6732fb131661156096bf6fb08ba590dc5aad3f42c0d5006a6eafac376b019f6a917ed1e31b43855a34cd358c45fd09c9f3d9459d6abe732a05ce0e1f11cf1db2	MA014	arronvanderwalt@yahoo.com	6986050649	37962 Fuller Junction	110
freasce81	a5ad9cd8baa107917af63078b123eba4a092aa3cddc23f5a4bac6e5838390ff3c0ed40de8d4947239ad17d847870bb289f0e4c670cf0e9ab8a64bb4b3d527e37	MA015	farahreasce@gmail.com	6980337066	61944 Corscot Park	100
jeggleston66	cb00d7b8690eb23d1fca539def4565b3ddf523c59ca3a3ed8506fb1bbe3914ace990c12781b72084205e2f6eb17cec41432ea4613b9c913d4fbc2072bc8e20dd	MA016	jsandyeeggleston@gmail.com	6951701351	178 Iowa Parkway	90
aabramski7	64a06ff7a5c9baafccbb08cd4f32a393842ac2443ee841173096cb2f85a58d1c5b4780d8299d4ffb6f7a8f8699c7d03d0c9404a9ddb4d4ebb40fb59aee067648	AAN126	arletaabramski@gmail.com	6982795113	0768 Rowland Drive	45
gsimanh	6477d01b75a9a081f5f117ece0ce9db80d265ca4aba30a074ca112ad28895b977590a9a711d2d2a4ce6219a1f9d4b792d908e3ad6b5cb451d2dfb5353718fb10	AAN127	gerardsiman@gmail.com	6977721669	6579 Onsgard Avenue	70
cmcgahernl	b5ace427de20e6157f652a0b2fa6bbec63110bbc78dc81fe3dc151e785325d38e257bd54d6bac355d9330b3f6accc9f32b02895e389147e96c7cd7050af4e88d	AAN128	corriannemcgahern@gmail.com	2106793491	8 Oxford Road	90
nhaslockev	1613c1f61584247045608e0e0288afb966f9b19de8943265d4b73dcc4459accefaf358e017a51adfd967913172edd4371fbd2d3394e3ea737b8c2f64f5a3ea73	AAN129	nickiehaslock(e)@gmail.com	2106696644	12 Kings Road	95
mcastan70	da682b930b87579198f3b501036cc5760cbc0e5096c5832b3074c87e53448e8971c770d84a4a7f979a54365e966826ba3b023bc5b6a5a6021238998a37ec010f	AAN131	mortoncastan@gmail.com	2100872861	1 Melvin Terrace	105
ksayse6k	2d18fe3f6ad9892a5d9ddbe248253f9c1b6d83d90193f77f88cab1039bf962569ca8d6ee438c84589ba369153331adf2456f0f355b00b7c42f921b7ad9c5163b	AAN133	karlansayse@aol.com	2103914109	0 Stoughton Avenue	45
mghilardiet	801b86ee01c3fe7f88e45344369d57b80b655d9dd31a906a7b7d2b8d47456a24373f6c62c895fe3be4a86612f719ed015941cbe6f6ea440de965a347b2d5462d	AAN136	mortghilardi@gmail.com	2108401970	6 Caliangt Way	70
dpeetff	f920c70d02634588f8dcef9edfd70ce177d6df570c6472e992db3fc80cfa3f438766c9567b3f2fb026e19767160bee3299bae9c2cdf0f580d2344d81da6543d0	AAN137	danicepeet@gmail.com	2105887662	68041 Arkansas Street	60
edallin5	56f3e2bcee7db794748a96cfade73f83b20cf0aae9449588afce60f1971fc70e5108fdd0235b574132470578a813b963492a3cd126b2994f1fe69fcb52d22012	AAN140	elizabethdallin@yahoo.com	6973657623	5 Stephen Alley	65
ltreecen5	40eb4ee991070dd2ebef3098a2ff50140c8addb84d51a7970c9946d4057179c065f43380d2cab3004ecd9c2ce7274eeedca40662b2300462303964f14ed08c89	AAN142	leslietreece@gmail.com	2109652105	42587 Crownhardt Junction	90
brayerj1	b86e75f9eeba7e992e385ba16ec8466e079fd9b60fa1979f42a40d512abf14e45788e6fc995009fa37d6fb90e5cbc7be2ab9efa5c263b60dc52cfd37ecd92d8f	AAN143	bjornrayer@gmail.com	2101065872	153 Union Hill	50
theakins2a	26621754c16e69346216a9a9de7964f084cb6a640d51b54265dccf1228bb38970581d7ee42f108f15ad4e09789a9013897c1d450bb2abb478056e3cd37a8f6bd	AAN146	tanitansyheakins@yahoo.fr	6964025367	3559 Reindahl Road	65
eberdaleqp	0b8d3c04bdb7e2ee2ae04d0d3dbac57366c2715254f7b1f8a63d066a80f70a22992baebff33964af38d0bab29994dec690667260eba7a03c9f19ac1b265025a4	AAN121	elayneberdale@yahoo.com	2105800143	9 Gateway Plaza	65
abourbonrf	004264e86ef5dc188b7e27abddfd1e8ea72db5666434748d5cedccb6280e70e88b0e6c4ca568bed4d2fab71e217d0b1997676c9929de13126c6f1d7ab3b33ecb	AAN122	anselmabourbon@yahoo.com	2108580144	3334 Lakewood Gardens Street	60
awrathallrg	6b4116caeb08e2811932bea16fce7efaaaec6142d34f531434ee20e36d7b2bc623a470f440c05c9395b3fea5d2b376f5e77f73fb0f11b9d168886b4c50d1205d	AAN123	allynwrathall@hotmail.com	2100757499	222 Paget Alley	40
wcoulthardki	5ae80ccc16c89e257ae67ade6f489ccf3a4cf4cfb3eebd03cc59e54045a57cf7d5b7e19d346e1923d46b0798d0b789e89370a9f22510c90efea851075a8fb201	AAN124	walkercoulthard@gmail.com	2104979167	00 Randy Lane	105
hlemmerst	8e2fb7762a1112f0d4b1989a01f4cf096fba1a8d32b9b790e469b667f7682e6b909cbcc0eab08fe33e8cba5548e5b014aa3322372570a3e81382d557459d9ab8	AAN125	hananlemmers@hotmail.co.uk	6965920529	1 Gerald Park	110
pderoos5s	31f04daf5664a7a8f0274dfc68bf07e61c908943d65d9b5432fefd5191e572b2a9b9702a4106df807c9365de3cacafabb21f097014bf17a2a9d42014e8e86835	MA002	paulinaderoos@gmail.com	6950514683	1 Mariners Cove Road	65
mcrutch44	9f724b6dc9811190f9d4925968e6041370f6bff1f7354d8a3fe598d1360b23c0827b434abbaf34adab535c9210d63c8306332d9fd8f08300404cfb6076f6c04e	MA003	moriecrutch@gmail.com	6919349561	51 Forster Lane	75
agrossman4d	f27f4d52eb52d5485ef5c9993d1c38cebfd00bbb5556bda1fbae78b4b6987cdd29ea8396d86c3e63c0668795474c9657984a49d87b50ec8942977ba61bdeed3c	MA004	allisgrossman@yahoo.com	2107041436	1577 Anniversary Lane	40
jdeviney4j	da539db61a7f5aeac3a514cfde692958c75a54184ed0d44daf908a053ce984691b7ef24a3a3cd44e79b6c8f14e5bf3f699872657e39ac75765b8c1ecf69b000a	MA005	jeremiedeviney@yahoo.com	6948689659	77917 Knutson Circle	60
mtrustie4k	b584ba0f0df23a99716d9fea6bb5309ca982b6f9bfdae32e740bd687da3f4713669bcf7f5abeb711c99f3a70f7e6cfc68ea79233d8b8df49484f48439802fa9d	MA006	marie-anntrustie@gmail.com	2108411606	6734 Cardinal Alley	115
sgayne76	6a84e16e88c6e90d882a7da65450033d45e75d7e1e002f60079d7aee8b14bdecc50ab5d534529b143f9a617b9309a1ca37ab6786ca0ae13633b0d68a9247f68d	MA019	saschagayne@gmail.com	6937970874	603 Rusk Road	60
abeachem7j	bec49a44bcb48f59f60990978e0c425528dfd3096bbdb1bc3d52f6af4845a7f93b6d1b09c8811c3a65f1f997cf68918b5f4bd6d66a3715a688c7ea31ca94575a	MA021	agnesbeachem@yahoo.com	6951201945	817 Bluejay Drive	80
fteal8v	ad5a98457e0d54a60e34bad35e84d69ff479f5fb168437bb8635091203c8131928aec98231d38c4a2ee071f4dbbd3bb06048a3041d9d65e9d58d74bd097d9de8	MA024	franciskateal@gmail.com	2109351933	7 Golf Course Terrace	70
agoom8t	51373579cb1fb39e5f57bc4b2a13b4ba01c4ae27c526487c92b4d13d572e9cd9a627163de3a10cae1ecae736e725e5403059feaeac9e1afb6661b5d84d134203	MA026	averilgoom@orange.fr	2103280563	9 Autumn Leaf Pass	45
hhannam9f	ad516e05c11e823f3e07e805860bb1f9f5ec13091148271ea9deedaab31433ef923d364d72a24853264416291ae05ed8d19698a51ea0fe8ee3c03c00cc70612b	MA028	henriehannam@gmail.com	6970001860	43908 Colorado Street	90
bbonhome9o	a0007d8349727df0d4fd86ce77306c86cd57ee33993713a6a5bf5d7308f340bd7411c0c4ee8c79992a93c359240fea31b683b11afbe36086a629237cb1e15365	MA030	barthbonhome@hotmail.com	6938593360	860 Mallard Avenue	65
vstrudwickad	bb7b6eee281aa68e46b72ab07074d027e3219d8b6a88e83859fe9c71ff2000a9fc928ba8462cf5a6b3d491182147a36b2b7edfd945ab6bd1fa0cb0741d4c5751	MA032	valariastrudwick@hotmail.com	2108542042	394 Swallow Pass	105
mshepcuttbh	2bb703911eb21ad0b4a0e11f747faa1a0908bbccefa09cfce9761df559b77acda0c6ce36d421c6bb312eafa1927c9706d92b55903c3f6db10212d1b1d0ae0fd8	MA034	manoloshepcutt@gmail.com	2106810260	917 Oriole Alley	90
amapledoorec4	d7a951854844831b46fbf2c1746226c3b68e1faad8d5d16b70d45327f4e799469f4de97887a7b73acc4b78b41fd89ca11b8e7c25cc04c63042fa694dd2ddd41b	MA036	auramapledoore@gmail.com	2104270605	15042 David Place	115
cbalogbx	d2e740e909060b4cca8844caa314f77169135855c725df95e264ed1553ef561a82f12ec1ef26992cadf9970032c92e7e9b6c38813ba92d340b541d91861d9a93	MA038	cassandrabalog@gmail.com	6962104722	41271 Hoard Road	95
jdonizeauc8	57f27b3e89c6727cafc8942d8d636370c5136fcade300f0e00edc6447fab45b6f1a5f23efab347b526ffe8cda5653021f477c266d5eaa8f0badd3c1182e13e85	MA041	judithadonizeau@yahoo.com	2108871379	1 Cordelia Drive	40
ajozwikbb	07c8c9a83f7e667fc707243d6b32ab48d25622e341995201d24152a08fe306d6a457526ab68843795ffe4fa0e230ea6da5cb16c9d706b939d784b3b0cade0a73	MA043	avromjozwik@gmail.com	2103250722	9878 Longview Parkway	80
bdurhamdi	32204ce4dcddfb465b43e6731136f76064f4e17e80bb85da34d2164d07f9ab2b159cfea36487f102172bda025ffffac6b8f4b1b43a94d81e4131d930c7a99fae	MA045	baxdurham@gmail.com	2101750525	61 Warbler Circle	100
khanningdb	5aba3ea94546085c6d546e7f8443b394e2abe2c7b15c79e728341a1377c61f80daa932f301e1cf4ea444039cec820b5c8bee4922be48453cec7895529e1a5eec	MA047	katleenhanning@yahoo.com	6909424924	8137 Lake View Drive	45
bpeckes	6c8b3b802120ba924d7858d99af4dd2873b0073403b83cf6d09adcc7b00378e0354813f054b73603c87d21722d4501e3df7b9b5f750bc9cba597e55813922706	MA049	bertipeck@gmail.com	6926167399	3 Helena Drive	105
lriddockeq	2d561a3df4d4fcfa8fd54e43d3b35aaba060f14dfb96082fb8c631d1aad5b7a734fe825733238e3b71b74b65c912608c080b02f7fa78f45f58416817805a0706	MA051	livvyyriddock@gmail.com	2106729314	712 Morning Parkway	75
lilchukde	dc1e6d599581705468b8fc41566cd8418ff24ac7d6dd2b41f21045c56968bd6bb8a7f03e860e9186c2324154268eac23e29a17dfdb0856297ed183542befc05c	MA054	lannyilchuk@gmail.com	6958529654	3 Wayridge Hill	75
kgainori1	52e3989b60ecc1ad6f9781f49e89a535d7b6a139b0e202de38bfa4bd3d1e742fcdc28d572769a59051fc6830dc505392868eab5b57f7cdfcac4e253b176f0e82	MA056	kiliangainor@gmail.com	2100342931	86 Monica Way	40
sruskinga	0f5f49137751ee8a6eb1c938e012143e54b202a9054f734965a3e8f98ae3d317db6a7f7a78070a5a76a4c6e76fcb2866b3287594d8a98f3ec10a483cac635e9f	MA058	sammyruskin@gmail.com	6943649504	77 Caliangt Parkway	110
mjovicicg7	f12a6cf51124748de5eeb47966278b2fecdd0e4652453840a3e024e7dbd27f17aae0fc22c0a18b08e69587576d659a68ca60d0191a468dde0d74056f1d3e6f65	MA061	magdalenejovicic@gmail.com	2100077748	3 Loomis Park	45
rpygottgt	2c1b49a7acd7539caa8c2b549ccaccfa1f6082c54de2ac3d969255d44a2840cbe6a00c7b774833c9d04fc7465bd8ac0a4bde2cb5f10492933c571a44fc5f14e3	MA063	rothpygott@gmail.com	2109263462	80 Miller Pass	105
jheyburn5c	8350458a202c34aee3abfffe1118886786fdae69897b879631a2bb5bd2d308eb1be417a0a29da78135708aeb66dfac88cf2de93f6bdbbb0e4ea81ae5533bfe50	MA000	juleeheyburn@orange.fr	6903990936	60 Summerview Street	105
erickwordgn	0193e0ca191642cf1b397343f38fc05d94037c838a895436c1c28da1625c8b3c6f2b1438a8d330e888b4413fb658a9fcc670ed312c4326eed833892f5586a20f	MA066	ernyrickword@gmail.com	2102594777	9323 Grayhawk Plaza	50
atreskegq	c25c09e487aac32a79ff134d640bdb0c5637567088f6bfe0401d598df23f086d331feba9beec8ca4f79e09c15d648bcf28cd6785aa1851f02441b058974cb533	MA068	abagaeltreske@hotmail.fr	6956948228	367 Merrick Terrace	50
targileh8	fb0716284c0886feccdb9ab30d1477784cfd575ec89db7f650881d151bfa5a4907e2cd3c460337bf778f198c88a268f87c993a40691f524c73239db727f4b2d1	MA070	tediargile@gmail.com	6905303303	0372 Bobwhite Trail	65
knixonjt	b353074f5c43318b2080becec857314c303ca713685198763657fe4c5c7c4337730d3b5679b67a96f916fd3e2320a4c623c8b0ed97682c38eb198a4b51a652e9	MA073	keannixon@gmail.com	6913856141	4613 Stephen Pass	40
lvanderwaltkc	967091f6d751f8039f5c8beda6b3f04afd0e41819e089f970c837638767db4900337621056cc25a8486b2b3786d18a4a58b6202dbcba6a8acb52a82a0825317f	MA075	lennavanderwalt@gmail.com	6989566218	03956 Thompson Alley	85
aunthankk1	3941db8e004d1e824477ff89f6e6601dc19d5d57da70232d9e6473def0e090cd4b7f5ddba8de951b7cf126ce700a614610c7724351aa8e0398ae1de177a03132	MA077	alfonsunthank@hotmail.com	2100968239	96 Ryan Plaza	55
bgraberjj	94e18646e90a5a98dfbc634edfabeb04ab629ecc041d21c2f78702fc3f909b2128ff03f31a531f068cc2d62196b855ef7a92804efd9952390b4366bd3e5f18af	MA079	buckgraber@gmail.com	6941095411	490 Di Loreto Alley	95
jkindredk5	34928f8fdcc842f0c6ec067ee61dd5aa10e9a6f51a5212d23ffed4cd9731874df6ffd532eee89acf9ccb10a7fd7ccb7e055c6e02fd4fe685e0b0c636778829cf	MA081	jennykindred@yahoo.com	2100413076	68460 Pearson Lane	55
rnisbithmu	62901d8eb4b5de216db760522b3b6be3cdf6de63bda7685409f121b5be0e6b42e6b6aa51afa615a7d8fbe91b5a728fb7ffddc6de7581ead857a3e6dee09113c2	MA083	reinhardnisbith@gmail.com	2109939197	26 Forest Run Lane	100
jtranfield6c	21bf28a81a84a6361ae93c0271b9587c3ee17d25ec90dc71b249e9111f8906ad0836195a1a85754cd6134770598fe342bbbe8d2093d211ccbe31e975a4215950	CS001	joyantranfield@yahoo.com	2109464135	7 Northport Drive	105
bcrocketlx	1aaf7473455cd56c81d7859ce59d1ceb1f259217f1fa6b7b9ff2d041f2a1c0746c21ad1d4a16b9514e237fdfcde82c059c838cb402b83ac1d3e76893d8c9c801	MA088	brandyncrocket@orange.fr	2103347511	2054 Granby Avenue	100
brickfordmh	1268eba6ca2bd67e982c6fb35f22e1918feeb58ded8c3b9e75148435a3369dc03b07caac9dd1f8eb55552c530dc2c38a4650e53b41d9a5d31d80efe66c7f7809	MA090	brandonrickford@yahoo.com	2105828944	7 Magdeline Point	40
mlibermoreot	0c9a6bdffd4bdc577feb27d23a6295edb615823bb2b898b8eb2afe5025bc723047009420b2ec5577b689a7ee2d5324854a07e7d00e77e608ce6e82bcb0d493b3	MA093	mandilibermore@yahoo.com	6933894866	107 Sunfield Court	110
xchatelainnd	aa180469cbfefc95ed0fce218062a08a8fd762ef311effb155101244ddbe4a70f71d898550aefc0c73b0917d6a7cd9c13c4073da559fa22c0b0e17f4407554dd	MA095	xavierachatelain@gmail.com	2105678321	11959 Division Junction	50
ppidgennq	52ed636bfbf925528b5ed65d87c7a0de4f9b738e8e107bc146e28e7a0545eb53f29ade047510e886c067d0eae73b1f8447ae19cdee99ef5e086a39e1e38ca1f2	MA097	purcellpidgen@aol.com	6905113140	350 Harbort Place	45
dhutonow	93af07d222754b8ce610eaade7c2828e62e3536dec965ea583516ce33db5e667b3dcc9e6594cdf110daa7de279a894dab2645c5f5f2f6adcbd6e6d1704c8ed6a	MA099	damianhuton@gmail.com	2106256742	40258 Melby Plaza	65
kstollardnx	49a31f4f916d561ef1251ae5bdfb1dd76b286c38c08e6a35b0cd7ed59c88e07f7680e57efef19f50e63e3fe14bba04090032862cc8cca9b907ad11f5d5411f34	MA101	krissystollard@gmail.com	2100472607	96810 Butternut Junction	50
jfilintsevop	3452faacead1519809a1c56aeea2b7abc9fcda0d5ca5280e7d30f09177b0f6984073a581442527ea8d8ab63723e0debfc391fb6ab375582164cdec7b7d31770b	MA104	jojofilintsev@yahoo.com	2109764581	220 Dryden Alley	80
wlavignern	bc21e012b6520edc219d92b2d6fa22fd65e7e6301e80bfb45ec6c03575d84a61c0e5876dd6b2e185ec1fe08f680c1174a72ba5677283185a7fd63ecf1fa87874	MA106	wheelerlavigne@gmail.com	6975307821	43173 Service Crossing	60
emoreq4	db2508e56a9d83863b72c3d0f845f7e1f6c7670cf4ea17d24ed13a7812e612e0c5c16cc96ba45fb6c86615b9d8ba29e27bc8f504ef2b16464ff6edefa1a97b97	MA108	edgardomore@gmail.com	6949762208	34888 Hallows Parkway	90
kgreenshielsqd	e1fbd0a09d979e1af1f3540c80db3fd1cb710ecb4cb7c920dd2dca40ea522034d786545cbcd5cb221e09ea203ac0c405fe2853a8b84899d8d527836c2d9a091e	MA110	katherinagreenshiels@gmail.com	2100023123	24 Lyons Park	115
fkeriqf	01dc2d4b92429d9486be24cdbd7dd35646c8d841310766093fff5dd6f3e960674df5dd80fb1249512796bb5400f8eb6519cb6ff8d90778cf9ad4c85ca8a573f6	MA112	flintkeri@gmail.com	6960367015	565 Pleasure Hill	110
wkubinr3	542fd502d705ffe1506101df02d58b553869808ab22d32a54c15b517bad3a6846cc8f08b01b7201dac38a3aeda893e869a72389a5284fd99ef71663bbf0e625b	MA114	wyekubin@yahoo.com	6959216200	5 Debs Crossing	80
rbilovusr7	54afd6418342c0fd3a932b354e05300d04fcebbd70e6a61968c2ec8d4c126b04c1482bfcabf640da4682bcf8af36030fc7e028e68571c328f872479b1f5f822a	MA116	rosanabilovus@gmail.com	2104591736	41982 Macpherson Crossing	95
bmcwardre	86f96533dd0a303c83c668633370ce2dda4615481b6c85f4f32c33a95e85048848ce73d3c8e2bec106660b95503f34753080cb6ee6bf79edee3159a4e2073e1c	MA118	beilulmcward@gmail.com	6917699233	012 Sullivan Parkway	75
slinekerj	88dee42a07aa79f39065e43232a572d419b65d0a35f2f7395be2aae0db774eb9327a76d2550c542488e83889e908be515ae0649d66e99bf8916793d553531efc	MA120	stephanilineker@gmail.com	6985974065	9 Esker Lane	50
pjevesy	43bccae4a0e3c9757b2f53ea97e6e560e1b9b3c732e7a47d127d6e18a3887963244f1747ce7911aa1a91e9a6bfd282db54d0b66a99ebca12b77cbef169952388	MA122	pierjeves@gmail.com	6918772167	635 Carey Circle	85
kleckenby7x	dcc5243d34b0a48d974ff9d756409dfeda21c2fb4a6ed2c6dfa94654eacf649748dbc3d931aae97a4493a237ada26bb4bad59d0ce8b2fc82259b68278d74e93a	MA125	konstantineleckenby@hotmail.com	6970974871	9 Northfield Parkway	40
ginger0	e337a9b5d468cc3d8a2104e7bf86ffff24ebb68079b27b2a16f46fac03b0cfeab29e91120c4299dd4c195bb484ca948702f0f77c84fc4ff1965008d23535d81e	MA127	genniinger@gmail.com	6955181381	4893 Myrtle Junction	110
urotherape	0325c38ba7f862c6be82f34763d1942261dbd1befd617040003cc6f3cf3e93a869a69aa5f128095d07b9c680b16b33c5454c9be2c803c19dcaed6663a1e17cbe	MA129	ursulinarothera@aol.com	2109829671	9 Pawling Point	70
cdodingpp	900bf27b7e4e0aae51005737f123738e244f2ad6377aea32107f5efe0af15b574e8d7f5077f9e51dd2aa668ffc2e42c47381d6df2f9cc87218fee0b1d661a2d2	MA130	conroydoding@yahoo.com	6999887430	264 Prairie Rose Court	90
tdavidofskia8	64c85578d7c5a11db03a782991be05d268cdd8741a64faf9c7bd9b88442cf4c8b649b5daf7fd4147bfa5c44b28fe6f3d991ac0d9a425fb031e8dcd163927ed42	CS026	tuckiedavidofski@wanadoo.fr	6985712498	8271 Porter Hill	40
mitzaksona7	362ab169e75b58409a281e69ecfcc97b84d0587ab345a434348998bb8bc30b576366e06f8e15bd1e2b659bd13057c261d7f7e1120e1731de18114039f1ff3459	CS028	mabitzakson@gmail.com	2108814077	2 Lukken Center	120
alawes68	8a8c75855763c5310fdf115850b18efbf3604db3d7621b57154c656f40a61861c0245f2bfc78d4a88ac27e9766bed05fe801c20fed61fd56b57f630994916ba6	CS003	andielawes@gmail.com	2103947129	392 Shopko Lane	110
bogden7u	73c89b7ab2a8536956a26e5bba83ba1790cf2a258cd986723c0434c0ea30a0ee3305c9d74a889341483508b51424bf391d8a93aabac469a913c4ed0e342539f7	CS005	bentogden@hotmail.com	6993148584	40426 Gateway Crossing	90
qdullard6w	6889c25e5a03bec702f568b9a5cd65b233a1ded7482cdc7af77faeb0f547fb7ed552e152acdad76ab04e47aab1668c166cdc8c422ef16d59155299c83bb20d36	CS008	quentdullard@hotmail.com	2104308550	218 Bellgrove Alley	80
nkyllford7i	024db8adb06d84b04b8013964b2e2d600adfb22ccd5137deabd5e8a3da52326c034b68fb300cdba59a6b17453f685c16824d48a6242179ab032b7ffcc9764a37	CS010	nikolettakyllford@gmail.com	2104656602	258 Artisan Crossing	55
lbathoe7r	4575971b3beed2b27433e811665f91cb745c8701bd96954013fa5e8c9c8cd5f3642d5d9d140a6e7c2dba79d281d6953791667169f5e7c983010a487f655adaaf	CS012	lewesbathoe@gmail.com	6999783545	180 Victoria Way	55
lbrunsdonak	fc70ca455b61a246b2cf6dbb9e77844afb5b2e60871ac35ecdabec4a303790e64784cb265c47da0e6fe03034f41662bfc8df16db660f51365a865ac84161d407	CS014	leylabrunsdon@gmail.com	6970568789	6010 Fairview Plaza	95
aluter8k	11a87e2a5413b85905053dfc7f6744d8999a4a739614d930b41bf058e037492550d3f7043531b40fef5e88c9be8d486acf2206ac0f1bcdde25562e9ccf5a3bcd	CS016	alonzoluter@hotmail.co.uk	2107226934	308 Bartillon Alley	60
tbayle99	f01b79bf7f61a9ecf32dbc7c6a11f0cff752649351b5868ebc15319199cf30fe77cb76f59aca1accac1ee1dcc0b58edcae43491bcf699f4b64ca0725c508a3bf	CS021	trixibayle@gmail.com	2103698163	46679 Logan Circle	85
cpadrick9h	2f0901e877ba48b0db918d29637b79c22434364bb260d4fdcddc03ab55b03c272648a24e2273e4da94906e82acf2c9e8c092dcbf464a394b6ed1146b19c4ecf7	CS023	corinnepadrick@yahoo.com	6965792022	4725 Fairfield Court	45
nbrooksonbw	3f4bcffb4ceb56861699b863fd3a5bd5df5b6959b1ae2c0148f0347c10d0ed3f37abe19ce55ce27aa79793ed97d9f739c84de7b485bb5f49a3f69912687de891	CS030	neddiebrookson@yahoo.com	2100846657	97877 Dapin Point	50
bscrivinorcr	9d058c8fc87f3447ddfb6d5b9f9b0729509368e1a0ad7f88bff1e71625ab096ed0a3f29b01d8ff4b367b594a83c67df3065eb11c4255f2aa622d2771eafe169f	CS032	brinascrivinor@gmail.com	6915197718	33270 Arapahoe Circle	100
lfrickerbz	14aca30eadef8faf0b0b1ad3c5c6133841faf61b176c25b2c273a4166fd1499c05c23e995513051c4bcf034de5d409f4090c61feb91b455b8c01f169510b3192	CS034	lindsayfricker@yahoo.fr	6931574082	2711 Calypso Lane	90
vpristnorb3	ec9b5ba645fb3f555cc13c3c5f62086e694f5b7c40361089ae6cf789b4f765b67f53124b7741f77d5f3a5acb863c5dfd87f106086d09a0e8d65a06850bb5ab43	CS036	vidovicpristnor@gmail.com	6900745236	69262 Crownhardt Point	70
cscotlandbe	ac53f1706a98dfaada0795d73bf1c85b78969a8e219bf6c1963114d2c5222535d9e0f65faf3a0a8b62c884e19ef3d13499b94bb1182b6271036967bde5312aaa	CS038	camelscotland@gmail.com	6937291195	9892 Talisman Crossing	85
nciciurafo	036be38ca9dd4228ea0327ccc33ede8c3e0b51e33cd4de2803855ccd0e5b6a95be09bf118353922f22acdbb9af1fea6ac2407ec7ffb9004928a49b7659be0653	CS040	norriciciura@hotmail.fr	6987024414	23 Bunker Hill Hill	100
dyakunikovdl	82a9f47474fd3956e7c347b933ecb886feda14a14dcad3babc6b6c9a23001a0daa2ec6ac46b8ed9ca5970ab5631f67b6188812fed2c635436d43345ce8ffefc9	CS043	dorenayakunikov@gmail.com	6911281544	64118 Menomonie Junction	65
mchallinerdv	5cac547fd541b77fcbe551f6fcb8a4e66d9ea25d7e4f0ef3f5db10da77888ee70bb316bfcd36abdeb29c41e70fa3acc0d966c81c9c90ceff659d3d09aee75b6c	CS045	meaghanchalliner@hotmail.fr	6956984101	9283 Mendota Court	80
pkillgusdn	96a9a0efe6b01bf694876273cb006c2e0ac3c193a58beb3a536d4d0052085e422bd34e5652c0045ad463f309eaf8240d619f72e1ebf41eb873ffa0481032c0a9	CS047	pricekillgus@hotmail.co.uk	2103361158	48559 Acker Center	60
brikardeg	7186416ad08d9c503cba9054cce152e9faa8fa97c09d58bfaf0837c62742bd9429aa76a36deb5a3e834f2e2f23063863d9db1ff1a83d398d4084e80ce0b2baee	CS049	burrrikard@gmail.com	6906945070	0273 Longview Road	50
cgeorgeonez	fd04095af5138c189f9b46a7e1310b88d565aaaabf8a0b3d2404e3863d9537a1883eabd6955aaab242e186b34e99e14dcfb1204e403d2d545d8b58e750f19139	CS051	caresageorgeon@gmail.com	6969836922	22401 Emmet Trail	40
cmckernonf4	221a1994ba87f2842e52e03936cef3ba481f9c5ad4a9de26b8681ba161876c7d17936e22a1f271a05799c96a960470a31858a890fbb052b56ba38fb324830ed8	CS053	carrolmckernon@gmail.com	2104843345	7 Holy Cross Court	45
frosebyf2	e4bbb7a451cd15d365488e0205dc1bd72e8b3355b26de7565733d172d22a5abf10df8466967d82ce472193f68b1ce711c50337f648b71e0d5edab83b75f1d0d8	CS055	floranceroseby@hotmail.co.uk	2104611310	08 Erie Trail	40
nravenscroftthm	8365a0e2190a3e95243ae2d8d4bf06aaccf9b0c149958237e4c6b0be590560da52915742a50237d9ab4fa463c55b6edf8ab7327c4652cbd5044feeb8a14feeb9	CS058	nanineravenscroftt@yahoo.com	2107235228	96 Maple Road	90
kmurrockgz	93a3db39e1ada3b70a4cff03dba4b49fcfa08bda734503bd97fec3d61d8a8bb22cb6a986d777903b37399e0cc7a4cb4a577c5085be57289616bd26f0fa580382	CS060	kathimurrock@msn.com	6942588273	43 Stang Pass	75
xpyottgm	927b730d4dd2773c992463dff86dfbc9cb16a122f7a3485d5dba022da10f091ce84590dae5b2bdd22dda8cc13b7942ff00512369c33b224db02ed3e71d29e6fd	CS062	xavierpyott@yahoo.com	6936812635	6 Graedel Hill	75
mouverh6	6f8f209640a61cd45490db6dc585d65b6dac6b761a47b3bd83f594de3238e356ac6b31b894fa8c5ad7f4fd516071cfb0cc75a5c8bab354f60978e0e6fe9a6b6f	CS064	munroeouver@gmail.com	2106945537	60 Lillian Way	70
gdaenjv	e06b26a3130646b9eab301cf1909fa978d8ed7cf19ee93295db3153ffdcfb5a23a4677019a9de2d91e41e5220e33e18b25066eb89a53bfdd3adbda260863cbe9	CS067	giustinadaen@gmail.com	6998915215	37352 Lien Court	35
crozsake	b63b008bc4531b5322f14adb75d78ab18bf7ad3430303f695c03f81584f51371b3dfe71a401af2c097a000d475b125f6a3880989c0a6c4fbde1df84ff6ca4ae5	CS069	corryrozsa@hotmail.com	6956560770	8708 Meadow Ridge Terrace	105
lleekeib	c9f867f8cac111d8be2b510d6bc1269cb20de877169bbc0b9598353c01a8d53a62f5f8ccbcfbeedda29ba341e0caae880561d9a3c5f3caafc56e6c003e2331ff	CS071	lonnieleeke@yahoo.com	6924110264	9 Lindbergh Terrace	85
lburlayit	6c326502fe4d47879b09c0fdc68b1f07609c4c7f00f6808f42d045ad7c5592bdec87d94a149380efc34d8cd8b403f357cb41ac60dd542f26f9ed87e19525bad2	CS073	laytonburlay@yahoo.com	2101007030	23 Victoria Avenue	55
mskipworthiw	e8d2909eade1915d0c802fe39379448a1c849fda351eb37ec315a147996fef40e1db6032a8f0e3a3cae4d686c78fc2ee3d1748c8fc91364c0a382d37b9fe6c5c	CS075	morleeskipworth@gmail.com	6924947178	68 Pleasure Alley	35
mghilksiy	f7e3670a59e662ce2d97e0a17f6912802825ec0c15278c3fab6811abc5a0f13d973f334b53c51584cc0a2512dbc47b6004ba2c3a1f336651b497e574e5739552	CS077	meyerghilks@yahoo.fr	6952152590	42 Lake View Parkway	45
hrimbaultjl	e7efd9cd3357953a7ed323bd85d9d06a4b37bfcf408d0ffc893fa6bbd630a670f75e4dbeddf1a108de429e4a362f7a825682e6c98516edb977edb5d26d473e43	CS079	hildyrimbault@gmail.com	6943645834	058 Mandrake Avenue	115
cackredjp	bff1557844e82ef9cd37e51b7fac296fca3dff0c63167920bda9f47fa191352ce3bdb9984fb6fd00962c8f15489ae6ae329e3707f49a5a39f6c649f25b680023	CS081	carissaackred@gmail.com	6924959706	389 Ridgeway Road	65
twiskerkq	a09e604bb01332c3057bd51ecc5e6101535aea4ffe3b23f6aad0d4dacec66f88c800d4a18eef2e65d5dc123c4d85ee823c7b87d93fc1eb4321ed6c3f6f3b04cf	CS083	trippwisker@gmail.com	6991957025	524 Summit Hill	65
adelicatelv	e66cb14a78e424f8059fb45f5ea22a3f0017e7825dd4dbb5194ad6170ada72d2c647210ab8465bcd14f008cca32c239ae71d4c8f05a464d88aacbde699ccc6a5	CS087	allistirdelicate@gmail.com	2109192935	2 Dorton Way	45
gtullochly	091c04fdd31d0ae05dfb0517345d5d29ea62ec79a91c478c376a5ff930cdba5ab76133d238839e650f50b5b85042fbc58e69bf31f2162f12d99a8a762ff6a5f3	CS089	granvilletulloch@yahoo.com	2103231122	34361 Buhler Crossing	120
dwattamma	79b8d038b9ddbf108f3d7a71c9ee4f38b57e352d1697a2e33b76d46332ed7629c0afa562a21f70d072cb966af99804d8231496e148200663f850bab797132b67	CS091	dwaynewattam@gmail.com	6909832681	3137 Fairview Junction	70
uvannni	0a49aa2b4afbc597ce7ca752886118881ba63d419d1adce96b28ddc2c0d24cd8362fb5dc8b7c36373bb76a4b94d61c6d1a3b53ac8c0958f377174d1832add44c	CS095	ullavann@aol.com	2108130416	73 Springview Point	105
aaizikovichoh	bba9777de493ec14222847a4685550179c5db3c2aa214f9231d957fe435248071a4b1b6eca0d9666f12fa686a217a3596098baaf43d7a80738ad1f4feb13c4b4	CS097	adrianeaizikovich@gmail.com	6930623584	16068 Farmco Hill	100
akleeno0	a9ee89e4775dc18dd39674c04c373b320a6f77688cf8f1a9f1bfb346d7b2519ab38edcf5d7ee4497be6a70251a8c17d6f35f7a69fafd155677e3e41289a7c01f	CS099	angekleen@wanadoo.fr	2106472373	6794 Sauthoff Center	45
pterrenol	f6a77f5445c402c57c02beba9a9443f291a2d12035e49ec6e9e52bd0051c213feb836661bbf5482fd2a15d8cfb0b905a5554a53434ba90efe2bf27c5bb0f90ab	CS101	priscellaterren@gmail.com	2109267179	857 Swallow Road	85
osantorinioc	34da823a5f050e37c0c9bb5fd8f06d1c575c1c9b360ef46b421069dbc108515c8f6c32ad7b2f175743a37d8bad4e660be02cd72398d54b04b8e1c07584e73e59	CS103	orallasantorini@gmail.com	6984495513	4 Stuart Plaza	65
dcordoz	a8bcfd98a8c9556664cc9696c747fc9b3b9c56610862ea42f79019b44e18a23e6194dbe92f15210c8b6784724768eebf19f87adc999f7fa3631f613c19e020e1	CS105	delcord@yahoo.com	6998531939	0450 Shopko Avenue	95
jchasneyn4	d227f2abe5ca3c678ae3974d45beaed57b388b99b57e2ac00bbeea6c5f137e7a3f4b507e32e7a1c96f1fa3f44ffb6457ce14172c5c7f0a37bc8d00af2262216e	CS107	janchasney@gmail.com	6966957730	61868 4th Park	75
ewithnalln7	317dc0e67e3302e25d932d861aa3a643c0d87b8e49fce74443ae7546cab5644784e798346aaafa15c0c92d52928d9a0369ebf3b3a04f0a12dce135319ec9b2fb	CS109	estelwithnall@hotmail.fr	2104724556	668 Carey Way	95
jjendrichpg	fa36d829292051e01779b94f96e20cb6f037585a5dee6b21b09835f6a5aa44323595a44c84c077089502c57d4164f78986a8d00ce6530f297833b755c96ad99c	CS112	jewellejendrich@hotmail.fr	2108521405	55799 Reindahl Hill	110
kmilkinsrh	8be9380b2915137ada129dee4e1488aadd86396920b49a6315c1a2589efeba156631409cfe74befc3c80e5dff268a0d9ce8212874d8d04d33a7762ab6ba7cbc6	CS114	kirkmilkins@gmail.com	2108299442	92027 Burning Wood Circle	70
pduxfieldqx	4c546ac2b944f00e1d55e30fc6962087c68fefc77ace73fd6c04f8d3a191d984163a9ae449756fafbf1eb9e7c26998f6e533a08ffda309bfbfa21a47f783c5fc	CS116	pierceduxfield@hotmail.co.uk	6931702952	35 Bunting Terrace	70
kgarrudpq	bcd9fcf4dea8df1abcc994e100403414e6c29a955cc3ba1f45d86333e218d7f372b05dd072a4ee9aa8c24a83c90ff45afe5e91cf484ad5fa73f956db52eb83cf	CS118	kristofergarrud@gmail.com	2105980130	2 Graceland Drive	50
iestickrd	ba8c026e1f6bcd799c3bac5c0cefd00ace99135a493f662babc92796a5e3d1a9d1876ef0b0bc20d60236c79641f38b67521dfbdf95015de5fceb9cbbf7c9c00a	CS120	isadoraestick@aol.com	6933652991	21781 Eggendart Crossing	85
bpersickei	a544ae3df6d178acda0ba2beee44f216857de879ac04a6445eb884c6e4220c72f109a3451e37422c8a5976dd359339e01177e019e0628ece212b6959b03f406a	CS122	brittanipersicke@gmail.com	2108139531	4 Melrose Parkway	110
gmcisaacm3	1c8dbf722c9fba1277b58045a4ddaaf741e7f2313215d147b986d5bfe48cd930b076c3c58931e7d15519cb22990895ab08ce21b211743a0092e9aa452bc7f98d	CS124	gibmcisaac@gmail.com	6933010262	20 Mariners Cove Point	100
nciraldo10	5964448c5d83e65a4b46b0d48ce5df6053e266e1a6070773ecb1a9f5b78c616730476b62f452bba4ea97497905ef990526ac5ce43d227f02d392ef3b3796f365	CS126	nickolaiciraldo@hotmail.com	6992396501	825 American Circle	110
lgoford11	dcf0204feeeab17094aa6d64c32682e93916e28f3b451040d1766c6eda0c4a2903f930b5e205dfd8239e5369fae21f072c8c400b8f663539876afad6535926b2	CS129	leopoldgoford@gmail.com	6992345126	1 Bultman Pass	65
nswated2	2c14588228f9f316cca60113fa04a2e6b6eeb27611ca9e878c49cc5150c750bd14711b2664c086e9e6faebd90ac50fd76e06cc2fcc62c487a3b9dfa42ee91b87	CS131	nicolaisswate@gmail.com	2106322174	2 Bunting Trail	50
bturri3	e777181f7cdf68e9446eed51e6177e3c9b274e8673da64bc6d747fa7250928b3a365a01d5998ff4a517294b9e5387be2d93d418d77b5aea00437ecb5d9f9c13b	CS133	brettturri@orange.fr	2107286585	6895 Leroy Point	45
ngrinstonne	d542e7b1308fbdf7ee10e3dd642e63b89bfeb98f3d5fb51c318142594d9da4236f4c5e7fd4aa3463024b3cadd0f656bb6c0753792eaaf9801b8f1d8e9af6dab7	CS136	nettygrinston@hotmail.com	2101187054	627 Duke Center	115
lrudigerc7	0d502542d562d18694a6691adea90d3e423bede023f3ddac3e40ca054c132af2178cd0dc900e36b266d462d0c5605dd139114772492a631059c4a0405dce1468	CS138	laurenrudiger@gmail.com	6966392853	2 Sachtjen Park	70
tnoonani8	d07452494166812e4b537e255ba74c11deea011a41a0537d985f3289f9690c7246fda39593869b685882e6f59f3074f5d6c1c3bee81c494170b37a5f31763318	CS140	terrijonoonan@hotmail.com	2109944522	8614 Elmside Point	110
tantoniate8	fce9d9bb9c6b8786cb6d966292802cf360965cc5418d1d202fffb62bc73fba84a477221c41816354f88df3f184c9d2298eee0a68f8d0c9f127a66dbb496ef5fc	MA132	torrantoniat@gmail.com	6914891429	260 Bluejay Avenue	60
eclashpj	ea1b04f7535d8fd4c4f23cfb84c3d14124403a5166847365ba41fb1bb01ad99316316c8873306eabc31f5675df127e865ee514b1c1e0c129291bc7c24716bbc5	MA134	elkaclash@gmail.com	6923302249	36 Schurz Street	60
bcahill62	1be54f30bad1a63a2f277193cb4ee8ea7f43fac5d824c5099c145bac2f8efe01a52fc7773c43b9b1feb3bec2bf72f0525c24efc27c425120a201cd91c7cd35a5	PHY001	bilicahill@gmail.com	2100782158	717 Oak Valley Parkway	75
ccrosgrove1z	6343e06f1021b46fb94d4d5213779fd73610c6284b9fb197aa8ff8ef19700b5ca90bc40fbc3ab0b33c22119a1ed9bd8291c939db278bcb09deee7b7195c6efd5	PHY003	corricrosgrove@hotmail.com	6992767982	51 Forster Lane	115
chuzzey85	823860df1d8a65179a7d36499fdeeef36c119dab347aec79a66b0f46d36e3e238f51d78e703669f6d783c56ad3ae7373fcf45896b452ee3f8f2d7ca0d96c39ee	PHY005	camelliahuzzey@gmail.com	6919058871	77917 Knutson Circle	50
ydeverehunt77	c58495e97f22529c6c8c215f73faad2456ce892747678b040dcda8b51cbb05f6d02f8baa0c4b49b940ab1e7ec7931d8e0509b7e1b81149a4d64519b014beb938	PHY007	yorgosdevere-hunt@yahoo.com	6957234387	693 Crowley Hill	35
arayman7a	64e5f68bb07187ee5df4e89659324801b24b25a9797c7b9612f6dcc2cff93304aec9f1f0f45a66e200c504602e764ef531275262779cf00bf5ac879eade04c9e	PHY010	adairrayman@gmail.com	2100368506	20 Delaware Park	95
cbrenneke7s	f85a0b58cd0e22307ac51938610939e52d7fa87da24475a482143552cbe518e4608abf98b814ca36d1690f7556a6ae6709c542c76e8849b6f3fe7950ec9734fb	PHY012	candacebrenneke@hotmail.com	6927208939	2028 Center Way	110
mgillan9v	845f8008684accb0746ee3439622162a4004062ba923b954a2d63fed209382971077e751f88d4ca09a587a56aea44d622e8e33dee99e1579fbe7f9a078b6f1f0	PHY015	maximiliengillan@orange.fr	6955989204	61944 Corscot Park	110
rrene9m	3c639cd1dd783196c5603fea83af08d61bc793b16c829dc8ee4f4ab1580ab5c16683b9783fc7e6d30e44328afcb0bca1320eb234a797ccf4ef9a2b290aa77dd6	PHY019	rossierene@yahoo.com	6969087858	603 Rusk Road	60
kfiddler9c	0dfca2125d1b7ded1a55aa71d37fd7d51f4b41a19bec5f231f45bef49b8f6fe63d3f3096e2894cdae909f385e65fe3a1e68871f312401bdf23f706551506e102	PHY021	karaleefiddler@yahoo.com	6928650756	817 Bluejay Drive	35
odart9p	a15f2f5afc3bda976a459b6d459891e60364b1161d88f4cfe232d220611c3c7848ab0fcbd6128b7b28f353384780491c76ac4c8c7ab33f4cbfc4f7a1f8922d98	PHY023	onfroidart@aol.com	2106972873	4 Village Lane	55
gsonleyb9	f926cbfdb22e34540f8ce7c0af587db3684cb7bc031aaff1b691ba4c215f51dd14702fe9cea3256e6387b6ae9e65e92b5a18e1a0871ae1a11fba9edc8cac7cee	PHY025	guysonley@yahoo.com	2101697623	910 South Drive	115
mcircuittcn	72a51764143c2841ad9f91dfc3cc6bd92634c1d8bc93b3724c9b505a770e7cdf280d1df53926a40af51ede982ba6a8c214e01b685e64c233b4e9c7138f263e54	PHY027	marcelluscircuitt@hotmail.com	6993014500	34 Miller Drive	55
wmonetib7	685eba55861c0711e6d38abd5757957de2424dde3d46c6649be98b44d3c6456502ceaa0acccb705da739c5aebaec468422fcdcedacaeeb44467bf5f1c181c065	PHY029	westmoneti@gmail.com	6927973802	549 Shasta Crossing	65
rgodarbp	c5a9007d71c1cf434f865cec30507f561b65e593612f4c0f802796d93aba4f7109137c8b215ef32a05e4ee850d88b87476efb5f8c202c4e96893e3582060f74b	PHY031	rubinagodar@gmail.com	2108312611	7077 Pleasure Place	50
tanderssoncl	17f9cc6f892a21954414ccd7f5a933e0c794aa62f6595cfcc49bcc9f37df69e75200cd02c2dee84b5be77c18415fb43403927eaa7bcfe9fb576f799692fa15b0	PHY035	tomlinandersson@gmail.com	2106061304	495 Kennedy Point	35
tsaddlercp	7fa8b7837a95489d3c3d48cb976322fd5b1c3bb8fa3d4e72e4d997c2fe53d7ca763f58a5a2a5ba6b27d89cb1dabf2322e583947258bcf3ded0faa33d25af5757	PHY037	theodoresaddler@gmail.com	2109714464	4744 Washington Road	50
cnoted9	140d3156e15497f83d3b08755a2b7af3b2d2c2ccc2f51232703e94fcc7f2da3aba97f0ff40f10587680504187e95d52715f97080607958750a5a167570725973	PHY039	cecilianote@gmail.com	6927992630	8 Tomscot Terrace	40
nsimpkissbd	623828f882fe717f64a7d4b59dffedabf18e4c384333062e43043ee362854ebfb315877e54e8f14a8c31e7d6e165acc7a492416f492199a75d29e263f81c9974	PHY041	nancysimpkiss@yahoo.com	6926117263	1 Cordelia Drive	65
rstranaghaney	e174052251438ce548a6e4b9c8680064a6ceb3fb2d01121cefc966e3d9e4338dd40d9b6ac59cb6de689c50fb76580f6ee258d5567d840a0006c986e7ab1135bc	PHY043	rochesterstranaghan@aol.com	2108512286	9878 Longview Parkway	45
sbriztmandy	f9dfa59beef08d06a52ac3ce2ba2b78cefb05d040d0a5372f4e3795c38e6e1dc2d13680d8d4b4ef02747a4e9a7888a6e73c117d9ff48faeb623090cd8942b534	PHY045	saunchobriztman@gmail.com	2103794220	61 Warbler Circle	110
bvynehalldp	b4de06992757b531311e12c38fae47a856faced5a3751064923c8750f7038f2fc8a05a8a9cad81bd20c5406fcddabee25e3725074f9579a8ea4887bf32bb560e	PHY047	breevynehall@msn.com	6933573955	8137 Lake View Drive	85
chadleef5	9f1be10a6477f15f4c07a7128d633f4f69b35ba93df097d63586c6cb6925396d24044cb9bac79a2629ed5a06221a04a1c6699d763af87886de80250bbc778b2d	PHY049	curthadlee@gmail.com	2106274409	3 Helena Drive	60
dtinlinedd	88fa69410fd970e2a3b2ea426be5e517dc3c3ebf8e8a1be31beee5a3b381217bee957dff69cb476e177b21075026f9f2d4d0bb8e7cdd482f1b944b1090d6fda0	PHY051	drutinline@yahoo.fr	6914286197	712 Morning Parkway	55
cmaymandfu	977176128212908c2f3456546291c37924786d02ed1a0abc746c27d2485a3e6b7fb5d39af1c5551d0c5cf291c26d5d9b6be9444bdb8a1a00d039b77892491fd2	PHY053	chelsiemaymand@aol.com	6920203531	04 Evergreen Pass	40
mtwinningg6	543a8784c61eeae77bfc50490de602685b26d654e2e2f57c5dfa7939a74f80433a847a6a0db2e6c93ed1e6aa2fb424890c5cfe05ed9f3f93308d40695345f208	PHY056	mickytwinning@orange.fr	6932527225	86 Monica Way	60
mtolworthieh4	744781e87891b068c1521566786f84867148cd880cf32cb724c2948a8d74e588398e4d3028dd1dde898f53591459d741ef1766ecb826a265c0d4e586deb349b2	PHY058	moetolworthie@yahoo.fr	6974780364	77 Caliangt Parkway	110
lpipkingu	5aaf25eb9383aed451bd521b2dc745c7f0a5112e3ff2d100bab94cecf38c16e2774ca89a01e82a0fdd6ea7dae97fbbd0eb54279590362d6eadd33b642f6f106a	PHY060	lyndsiepipkin@gmail.com	6936847938	22216 Schmedeman Parkway	105
ldronsfieldgd	dd779ea2a4309fdb77293f61c5a4437ab65821c496444b912a0c3e33864946684e2a376fa7ea66afdffedba9cb120429abe35aa052cb459ea0b25b7b1f0d6f2a	PHY062	lettadronsfield@gmail.com	2107869573	57 Bunker Hill Trail	110
gbinhamhe	6e7ab91813e99e33a4edbd5babbeca2c42a57234231a5b67c7ba8710633894117c173d8406fe5b9902aeb37ee513efba25cb1f8f2e660e8dfe978e295ebd88f6	PHY064	glennbinham@gmail.com	2103380516	15311 Merrick Circle	65
ldiklehp	1274715ea3b6745bcda62e526fe14866ffa7103c1994f8c07543d5377d3a47ef169ece4f666b93d1d73f27060355282a90d6dcceb3fe6890ad7d566bc1d36c32	PHY066	ledadikle@yahoo.com	2105583496	9323 Grayhawk Plaza	35
vciobutarok8	972691412e90b22ebd49e512605c7ad5e331921276089f2c505725db3d941fb25b6b7a8345de70d17de36d0a156dd79cd0b4f77a82563dbdafa77fe12e12ee79	PHY068	valmaciobutaro@gmail.com	6918272545	367 Merrick Terrace	60
ptimsoni7	6f6e4a4edc9ddbcd042e945b5d82a10834b33027307c7cf5868d51be6df64e23793e93ea684a2e7a264afbca86511c72dd220c203dc994d889d41314cba2af95	PHY070	pufftimson@yahoo.com	2106983335	0372 Bobwhite Trail	105
dgrushinig	82737c2506e9b304d4d8a4e6777dc8cc0409292df040007a23f1d0a81c8efe30fbcafcbc3dfb7bd83f7375ee69a67beffcc688a907edaa3dfa86b6d176cf3ab9	PHY073	dougygrushin@gmail.com	6980751897	4613 Stephen Pass	115
brubinfajniu	440c6689b17cd60ff5862800f1156fa0948ae07088b4a7ade6eb99ae10aca6fcbd3f3855341e632a509224d7c40760aa247e84fc117f99afc294de8d06fd5751	PHY075	bennyrubinfajn@hotmail.com	2104198941	03956 Thompson Alley	90
vbrenardim	434c3e4747c5fed9066e7720630a993980ab3dbf70254aea5bdc4bb9337d07fa04136adcb8499a4bbb95378952f6176f65efcca76b48c62a9d5ba399b7cffe44	PHY077	vergebrenard@hotmail.com	2100532228	96 Ryan Plaza	85
asinnettjh	9df262ac126caba67580746ae6dca2bfdb09307a9d3ea209f024d7761ee5bfd6000a834d4814ee47daa4e42f77206cc6fab9446d52ac1a77722fa1664969e543	PHY079	angussinnett@gmail.com	6980001285	490 Di Loreto Alley	85
abootei5	2407c272b5ca74f1726fc366b3c178ab3a627cab8f206d28f87d6d2fcf8b5dfe873ac80679d9ce431bad0406cb66efd84616a5fe9c3c45261a62c969a6fc4d9c	PHY082	arielboote@hotmail.com	2102861161	86894 Warbler Plaza	35
lalwenjy	75a6a93e091403502cf5c6f4ca6586c530060f630bdbe4b2e790a3d8cc146c49ec630f1069409462943d6cac00ce7dc96b76fdf02204640efb3fb300098c5b34	PHY084	lexisalwen@yahoo.com	2106678110	80528 Sutteridge Lane	75
ndysartkm	3cb11e5eda39c7a88ac7a420e01f399f815b74d27adadb0dffd58f31383ef69e04f205c50953ca6f65b090e9e47f7b0702c18bb3e9dd7c3ce1cec44b64936c9a	PHY088	nikkiedysart@gmail.com	2102751192	2054 Granby Avenue	35
efretwellkr	1d4981c803eb549f5f821b5b800a52a9908daecf80fbc72a0c541b19515c8424053f52239c20077c13bdbfdca0bdc42c13e8b158828f30e288e13a1274580972	PHY090	edouardfretwell@gmail.com	2100085033	7 Magdeline Point	100
hphilsonkv	2c0f4c6135392915d89447ec259be9e408cd04bf452b467f9e76a0b1e6d9a7ab48fffea0bc440869b65975eb0c25f21a0f15443ba8761b0007500d6ce65ca20c	PHY092	hymiephilson@yahoo.com	6914455511	1324 Waxwing Trail	60
ddigbylk	3eb04b443ec952d1da4eaabbb1fc07493e19bc2e787ed3a3eee23f2e3d17e550876f464f59f42765aea724a137a8ff5278c99ebfbfd6f63d60038084a09dc23f	PHY095	devydigby@hotmail.fr	2103736765	11959 Division Junction	65
izaczekm4	04c24f6337c03266cb2fffcb021c3c545e4ff721be644904c81df78a623effc19c94e6c4a94f4a0e6c19879a3153a3fc6d4a26e5a3a93600e608095f75c31dcd	PHY098	ibbyzaczek@hotmail.com	6998053434	82 Pine View Parkway	65
alistonemm	8d350e9eb30d392c896f0fbc5e5ba18ece86809b0f75cfed3f6893229ce75eb4bd9c6dee30290f80bd8489ad851fb4f094d9dabc5d3cf3f11ddcb44aeaa003ab	PHY100	adalinelistone@hotmail.com	6902679208	7320 Grayhawk Place	80
lpregalp3	6b5a0aa29ae67d37e86e947326da77c4c2eeb61d2998805273ffaf7c9e5934bbd5395ef3f698c6e5c0b45a856fd1196ad6a603003e6e907d30f8646e13db84a4	PHY102	louisapregal@gmail.com	2102774483	93827 Moulton Crossing	115
sbalshenp1	2da840ff1a930928395f8ac9d8c3a05c3e2da17a6cd0e5739df3d141351769aa531b51d8461e0dcabc44e371b291ebe10832d62fa59a1b993ee001b67b33169e	PHY104	shannonbalshen@wanadoo.fr	2107610081	220 Dryden Alley	85
pmelvillenh	a59bd1b31e5d373538b03a56d5000c6ec8e4721d72c168426971898909bedd8b7c0fda72bdad672ad4b94120b789653a4cbab1bd7b784eac16f60d655f64b1fa	PHY106	pollymelville@gmail.com	6926287515	43173 Service Crossing	45
ddayesnt	10c4af5e5df50032e4dbcd64185558ea219c282f99fd5a8d338bea9eb57cd7bc3caccbf685059d3c3244b3c64181ad187c82927999b7ac98f51542428e569074	PHY108	darleendayes@msn.com	6989098287	34888 Hallows Parkway	45
adeeproseo5	28d750ca4e746ba86d56004bf4bb7289606317a4eee3f5ab1b9f048bb9620f66d3143cd8c537e4f6e79d19aea2c29daec66621aecfd28ad03b0e6d13dec5392c	PHY110	alricdeeprose@msn.com	6969031845	24 Lyons Park	120
dkobesoa	b7019cbe9d4f68e8c1488c1b3acc26ef898162fc30cd6cd83a3aa6be3145b82413e71b848f0ddde9bcddf6fe5acdd390727f8c5a19f48e327517f5e01969ac5c	PHY112	darbeekobes@gmail.com	6900651196	565 Pleasure Hill	105
lpulleypf	8b7d2bcff84b0fdd93e8ad6427dd46e39e02bdf12bec81bb112452a21c6242816c0301cb42506844b7845ac4ae3df6aa599223d289d8288925d198678d59b61a	PHY114	libbypulley@gmail.com	2101474197	5 Debs Crossing	80
fbazogepw	b25d7711c2f6ef7a9bf6ab7d657c673018359223ec6d9711c9d38f355acf6f6770eecdd37a816b54502e5ad10dbd13a1af4e1390b7f85682fecdd2ee187f90a4	PHY117	faxbazoge@gmail.com	2102018901	41688 Eastlawn Park	100
cdibbepy	043ed67394bff9302114701d574d4ca26a8315033cbd0b861873d3df1aa58e6d845dc4da1d24ac5eb5407cea2e0bd188d4d1997e986c195a1c9d29bd8a2fb9aa	PHY118	clarinedibbe@gmail.com	2101321276	012 Sullivan Parkway	75
mstoeckq8	87455ab94cd6e8d250359b0d42dd1c33c5ebd696eb9b4bda4222d6ab029222f8f3ba97e312c69da78a7a39ae9de03a75a541c30d36b5c18108ab20dfe061e0c6	PHY120	marcellastoeck@yahoo.com	2101624435	9 Esker Lane	80
fberettaqt	b0a6e0f36291ca8b1a4900956464ea598d9b00919ddfd1ceee5b15ba6dd3be6b43cbb763836f52a45acc1859797644eee44f69d1787b91e4afb59d53fab4eaa3	PHY123	franciskaberetta@gmail.com	6993764865	93 Hintze Road	75
jdimentrl	3104343c08a4f872d99de0dd7096035b4d74ec25175b2fb84720a3b3fd5a9327bd55cf15c6e715bbdab294317b8b4c55abcadef5702933d0c1b3c08a9fef5fee	PHY125	jaysondiment@aol.com	6968901324	9 Northfield Parkway	40
egarken3w	6cc8376c1430a84094ddc2e73112a6587c118644d2632a4d69e90422a5019bbdc896e432e48e4eba0d5c0f3661991db0436ab2fc0348f7dcd409dbe851f386fc	PHY127	edikgarken@yahoo.com	2101761877	4893 Myrtle Junction	40
vgallafant12	ee62b56d5a443ed15e2447d61f4907a2eaad20cf2a9001a9f70181c1db870d9e7b0988b8d8dcc01f4fcbfd8c289d62e45df2e474f7ec8424897f62a8d5a88002	PHY129	vingallafant@yahoo.com	6997427370	9 Pawling Point	105
lmahaffeyk	e9d44067d0fb12378b87083a84b4ced310910129994ba3f2e4c232275f4b7702394b236929e82885b3f8415f35cff83b07941600c19534b29bddb20b3244c762	PHY132	libbeymahaffey@hotmail.fr	6938825157	260 Bluejay Avenue	80
csheardc	ae5c9a286bdc7e3e0cda98ba10dcf208d67d912e31b60032e235c1c7c1f5cdf7bf051f823c1a0436cc82c314fe9f944a5a9aae34843121dd69bf81e9484d825a	PHY134	cartersheard@yahoo.com	6951718533	36 Schurz Street	105
gbleythingm	57da9f3c96eae6e22596b0ec700c2fbddfae0cfc80376789ea89abe89c7c0adac8ccd927f2961c9ceaa94399f9724cac0ff26f2200b30341af54c889cd2bd96d	PHY136	glenbleything@gmail.com	6980703240	1 Linden Lane	95
ccastelijnz	247a2acec89ce4170b87234fc1a509b5598aa5e33aae5778bce953242ec5f87d25dd264d29c4b7792e1651d3b68bb0c3055857adc211b2bc7b74dbb6b61315eb	PHY138	colletecastelijn@gmail.com	6966080178	0 Buhler Park	65
mlindstromc3	87837a04e33858157dd5b119bee9755f27bb2d6db94b48af0f8e1bb5a15f2b04d1ca40cb8026ee4fea0d9aa66ee97bd759d98c2b271957e5a89012a4676b341f	PHY140	martalindstrom@hotmail.com	2105938616	3 Mendota Drive	120
cwhitley14	f55568629afe204fe0200ec5ea6622c3342c2f7c75a1ea9185fd85050d489c058b492b518b78959c941728747a9f799d97458ce76f86d2b142d528820b0b374e	PHY142	cherlynwhitley@wanadoo.fr	6900148074	0 Fuller Way	50
jabellamv	92cab38e135d744be6a09a69e046455984a2e70e01563008b4d343c06189a7de7205bb2dc190a4fa1d54d3df2211ea9fce52e4d3aff029b09fb8f63f9d71347d	PHY144	jorrieabella@gmail.com	6984630811	907 Oak Valley Plaza	100
ewintonmb	e0d809201ad8730834e6e48b3d41c477de5333785d99448397e4edaadc29a27f1d32b7a0b77bec623acd0a6921e0df67e15a01c8cac3cc27659e26b54b4ee9ce	PHY146	earthawinton@gmail.com	6912619156	2681 Farwell Plaza	105
cfalk84	d6b4438f3aba7ed1f3e3589c037cf9a706da90ecbe17029d3cf1d7b553db595ad1ec9e1932f0a10abb1e882096dda630d756d0382400ccc98fd68e5fd6136193	CHEN003	chiquiafalk@yahoo.com	6901983095	8 Union Place	115
spryor61	62260743ac1c8fe166b696b70e6004546a7d7c58bc70573e4f395fcaad8b90f2c344319d5327ea39048ffba04ffb5851f71b2e4b9ad8d04e1df3d54cf6f974b4	CHEN006	shelbypryor@orange.fr	6979696159	274 Kim Street	115
shaggas6f	42b33131b8b7bae3d7e8ef4be755630b7432184625855e1ac3d39523f5bab0f8031cda576dde3a5dcd800761b80375dae5d778391073c87e1b8fcfb20d062401	CHEN008	simeonhaggas@gmail.com	2106335065	6221 Sunnyside Place	85
mhuston6t	c8d5d17a4071a71cfd232bacf4f8dc13ebfcd0c79517a0c7c22e9a17ef8fb5913297bd2e41d997dd2376a50b7faba9a2fd9d2481ddf26ffe0e563926f3375fbd	CHEN012	marciehuston@gmail.com	6942615696	2448 Fordem Hill	100
aparlour7d	2f583ab362b10c44d3732398490827c7e09625f41ad7d9f3224784327e207fb309dd1846002571a55c447f5bad61e35553282659e8412fa0da76503de3e95489	CHEN014	ashleyparlour@gmail.com	6905620655	464 Lien Circle	90
steaseah	72a4f4e181d863cb83808dfd2698f991bce926e62e28b9aa02539221c2d5d3e23fe117f57bf25a4984a2a8b62406ed6f96cde19372d493be747d406e54c1c602	CHEN016	stefanotease@yahoo.com	6963821212	8767 Fulton Terrace	40
kacory8p	22d9cb1a8e559f91deb5f870a86462ab5e27ae53592ff1dc28c8e13b0dc7120676ca77fe085bd1ece5189d04c5c3dfc3eb7a81b2a8b0a948d619617db3feb84d	CHEN018	kevenacory@hotmail.co.uk	2109733997	99666 Kenwood Lane	105
kknowlys8z	9353f203dff4b8cc64a6c87165d01ee7a6c989a1cdf4aaa8ddd13de098ee7f00f01a88193eb0ae0f5b7812e71e9abd52a3b7352b3861a4a1512952c6e2adbf06	CHEN020	kleonknowlys@orange.fr	6901821769	85 Marcy Lane	55
apechet94	5b16b0ebf7b0b24d167faa4758dc0b79f0e5e0d22e6327e38ea5f6a30f0448ca0350a08549176fd9c4abdb172973ed5e74c9457df396344612dfa0fe380a37bc	CHEN022	ardrapechet@gmail.com	2104025827	99502 Autumn Leaf Pass	85
cnorthfield9x	827186e31b8299e11ef416bf05e566c41c072b6f210e400c2bbe597c8d56a5c36c2fc494b01add043d69a82b9b7c2af418674f932e42352056367706d640345e	CHEN024	cordeynorthfield@hotmail.com	6934945178	381 Delaware Pass	65
zliddenb6	9074dd37f6eb86f15d1b96ca8aa8760d3fd13cff040a0f49d0f675bfaddc3518c269b958eb4deadfaf5edc1b1b3f3c11d93a82a587a70e5cd793e51909141686	CHEN026	zebulonlidden@gmail.com	2100059102	864 Packers Terrace	60
istiegersce	8f2f599e8a96564c6215f131affaeac0b1d7d4a2d8d5c02f613559aaa3bbafbe66ec4b6df160313b1707eb0fc272516f4f2c0ff2adf7c2023623017e3d403625	CHEN029	ingerstiegers@gmail.com	2108160223	5 Johnson Junction	70
bheindrickci	5bf470868d57285ada33cfd4c2834427641ca04a1ea27e3c8176cf639727a6b4284fb3dc7a21176261911e855fd92dec0e7316f33f8e2bc69a1666a645d8d290	CHEN032	buckyheindrick@hotmail.fr	2109634457	545 Barnett Circle	110
dmirandocq	c47602b160c13567077f22f57da6f46f83beee97c3d878f5be1fb3cccbda35cb1fc7fc9fde1738411597643e8844e435064c2502646c509d789651e97a15e5f8	CHEN033	derrekmirando@gmail.com	2107967969	1 Ruskin Point	110
owoodusd3	882e476c255e869186b3311989f4fd64166156969da171674b4bc757a9e237a215d39f74fb0c872e93a68e3a87b6fbd9e2075bd893b2f57ef2a16537c6a9c292	CHEN036	osbertwoodus@aol.com	2103608185	7 Sommers Alley	90
lmelvilled8	fdc5eed9747223323a5096461f3d2cb8c6cbfe5601980d4d7619a65467b46f298c80d590f2acd83197b090786ed12a766ecab510b19c521e271fe2b665c01b9a	CHEN038	lorileemelville@yahoo.com	2100155623	664 Marcy Terrace	50
chaddrelldt	836ba955366a6e348e750ec3d66436cf4e5628446af542559c2fe66a65be59de71701c0341131d1e5c64109c820e96e67baf5c5a2e03a92310efada6d7a30a51	CHEN041	charleshaddrell@orange.fr	6975324535	59 Northview Road	85
tfishbiee1	51e9237da369aef09d9d79fe8c3ab130407badc955e59fe2a47a48f08654f8b70d2bf078db392fbfa24d3320aacc5a2dbaa7ebb33baa955627c9f75bd93bf1cb	CHEN043	thomasinefishbie@hotmail.fr	2108877021	424 7th Circle	110
smouanew	15dc9b16774908a9ea6661563e877351fa75bd882dc9d6aefb14706d2e7246d05d0b2266117b74f182f8b55db0aea728c0ce1556c22ecfa67e9016a138ee2ddd	CHEN045	sabrinamouan@gmail.com	6909177782	6 Dorton Circle	95
agravyel	b7192e1bce76fb364f48a552b01be311eaacece1d2d937f3cdff9fdddf87d8a6c09fd65e755691aa7ba0cebc378c4655aa8b49a71237c2f99f6e4c017cf8305e	CHEN047	alicagravy@hotmail.co.uk	6945569665	90926 Maryland Street	100
elongfutf9	93315709c83ca77b01658c600e3ea0714beaae503feae84a88ce12035f02ad44ec35bbf2590bdf3d527b24b63ec2f7ed39e4215454975713a1ce2faa8550c280	CHEN049	elynlongfut@yahoo.com	6987986855	4891 Cottonwood Junction	65
stukelyf8	e37fdbdd4dff3613ac77007436f2b510f5e7ba58f9002d20029730128a1199fb95845bfb21a271ebd6275fdf5561f1b088f693759addbdd768a6a069bbf7c6d4	CHEN051	samanthatukely@gmail.com	6948262847	7 Luster Drive	60
kfargherhk	09c5c3a76112f45a9bf8d30dc28d554c1daa59f74b7903df9d94de6fd4a433bd3deefd48c184282a9c0fe600591204def9ec2baf5218b40e5ace5b8ceb09429a	CHEN053	kelwinfargher@hotmail.com	6916167965	595 Macpherson Junction	115
treesoni2	4e996c60cc6bec8d32e0db06d025de1fa65da75ce769846c44d25d7b79fb50fdae013de1e5cf0977831250cf0bbc5f16c6400bfdc520fcc5214d15d467c4693b	CHEN055	tatianareeson@gmail.com	2109475047	81 Anniversary Place	120
blungehh	58b3465fb4fc445ecbcd70593e7592de834d8fc04d00d3a4930ee36114c0814cf82accd5cbee04cf6171937b18dcc0f70264b4fc9d57ecdf7fcb83fe3e79ab91	CHEN057	branderlunge@hotmail.co.uk	2108928623	1 Springview Hill	40
vrobinettegc	22bf3f073e5179fb2ad2dd4534bfd4c036aa5e30ec94ee89f651bc028f13596ef2a7cdf51dcc015ed3cdfe58758aff143efaaf990b045819d1d7f9c806228f88	CHEN060	vivirobinette@gmail.com	6960604029	19 Roxbury Point	95
bcorderoh2	65485b7ae6ce1a2511c9e30590b04b8b67526f516d6903ddfc983581af87588e73255286080a96b4d2637316ec9023d5be849ccd9d57a16421372bc2d3f54f8b	CHEN062	berncordero@gmail.com	6979801142	45791 Coleman Center	105
cpeapleju	6e8a7053b624a5366c9cf0b67e745e0b331ff08570a6fb6b3d74da80e9114ef3be90714ccf1b717297bf06db13db8d58c4c068226cef1ee948e226ae9e1f1fe7	CHEN064	courtneypeaple@gmail.com	2101289376	77268 Haas Lane	115
mfosskd	2149c805610a66545676e272e84a2a53d71628163ed5f23e6af310978fdbe4b2eb8ae2e5af2b6ac9ed8f2d70ac2d659bfa176ad90b45b48867805b4cf993e05e	CHEN065	maryafoss@msn.com	2102373597	0733 Mcbride Park	40
naxstonih	9756b3fb90b25d10ef2c82eb84d7b40577be92c2431cf94eaf7df0e43a96f318777fc8f7db47d0cf2135fc4a6245c8909ca2bf06331b29223ec1a685ab23449d	CHEN068	normanaxston@hotmail.com	2103875728	7930 Acker Hill	100
abenkheip	5a07010be809cf937870a924f0330fccddf13183e90d7e3fb9c47739361f365a55410fa02386ec30107216c9b4e5c6047efd30a3e69eb8bb7a15eec85c945323	CHEN070	archibaldbenkhe@gmail.com	6997156697	43 Jenifer Way	115
ahuittj4	a6af4222effb21dae1aac390ee702e2dac548e737c0b55b2cd60ad4df26addc92886aff8e5161f0db0641229dc8d4ffb51ee77e49c844179ee5daa08aef48a14	CHEN073	alexanderhuitt@gmail.com	2108958601	21 Jenna Lane	70
amerceyix	77e32341b3acd6a3997063559c1443890950df7d9126f7b35735f87823712904caf91fdeacbf738c52266169b2f429017fcce82060bf5b89a1ee48dec0646a5e	CHEN075	arvymercey@yahoo.com	6931978441	6081 Debs Terrace	90
eplatfootje	0ab6a72af5c7e786767bdc665a6c70f15c48b3ba3acefca7ddb3858a55f52d9f3b4080fd707232c12e9164b854edac091acb67394992c2c8c32fabfb7bad0a2a	CHEN077	efremplatfoot@hotmail.com	6958268113	8537 7th Lane	90
mmcboylekp	e96c0bbc603eb775452902ee268ff003c1512d889642a64e1e314830d4874051aad826b2cbae6450d98d0cb9049f917cf9fb43c6ba053e94684ddaacb49c5a0c	CHEN081	mollimcboyle@wanadoo.fr	2100589133	57089 Atwood Road	80
ecollingwoodm1	c4de849760212041808587776f68fcd85e4e6138b9c836a49cad4c4e6076d5254a504e516daa6d000c678b701bd6b69b71b87791ad875012092a06de9bdead7e	CHEN083	emelinacollingwood@aol.com	2100989312	5 Spenser Trail	75
avauxl5	45d0fc9e4ee758997f6ad6f6d4e90889aa6dbd56505dd2dd770aa814282cebf4b141fd422d348167ffd7c374d85fdc87739521f64f7afcb08d3f23dc91f7331e	CHEN085	aluinvaux@hotmail.com	6952556089	58367 Fair Oaks Point	105
pdormanmf	dbddef89e59d6e6d6955ae6dc35f875a8aca84e1f47a8a2c8d17abfb1a2de2b933a76bc95a526324f2588e980b28c78e4d1efe9ad87512a85aefb68128e1d1fd	CHEN087	phylysdorman@gmail.com	2100738979	4794 Swallow Parkway	40
wlantuffele	6c6976f5646937f7bb33acd040238ce5c7d875a8ce35e694bb64f121d37f0c42bd8a72bd64669976bbd224dc48d82f88314e6cd7c9e24c52714a7047e0eab474	CHEN089	wolfylantuffe@gmail.com	6956427778	5218 Michigan Center	95
lelnoughll	8c09e20ae5379b66c38c436bf7296de1d700c2591a23061fcf6a1e14a81b194043bb96a0ee39d63993d5970a20172559a62001559ad415eb17dd7db3d8d3b3e2	CHEN091	lorryelnough@gmail.com	6908090400	5024 Monument Place	45
gmatoshinlc	d289b4f52dac74df2f6a892761a869a6ac1e7141b3ab7f65a5d41f8a70370bbcbbbe421f0b228f64c5386af18481b4f1a9ab3310e2ff808854cf2d8234cf4685	CHEN093	gregmatoshin@aol.com	2106528901	7760 Elmside Parkway	55
chawkettks	2d61c54dd9bbf9dc22cac7d815696a7cee381d68a08fcd7852f5c2d85dfd6e8051e62bdbf8ee5b7c41f09bec52371d20498658d91e5a3915d778ac059b881083	CHEN096	corriehawkett@gmail.com	6943396824	14 La Follette Junction	60
gebrallnk	991790e23c31fc4ff5da6cb8454bb2eda012a6239d4ac019683101571c126bf7a9570403e6e9f4c9a66030b86438b382c7a6168ae716d33db54652329a2c4412	CHEN098	gustavoebrall@msn.com	2103026688	650 Coleman Court	115
rmcguckenno	08654dd66f40f0680e6800182abc5856019cf35ff3f924cb5e87f9b011331b2c68c1a6054ebed5d2f3bb483fca9e2d5638aa0e54e2b9ea03d5cfe303bcff5edc	CHEN100	renatomcgucken@gmail.com	2105068749	656 Rutledge Street	70
glittlejohno3	e1083be173f559cc699f4455d214db09b8268d62c52b6f6139f3cf7a3790f3b750e224e22085af9f2d13c50ae3ceb52618b1311eda7663914da3a4ec547cd6a9	CHEN102	gabbilittlejohn@hotmail.com	2108927510	12 Main Terrace	110
wmarshallsayf	48754c995b571c3654695a38e77de2965a3f1db688ce5631886e6e0edf93ef32ddb15b66b61ec1d1dc819d21c1651c53840004b8eb3e8bfb39331f0add4dfcd4	CHEN129	weylinmarshallsay@gmail.com	2105409477	846 Hansons Park	40
mstrowlgerw	8c047dbede6417da5e3eee8363cb1cf905d7f8545b16164e7e639520dc5353af8103bff4b5a25b97449247f2d8361a55f032bc24a8f81823ea064c8b1d941a09	CHEN131	maryleestrowlger@hotmail.com	6986284413	2 Knutson Avenue	35
kiacavonea9	a38f4dae7e942f01ce935a06693341332b60fa857b8285db0983c1adb92a686fb1750b8edde970de8335894da3c039cc1b1812c338a7e9ec6b07083ccc2744dd	CHEN133	kristianiacavone@gmail.com	2109324516	44 Butterfield Court	80
sbuckoke13	f398d475b294d5272cb53b806df99b6f4171f92176def511f38184367607c90eee01f87df978e1ae5fe6562e76b5be065f49c7673f828af9501d1a2f68df5db7	CHEN136	shaebuckoke@gmail.com	2105037305	452 Doe Crossing Court	80
nthunderse6	e1b31a7a4c5dd48bb9723409fb31a57fc98749cdb899436ccaa865eae7ba7bb09545fe00f9b421321565cbc3fb1f697c5c344ba510605648dfede15608bb6ecc	CHEN138	nettathunders@orange.fr	6983170998	79840 Roth Park	100
svolante4	3a37f9ff8ff2edecb5987ccfa1e1873994033408203428759b56d9c41f82cb19df62772e3c3632368688600259a8ee54f4c37e9c175953e8e68dfeb07ff263b1	CHEN140	sheelahvolante@gmail.com	6955250440	29 Montana Court	45
jmartinet82	a8223ae48438f1d37d799a13fa6b96333f96c3ad2530acb57f8600918806ce7f00a89398fa23eafd3c28e3fac8c8be0a56a38969b86e8594ad6be4913d73f222	CHEN142	janithmartinet@yahoo.com	2106290166	914 Bashford Junction	105
rallsopph	fb1721eea821b309a109805d36ff5684e8ad5abb2f382e8853b0cec27a5298e728af7e540ba8985c751e790f3c59feb9ba068fc0653f77e4ed56ab9c8af29165	CHEN144	raneeallsop@yahoo.fr	6902029565	47 Brown Crossing	120
eharrald50	4e84d33fdc365197b2759dd853926dc46d815a94f6bcaf8f9a0ad914d79bfe69db5692ff956064133948aab4a4087b30f567fd3faaf9428ea468ceea9017590e	NSE001	edinharrald@gmail.com	2103706970	88 Shoshone Road	90
emcgarahan5j	22c2d68f85e87b31d39096e9a43f773e2c6e63d40d03f3f42622ead409079aa43e942c79de7c5522a3c819a5c1a7224de907c4d411f99f92309399f8122b7939	NSE003	edithamcgarahan@gmail.com	2108511458	8 Union Place	55
smccreath7w	630c64d5a1bc7680340c6722d2041db4eecafa895bb4b040d81bba1dc878e76d5d82d6e60da84d19834defbe16b5d3609bd286d0f8cd8e29853836347c72182b	NSE005	salmccreath@hotmail.com	2101628260	4398 Dapin Plaza	55
sgye5z	361a09c75be8520cb5ff80787ef7109f18381f79805b805e12da2b7e475b8708337899c26eeff3f4ad74a8a63b6624be9d99c52f2b3aa4d2b503386f5f95508f	NSE008	salaidhgye@yahoo.com	6943131371	6221 Sunnyside Place	65
icantillon6e	83de3c65b2959e0027d6f60b442085431008db2fe34bed507a83955630d57b795a512cdad30045355fa067251fd025edc4cc9fb328c8325bce8bc600328ae650	NSE010	izakcantillon@orange.fr	2102345072	497 Hayes Way	90
wshooter71	6cee827ecbf502beb2cd5b759253f1e99ff86a1c3b4941aa7768bc4bc03a5f26241a696b84d585d47e6c5df5ccbd73d460c48ffbf6ec6ade531d1f24e8f51dce	NSE013	wiattshooter@gmail.com	2101946047	35272 Anzinger Court	100
skellart7v	f8fbe6e055d740e9b29a2a86b04b6d4e0ed7f79957c7c0fe599adfc7f4f9b92185b1bf76eaa7bac16c5832a95f703d9fca82e5220e88c0072ce22d18fc736edf	NSE015	sigfriedkellart@yahoo.com	2106438160	61980 Randy Road	90
londrasek8q	2f4b602bfb850d094bf110ac020ffce44aca9e3c3af1791e21c887bb1c7f271f5e57e2303f31c1f367f8125a38a30976476506da9d85f666e8a2223fa7949dfc	NSE017	leshiaondrasek@gmail.com	2109508024	931 Arapahoe Avenue	105
aswadlin90	d3e03f7675cd66823ccbef7f2ad75fc8f248dc2695ebc6e6b290d1a05cdbd04dd5e90e7563b2729104de7c64b86b29ae4af3c0ff53c76e0c66674bba7bcea9c2	NSE019	aluinoswadlin@gmail.com	2108324620	71 Kim Drive	65
ibozward9z	e14f82a0b6c6b2744ab76a6c3b4b4f102388db2c9fd06978f8f6eb94cd4f6f86293fea67d6392acd7d08bcbe513ba4484d1bfe21a574b45010cd947bf556fde9	NSE021	imogenebozward@gmail.com	2105720966	99226 Orin Plaza	100
dspellesya4	683b168b3b700c9c86e82d2f3e2c3a951293b52c72d2ce4c4840ec32a3c47df532860e28e0987ea0d97894b507787fc1495a068378f29b61a9ffd126fe8d0eaf	NSE023	dahliaspellesy@gmail.com	2108950231	860 Clyde Gallagher Pass	80
tgisbyea6	e2d6a4ac9f9abae0f07322733f3e19fd97a1e89357e4401272df82f4ca53c73914672730737b006e9947dd01477dd37430d16276bdea99462c90866bdaa8e127	NSE025	tadeasgisbye@yahoo.com	6980083790	7 Clemons Court	55
whefferbu	551a676a5c84d3cd0c1a499c550d3fc21c34eca725272272eb1133b44d61077a140a33b483195704cd7f8092f1300659886591483fb890954602a86398b09bb4	NSE031	waylonheffer@aol.com	2101465150	19544 Becker Junction	60
mstoppc9	4aa8ba10b82ace891a5db70a3fa005342dc0f4ce646c9ddd4cd63cb7867aea234d82acc47ed62db4c8672cd2dbe4e1aeac6961292facdf8fa2a13779ad4b7e50	NSE034	mairstopp@yahoo.com	2107198602	713 Scott Park	80
dtrobed5	d7e18109780ca2757636fdd0fcee669dc68ec0daae1fcc6efed7385999a157d77aa366765babba7d95bfb8799c6246d54efeb224b1c01fbcb927d23ccf4e2299	NSE036	darseytrobe@hotmail.com	2105036827	7 Sommers Alley	45
mpolinib1	e4f32fd9c142ea4b4129030405d9e7c771b31f9c6f48a1bda5ff549a30ee2f3add8839e76ff8d16d66a81f05f0e44f127f8dc4f53274d8e0e10bb302d60206f7	NSE038	minpolini@gmail.com	6945120360	664 Marcy Terrace	45
rhastelowbc	e144a4658e9b50754dc191b2cba5900867950384f1fae10ec57d83b2f89479910479aa85186fad96e9fc1f0b4882d726297fc3b5789c9301639f433aa26894c3	NSE040	rosettahastelow@yahoo.com	6980391586	9400 Myrtle Place	100
dgeerlingfl	67a4e1eccdacd726b63e3e292b69d39c8640810c618085ab8c1f711c9f01da7b69ce6e4708af6f27095a0ce4916925743c9520597bde818966b30409b9a6e215	NSE042	devinageerling@hotmail.com	2101369156	8 Melby Circle	115
jheinlfj	a9280c5bcaf9280a525953949c80aa672dc53fbe817fb9e9610356ce8a1f32092c0f973dfa115bf7baaa3f7f3e42d0b867204a88669d67813d8424b66808e2ff	NSE044	johnyheinl@yahoo.com	6954857750	0964 Northwestern Park	75
msawelle3	b32ea7703dcd24157af77f24f8f9c0dc185ba785ada9ce94fdba47671d21d58632c48c1db16e820ea6bb8e47ab0d1f0a41b4e5445cc413a670a5b4fc2bc1875d	NSE047	marvinsawell@gmail.com	6949272714	90926 Maryland Street	65
ghanscombefc	a8c522c467dff291e3853467c762c281d8fc8915ca399170525bd6d20c7dfaa6f7f2a7e1756ed37b23f9aaff8e701b3b2a3faa284ad90590658b306aa35d9fa3	NSE049	giuliahanscombe@gmail.com	2107037955	4891 Cottonwood Junction	60
dnobbse4	a1039202a35c906d00f224b30aa8cd32f2683a717dc6d6387f41059d3a8ac5187c7ec39161b0ed0cd40bcdae687e7be7bdd0a165f431fabc584fcca807416464	NSE051	diarmidnobbs@yahoo.com	6925453160	7 Luster Drive	50
tvaudea	74e5ec95ecae670ac650d352e94fb817645030cf9d67a7475a71758e431f48263c9dc485954fdd7032ddbd0ed94021394a7fcb952b66b72cbe1f19eef7f98c82	NSE053	trisvaud@gmail.com	2108048432	595 Macpherson Junction	100
gdiemf7	8aed4e3dbd4b694e765854e614877123d3cda967bd2475feae68fbb5653549a51fdc6a020520a12497673246eb42dce8a873e1701107bcb7aaf7c4a45b99eca3	NSE055	gregoriodiem@hotmail.com	2109121266	81 Anniversary Place	60
glackemannfp	fc3394ebd164d677853db42b664393b988565b3715afb023bf4bc080c34dec9cbe82360b563fed01a4db900dec93c50e3092d4b61222831b0922a93cd480901d	NSE058	godwinlackemann@gmail.com	2105105617	9981 Wayridge Street	105
hsutherelhi	d4a79e23a54a38e64370d5fc97dbd26599713757a04ef8d5aac51831fb9e77f4287728b6c9c2a5eedd1b8313d41362e0058d06bbce5756eb5f57e15b645ed7b1	NSE060	hadriansutherel@hotmail.com	6948189820	19 Roxbury Point	95
gpallisteri3	ef9134148cccefd3f7f42d7a872e225bbfa8493060a9ef860d9688922d3eca454a2491b3de7b15453e4f992e574370dbb326bacd0544de2958705dc589afb4ab	NSE062	gladipallister@yahoo.com	6965432502	45791 Coleman Center	105
cdexterfv	b7232dda97056e294b71874b16d19fade81e08d881bb395177589b09f835ff805d4d77ec15577f989b46dfa6777e50fabcd3c11bc0f0f55ce1b00ecaea1cc886	NSE064	celindadexter@gmail.com	6976833607	77268 Haas Lane	65
mbodycombeh5	8a401a9e6debb0840a05a49ae3e9370c5b51204978a1c4511c16a19733100300beed3e0b7bf76016dea55324976907436c23be6c8cb025a517c05ec95778f93d	NSE069	miabodycombe@gmail.com	6975795694	056 Eastwood Drive	40
preidia	44af88266eb66b681004ad70db97374edf827f5878c02822ade634a2e0e70f9a27de2b2b489463d64f85089b29435ca3aee52a0aeeaa1c4dc96f720c34bd36d4	NSE071	pericereid@yahoo.com	6952621371	184 John Wall Alley	75
daldinsil	4e2b5e6247594b7fd28673f8e5042cc79ea9aa60d8e33011a7f881909de3fc8a2765a19616d28a7ad593ffbc15489a2495562bcf4c2302d0044505ae6ffb9e7c	NSE073	dinaaldins@hotmail.com	6999096713	21 Jenna Lane	75
hdorgonj9	b3892b92d7e109f7cca346350d3b38fb3566e55208ec9d38d05117ce8bfb309030f1b5c65d5c3dde80cb3af0e054f98d2edff58c99c4624d9aab5822e8adc211	NSE075	hollyannedorgon@gmail.com	2101830529	6081 Debs Terrace	75
ppattersjf	fc19dcaa506d4123b31e04f93462aa59b35bf070df9a7a15a63432fe3ee6a012e2991816c564f5a14ec6b1df4eb45a34e6469c85f4174b45d0150faf4966fcaa	NSE077	pricepatters@gmail.com	6998646875	8537 7th Lane	45
gnoultonkw	c7d51662276e14baa864f4004a2ce52a21b0e86461991a5798ea22593a592334055240f7ea7499f46fdb3a2e340d675f9e7ce90d460b5c85ecae610dd7182084	NSE081	gabriellianoulton@hotmail.fr	6900767927	57089 Atwood Road	75
abenitl8	005bdbeed9d9ef212ef0bf590ac8f695608d6604109f1315e32f989eb7ade1409eefd2446a024b49f89738bd29ce3ef3a84d3b3a7b1f053be802d25b682d5494	NSE082	amabelbenit@yahoo.com	2102915422	88 Trailsway Plaza	90
klanmeidl4	7a2ce639dae9e62602a31d4615a3ce572b833938d52141a044db1563179fdd94d3c526bc43e3d737f60805794c5551dec6628937eeb36d1d0defd96b0a571f6c	NSE085	kylanmeid@yahoo.com	6960596442	58367 Fair Oaks Point	50
dkahenli	08291bbddf613024611406f970ee9460bc3005b340d37463367b2291e9e749f11cd8fc3028321cb966a36348c53f3dbae84981d2e1366ce6e8b37cdf68d57b61	NSE087	dorriekahen@hotmail.com	2105910958	4794 Swallow Parkway	75
jewerlo	1bca9ac34a5449161d2e8bc1fc3349d858f1ead66fe83033ca7883c2eccbb01bedb030f0b5041471d29ba9f3033ab16e023e9b92a33a735ee85ac2530da589a1	NSE089	jamilewer@gmail.com	2106363054	5218 Michigan Center	100
rhefnerl6	7f26d7b0a7e8dcd80dd8fe5c42b1c213f04188331d6f4375d38dfbaae91cb60eed0e3fb8283fc57e6376a1457c05c742ab18f39bfeda244cb9d354fb071ae7a6	NSE091	rosabelhefner@gmail.com	2102236754	5024 Monument Place	65
dmcclintockmc	e7efd0ed9cad6b910b57eaf12cc0aa7ec0ea0b2abd81dbec7da3af567a43b4bc228c0f24792c2359e2f40d15a3137152ffa813562bf1f468af79175c2efe7289	NSE093	dashamcclintock@gmail.com	2105370940	7760 Elmside Parkway	65
jkleinerna	2dd4716c1aefb8d562d967fc6c166ace0eafb93d017fca8d5938724ab0eb906ff387281eba5680c415b7f820c18872a41e712c43250e1ad2428f20ca2b9dff39	NSE095	josephinekleiner@yahoo.com	6948775821	0679 Manitowish Center	75
janthiftlenp	d3e2475e37baf4d6cd8f7e1e1b2f2a6a411c6ede2932eaacec9457b4c59246548e6650f3746eaae6c2397a8479846228408e28893985121c26e1ebd5e6d8461e	NSE097	jamesanthiftle@gmail.com	6990318254	4 Montana Road	40
wcampsallb5	caa73945e5132e0b75e873947376dd2ba996f61c853e45d532dab0dc1268682e2e6a71b98640f55baa02cc7561b5e13b3a32ad474f221c9cd2a8e747392d5ff1	NSE029	wolfcampsall@gmail.com	2103259901	5 Johnson Junction	75
fkalkofero7	be27babb8ce7de27139114f1b2106d041b9f2c8878035806310afaaa7e47c7542d3441df6e4213b09e14af34ec5fb1ac36b85c1bb6f734e241f062eed8dce794	NSE102	feleciakalkofer@yahoo.com	2109315324	12 Main Terrace	85
rpoolor	3e768e9f700964c07e6afb6c1d8a6555b6afeafebb3529f2ce12aa3fbbf901ce4779d1519e1506c741d99a68ac42459062b56d99141892610cd452ed0ef1e3b7	NSE104	raniapool@gmail.com	6905168302	97 Talmadge Road	35
iaustinsp8	89963c5a35b5ed3a36d12559f73fd05833c1f27cfc9737fac84bd321bf1f59267a6916c30ba5ba102d95c285fe5d00564ceca7c3b00fad0213d2bd0a2991a314	NSE106	isacaustins@gmail.com	6973500113	90 Rusk Drive	100
dgearerj	158c6521597680d2c92e82a79c944477e2e292559914049d49f2e79f00e8476902f8c64c4ae5043a23bcd43247b470cdb05eed0f73ebec9184e583c5d92434dc	NSE108	delmargeare@gmail.com	2101070414	494 Graceland Pass	60
aredbornqu	b9c46b67bece5f8be4609c3685b9a3ee0c8ab27c7f45e7bec8dd57f5b83374a0ee2c70d4244be7cf057a86f8ef3d4a03dfa5fb98f4aa61962215452c3488e08a	NSE110	arielleredborn@orange.fr	6994582771	20 Starling Circle	50
hmardypx	5d1518e53706e9a632c5e30ff770a5280fda0fd9700fe439adcfcffc117def1f8e13de47d6b585ac7edeab0ba38e16b74b1b7f972723aab1578419449050dc73	NSE112	hansmardy@gmail.com	2100454672	83 Tennyson Drive	40
gyoulesq7	28907261325389ab80e198f0302f5e17e18be05e70ce63aae27073cab6c1ed1b5d2ad4d29ca56c10b470c2e12ab63db84e8db937b5ece251df7a40982cbb1095	NSE114	gunaryoules@gmail.com	6939079876	54305 Arrowood Place	60
ebondsqa	d3f6203f50e564c45a8db99c2ce159a175381deed52d89adbef1cd0c6c59a1045514bbdd5b204458f8aae3a50876bba5b35e574bdcbb897e24235edc5f7c6111	NSE116	ericabonds@yahoo.com	6916416540	0 Weeping Birch Alley	80
edunneqk	40d2d04d98c03fba380f78a7c4c1300eb2720995ade962385619e48760e8e9f3eec3bb96a8f91003f296260a919e4338e2ec49531ee957384d5e26c18b87bb77	NSE118	ernestdunne@gmail.com	2100216826	3148 Cordelia Plaza	120
kzumbuschrb	00fc9b84417d13962ad135834a469e12e11cb1fc83110536962486b3ff5018d2342ee29af14494c4d29d2c06ae33ff966c2707a7460f2e0275e8a539d9c3a0f2	NSE121	kristynzumbusch@gmail.com	6934180994	04711 Donald Plaza	105
pkaufman4t	4e4540d4fd4e93fd1f6fbad03a3878a0907941f6d904d4bc3b1f6feeab5f26f0b79405aab41e0f2bfb1a0dd859ca4251aa1227f40d0c934f30d81ad8d646a2a5	NSE124	porterkaufman@gmail.com	2102622224	5985 Grayhawk Street	65
moveraldh	3c2981457d9889d23ffe96693c6cf2f0838e9074bbc7741818f78c7955b023ef8c883067cdc6977ba88a9d1cd46c1414aa9648217267e74053d57f5994abed77	NSE126	margaretteoveral@hotmail.fr	6939113608	4 Merrick Circle	110
dmcphersonp5	c81577609e3a6256455d84044fa73686de0ffcd884d91e5ed56585010d5a5de1736a58987baf33d710fe1e77526e1206e1d4d1767e21f94c2da6cf81cffc8f69	NSE128	diannemcpherson@aol.com	2107252997	36239 Roxbury Junction	85
mdupoyam	7d4de84d538ac23c7c65b7d6def3f809db96e516c60755eb85da698927daafae6dae03484f96f16815ceb69a17d8272494134c56bade477d28aefc217698e877	AAN012	malvadupoy@yahoo.com	2103630476	00098 Shasta Drive	95
coxshottas	f2af9641d14ec14f4c6a0db62fcccd17e8f5eef59e17c98504b4af8651af670b6f74646ee91e3ed94f12b456e05a9ae6aa654c0a6595627eabf533b335cb16f3	AAN014	cybilloxshott@gmail.com	6927401134	69 Mariners Cove Circle	120
bgloucester8j	ac7bf9c8be6c446ff36b58eb1db527f3b21ac3abd4b6e8fc250be7437829cb9c024fab9aa4c582161f44e8fc8fab00b7ea4c69e87f9d0040017c8d944ec9e6f1	AAN016	bevongloucester@gmail.com	2109335030	3 Stang Way	50
wslides8o	0cc41b28bdfccaef0f3bb450335db78d3d45fd7ece70f4bcd13f31245da14d7be04055bed3717e647d8de70810d0a8f13378c72d67768c185cc8a9e0a76270f5	AAN018	williamslides@gmail.com	6950900110	25684 Lunder Park	105
imegarrell98	1e9f2b5bfa1b836c4af831f94063d468d52a2e24eb7eb5072dc29bcbc0541e2476e612ff34f391fdd1235157d6f1eb7c9b0abf04aabad4ac4e994095dc60209a	AAN021	inglismegarrell@gmail.com	6973065987	530 Veith Avenue	100
acherrieai	b440e03c244b082c6d96770f003d42d1935ff035d42d5e5fd67e2fc70e71d96bda40591c65c8692806c274949053c50e3b0fa024416a3e25d183e1fe29d229e7	AAN023	ariellacherrie@gmail.com	2104563695	32 Westerfield Parkway	55
gblyth9g	e628d9ef8e30ad32010daac98cb582cd04a355b40001c50bd4363f26f257620363fb7a75c4ba835bf2510d6ad35df8a3dc35cfbdc367c88c121e0587b82cafe7	AAN025	gilesblyth@aol.com	6928630168	1212 Donald Lane	90
egrayera3	36dc34698b97ca55ceb8a307c16e4aaa93d75c1f73b491fa0ff4b53f4b531baeca4984ff88c4980c2a1a9505b432b854eaae2cde4300190532590f9a8191e12b	AAN027	eliciagrayer@gmail.com	2109347128	2 Hoepker Junction	40
jrapier9u	573b8067253dbb97b0a808f27c53b992d5901c53a3abc8a50d5e349d48da04fbd49de61a819b997aa5069db10b2db70f83ddc87dfbe29edb94cc90f63d564b05	AAN029	jamesonrapier@gmail.com	6932480279	114 Ramsey Road	80
abrisleyab	6b68668759cf516a060f1a1361efec2b59053b0dfb5b439815814e91d67dce81752b762241fd43e80f8df63683f0d47a5bec6f28f14ca392242bdb58df50008d	AAN031	abigailbrisley@yahoo.com	6943785289	53 Fordem Place	35
onewarkbl	0c25eba7bdb9d55dd443cfb8b4e21b650c343a95a5ede7577d52bba68c33ba4abdda9972aa0d54e5d47d7e34fda5342aafc1cd273073ff180d3c6e26774fd790	AAN033	osbournenewark@orange.fr	6915168119	91408 Jenifer Trail	50
jgouldenc5	f334ef9e13e91633855f27a5044ec35b5aca0933420f4be6d1a560a75e625aa62e3fffdb1dedb22f6553244e3b02745f84b919c4e9996e5744f6cf20f636a037	AAN035	joaquingoulden@yahoo.com	6986157976	543 Morningstar Hill	105
rwoakesbv	c10e14bf3caf8f1c729a2cb2260591e275073305663edf18c524e4580cfc61691af77c3fe37e3a80d249031b9779d0253c4a4594889601845a1e94dd89efc17d	AAN037	rosemondewoakes@gmail.com	6941740174	2118 Welch Road	55
kwaggec2	40937e0f70c9bf2a2e7a3eae6d99c79a4bf22c8b0b294f8821705eb42a1c42aa7c61108584f0bd6592c2fdb79b2d83f1e416beb18f91b61fc745b9f33ba6ea13	AAN039	karmenwagge@gmail.com	2103896906	979 Hooker Way	105
jriddickcx	900310da8a0dae65eeb283928734f9d35c5662f75a9056e269221816806054fd9d9a1a45aa34f4adccb5fae552cdd318a264a7aaa0451ea20a4194c9b26f706a	AAN041	jordanriddick@aol.com	2103816026	2 Jenna Alley	80
mredhousefn	51ba640fe1fe8afc6d35d4e0de865d3d3f05c25a5768f76753560b4b8cf066d80e3e38f4f345be17838546972fad847bbc44c97344c1178e06242d741b1cd643	AAN044	morganicaredhouse@orange.fr	6916264582	19 Pleasure Drive	45
sblythindc	06010333586016faaeef89171db09ddaf0b60d84becfe43ea25b952672935b0b089877cb02fb81e6714cecb086ea0f779caf2f0948c31e8bccb434a90787bbe6	AAN047	sheffblythin@gmail.com	6917214402	1828 Hollow Ridge Alley	120
ebriked	6307f16858ab81a1ae1ca1fcba1fd15d843dcfd0d4fd295fee7b8d99aa9e2a2771f289346b2dd13f90cae8e04527b449b5b99f1f912233a04612edd845396d80	AAN049	elwirabrik@yahoo.com	2104461777	5336 Shasta Point	120
lconnollyfa	ae0dbb72eb74f8952f31faf728ce0369afc48d13bdbf6d91df9db50014695d175bfd41b6214767adbe355e518ba1c4b7c7eceffed65a44a476460dec5f861985	AAN053	luigiconnolly@hotmail.co.uk	6932937643	3 Susan Point	80
csmelliehv	0b70af80c67f7b66fe90122c8c0c63d687d73191e5d87f072a098818781659495313c3ee28b519990678fc122fa4cf56b799500d47c87478344e6c68a8a1251f	AAN056	casssmellie@gmail.com	2102518349	4940 Fallview Center	110
gaustoni0	ddb1d7e1919ad9fb078299ebc45cffe24851e0495d67c649dc3b65ebe268ea5eedf05a89d1558c7f9e00b01c1e15636b2c1ef245e5111e7c13cf3bfc6b5d3f96	AAN058	gerrieauston@orange.fr	2101775472	5660 Sundown Hill	65
sroizht	7fde6088a6351caa3dde4ad5ce21d026f6b67269d57332283af0fcd72c3101620b71cd1ddc780cf61bf5d950f0747445540ad6f35ed81df25620334759d9db2b	AAN060	simonneroiz@yahoo.com	2109568355	3196 Doe Crossing Center	60
ptemplefz	da8afb9454ca1c9e8dd8cb8a90d46d9a1e106f0dff5136a1e1a8917f0235b8639de79bfa74d1a235de5193cbc679ca830d31ac59a98e586a1102b00f46f6802d	AAN062	pearlatemple@gmail.com	2103018438	188 Cordelia Street	115
cknibbsgi	e186c1561e85d9da617ef59589c5497cd179bf50f023c68c314ba4b8c8d0ca0236e19f85faf66ec80bce7614cc37336dcde540f0b67802c6179efa6b7b57572f	AAN064	carlinknibbs@yahoo.com	2109651026	06639 Rieder Way	50
rstonesgr	ecf744a8e780554e9f86cea5dc54665ad2b3a0246073bb5596d62ed2b3994f83f91991aed23bc1f6c0f49a96d907018ed2263c0f3ad65921402dfffb32983e34	AAN066	rossstones@aol.com	6977067303	07255 Anzinger Center	115
rsleafordgx	734fc17101a7883aa5bfcfc5af65b1720cf947da154b03ff9652d4ae03a4a6004b41a5e37a47c267fb9d097b44882958f44764eb662954550f7019a33986c602	AAN068	rufesleaford@gmail.com	2106193629	59934 Moulton Avenue	100
jgilroyjq	ac042b7ce7528bcffee69c5832dcc776d240c5b3bd379ea771b2c28374bcc1ec6490a1e25a356076db6324c79b7caa11c5126f96b90e0ebcae43d1da65fd67ac	AAN071	jilleengilroy@hotmail.com	6921948647	2 Hovde Plaza	65
deylesk9	eb7d4160159d1b1b63ee9abd65a3d953a34e52944896a65409c85c997174769ca5ee71bd8109205898b1a021f3bd326bfe60d5707d890269dfbf1106d550ee3f	AAN073	danieyles@gmail.com	6912892786	70 Darwin Alley	40
cborellic	108fad348b6aa85ee901d192059c4fc9c2c65148aa23d0f38a54f8fb2e977f65c24568232e3a54615934142ef6d6c9ae6aa350a487c0ac2810b8b02d2cce4f48	AAN075	cassiborell@hotmail.com	2108561664	4 Vernon Terrace	95
fdovingtonk2	38d42f6e8d0c0e3dd8455252c1e2dbe2fd122637de472c81bba78e6b33fc0e2fd0192efe06c1dbbb339413b0a707dd3e463b476944842390089e54fb967a48d8	AAN077	felicitydovington@hotmail.com	2109321219	6 Thackeray Pass	80
npollitti9	cd59eb18468c0f885e45ca1511a9dbe49376196e432f299a49abd19f9af1539c90158811c6d06c0ecc6931f6ae4f9ecc4674c5fcebf1a50ea4b91a44a548106c	AAN080	nedipollitt@gmail.com	6953924737	7 Mitchell Hill	40
jscamalin	cd4b5d32d2ad55cdfa4c9dcc02fbf24efa320f433782bfa5ce03a8801719efd23cda637c15771d9fb3f75f68e2fec7468849d1fd6788f28f10ee2fe784f5b42b	AAN082	joseescamal@yahoo.fr	6902853880	415 Sutherland Point	105
jsimcoxja	442a9ae60cf40c1e4c15bb572127377aa875e29dfa4109f3692ad4a353d5322ffe877b14957445df365fc3fbc44f64ba7f18210543192f767c1b4da89f187ec5	AAN084	jamiesimcox@aol.com	2100250346	1569 Annamark Park	60
abigriggiz	839b2d7880e0e4d54f51056ff139289fb24baaa0b7964b6663575fbbbc8c5c83636b31a42fca90c67547060b31c549c0af5830b0f909eb2f3f942d98c90918b5	AAN085	ashleighbigrigg@gmail.com	2108240684	064 Mesta Alley	70
dgallichankn	5f6c6c1aae338216deb4302b750a4369f4808ba4695a65e2e101b48e6d1f9f2520f18b1e939b647a67e56a084a9e86825c140a8b2fd833dee75c2d95bd966961	AAN088	dariagallichan@yahoo.com	6908623633	2524 Dryden Drive	115
idownsel7	461e702a0b04c830624863168bbc9a187b6d94f2cbb0ea367fddf39d92273a71232dc292e2bd512bf5553a0a0c87c237ab5ba05357e83177871d5ea938c440f9	AAN090	illadownse@hotmail.com	6986324097	06 Saint Paul Plaza	100
icucksonl9	b138041201cecc1d1b7a00a65d1b0b68fc46d8ff51e20f735dc385b735d8a3f81fbd7b086c65584e3c70f4eec48200f6d26618e4f18b6734cb5785a03f0f0c1b	AAN092	ionacuckson@hotmail.com	2108444953	3823 Parkside Hill	110
ecurrmmj	9491bdd3f632669f5a924bc74fe465c65914cf39b776c1083dcb3d293fce4956808936688e4b397a0a9ba45eaa68f7c1e56475ca9338d3bc31c31ae394be8743	AAN095	efremcurrm@gmail.com	6900702854	68538 Schiller Hill	85
mschuckmg	05eafd34f7fbde2049ee57a8e855f21250280d4d7f53db8a2bbee0916f33cbc390b543e576b7925b59a61d8685568c09cb13363072f666f2f4e88e61da8305e0	AAN097	martischuck@hotmail.com	6929977099	23 Algoma Drive	115
emcvittyny	6431c4d0b4c78252cd69167472f269c5ee8b36cb731dc74339a1edfadbcf396ae63f70f1edaf6ab7ac077ff8f5664e1023a0fb1781d52749c7b3d71b53b56e88	AAN099	earvinmcvitty@hotmail.com	6946666009	3 Kedzie Place	60
dovisenl	a502c9dbe1eb8effa2719a7c960920e5f9108587a48440cf1fc2b715325e821df7ef717bbf19cfc92eff09a3ffb9058ccf4cfcfcf7b9c14ef8f770ab6a18e40e	AAN101	delphineovise@yahoo.com	2105639136	0 Annamark Avenue	40
lgeeritzpc	e203f6b6b3116708c77cc06c635d6d151bf704f3288fdad4fdaf0fa6b0a144628ebcd2a344ff6594891db2261ff247f6960650add9519ad16d09b628806db50d	AAN103	laurigeeritz@yahoo.com	2109350050	65289 Sunnyside Court	55
nhewlingsp0	4436d038919e4c87b389b5c8f4ae33a7426b7afecbd9591ef3453bfd549c8f764d57bf068e2c0f36244797a39458817a85e79c3b9e4cca240e558bd3ff132c3b	AAN105	norinahewlings@gmail.com	2107490132	37845 Anzinger Trail	85
bshermarpa	665e2805331ce8d95776165df9581fb37917020e907661d49f175d5afcfb30ec75bd6da3825fbdc64e3543f2cb032543c00d58a419ceb93d2338eeaf46b2cc09	AAN107	bibbyeshermar@hotmail.com	2109042311	00 Derek Parkway	100
cwartonbyrp	40726467238331ff217926132e80ac0e7a11315005d4e1b45ec417987c513237c29147b6c40933d56f2b32413875f7c9c5a37a8af6e1511041c8cee40b1dc941	AAN109	carolewartonby@hotmail.com	6936703782	3 Annamark Junction	95
htuttps	92c50e4862839a0c12ccdefc7000b3d6ac88e97e8c3df0b115b10de91ac2b968fd3318bafbcc771426138e8e62ce025aa6c591345ab5db6ea7f506c281ad8595	AAN111	harmantutt@orange.fr	6956676900	3 Judy Road	65
cblasingpu	089726366f6e07e56aee45d031945d1c58731a85dc967e1cf5cfb89b3c84693055554eef1c9a7613c6af200d302a78619bc4c65cc3bd9ef9e403b1ed539591eb	AAN113	cherylblasing@hotmail.com	2102187956	93 Ilene Plaza	65
rgillesonq9	c342c640c6a9e967f0602e635aac5a1b1d13ab94bee6d4ec038bd194c8f38e6591fe0cbdd0537c7347babdc28300d7dbb02791dd8ddc0cf76e0ed036611ebfac	AAN116	randigilleson@yahoo.com	6903390967	12728 Eliot Road	55
bkingdomqy	96733350ac8c5c71d30ba13ca50793eaebfec45b4d7c9fdf017c095c93147271696f03477a34aa0bd101bca3ec17ec7d70ef86b8d4f76ed54f952e7c2733ac19	AAN118	beatrizkingdom@gmail.com	6945760955	60 Dawn Circle	90
gcroppr8	bacd53c4807d5973bd264c99e7e3bac6869eea3273b3e7ef4175b35eaa54759bf8d56b57b219aa548be11745ae83a8a4b96d09f110217fbcc4e935c514b8115b	AAN120	gawaincropp@gmail.com	2109680028	6 Packers Hill	80
fcobbledickjx	9134381e143537a0ef63ec55b73adcf3cd5eed0c0a50df3730423301744d25ad1ccb8571616c7477f7533bcef518d2c34fd4d6fd03b07d2a5d0e72cfbf044186	NSE072	faycobbledick@aol.com	2105443331	6547 Moland Crossing	115
tastleiv	46cbefcb8132d1549456b7ce959ec1f22b420843e6ba38fd0ffd76e5bd11f9729f62017970229678d7b1b6295df5860aba609a8ad86b5b94ddcdbd6ad26e07a4	NSE074	thomaastle@orange.fr	6994312996	3 Sugar Alley	60
dparletj2	bfdee5741ceb39f71ee7bf4ca250fe442b0f980251bced5fbef88efabe3ee023d1b51b8c22f6087a912c7fcc16a2f59ebe3c9c56373825b51253e2a71796d869	NSE076	dannyparlet@gmail.com	6909232039	8884 Almo Avenue	40
nbezantsmz	3191c30e12a706d545ca08f81077f4b380cc29fafae945f7112d1db9730b323081857c225bbf3c67b92f0efd7bbe09f56d8171533b190a4f083f8113f15388bb	NSE078	nadabezants@gmail.com	6976529939	7 Troy Drive	115
hhumblestonemt	6746f3047eb1830dc15703a150e6857d361fbfc9d1aeed99354803cea9d8b621f3e7d85f743e7b72841a7a7453e5fab015aa26584a96bbfccaa255286e315f69	NSE080	hamiltonhumblestone@orange.fr	2101679163	07550 Golden Leaf Circle	35
bsienel1	0b16b254c876abe7b53d61878121784f6198ccfadd470763d22859475a0e36af298c51ca295c6eee0614ab8d20d9d4f293bf16317b772bbc07e8a5d628757fc9	NSE083	bobbiesiene@yahoo.com	6963333531	5 Spenser Trail	115
jcottonl2	259fdc0a2538f05d29070a92823ecab2f18e2563fee9121a1e09e9873435461612941d9610eb2680e75dcfc07a99699753a682a8368df200c823cdd52a707445	NSE084	justinacotton@gmail.com	2108133607	0 Mccormick Parkway	100
bsaffellky	8057cbf58ff73018552bc1689b4c741b7a863a499ba9e4f913c36247f4e6d46248381b0de75602cc75b62f3577531d48432aa468cde0e894ed218b6b9cc0ce0d	NSE086	benedictsaffell@gmail.com	6919749650	12 Messerschmidt Court	45
mpragnellln	2598e68385a1aa1fab042be2185d5e5418e78e8cd9f21fac0f9957ef6b8ff5084795de1912ce8e7f6034fe83e05af9891d7b6d3eb74246223eb139b49a19634e	NSE088	marcelluspragnell@orange.fr	6937489677	107 Golf Circle	40
aconsterdinem2	dde518f7d37adfd689664a59151c96fa396d275c02e63461527380c89f9cf756a96d8590c5182612e4ece05fbc36edea2c2d3cca4dcbc95a952e64a4fb3b50ff	NSE090	ameliaconsterdine@yahoo.fr	6941912512	318 Colorado Court	80
psturneym6	49ae44087938a6ce1bea9c6d1979ba049b43470d51c1d6be01e6f6782c7b86204bb0d224f0bfb63c2b75f58f3c79833a71713286fb4e651e1fe942b5b1ff95d4	NSE092	pietrasturney@gmail.com	6938921555	7251 Elmside Terrace	120
kdowningo8	36f5a97e2ce3adb39389278573fa4a64e7a95a883550e359f3bc075ee33b061a5ffa35cdbd2de230d32aeae9565f80ec497878fcc3de3f90568bd7d9ccb8cfb1	NSE094	karriedowning@gmail.com	2102662832	077 Kenwood Avenue	65
tcoattsnf	457999e405ba7019332fbbc9170127810a683ca62cdd8753bd5f8ec317c98f56d5e2c000782c5fd0b6c38d7b3883f5916a92632dfb936acc40ba23c8bd24a106	NSE096	tadcoatts@gmail.com	2106107747	14 La Follette Junction	85
mmcgrailnw	e08557276a7ee9a0f8e25f55b80b411bd4a2760e0c1a93a2b1e04683b928f7b7d3b8dc7e2d1f2fab4f501f47024bdb476b80df27663a60c325b561bbd9bb55e6	NSE098	meghannmcgrail@gmail.com	2107208524	650 Coleman Court	60
rlatekoo	f52a4ab8c19b4671ac4dcd57581d1f2b2fe10c8c5413ab87132f62fe8ec9e57e289548c9b52b8e6496c177e3a7d636d13460363698990d508394336bd880d11b	NSE101	renaelatek@gmail.com	2103435603	2202 Sutherland Avenue	65
pjeavesod	1952bc764bf3f6a792e637588cfef05079d456de4b7e14a2366ce4012428bbda24ef6c8d496a66a9cc80897166fa99f31f51ae67f412dfa83257c4ac5a297555	NSE103	paulojeaves@gmail.com	2107389500	749 Buell Way	45
dbaccusou	f9bc63fb0a74308ab09c9e198a343d4af9bdd7b438763dd757edf48a6d1ce5b854131faab0aae7ccd2c29c8ea49e5d57be3ef4c7adc51c345146179583090601	NSE105	dotbaccus@yahoo.com	2104809520	88169 Meadow Ridge Park	60
aragateri	6632af447dfadd61c0435f172044f623d3f69ff5ddf9ee86a0939354d5a6c142341e6918a0fcb0606bb639b00b9cb4d5239e89a0ad6037e59e42885f49dd55a5	NSE107	antonellaragate@gmail.com	2101797122	40451 Rockefeller Circle	110
mmacilhargypn	df451d990b81d8ab9a6719ebd8942fd36ccc2ce8c489d54f4e4f0cb20239383bc14dd58307bc571cada3ba3fe1fff6aede8a77c722c979aab18cc6e54334de42	NSE109	merillmacilhargy@gmail.com	2105862149	93 Kings Lane	105
dbannardq1	ad87a162412097537fcd134720f37c0fd07129617736746d170326e21dc97dbd7945dd87f866037554c94f637c50f75f983754ac55a5cd19803a06ffbe75c942	NSE111	dalbannard@gmail.com	6962936160	4630 Menomonie Hill	80
shogbenpv	c4c82f0b93cadab838481d65211f25b65d8523f0a4beadb80a9a2aaffb62c69a3105eb31bdf44a9d153643fac4b76dff36c3e3cbcf9e4d988fba2aeb6c89a6d0	NSE113	sandrahogben@yahoo.com	6994322190	86386 Canary Road	70
hstorrpo	ecf48bd270b2963bc504095dce1fc2463a8a019026ca66d9b77591fbe4bef2ac87d08d8186723876508026601f7b541f67e563d43066441155d6232de8adc8f4	NSE115	hoytstorr@gmail.com	6943628220	1 Truax Drive	90
jenstonqz	9fcac4b8c409fe613d776e2853750d2a1aa66254a7b467f945a183cf514277dce53245e59722ea8f1b1770ce273e335a762bd0ab7a0394a7a3b91519c5da8458	NSE117	jedediahenston@gmail.com	2102698007	77167 Mariners Cove Trail	80
jnisotr5	270ecb93a555db6e50d911ab5637586af2f6d5ad6927da31c60581e9fb67e39f2bf9ba75b3ea18f957ae2d4e9d6be7415f8394aba6ee4ecdda146d301f87c6b0	NSE119	janeannisot@yahoo.com	6945349223	8 Anthes Alley	50
kboundeyqq	ccb1135294a79db4f43995d4b0479f5b624d1bf0b2db34299ff1ddda7d7ed5a44ce32a55c3826e2d2523f19d132a5c25afb02287168e34a19f21a8ed293e2443	NSE120	kirstiboundey@hotmail.fr	6940946792	50 Aberg Alley	115
mtarbertd	5bda7b13b62d1b4331e38252a4c9124b8f7988fe29661822f8afeb0f0db1df45b3d214ec72d44df6614d0861de5a49a40ca989b2634043e5cd425c2aba2e667d	NSE123	merileetarbert@hotmail.com	6962833565	5796 Graceland Trail	70
cledgerbm	dd2e29261d5f247e4669f155b2f70a077e4f9b6346f2e41e6795ce016337c5243b28168916ab13b56d6f62cc7e9aeb5c5ed624687b96638a5b0927d58438ca13	NSE125	chastityledger@gmail.com	6991522822	7 Sachs Place	100
hdartnall3m	423b90b5d8372bd4714075e29b1baa2487e1697e81796c9a8336b4b5081a62143ea534340b22e29dfe896fc9ce4aec28271e11e692957dec4a559e481d12058a	NSE129	halliedartnall@hotmail.com	2109872510	846 Hansons Park	105
daimerap	2b7b8f2359b5cc01af0462b2e4ad9c6c5f6123de45d7691cac9bdda33816972e7bbce314109594fb2ebc2c3a4d88a8e9c94c8f7fb86942762ef34a8809233343	AAN013	druaimer@wanadoo.fr	6983574577	2478 Russell Plaza	90
mempringhamav	3eb0a92c986b5b4981b97e4bb7d3f856bdc94810ca142a4d4d2e2ce1e4cdd9866ec32e7d45d497acb3035b9ff1c68c9007e92f10852f8a9db4f6be762e41fb06	AAN015	marjorieempringham@gmail.com	2101049425	55203 Cascade Point	50
kbenner8n	b5e150075fc52dac4869a870f7136408c5d2c3bfa0220009e19515288674aace32739473b1bb7be0b92f424e9104f14184cfd69262e320b850cce1600e5063f2	AAN017	khalilbenner@hotmail.com	6990401946	536 Holmberg Road	115
jmayworthbj	ffbf6d7f5ae136a67b184aa8d807ffd2d6393f335628888c29c8257097219c5be12a821b45eebd111829558b59f2ff14ebe657556cd4518bacc683fd42b746df	AAN147	jonathanmayworth@gmail.com	2102905212	658 Colorado Trail	75
mvileal	7ea0fade6df52e79c07aa954491191ca413c9ca88689e7bbccffb4db795db7f98584c438198ee663db2f41c88fdd5ecd8a6d73668940bf6681014c6f4904e50b	AAN019	merrilivile@gmail.com	2100213126	14880 Bellgrove Avenue	80
lwaulker8r	4fb518f0a7449c907db16e0b1f5f23da857dd676b09b4e6c7379d8ca845993c2cf51d22e958efc6ecb651c9f05bf449b6c1dfe3e3a9fff146f20945c7fb6bf37	AAN020	luluwaulker@hotmail.co.uk	2105872046	01 International Terrace	75
cbroadbere9t	1119196e27b5a462c62e37cb49c5d62b5440772768d25552c9528834c9a545fa6a675e4f78e6d4c4af4073b184b6480480bc6f027c1198e2b39c0a7fa6a3f2a7	AAN022	charlesbroadbere@gmail.com	2101861527	37575 Linden Alley	100
lmarshlandac	0d71c08a55d79c7006eb07649100dcc3d4849dc3ec341dd0940e161dadbf23eb640f4e585cbd30addccc7f0ed01791f6e95ca9567db3c22348ef78a0e7e509b7	AAN024	leonaniemarshland@gmail.com	2101542922	4 Farmco Court	50
bjaggia1	77533a13f247de9bee5dc782ce391bb3322ca886dec46c7b68d72b5b18a5bee16243c1e2dce42d65f62ee11640260d75de43acea4aff509c222f545d0496de77	AAN026	bernarrjaggi@gmail.com	2102461901	644 Bluestem Place	45
ngrishagina5	285ae8d73b7338dc9a5d8699a3fb1a52206c7cbd8965cc79d0cbc96ba203313184b38327e1fd79c68aa0373e4b78a3d054efdb8ef3ab11a3e20022867df9af6f	AAN028	neddygrishagin@hotmail.com	6971017714	14888 Sage Circle	75
fdaleman9y	0e9856b2777a5bdd4aa0be4069aba4282bbbe3f60381fd9dfdac54de885dbf75674d886798ff5bf6e84f80b245a42c8733a09a11b0ca74a375d5903abe45ba04	AAN030	federicodaleman@yahoo.com	6978148562	26 Fairview Drive	115
efancuttcw	3dbee74ff50c5815f9c2e91530ba4c0f889ee0f422714b463517aa8d23499716cf63f2405ef35bc56662fb18d9c264bb7c2137cd89a862a4cb10c474405c2edc	AAN032	ezequielfancutt@aol.com	6933452547	9164 Northwestern Trail	45
ebannerbt	68d2fd14c4b27f3fd0078d31c25011dcac72b22a84246c357c8103e55edc67c3066c56c9f623a45e50b53cd27048caa7cc2577974b9942262509c1dc5fd79ffd	AAN034	emmybanner@gmail.com	2107630908	85260 Arizona Road	110
tgutteridgecc	014d3b91673bf55077c95ed68a8fa2da2ebccb3ff7a928071a48346eff7b098719890e36673920c7432c42b4137e67878135bfbed106e5dbeadd9e64d948d12e	AAN036	tategutteridge@gmail.com	6981650151	544 Merrick Terrace	75
spraundlck	132b9af3fd1ed012a7996b0f18bb8fb76922829893c5eeb9f0a48df5178da6179cf7b9d48e601d123bfe19250725793f014ca85f2b31fb4ed082e7b60c3b8726	AAN038	shannanpraundl@gmail.com	6918909577	5 Kropf Center	100
mleishmanct	24efa04343b5424435badeeb1317b4c928e1f019b2fa6a6572199ce9622d7de0294b706cc8c7af349ff78d61f824edb683e27b7e82a398ab6b331a9c6946ed08	AAN040	marnaleishman@gmail.com	2108978930	7 Dawn Road	35
ktamesd1	8781e9d58127bb4e3c01929a28e8c10a7ed6261eaecc875a9026d53491834ce3b12a14178149b2faa0242f2204ccd18ccfb0c9edf4e34da6691b2ebba29e936e	AAN042	kareetames@aol.com	6947240486	64243 Anzinger Parkway	105
bswaylandd6	72ea4f02af0f223a57d14977af02d0d59a1428a9b32818055f8edccdf867d200c4b6b4f0b28a9677e209e9c82dfde9e451fbf49bf5c339f7814d2a47f7d9aa0b	AAN043	benjaminswayland@gmail.com	6953103250	42307 Mifflin Junction	55
tbleddoneo	1a96fdf70372fe6d0c4b45ba5f5f8d04362bd0d74ca0c3ee4f2269f3ff679adaf3e086697bfca1fcc2c521056b98de496d3f023f0a5a0e4dc2b48a538fa6402d	AAN045	timothybleddon@msn.com	2109083126	9 Independence Way	45
smachostedq	1109b666e4d20f16b6d0d5333a96292709d6019cbd219c1fa68124a70e437a20d66758430d4deb5e424be6dc5a9224669d58d4278798422887a1a1943ddc909a	AAN048	senamachoste@yahoo.com	2102891542	15 Gerald Parkway	115
mwheeldoneb	71ec58d3e673d73586312a4f16074c883efd68783d9e70acd6daa2cc16b7cf6c0343d7bea74b049bc09d2221c8d7e3231df496b66f3bdabc84b330dc473e0938	AAN050	marjawheeldon@gmail.com	6942792407	9 Red Cloud Drive	115
hugloweu	81ed08bb018aa4ac9c7e3a336e31429266caabc30e08272860add62555a8bf92e93d3ee836cb9f4096d76cbf4d887d21a156830a531c6bf41c11188cdd6d306c	AAN052	hieronymusuglow@yahoo.com	6923519589	1 Barnett Court	60
jchandersdr	3b40b4b4dbb1180e3a16f25dfeee7dec92ff41c106e302677c7b8d903e442a95da7dcd7d0230e7c882210e70ddde63c78bb4649100182fc1a3bdee5f3f975389	AAN054	juliuschanders@gmail.com	6968330854	09 Schlimgen Crossing	95
pcraftshx	99ec91b3c21653500d357616efc31e0a4582ddbd3015fa7366a072a8c1401b9fad2b09a29febad6a2798bbcef33247182764d5a2d66484a3c8e2da555597f697	AAN057	pegcrafts@gmail.com	2108370887	636 Sachs Road	70
ntynanfy	6409be6bfe22e6bdaec67ca92900e321d68bed17777c40f846e1bd161eb9ed8e8f9a0dfb1a62d6a241c5e52e28124618488ac2ffa5f5685adb66c8e3db685d8b	AAN059	nestortynan@yahoo.com	2105473492	40073 Westend Avenue	40
ccraigiehy	acca7e4a4cdf9b4973dc43638d974976d2ddc77aedb893b6fa4ee009e6b24407b580aa606273466f233b24cb46098ab067506015c6d4112f8fd7774107d6b646	AAN061	chercraigie@hotmail.com	2101087170	09424 Aberg Hill	115
jmowbrayge	1709dec441492805e68fb51908a29df67788c1a006706524a6cf43e6e6900fd78dc70304cce5b59790b2dfcbd92e26e75428e3a123f41b59d4a8edeeb2eeb676	AAN063	jordanmowbray@msn.com	2108020724	7471 Havey Circle	90
bmowsdillg3	ab35be3adcf8f7c3be8d07ab1562d0079a81b995c64c7d5ca80180e7e4155d82b2e622109ed8e8bf8be85a007956f2ad48caebd57407d98b9a5039734d5f8688	AAN065	brandermowsdill@hotmail.com	2102273548	292 Westridge Junction	110
cshacklegw	e912ce28856ea2a9147eb1295fe4600ecd29a328083617c8d10363a29977ffd41a557a836dbab6aa8392bc0557d4fae8bb13a403c9eafc624e065d819fd468cc	AAN067	calvinshackle@hotmail.com	6935316688	9 Holy Cross Court	45
dloughanh0	0b2621d8f9e2fa8f8869a74843164556da6343c358cdeba1086f8a77b2d9169fe7191d622cb77d9bf9ee1b0b236cf13984f683819945ad48155c3c468d26a33f	AAN069	derwardloughan@yahoo.com	6927017183	41336 Bonner Street	70
rpergensjs	fa221b58c62876cbf5b5106e1ed426e4e7c326a26777c910748aa8d2783f72ab3a4d2bf6da3f36cd92987dfcae6e1d2ec07d1162fe8c8f528d4297642e06c9d5	AAN072	rippergens@gmail.com	6911721110	704 Eggendart Alley	50
btrevaskuskk	3318a8191e9579e17e21b1c67104ae201a2637d516d9645b9417c4a39865089ba721c980055e35ef7e094ff6e62a1194040bcae58bc5f94a6228944f3a5e244f	AAN074	bambitrevaskus@hotmail.co.uk	6921531245	22611 Lighthouse Bay Street	70
ehryniewickijr	1a719c073246e184ccbb59b2f06fbae2b4104f49f1d6d59974f3b9f2a18f39d7013391342999bf9d3224fce3a84af66e8a7edc62481f1a5fbd7e9dc26f1a5994	AAN076	errolhryniewicki@orange.fr	6960994396	9508 Lillian Road	40
laptedid	1cc4100849e279a48b3a88869e6a8a779294fb4bcbc7466b4205cec98517e2b20ab305a1b791a43d72b2e88dcdb73e0f7e9f30461e65bf9979f59ce7a77a3dd8	AAN078	leeanneapted@gmail.com	2102469535	29 David Terrace	75
azottoliio	379fe617277f7c9789bce520963eb1be3b64426e9c24a00cbb046fe97ebe480d863969a4fd2f923c6c930ef74b8e53fd960cd3db239f0f10d0885247d4525f5a	AAN079	aggiezottoli@gmail.com	6989048520	91354 Lotheville Center	105
atolmanj0	c5c681ac777c6a2cd62032f72fd4beea4ba5254cb629651540ebde3d79c16257386ef56bfc09cf3ec67adf692e3f6068f231aada00d8bb8f18728e0ff7287776	AAN081	adellatolman@gmail.com	6927787830	0468 Independence Place	45
mmuatj3	387a97548251f1ff79b9401b63a7127ccfdb40822cb847032f4f692f20fc343318aa71582b126c57c9182ff23b40f6133d3dd83c0a3e61b211cee2a73475acb6	AAN083	margerymuat@hotmail.com	2107891224	728 Green Ridge Junction	70
bffoulkesjo	1faafc948e7d8dd1dd879031be123fbf859368da5544cde24f1554d3ffba8f2263db587e74a93eb6b938e10666fcc411e7518f12a1fdbce398a0c11be29adb3e	AAN086	burgessffoulkes@gmail.com	6977991927	206 Continental Crossing	100
mdecristofalom7	896d753486b3b765841607809bb47b60d37c6204da1c61f8da62a855921818379080571c135a24f27d23fe933bbdb8aa85ace9b15fa0b2e22b979476de8cdaa5	AAN087	meredithedecristofalo@gmail.com	2102147859	026 Badeau Pass	95
sposvnerku	603e7a97c755b14a4a4dfbcf6e03d214777392ffaee24807d85d0fccebf10e6c4b12646a01d738ef906576dc52f767d4c6352688e4fedbfa05f50ea2fd2c9ba5	AAN089	sherlineposvner@hotmail.com	2101103616	65 Gateway Lane	75
goatteskz	88788e2b9f81369b70d0aa77e64c56b2e1966f64f57e8026121a3bc2321e0e5ed1f290ac296b023c193d4a7839f6b5c6adb81a95b21a9b3ec1927161fb063439	AAN091	georgiannaoattes@yahoo.com	6956610252	32 Maryland Hill	50
lboothlp	60d0f0df7679aa6601ca96c3b8e70fd5a782d2713038cfbd1a71a7fb637fca406b3c9eb6243f5a814c4fecff67282359fbb70e786dad85970e1016aa1a1e5ee8	AAN093	lucybooth@aol.com	6977126100	859 1st Road	45
sfinanm5	4e3716909b701753c25280d75cf647c090ed77687b397856dc2601c27e6fd34254e378f8d72284951e55c4894ca2ecf3b1f5f472b9f1b762260c205bdcfe23eb	AAN096	sergiofinan@hotmail.com	2108333809	9355 Gulseth Street	110
ameffinp6	b025ee0b9eef3138c94b58bc2796e21cd61077c018c57c4f3e870aa2a612f3e927458dc15760e18b81436a83e5fb8c4aa485be94cfd1dbefd759cd0715b5805d	AAN098	annamariameffin@hotmail.com	2107424770	33 Debra Trail	60
lpickrillof	5b93f99fdc2e0f30682b03d2d9f62c31e53dbfbd3faf5d3b0b9840f24abba0a17fa135258a75ce5470bb03a67afbafc2b3597b77f18253551876bff1de859141	AAN100	linellpickrill@hotmail.com	2101877483	58329 Portage Center	90
kcartneroq	778441487b02eab0d705901d5b1463ee73804c98797129b82277b7f5d3ce777f4de54db463d9a5f496dbddc3f3f555cd1dc402b01c26f1db0f82251792cd0150	AAN102	katticartner@gmail.com	6937457642	4322 Southridge Plaza	80
cgierckeoy	f9f7d197b23fe4e645927a8c3a1e41d3efef400c7bbc1df17c89dbf3efb60204f84e85159046a4464dd2f82d3da45cffed93f351a419512d8ecb7a5ce9146949	AAN104	corendagiercke@hotmail.com	2105285434	9 Pearson Alley	70
ccaldowp2	7732352886836e0f340baad0cdbd7c134ff73ce2ec73ed11f79eba698abe44c2d35adf54316df950966c29975e4ba7a3a30884caa0597022b6535005cfa6cad5	AAN106	cathrinecaldow@gmail.com	6968150120	92 Saint Paul Court	100
cnewalln9	23a3d615446da6a3c97c4b6aa8d316154cbdd6ec67fa15fe1c934b24a8c17540cd42c46cba4ef278bbe6936b51448068cd6bf49582d2261dd557d8a3457405a9	AAN108	cullennewall@hotmail.com	6924079370	20142 Burning Wood Street	85
lespinospr	d3edb8418ff75cc4fd0ef42efd5edcce2df03783769d9ab0dba1ed5f6c2860cdc6318c2a894276dc94bdfbedc77f17f3cd22488b209d6f35cf33a623979137e9	AAN110	lilithespinos@gmail.com	2105327989	4087 American Hill	60
gwyllieq2	bbff059ea3d830bf3ce45cbc351c2d437a6bc8399c6ee5d773d2c2772f8c1f5b5a6a8344ab80811a6a05ea8547dfd955d35ccb82325b2bffb490b1041146e9cf	AAN112	godfreewyllie@hotmail.com	6966111531	2 Farwell Plaza	90
kkopkerq	01894ab8a9ac97725f370caa8efa9fe294aa392af0a0fe3a036738de19675cf6dc9c3d190b5bacea1779206f0b75ee59464ab2b85d2f3b3e23121b683469de40	AAN115	kayleykopke@gmail.com	6900030312	89 Brentwood Terrace	85
emerrittqw	c22a6ecbbe71220884de810681a430e34c0af8bf1a3eb6b8fd4fc1407b2f673fb22979126f86301537c520aca5a1c73a872cc5b586b0465069bb8d7654d133e8	AAN117	enriquemerritt@gmail.com	2100050259	1 Florence Pass	115
gshaylerql	5fe28976ab0a160669f0dd57c958a1b2a3c1bf65fa2b1d3876b8032f862bcb5f4e712be32338f115984e8f67e19ea9417ead17a58b56a76600690bd2bb41fa07	AAN119	glenineshayler@gmail.com	2105376859	93 Dawn Alley	85
\.


--
-- TOC entry 2844 (class 0 OID 16432)
-- Dependencies: 198
-- Data for Name: studentscourses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.studentscourses (username, course_id, grade) FROM stdin;
ithomersonbi	CS.101	7.00
ithomersonbi	CS.102	8.00
ithomersonbi	CS.103	9.00
ithomersonbi	CS.201	5.00
ithomersonbi	CS.202	9.00
ithomersonbi	CS.203	8.00
ithomersonbi	CS.301	7.00
ithomersonbi	CS.302	7.00
ithomersonbi	CS.303	10.00
ithomersonbi	CS.401	9.00
ithomersonbi	CS.402	7.00
ithomersonbi	CS.403	6.00
ithomersonbi	CS.501	7.00
ithomersonbi	CS.502	10.00
ithomersonbi	CS.503	5.00
ithomersonbi	CS.601	8.00
ithomersonbi	CS.602	9.00
ithomersonbi	CS.603	8.00
ithomersonbi	CS.701	8.00
ithomersonbi	CS.702	6.00
ithomersonbi	CS.703	6.00
ithomersonbi	CS.801	6.00
ithomersonbi	CS.802	6.00
ithomersonbi	CS.803	5.00
treinmar8g	CS.101	8.00
treinmar8g	CS.102	5.00
treinmar8g	CS.103	9.00
treinmar8g	CS.201	9.00
treinmar8g	CS.202	6.00
treinmar8g	CS.203	9.00
treinmar8g	CS.301	7.00
treinmar8g	CS.302	10.00
treinmar8g	CS.303	5.00
treinmar8g	CS.401	8.00
treinmar8g	CS.402	8.00
treinmar8g	CS.403	9.00
treinmar8g	CS.501	9.00
treinmar8g	CS.502	8.00
treinmar8g	CS.503	8.00
treinmar8g	CS.601	6.00
treinmar8g	CS.602	7.00
nkytley8s	CS.101	6.00
nkytley8s	CS.102	10.00
nkytley8s	CS.103	8.00
nkytley8s	CS.201	10.00
nkytley8s	CS.202	7.00
nkytley8s	CS.203	9.00
nkytley8s	CS.301	5.00
nkytley8s	CS.302	10.00
mlegganhz	CS.101	7.00
mlegganhz	CS.102	9.00
mlegganhz	CS.103	10.00
mlegganhz	CS.201	7.00
mlegganhz	CS.202	5.00
mlegganhz	CS.203	7.00
mlegganhz	CS.301	9.00
mlegganhz	CS.302	5.00
mlegganhz	CS.303	5.00
mlegganhz	CS.401	9.00
mlegganhz	CS.402	10.00
mlegganhz	CS.403	5.00
mlegganhz	CS.501	10.00
mlegganhz	CS.502	6.00
mlegganhz	CS.503	10.00
llerouxlr	CS.101	7.00
llerouxlr	CS.102	7.00
llerouxlr	CS.103	6.00
llerouxlr	CS.201	8.00
llerouxlr	CS.202	5.00
llerouxlr	CS.203	9.00
llerouxlr	CS.301	10.00
llerouxlr	CS.302	8.00
llerouxlr	CS.303	8.00
llerouxlr	CS.401	7.00
llerouxlr	CS.402	10.00
llerouxlr	CS.403	5.00
llerouxlr	CS.501	5.00
llerouxlr	CS.502	6.00
llerouxlr	CS.503	10.00
llerouxlr	CS.601	5.00
llerouxlr	CS.602	6.00
llerouxlr	CS.603	10.00
cbefroyns	CS.101	10.00
cbefroyns	CS.102	7.00
cbefroyns	CS.103	6.00
cbefroyns	CS.201	7.00
cbefroyns	CS.202	7.00
cbefroyns	CS.203	5.00
cbefroyns	CS.301	7.00
cbefroyns	CS.302	10.00
cbefroyns	CS.303	8.00
cbefroyns	CS.401	10.00
cbefroyns	CS.402	10.00
cbefroyns	CS.403	10.00
cbefroyns	CS.501	6.00
cbefroyns	CS.502	6.00
cbefroyns	CS.503	6.00
cbefroyns	CS.601	5.00
cbefroyns	CS.602	9.00
cbefroyns	CS.603	10.00
cbefroyns	CS.701	5.00
cbefroyns	CS.702	9.00
mstockill8f	CS.101	10.00
mstockill8f	CS.102	10.00
mstockill8f	CS.103	10.00
mstockill8f	CS.201	9.00
mstockill8f	CS.202	9.00
mstockill8f	CS.203	9.00
mstockill8f	CS.301	8.00
mstockill8f	CS.302	7.00
mstockill8f	CS.303	7.00
mstockill8f	CS.401	6.00
mstockill8f	CS.402	5.00
mstockill8f	CS.403	6.00
mstockill8f	CS.501	7.00
mstockill8f	CS.502	7.00
jbrigstockfr	CS.101	10.00
jbrigstockfr	CS.102	5.00
jbrigstockfr	CS.103	7.00
jbrigstockfr	CS.201	7.00
jbrigstockfr	CS.202	8.00
jbrigstockfr	CS.203	6.00
jbrigstockfr	CS.301	10.00
jbrigstockfr	CS.302	9.00
jbrigstockfr	CS.303	8.00
jbrigstockfr	CS.401	5.00
jbrigstockfr	CS.402	6.00
jbrigstockfr	CS.403	10.00
jbrigstockfr	CS.501	5.00
jbrigstockfr	CS.502	10.00
jbrigstockfr	CS.503	8.00
jbrigstockfr	CS.601	8.00
jbrigstockfr	CS.602	7.00
kfairey9a	CS.101	5.00
kfairey9a	CS.102	6.00
kfairey9a	CS.103	5.00
kfairey9a	CS.201	6.00
kfairey9a	CS.202	6.00
kfairey9a	CS.203	9.00
kfairey9a	CS.301	9.00
kfairey9a	CS.302	7.00
kfairey9a	CS.303	5.00
kfairey9a	CS.401	7.00
kfairey9a	CS.402	10.00
kfairey9a	CS.403	6.00
kfairey9a	CS.501	8.00
kfairey9a	CS.502	5.00
kfairey9a	CS.503	9.00
kfairey9a	CS.601	9.00
kfairey9a	CS.602	9.00
kfairey9a	CS.603	7.00
kfairey9a	CS.701	5.00
kfairey9a	CS.702	10.00
kfairey9a	CS.703	7.00
kfairey9a	CS.801	6.00
tdavidofskia8	CS.101	10.00
tdavidofskia8	CS.102	6.00
tdavidofskia8	CS.103	6.00
tdavidofskia8	CS.201	7.00
tdavidofskia8	CS.202	10.00
tdavidofskia8	CS.203	6.00
tdavidofskia8	CS.301	10.00
tdavidofskia8	CS.302	7.00
hbarnard9r	CS.101	10.00
hbarnard9r	CS.102	8.00
hbarnard9r	CS.103	7.00
hbarnard9r	CS.201	7.00
hbarnard9r	CS.202	10.00
hbarnard9r	CS.203	7.00
hbarnard9r	CS.301	9.00
hbarnard9r	CS.302	6.00
hbarnard9r	CS.303	8.00
hbarnard9r	CS.401	9.00
hbarnard9r	CS.402	7.00
hbarnard9r	CS.403	8.00
hbarnard9r	CS.501	9.00
hbarnard9r	CS.502	10.00
hbarnard9r	CS.503	7.00
hbarnard9r	CS.601	7.00
hbarnard9r	CS.602	10.00
hbarnard9r	CS.603	5.00
hbarnard9r	CS.701	9.00
hbarnard9r	CS.702	10.00
hbarnard9r	CS.703	6.00
hbarnard9r	CS.801	7.00
hbarnard9r	CS.802	7.00
hbarnard9r	CS.803	5.00
mitzaksona7	CS.101	9.00
mitzaksona7	CS.102	10.00
mitzaksona7	CS.103	10.00
mitzaksona7	CS.201	7.00
mitzaksona7	CS.202	6.00
mitzaksona7	CS.203	7.00
mitzaksona7	CS.301	6.00
mitzaksona7	CS.302	5.00
mitzaksona7	CS.303	6.00
mitzaksona7	CS.401	9.00
mitzaksona7	CS.402	5.00
mitzaksona7	CS.403	6.00
mitzaksona7	CS.501	8.00
mitzaksona7	CS.502	6.00
mitzaksona7	CS.503	8.00
mitzaksona7	CS.601	8.00
mitzaksona7	CS.602	8.00
mitzaksona7	CS.603	6.00
mitzaksona7	CS.701	10.00
mitzaksona7	CS.702	5.00
mitzaksona7	CS.703	10.00
mitzaksona7	CS.801	9.00
mitzaksona7	CS.802	5.00
mitzaksona7	CS.803	8.00
hpetrolli63	CS.101	10.00
hpetrolli63	CS.102	10.00
hpetrolli63	CS.103	5.00
hpetrolli63	CS.201	8.00
hpetrolli63	CS.202	7.00
hpetrolli63	CS.203	6.00
hpetrolli63	CS.301	7.00
hpetrolli63	CS.302	10.00
hpetrolli63	CS.303	6.00
hpetrolli63	CS.401	10.00
hpetrolli63	CS.402	5.00
hpetrolli63	CS.403	7.00
hpetrolli63	CS.501	10.00
hpetrolli63	CS.502	8.00
hpetrolli63	CS.503	6.00
hpetrolli63	CS.601	10.00
jtranfield6c	CS.102	10.00
jtranfield6c	CS.103	5.00
jtranfield6c	CS.201	6.00
jtranfield6c	CS.202	10.00
jtranfield6c	CS.203	9.00
jtranfield6c	CS.301	7.00
jtranfield6c	CS.302	9.00
jtranfield6c	CS.303	7.00
jtranfield6c	CS.401	10.00
jtranfield6c	CS.402	10.00
jtranfield6c	CS.403	6.00
jtranfield6c	CS.501	5.00
jtranfield6c	CS.502	6.00
jtranfield6c	CS.503	9.00
jtranfield6c	CS.601	8.00
jtranfield6c	CS.602	10.00
jtranfield6c	CS.603	10.00
jtranfield6c	CS.701	7.00
jtranfield6c	CS.702	9.00
jtranfield6c	CS.703	8.00
rpearne6d	CS.101	9.00
rpearne6d	CS.102	9.00
rpearne6d	CS.103	5.00
rpearne6d	CS.201	10.00
rpearne6d	CS.202	10.00
rpearne6d	CS.203	8.00
rpearne6d	CS.301	6.00
rpearne6d	CS.302	9.00
rpearne6d	CS.303	10.00
rpearne6d	CS.401	6.00
rpearne6d	CS.402	10.00
rpearne6d	CS.403	6.00
rpearne6d	CS.501	6.00
rpearne6d	CS.502	10.00
rpearne6d	CS.503	5.00
rpearne6d	CS.601	6.00
rpearne6d	CS.602	5.00
rpearne6d	CS.603	9.00
rpearne6d	CS.701	6.00
rpearne6d	CS.702	10.00
rpearne6d	CS.703	10.00
rpearne6d	CS.801	5.00
rpearne6d	CS.802	8.00
alawes68	CS.101	8.00
alawes68	CS.102	9.00
alawes68	CS.103	6.00
alawes68	CS.201	6.00
alawes68	CS.202	7.00
alawes68	CS.203	10.00
alawes68	CS.301	6.00
alawes68	CS.302	10.00
alawes68	CS.303	10.00
alawes68	CS.401	7.00
alawes68	CS.402	7.00
alawes68	CS.403	10.00
alawes68	CS.501	10.00
alawes68	CS.502	9.00
alawes68	CS.503	7.00
alawes68	CS.601	10.00
alawes68	CS.602	9.00
alawes68	CS.603	7.00
alawes68	CS.701	9.00
alawes68	CS.702	7.00
alawes68	CS.703	6.00
alawes68	CS.801	6.00
achinge6j	CS.101	5.00
achinge6j	CS.102	7.00
achinge6j	CS.103	7.00
achinge6j	CS.201	7.00
achinge6j	CS.202	9.00
achinge6j	CS.203	9.00
achinge6j	CS.301	6.00
achinge6j	CS.302	6.00
achinge6j	CS.303	7.00
achinge6j	CS.401	6.00
achinge6j	CS.402	7.00
achinge6j	CS.403	6.00
achinge6j	CS.501	9.00
achinge6j	CS.502	6.00
achinge6j	CS.503	5.00
achinge6j	CS.601	9.00
achinge6j	CS.602	9.00
achinge6j	CS.603	8.00
achinge6j	CS.701	7.00
achinge6j	CS.702	8.00
bogden7u	CS.101	5.00
bogden7u	CS.102	7.00
bogden7u	CS.103	7.00
bogden7u	CS.201	10.00
bogden7u	CS.202	5.00
bogden7u	CS.203	8.00
bogden7u	CS.301	7.00
bogden7u	CS.302	9.00
bogden7u	CS.303	7.00
bogden7u	CS.401	5.00
bogden7u	CS.402	8.00
bogden7u	CS.403	7.00
bogden7u	CS.501	8.00
bogden7u	CS.502	8.00
bogden7u	CS.503	8.00
bogden7u	CS.601	5.00
bogden7u	CS.602	7.00
bogden7u	CS.603	5.00
cbenedettini6g	CS.101	10.00
cbenedettini6g	CS.102	9.00
cbenedettini6g	CS.103	5.00
cbenedettini6g	CS.201	8.00
cbenedettini6g	CS.202	8.00
cbenedettini6g	CS.203	6.00
cbenedettini6g	CS.301	5.00
cbenedettini6g	CS.302	10.00
cbenedettini6g	CS.303	5.00
cbenedettini6g	CS.401	8.00
cbenedettini6g	CS.402	5.00
cbenedettini6g	CS.403	7.00
cbenedettini6g	CS.501	6.00
cbenedettini6g	CS.502	10.00
cbenedettini6g	CS.503	8.00
cbenedettini6g	CS.601	9.00
cbenedettini6g	CS.602	8.00
cbenedettini6g	CS.603	7.00
cbenedettini6g	CS.701	5.00
emonnoyer6u	CS.101	9.00
emonnoyer6u	CS.102	7.00
emonnoyer6u	CS.103	6.00
emonnoyer6u	CS.201	7.00
emonnoyer6u	CS.202	9.00
emonnoyer6u	CS.203	8.00
emonnoyer6u	CS.301	6.00
emonnoyer6u	CS.302	9.00
emonnoyer6u	CS.303	5.00
emonnoyer6u	CS.401	6.00
emonnoyer6u	CS.402	8.00
qdullard6w	CS.101	10.00
qdullard6w	CS.102	5.00
qdullard6w	CS.103	7.00
qdullard6w	CS.201	5.00
qdullard6w	CS.202	9.00
qdullard6w	CS.203	10.00
qdullard6w	CS.301	9.00
qdullard6w	CS.302	5.00
qdullard6w	CS.303	10.00
qdullard6w	CS.401	7.00
qdullard6w	CS.402	7.00
qdullard6w	CS.403	6.00
qdullard6w	CS.501	10.00
qdullard6w	CS.502	10.00
qdullard6w	CS.503	5.00
qdullard6w	CS.601	10.00
edene7b	CS.101	8.00
edene7b	CS.102	10.00
edene7b	CS.103	8.00
edene7b	CS.201	8.00
edene7b	CS.202	5.00
edene7b	CS.203	10.00
edene7b	CS.301	8.00
edene7b	CS.302	8.00
nkyllford7i	CS.101	9.00
nkyllford7i	CS.102	9.00
nkyllford7i	CS.103	5.00
nkyllford7i	CS.201	5.00
nkyllford7i	CS.202	6.00
nkyllford7i	CS.203	7.00
nkyllford7i	CS.301	10.00
nkyllford7i	CS.302	8.00
nkyllford7i	CS.303	10.00
nkyllford7i	CS.401	8.00
nkyllford7i	CS.402	6.00
ccashford7l	CS.101	5.00
ccashford7l	CS.102	7.00
ccashford7l	CS.103	8.00
ccashford7l	CS.201	6.00
ccashford7l	CS.202	7.00
ccashford7l	CS.203	10.00
ccashford7l	CS.301	9.00
ccashford7l	CS.302	10.00
ccashford7l	CS.303	5.00
ccashford7l	CS.401	7.00
ccashford7l	CS.402	5.00
ccashford7l	CS.403	10.00
ccashford7l	CS.501	6.00
ccashford7l	CS.502	7.00
ccashford7l	CS.503	7.00
ccashford7l	CS.601	6.00
ccashford7l	CS.602	5.00
ccashford7l	CS.603	9.00
lbathoe7r	CS.101	9.00
lbathoe7r	CS.102	9.00
lbathoe7r	CS.103	5.00
lbathoe7r	CS.201	5.00
lbathoe7r	CS.202	6.00
lbathoe7r	CS.203	6.00
lbathoe7r	CS.301	5.00
lbathoe7r	CS.302	8.00
lbathoe7r	CS.303	5.00
lbathoe7r	CS.401	10.00
lbathoe7r	CS.402	5.00
fraynesaj	CS.101	5.00
fraynesaj	CS.102	8.00
fraynesaj	CS.103	6.00
fraynesaj	CS.201	5.00
fraynesaj	CS.202	7.00
fraynesaj	CS.203	6.00
fraynesaj	CS.301	8.00
fraynesaj	CS.302	5.00
fraynesaj	CS.303	6.00
fraynesaj	CS.401	8.00
fraynesaj	CS.402	8.00
fraynesaj	CS.403	9.00
fraynesaj	CS.501	5.00
fraynesaj	CS.502	10.00
fraynesaj	CS.503	7.00
lbrunsdonak	CS.101	6.00
lbrunsdonak	CS.102	5.00
lbrunsdonak	CS.103	8.00
lbrunsdonak	CS.201	9.00
lbrunsdonak	CS.202	10.00
lbrunsdonak	CS.203	10.00
lbrunsdonak	CS.301	8.00
lbrunsdonak	CS.302	10.00
lbrunsdonak	CS.303	8.00
lbrunsdonak	CS.401	9.00
lbrunsdonak	CS.402	5.00
lbrunsdonak	CS.403	5.00
lbrunsdonak	CS.501	10.00
lbrunsdonak	CS.502	10.00
lbrunsdonak	CS.503	5.00
lbrunsdonak	CS.601	8.00
lbrunsdonak	CS.602	8.00
lbrunsdonak	CS.603	7.00
lbrunsdonak	CS.701	9.00
cbartalinian	CS.101	10.00
cbartalinian	CS.102	9.00
cbartalinian	CS.103	9.00
cbartalinian	CS.201	10.00
cbartalinian	CS.202	6.00
cbartalinian	CS.203	8.00
cbartalinian	CS.301	7.00
cbartalinian	CS.302	10.00
cbartalinian	CS.303	9.00
cbartalinian	CS.401	8.00
cbartalinian	CS.402	5.00
cbartalinian	CS.403	6.00
cbartalinian	CS.501	7.00
aluter8k	CS.101	9.00
aluter8k	CS.102	6.00
aluter8k	CS.103	6.00
aluter8k	CS.201	7.00
aluter8k	CS.202	5.00
aluter8k	CS.203	6.00
aluter8k	CS.301	8.00
aluter8k	CS.302	6.00
aluter8k	CS.303	9.00
aluter8k	CS.401	6.00
aluter8k	CS.402	8.00
aluter8k	CS.403	5.00
tburniston8l	CS.101	7.00
tburniston8l	CS.102	8.00
tburniston8l	CS.103	7.00
tburniston8l	CS.201	5.00
tburniston8l	CS.202	6.00
tburniston8l	CS.203	7.00
tburniston8l	CS.301	10.00
tburniston8l	CS.302	6.00
tburniston8l	CS.303	8.00
tburniston8l	CS.401	5.00
ehaggarty8x	CS.101	10.00
ehaggarty8x	CS.102	7.00
ehaggarty8x	CS.103	5.00
ehaggarty8x	CS.201	5.00
ehaggarty8x	CS.202	5.00
ehaggarty8x	CS.203	5.00
ehaggarty8x	CS.301	5.00
ehaggarty8x	CS.302	6.00
ehaggarty8x	CS.303	7.00
ehaggarty8x	CS.401	5.00
ehaggarty8x	CS.402	7.00
ehaggarty8x	CS.403	9.00
ehaggarty8x	CS.501	8.00
ehaggarty8x	CS.502	10.00
ehaggarty8x	CS.503	5.00
ehaggarty8x	CS.601	10.00
tbayle99	CS.101	8.00
tbayle99	CS.102	8.00
tbayle99	CS.103	7.00
tbayle99	CS.201	8.00
tbayle99	CS.202	10.00
tbayle99	CS.203	6.00
tbayle99	CS.301	8.00
tbayle99	CS.302	8.00
tbayle99	CS.303	6.00
tbayle99	CS.401	10.00
tbayle99	CS.402	9.00
tbayle99	CS.403	8.00
tbayle99	CS.501	9.00
tbayle99	CS.502	8.00
tbayle99	CS.503	9.00
tbayle99	CS.601	7.00
tbayle99	CS.602	5.00
taloshikin9k	CS.101	6.00
taloshikin9k	CS.102	10.00
taloshikin9k	CS.103	5.00
taloshikin9k	CS.201	8.00
taloshikin9k	CS.202	10.00
taloshikin9k	CS.203	6.00
taloshikin9k	CS.301	9.00
taloshikin9k	CS.302	10.00
taloshikin9k	CS.303	6.00
taloshikin9k	CS.401	6.00
taloshikin9k	CS.402	5.00
taloshikin9k	CS.403	6.00
taloshikin9k	CS.501	6.00
taloshikin9k	CS.502	7.00
taloshikin9k	CS.503	10.00
taloshikin9k	CS.601	5.00
taloshikin9k	CS.602	5.00
taloshikin9k	CS.603	8.00
taloshikin9k	CS.701	8.00
taloshikin9k	CS.702	10.00
cpadrick9h	CS.101	6.00
cpadrick9h	CS.102	10.00
cpadrick9h	CS.103	6.00
cpadrick9h	CS.201	5.00
cpadrick9h	CS.202	5.00
cpadrick9h	CS.203	9.00
cpadrick9h	CS.301	5.00
cpadrick9h	CS.302	6.00
cpadrick9h	CS.303	9.00
abilton9i	CS.101	7.00
abilton9i	CS.102	8.00
abilton9i	CS.103	8.00
abilton9i	CS.201	10.00
abilton9i	CS.202	10.00
abilton9i	CS.203	6.00
abilton9i	CS.301	5.00
abilton9i	CS.302	7.00
abilton9i	CS.303	9.00
nbrooksonbw	CS.101	9.00
nbrooksonbw	CS.102	6.00
nbrooksonbw	CS.103	9.00
nbrooksonbw	CS.201	8.00
nbrooksonbw	CS.202	5.00
nbrooksonbw	CS.203	8.00
nbrooksonbw	CS.301	7.00
nbrooksonbw	CS.302	8.00
nbrooksonbw	CS.303	9.00
nbrooksonbw	CS.401	8.00
jmoodycg	CS.101	5.00
jmoodycg	CS.102	8.00
jmoodycg	CS.103	7.00
jmoodycg	CS.201	7.00
jmoodycg	CS.202	9.00
jmoodycg	CS.203	6.00
jmoodycg	CS.301	10.00
bscrivinorcr	CS.101	7.00
bscrivinorcr	CS.102	10.00
bscrivinorcr	CS.103	8.00
bscrivinorcr	CS.201	10.00
bscrivinorcr	CS.202	7.00
bscrivinorcr	CS.203	6.00
bscrivinorcr	CS.301	6.00
bscrivinorcr	CS.302	8.00
bscrivinorcr	CS.303	8.00
bscrivinorcr	CS.401	9.00
bscrivinorcr	CS.402	6.00
bscrivinorcr	CS.403	7.00
bscrivinorcr	CS.501	10.00
bscrivinorcr	CS.502	5.00
bscrivinorcr	CS.503	6.00
bscrivinorcr	CS.601	7.00
bscrivinorcr	CS.602	8.00
bscrivinorcr	CS.603	10.00
bscrivinorcr	CS.701	8.00
bscrivinorcr	CS.702	9.00
bshelleycu	CS.101	10.00
bshelleycu	CS.102	9.00
bshelleycu	CS.103	8.00
bshelleycu	CS.201	7.00
bshelleycu	CS.202	9.00
bshelleycu	CS.203	7.00
bshelleycu	CS.301	6.00
bshelleycu	CS.302	5.00
bshelleycu	CS.303	8.00
bshelleycu	CS.401	5.00
bshelleycu	CS.402	8.00
bshelleycu	CS.403	8.00
bshelleycu	CS.501	8.00
bshelleycu	CS.502	6.00
bshelleycu	CS.503	10.00
bshelleycu	CS.601	5.00
bshelleycu	CS.602	9.00
bshelleycu	CS.603	9.00
bshelleycu	CS.701	9.00
bshelleycu	CS.702	7.00
bshelleycu	CS.703	5.00
bshelleycu	CS.801	7.00
lfrickerbz	CS.101	10.00
lfrickerbz	CS.102	10.00
lfrickerbz	CS.103	7.00
lfrickerbz	CS.201	9.00
lfrickerbz	CS.202	6.00
lfrickerbz	CS.203	5.00
lfrickerbz	CS.301	8.00
lfrickerbz	CS.302	10.00
lfrickerbz	CS.303	7.00
lfrickerbz	CS.401	5.00
lfrickerbz	CS.402	10.00
lfrickerbz	CS.403	10.00
lfrickerbz	CS.501	9.00
lfrickerbz	CS.502	10.00
lfrickerbz	CS.503	5.00
lfrickerbz	CS.601	5.00
lfrickerbz	CS.602	8.00
lfrickerbz	CS.603	7.00
cdallander2v	CS.101	6.00
cdallander2v	CS.102	6.00
cdallander2v	CS.103	10.00
cdallander2v	CS.201	10.00
cdallander2v	CS.202	7.00
cdallander2v	CS.203	5.00
cdallander2v	CS.301	9.00
cdallander2v	CS.302	9.00
cdallander2v	CS.303	5.00
cdallander2v	CS.401	10.00
cdallander2v	CS.402	6.00
cdallander2v	CS.403	5.00
cdallander2v	CS.501	5.00
cdallander2v	CS.502	8.00
cdallander2v	CS.503	6.00
cdallander2v	CS.601	10.00
cdallander2v	CS.602	10.00
vpristnorb3	CS.101	7.00
vpristnorb3	CS.102	7.00
vpristnorb3	CS.103	8.00
vpristnorb3	CS.201	7.00
vpristnorb3	CS.202	8.00
vpristnorb3	CS.203	6.00
vpristnorb3	CS.301	8.00
vpristnorb3	CS.302	6.00
vpristnorb3	CS.303	8.00
vpristnorb3	CS.401	6.00
vpristnorb3	CS.402	10.00
vpristnorb3	CS.403	7.00
vpristnorb3	CS.501	7.00
vpristnorb3	CS.502	8.00
bburnhamsb4	CS.101	6.00
bburnhamsb4	CS.102	5.00
bburnhamsb4	CS.103	6.00
bburnhamsb4	CS.201	10.00
bburnhamsb4	CS.202	10.00
bburnhamsb4	CS.203	5.00
bburnhamsb4	CS.301	8.00
cscotlandbe	CS.101	5.00
cscotlandbe	CS.102	7.00
cscotlandbe	CS.103	6.00
cscotlandbe	CS.201	6.00
cscotlandbe	CS.202	10.00
cscotlandbe	CS.203	10.00
cscotlandbe	CS.301	5.00
cscotlandbe	CS.302	6.00
cscotlandbe	CS.303	9.00
cscotlandbe	CS.401	5.00
cscotlandbe	CS.402	6.00
cscotlandbe	CS.403	6.00
cscotlandbe	CS.501	10.00
cscotlandbe	CS.502	5.00
cscotlandbe	CS.503	7.00
cscotlandbe	CS.601	8.00
cscotlandbe	CS.602	8.00
jminneybf	CS.101	9.00
jminneybf	CS.102	7.00
jminneybf	CS.103	5.00
jminneybf	CS.201	9.00
jminneybf	CS.202	7.00
jminneybf	CS.203	8.00
jminneybf	CS.301	5.00
jminneybf	CS.302	9.00
jminneybf	CS.303	6.00
nciciurafo	CS.101	5.00
nciciurafo	CS.102	6.00
nciciurafo	CS.103	9.00
nciciurafo	CS.201	6.00
nciciurafo	CS.202	7.00
nciciurafo	CS.203	8.00
nciciurafo	CS.301	10.00
nciciurafo	CS.302	9.00
nciciurafo	CS.303	10.00
nciciurafo	CS.401	8.00
nciciurafo	CS.402	5.00
nciciurafo	CS.403	7.00
nciciurafo	CS.501	7.00
nciciurafo	CS.502	10.00
nciciurafo	CS.503	5.00
nciciurafo	CS.601	8.00
nciciurafo	CS.602	6.00
nciciurafo	CS.603	9.00
nciciurafo	CS.701	6.00
nciciurafo	CS.702	10.00
wdolanee	CS.101	10.00
wdolanee	CS.102	7.00
wdolanee	CS.103	5.00
wdolanee	CS.201	8.00
wdolanee	CS.202	7.00
wdolanee	CS.203	8.00
wdolanee	CS.301	7.00
wdolanee	CS.302	10.00
wdolanee	CS.303	5.00
wdolanee	CS.401	7.00
wdolanee	CS.402	10.00
wdolanee	CS.403	5.00
wdolanee	CS.501	6.00
wdolanee	CS.502	7.00
wdolanee	CS.503	10.00
wdolanee	CS.601	5.00
wdolanee	CS.602	7.00
wdolanee	CS.603	10.00
wdolanee	CS.701	9.00
wdolanee	CS.702	6.00
wdolanee	CS.703	8.00
wdolanee	CS.801	7.00
dwatermandj	CS.101	5.00
dwatermandj	CS.102	7.00
dwatermandj	CS.103	8.00
dwatermandj	CS.201	7.00
dwatermandj	CS.202	7.00
dwatermandj	CS.203	9.00
dwatermandj	CS.301	10.00
dwatermandj	CS.302	10.00
dwatermandj	CS.303	7.00
dwatermandj	CS.401	7.00
dwatermandj	CS.402	9.00
dwatermandj	CS.403	8.00
dwatermandj	CS.501	8.00
dwatermandj	CS.502	7.00
dwatermandj	CS.503	8.00
dwatermandj	CS.601	7.00
dwatermandj	CS.602	7.00
dyakunikovdl	CS.101	8.00
dyakunikovdl	CS.102	7.00
dyakunikovdl	CS.103	10.00
dyakunikovdl	CS.201	5.00
dyakunikovdl	CS.202	6.00
dyakunikovdl	CS.203	6.00
dyakunikovdl	CS.301	10.00
dyakunikovdl	CS.302	9.00
dyakunikovdl	CS.303	6.00
dyakunikovdl	CS.401	7.00
dyakunikovdl	CS.402	8.00
dyakunikovdl	CS.403	5.00
dyakunikovdl	CS.501	7.00
slowndsds	CS.101	10.00
slowndsds	CS.102	9.00
slowndsds	CS.103	8.00
slowndsds	CS.201	9.00
slowndsds	CS.202	6.00
slowndsds	CS.203	5.00
slowndsds	CS.301	9.00
slowndsds	CS.302	10.00
slowndsds	CS.303	10.00
slowndsds	CS.401	8.00
slowndsds	CS.402	6.00
slowndsds	CS.403	8.00
slowndsds	CS.501	9.00
slowndsds	CS.502	8.00
slowndsds	CS.503	10.00
slowndsds	CS.601	6.00
slowndsds	CS.602	9.00
slowndsds	CS.603	7.00
mchallinerdv	CS.101	7.00
mchallinerdv	CS.102	6.00
mchallinerdv	CS.103	9.00
mchallinerdv	CS.201	5.00
mchallinerdv	CS.202	5.00
mchallinerdv	CS.203	6.00
mchallinerdv	CS.301	8.00
mchallinerdv	CS.302	9.00
mchallinerdv	CS.303	10.00
mchallinerdv	CS.401	8.00
mchallinerdv	CS.402	10.00
mchallinerdv	CS.403	8.00
mchallinerdv	CS.501	9.00
mchallinerdv	CS.502	5.00
mchallinerdv	CS.503	7.00
mchallinerdv	CS.601	7.00
dwarburtondm	CS.101	8.00
dwarburtondm	CS.102	8.00
dwarburtondm	CS.103	5.00
dwarburtondm	CS.201	8.00
dwarburtondm	CS.202	8.00
dwarburtondm	CS.203	6.00
dwarburtondm	CS.301	9.00
pkillgusdn	CS.101	8.00
pkillgusdn	CS.102	6.00
pkillgusdn	CS.103	5.00
pkillgusdn	CS.201	5.00
pkillgusdn	CS.202	5.00
pkillgusdn	CS.203	5.00
pkillgusdn	CS.301	7.00
pkillgusdn	CS.302	7.00
pkillgusdn	CS.303	8.00
pkillgusdn	CS.401	10.00
pkillgusdn	CS.402	6.00
pkillgusdn	CS.403	9.00
ctoulmine2	CS.101	5.00
ctoulmine2	CS.102	9.00
ctoulmine2	CS.103	10.00
ctoulmine2	CS.201	8.00
ctoulmine2	CS.202	7.00
ctoulmine2	CS.203	6.00
ctoulmine2	CS.301	5.00
ctoulmine2	CS.302	7.00
ctoulmine2	CS.303	6.00
ctoulmine2	CS.401	6.00
ctoulmine2	CS.402	9.00
ctoulmine2	CS.403	7.00
ctoulmine2	CS.501	10.00
brikardeg	CS.101	10.00
brikardeg	CS.102	9.00
brikardeg	CS.103	9.00
brikardeg	CS.201	5.00
brikardeg	CS.202	5.00
brikardeg	CS.203	6.00
brikardeg	CS.301	8.00
brikardeg	CS.302	8.00
brikardeg	CS.303	6.00
brikardeg	CS.401	7.00
aheddenev	CS.101	7.00
aheddenev	CS.102	8.00
aheddenev	CS.103	8.00
aheddenev	CS.201	5.00
aheddenev	CS.202	8.00
aheddenev	CS.203	8.00
aheddenev	CS.301	9.00
aheddenev	CS.302	7.00
aheddenev	CS.303	6.00
aheddenev	CS.401	5.00
aheddenev	CS.402	9.00
aheddenev	CS.403	6.00
aheddenev	CS.501	7.00
aheddenev	CS.502	6.00
aheddenev	CS.503	10.00
aheddenev	CS.601	7.00
aheddenev	CS.602	9.00
aheddenev	CS.603	7.00
aheddenev	CS.701	10.00
aheddenev	CS.702	8.00
aheddenev	CS.703	8.00
aheddenev	CS.801	8.00
aheddenev	CS.802	5.00
cgeorgeonez	CS.101	9.00
cgeorgeonez	CS.102	9.00
cgeorgeonez	CS.103	8.00
cgeorgeonez	CS.201	10.00
cgeorgeonez	CS.202	7.00
cgeorgeonez	CS.203	5.00
cgeorgeonez	CS.301	5.00
cgeorgeonez	CS.302	7.00
cmalanem	CS.101	6.00
cmalanem	CS.102	7.00
cmalanem	CS.103	5.00
cmalanem	CS.201	7.00
cmalanem	CS.202	10.00
cmalanem	CS.203	7.00
cmalanem	CS.301	8.00
cmalanem	CS.302	6.00
cmalanem	CS.303	10.00
cmalanem	CS.401	7.00
cmalanem	CS.402	7.00
cmalanem	CS.403	10.00
cmalanem	CS.501	7.00
cmalanem	CS.502	8.00
cmalanem	CS.503	6.00
cmalanem	CS.601	7.00
cmalanem	CS.602	6.00
cmalanem	CS.603	9.00
cmalanem	CS.701	7.00
cmalanem	CS.702	5.00
cmalanem	CS.703	5.00
cmalanem	CS.801	9.00
cmckernonf4	CS.101	9.00
cmckernonf4	CS.102	7.00
cmckernonf4	CS.103	6.00
cmckernonf4	CS.201	7.00
cmckernonf4	CS.202	7.00
cmckernonf4	CS.203	9.00
cmckernonf4	CS.301	9.00
cmckernonf4	CS.302	10.00
cmckernonf4	CS.303	9.00
tgetleyep	CS.101	10.00
tgetleyep	CS.102	9.00
tgetleyep	CS.103	5.00
tgetleyep	CS.201	5.00
tgetleyep	CS.202	10.00
tgetleyep	CS.203	10.00
tgetleyep	CS.301	8.00
tgetleyep	CS.302	6.00
tgetleyep	CS.303	10.00
tgetleyep	CS.401	10.00
tgetleyep	CS.402	8.00
tgetleyep	CS.403	7.00
frosebyf2	CS.101	10.00
frosebyf2	CS.102	7.00
frosebyf2	CS.103	8.00
frosebyf2	CS.201	6.00
frosebyf2	CS.202	6.00
frosebyf2	CS.203	9.00
frosebyf2	CS.301	5.00
frosebyf2	CS.302	9.00
hclaussenh7	CS.101	8.00
hclaussenh7	CS.102	9.00
hclaussenh7	CS.103	6.00
hclaussenh7	CS.201	5.00
hclaussenh7	CS.202	6.00
hclaussenh7	CS.203	8.00
hclaussenh7	CS.301	7.00
hclaussenh7	CS.302	5.00
hclaussenh7	CS.303	6.00
hclaussenh7	CS.401	8.00
hclaussenh7	CS.402	8.00
hclaussenh7	CS.403	6.00
hclaussenh7	CS.501	8.00
hclaussenh7	CS.502	6.00
hclaussenh7	CS.503	8.00
hclaussenh7	CS.601	5.00
nravenscroftthm	CS.101	5.00
nravenscroftthm	CS.102	7.00
nravenscroftthm	CS.103	7.00
nravenscroftthm	CS.201	9.00
nravenscroftthm	CS.202	5.00
nravenscroftthm	CS.203	9.00
nravenscroftthm	CS.301	7.00
nravenscroftthm	CS.302	9.00
nravenscroftthm	CS.303	7.00
nravenscroftthm	CS.401	8.00
nravenscroftthm	CS.402	6.00
nravenscroftthm	CS.403	5.00
nravenscroftthm	CS.501	8.00
nravenscroftthm	CS.502	10.00
nravenscroftthm	CS.503	5.00
nravenscroftthm	CS.601	7.00
nravenscroftthm	CS.602	10.00
nravenscroftthm	CS.603	7.00
hmitkcovgf	CS.101	10.00
hmitkcovgf	CS.102	6.00
hmitkcovgf	CS.103	6.00
hmitkcovgf	CS.201	6.00
hmitkcovgf	CS.202	7.00
hmitkcovgf	CS.203	5.00
hmitkcovgf	CS.301	5.00
hmitkcovgf	CS.302	10.00
hmitkcovgf	CS.303	7.00
hmitkcovgf	CS.401	10.00
hmitkcovgf	CS.402	10.00
kmurrockgz	CS.101	5.00
kmurrockgz	CS.102	5.00
kmurrockgz	CS.103	9.00
kmurrockgz	CS.201	7.00
kmurrockgz	CS.202	9.00
kmurrockgz	CS.203	5.00
kmurrockgz	CS.301	9.00
kmurrockgz	CS.302	10.00
kmurrockgz	CS.303	7.00
kmurrockgz	CS.401	9.00
kmurrockgz	CS.402	6.00
kmurrockgz	CS.403	5.00
kmurrockgz	CS.501	7.00
kmurrockgz	CS.502	8.00
kmurrockgz	CS.503	5.00
fpenninohs	CS.101	10.00
fpenninohs	CS.102	9.00
fpenninohs	CS.103	10.00
fpenninohs	CS.201	7.00
fpenninohs	CS.202	7.00
fpenninohs	CS.203	5.00
fpenninohs	CS.301	5.00
fpenninohs	CS.302	6.00
fpenninohs	CS.303	6.00
fpenninohs	CS.401	6.00
fpenninohs	CS.402	7.00
fpenninohs	CS.403	9.00
fpenninohs	CS.501	7.00
fpenninohs	CS.502	5.00
xpyottgm	CS.101	8.00
xpyottgm	CS.102	10.00
xpyottgm	CS.103	8.00
xpyottgm	CS.201	6.00
xpyottgm	CS.202	8.00
xpyottgm	CS.203	8.00
xpyottgm	CS.301	5.00
xpyottgm	CS.302	6.00
xpyottgm	CS.303	5.00
xpyottgm	CS.401	6.00
xpyottgm	CS.402	10.00
xpyottgm	CS.403	5.00
xpyottgm	CS.501	10.00
xpyottgm	CS.502	10.00
xpyottgm	CS.503	9.00
jfrapwellgv	CS.101	9.00
jfrapwellgv	CS.102	8.00
jfrapwellgv	CS.103	8.00
jfrapwellgv	CS.201	8.00
jfrapwellgv	CS.202	7.00
jfrapwellgv	CS.203	5.00
jfrapwellgv	CS.301	7.00
jfrapwellgv	CS.302	9.00
jfrapwellgv	CS.303	9.00
jfrapwellgv	CS.401	6.00
jfrapwellgv	CS.402	10.00
jfrapwellgv	CS.403	8.00
jfrapwellgv	CS.501	8.00
jfrapwellgv	CS.502	10.00
jfrapwellgv	CS.503	9.00
jfrapwellgv	CS.601	5.00
jfrapwellgv	CS.602	7.00
jfrapwellgv	CS.603	9.00
jfrapwellgv	CS.701	7.00
jfrapwellgv	CS.702	10.00
jfrapwellgv	CS.703	10.00
jfrapwellgv	CS.801	6.00
mouverh6	CS.101	5.00
mouverh6	CS.102	9.00
mouverh6	CS.103	5.00
mouverh6	CS.201	5.00
mouverh6	CS.202	8.00
mouverh6	CS.203	9.00
mouverh6	CS.301	9.00
mouverh6	CS.302	6.00
mouverh6	CS.303	5.00
mouverh6	CS.401	9.00
mouverh6	CS.402	10.00
mouverh6	CS.403	7.00
mouverh6	CS.501	8.00
mouverh6	CS.502	7.00
hgreensitehl	CS.101	8.00
hgreensitehl	CS.102	7.00
hgreensitehl	CS.103	7.00
hgreensitehl	CS.201	10.00
hgreensitehl	CS.202	9.00
hgreensitehl	CS.203	7.00
hgreensitehl	CS.301	8.00
hgreensitehl	CS.302	10.00
hgreensitehl	CS.303	6.00
hgreensitehl	CS.401	6.00
hgreensitehl	CS.402	8.00
hgreensitehl	CS.403	9.00
hgreensitehl	CS.501	10.00
hgreensitehl	CS.502	8.00
rforreho	CS.101	6.00
rforreho	CS.102	6.00
rforreho	CS.103	9.00
rforreho	CS.201	9.00
rforreho	CS.202	5.00
rforreho	CS.203	9.00
rforreho	CS.301	9.00
rforreho	CS.302	5.00
rforreho	CS.303	6.00
rforreho	CS.401	10.00
gdaenjv	CS.101	7.00
gdaenjv	CS.102	10.00
gdaenjv	CS.103	7.00
gdaenjv	CS.201	9.00
gdaenjv	CS.202	9.00
gdaenjv	CS.203	9.00
gdaenjv	CS.301	7.00
ncholtonka	CS.101	6.00
ncholtonka	CS.102	7.00
ncholtonka	CS.103	7.00
ncholtonka	CS.201	7.00
ncholtonka	CS.202	9.00
ncholtonka	CS.203	6.00
ncholtonka	CS.301	8.00
ncholtonka	CS.302	6.00
ncholtonka	CS.303	5.00
ncholtonka	CS.401	8.00
ncholtonka	CS.402	6.00
ncholtonka	CS.403	6.00
crozsake	CS.101	5.00
crozsake	CS.102	10.00
crozsake	CS.103	8.00
crozsake	CS.201	10.00
crozsake	CS.202	5.00
crozsake	CS.203	5.00
crozsake	CS.301	6.00
crozsake	CS.302	9.00
crozsake	CS.303	7.00
crozsake	CS.401	7.00
crozsake	CS.402	6.00
crozsake	CS.403	9.00
crozsake	CS.501	5.00
crozsake	CS.502	5.00
crozsake	CS.503	5.00
crozsake	CS.601	7.00
crozsake	CS.602	9.00
crozsake	CS.603	10.00
crozsake	CS.701	9.00
crozsake	CS.702	6.00
crozsake	CS.703	5.00
lmirrleesi6	CS.101	9.00
lmirrleesi6	CS.102	6.00
lmirrleesi6	CS.103	9.00
lmirrleesi6	CS.201	10.00
lmirrleesi6	CS.202	7.00
lmirrleesi6	CS.203	9.00
lmirrleesi6	CS.301	10.00
lmirrleesi6	CS.302	5.00
lmirrleesi6	CS.303	5.00
lmirrleesi6	CS.401	10.00
lmirrleesi6	CS.402	9.00
lmirrleesi6	CS.403	5.00
lleekeib	CS.101	6.00
lleekeib	CS.102	8.00
lleekeib	CS.103	10.00
lleekeib	CS.201	10.00
lleekeib	CS.202	6.00
lleekeib	CS.203	6.00
lleekeib	CS.301	5.00
lleekeib	CS.302	5.00
lleekeib	CS.303	5.00
lleekeib	CS.401	10.00
lleekeib	CS.402	5.00
lleekeib	CS.403	7.00
lleekeib	CS.501	9.00
lleekeib	CS.502	7.00
lleekeib	CS.503	8.00
lleekeib	CS.601	8.00
lleekeib	CS.602	10.00
osaywellie	CS.101	7.00
osaywellie	CS.102	6.00
osaywellie	CS.103	5.00
osaywellie	CS.201	6.00
osaywellie	CS.202	8.00
osaywellie	CS.203	7.00
osaywellie	CS.301	6.00
osaywellie	CS.302	7.00
osaywellie	CS.303	5.00
osaywellie	CS.401	10.00
osaywellie	CS.402	5.00
osaywellie	CS.403	5.00
osaywellie	CS.501	9.00
osaywellie	CS.502	10.00
osaywellie	CS.503	5.00
lburlayit	CS.101	5.00
lburlayit	CS.102	7.00
lburlayit	CS.103	5.00
lburlayit	CS.201	8.00
lburlayit	CS.202	8.00
lburlayit	CS.203	9.00
lburlayit	CS.301	7.00
lburlayit	CS.302	8.00
lburlayit	CS.303	8.00
lburlayit	CS.401	7.00
lburlayit	CS.402	8.00
bscotsonk7	CS.101	6.00
bscotsonk7	CS.102	10.00
bscotsonk7	CS.103	10.00
bscotsonk7	CS.201	10.00
bscotsonk7	CS.202	9.00
bscotsonk7	CS.203	8.00
bscotsonk7	CS.301	9.00
bscotsonk7	CS.302	6.00
bscotsonk7	CS.303	9.00
bscotsonk7	CS.401	5.00
bscotsonk7	CS.402	8.00
bscotsonk7	CS.403	10.00
bscotsonk7	CS.501	7.00
bscotsonk7	CS.502	9.00
mskipworthiw	CS.101	8.00
mskipworthiw	CS.102	8.00
mskipworthiw	CS.103	8.00
mskipworthiw	CS.201	8.00
mskipworthiw	CS.202	9.00
mskipworthiw	CS.203	7.00
mskipworthiw	CS.301	7.00
myonniej5	CS.101	10.00
myonniej5	CS.102	6.00
myonniej5	CS.103	7.00
myonniej5	CS.201	10.00
myonniej5	CS.202	9.00
myonniej5	CS.203	5.00
myonniej5	CS.301	9.00
myonniej5	CS.302	9.00
myonniej5	CS.303	6.00
myonniej5	CS.401	6.00
myonniej5	CS.402	9.00
myonniej5	CS.403	5.00
myonniej5	CS.501	9.00
myonniej5	CS.502	8.00
mghilksiy	CS.101	5.00
mghilksiy	CS.102	7.00
mghilksiy	CS.103	10.00
mghilksiy	CS.201	5.00
mghilksiy	CS.202	6.00
mghilksiy	CS.203	8.00
mghilksiy	CS.301	7.00
mghilksiy	CS.302	6.00
mghilksiy	CS.303	9.00
tboswardjk	CS.101	8.00
tboswardjk	CS.102	9.00
tboswardjk	CS.103	5.00
tboswardjk	CS.201	6.00
tboswardjk	CS.202	5.00
tboswardjk	CS.203	9.00
tboswardjk	CS.301	8.00
tboswardjk	CS.302	8.00
tboswardjk	CS.303	9.00
tboswardjk	CS.401	10.00
hrimbaultjl	CS.101	7.00
hrimbaultjl	CS.102	5.00
hrimbaultjl	CS.103	7.00
hrimbaultjl	CS.201	10.00
hrimbaultjl	CS.202	6.00
hrimbaultjl	CS.203	6.00
hrimbaultjl	CS.301	7.00
hrimbaultjl	CS.302	9.00
hrimbaultjl	CS.303	5.00
hrimbaultjl	CS.401	6.00
hrimbaultjl	CS.402	5.00
hrimbaultjl	CS.403	8.00
hrimbaultjl	CS.501	6.00
hrimbaultjl	CS.502	8.00
hrimbaultjl	CS.503	9.00
hrimbaultjl	CS.601	9.00
hrimbaultjl	CS.602	6.00
hrimbaultjl	CS.603	10.00
hrimbaultjl	CS.701	8.00
hrimbaultjl	CS.702	5.00
hrimbaultjl	CS.703	6.00
hrimbaultjl	CS.801	9.00
hrimbaultjl	CS.802	7.00
ajoanicjn	CS.101	9.00
ajoanicjn	CS.102	6.00
ajoanicjn	CS.103	5.00
ajoanicjn	CS.201	8.00
ajoanicjn	CS.202	7.00
ajoanicjn	CS.203	8.00
ajoanicjn	CS.301	9.00
ajoanicjn	CS.302	10.00
ajoanicjn	CS.303	8.00
ajoanicjn	CS.401	10.00
ajoanicjn	CS.402	8.00
ajoanicjn	CS.403	9.00
ajoanicjn	CS.501	7.00
ajoanicjn	CS.502	9.00
ajoanicjn	CS.503	8.00
ajoanicjn	CS.601	6.00
ajoanicjn	CS.602	5.00
cackredjp	CS.101	7.00
cackredjp	CS.102	8.00
cackredjp	CS.103	9.00
cackredjp	CS.201	5.00
cackredjp	CS.202	6.00
cackredjp	CS.203	7.00
cackredjp	CS.301	5.00
cackredjp	CS.302	7.00
cackredjp	CS.303	5.00
cackredjp	CS.401	7.00
cackredjp	CS.402	6.00
cackredjp	CS.403	8.00
cackredjp	CS.501	5.00
lcherriemx	CS.101	9.00
lcherriemx	CS.102	8.00
lcherriemx	CS.103	10.00
lcherriemx	CS.201	9.00
lcherriemx	CS.202	6.00
lcherriemx	CS.203	5.00
lcherriemx	CS.301	5.00
lcherriemx	CS.302	6.00
lcherriemx	CS.303	6.00
lcherriemx	CS.401	8.00
lcherriemx	CS.402	9.00
lcherriemx	CS.403	10.00
lcherriemx	CS.501	7.00
twiskerkq	CS.101	6.00
twiskerkq	CS.102	10.00
twiskerkq	CS.103	8.00
twiskerkq	CS.201	5.00
twiskerkq	CS.202	8.00
twiskerkq	CS.203	6.00
twiskerkq	CS.301	5.00
twiskerkq	CS.302	8.00
twiskerkq	CS.303	9.00
twiskerkq	CS.401	10.00
twiskerkq	CS.402	8.00
twiskerkq	CS.403	10.00
twiskerkq	CS.501	5.00
bcleminsonlm	CS.101	5.00
bcleminsonlm	CS.102	7.00
bcleminsonlm	CS.103	10.00
bcleminsonlm	CS.201	10.00
bcleminsonlm	CS.202	10.00
bcleminsonlm	CS.203	10.00
bcleminsonlm	CS.301	8.00
bcleminsonlm	CS.302	8.00
bcleminsonlm	CS.303	8.00
bcleminsonlm	CS.401	5.00
bcleminsonlm	CS.402	5.00
bcleminsonlm	CS.403	8.00
bcleminsonlm	CS.501	5.00
bcleminsonlm	CS.502	6.00
bcleminsonlm	CS.503	7.00
bcleminsonlm	CS.601	8.00
bcleminsonlm	CS.602	5.00
bcleminsonlm	CS.603	6.00
bcleminsonlm	CS.701	8.00
dbleackleymq	CS.101	7.00
dbleackleymq	CS.102	5.00
dbleackleymq	CS.103	8.00
dbleackleymq	CS.201	8.00
dbleackleymq	CS.202	9.00
dbleackleymq	CS.203	6.00
dbleackleymq	CS.301	5.00
dbleackleymq	CS.302	5.00
dbleackleymq	CS.303	7.00
dbleackleymq	CS.401	7.00
dbleackleymq	CS.402	8.00
dbleackleymq	CS.403	8.00
dbleackleymq	CS.501	9.00
dbleackleymq	CS.502	8.00
dbleackleymq	CS.503	7.00
dbleackleymq	CS.601	9.00
dbleackleymq	CS.602	5.00
dbleackleymq	CS.603	10.00
dbleackleymq	CS.701	10.00
dbleackleymq	CS.702	8.00
adelicatelv	CS.101	5.00
adelicatelv	CS.102	6.00
adelicatelv	CS.103	5.00
adelicatelv	CS.201	8.00
adelicatelv	CS.202	6.00
adelicatelv	CS.203	8.00
adelicatelv	CS.301	8.00
adelicatelv	CS.302	10.00
adelicatelv	CS.303	8.00
rmouncherlw	CS.102	8.00
rmouncherlw	CS.103	10.00
rmouncherlw	CS.201	5.00
rmouncherlw	CS.202	5.00
rmouncherlw	CS.203	10.00
rmouncherlw	CS.301	10.00
rmouncherlw	CS.302	10.00
rmouncherlw	CS.303	5.00
rmouncherlw	CS.401	7.00
gtullochly	CS.101	9.00
gtullochly	CS.102	9.00
gtullochly	CS.103	7.00
gtullochly	CS.201	6.00
gtullochly	CS.202	6.00
gtullochly	CS.203	8.00
gtullochly	CS.301	5.00
gtullochly	CS.302	5.00
gtullochly	CS.303	10.00
gtullochly	CS.401	9.00
gtullochly	CS.402	5.00
gtullochly	CS.403	7.00
gtullochly	CS.501	5.00
gtullochly	CS.502	10.00
gtullochly	CS.503	7.00
gtullochly	CS.601	9.00
gtullochly	CS.602	8.00
gtullochly	CS.603	10.00
gtullochly	CS.701	10.00
gtullochly	CS.702	6.00
gtullochly	CS.703	9.00
gtullochly	CS.801	7.00
gtullochly	CS.802	6.00
gtullochly	CS.803	8.00
ofrowm0	CS.101	5.00
ofrowm0	CS.102	10.00
ofrowm0	CS.103	7.00
ofrowm0	CS.201	5.00
ofrowm0	CS.202	10.00
ofrowm0	CS.203	8.00
ofrowm0	CS.301	7.00
ofrowm0	CS.302	6.00
ofrowm0	CS.303	6.00
ofrowm0	CS.401	8.00
ofrowm0	CS.402	5.00
ofrowm0	CS.403	6.00
ofrowm0	CS.501	6.00
ofrowm0	CS.502	5.00
ofrowm0	CS.503	7.00
ofrowm0	CS.601	10.00
ofrowm0	CS.602	10.00
ofrowm0	CS.603	9.00
ofrowm0	CS.701	5.00
ofrowm0	CS.702	5.00
ofrowm0	CS.703	8.00
ofrowm0	CS.801	9.00
ofrowm0	CS.802	9.00
dwattamma	CS.101	7.00
dwattamma	CS.102	6.00
dwattamma	CS.103	7.00
dwattamma	CS.201	8.00
dwattamma	CS.202	8.00
dwattamma	CS.203	10.00
dwattamma	CS.301	9.00
dwattamma	CS.302	10.00
dwattamma	CS.303	8.00
dwattamma	CS.401	10.00
dwattamma	CS.402	10.00
dwattamma	CS.403	7.00
dwattamma	CS.501	10.00
dwattamma	CS.502	10.00
swiddowsonmd	CS.101	9.00
swiddowsonmd	CS.102	8.00
swiddowsonmd	CS.103	10.00
swiddowsonmd	CS.201	5.00
swiddowsonmd	CS.202	6.00
swiddowsonmd	CS.203	9.00
swiddowsonmd	CS.301	6.00
swiddowsonmd	CS.302	7.00
fmosebynb	CS.101	10.00
fmosebynb	CS.102	7.00
fmosebynb	CS.103	8.00
fmosebynb	CS.201	9.00
fmosebynb	CS.202	6.00
fmosebynb	CS.203	7.00
fmosebynb	CS.301	9.00
fmosebynb	CS.302	6.00
fmosebynb	CS.303	8.00
fmosebynb	CS.401	7.00
fmosebynb	CS.402	7.00
uvannni	CS.101	5.00
uvannni	CS.102	7.00
uvannni	CS.103	9.00
uvannni	CS.201	8.00
uvannni	CS.202	7.00
uvannni	CS.203	8.00
uvannni	CS.301	5.00
uvannni	CS.302	7.00
uvannni	CS.303	9.00
uvannni	CS.401	9.00
uvannni	CS.402	7.00
uvannni	CS.403	5.00
uvannni	CS.501	6.00
uvannni	CS.502	10.00
uvannni	CS.503	6.00
uvannni	CS.601	8.00
uvannni	CS.602	10.00
uvannni	CS.603	10.00
uvannni	CS.701	5.00
uvannni	CS.702	6.00
uvannni	CS.703	10.00
tolesog	CS.101	6.00
tolesog	CS.102	8.00
tolesog	CS.103	10.00
tolesog	CS.201	10.00
tolesog	CS.202	9.00
tolesog	CS.203	10.00
tolesog	CS.301	8.00
aaizikovichoh	CS.101	8.00
aaizikovichoh	CS.102	8.00
aaizikovichoh	CS.103	6.00
aaizikovichoh	CS.201	8.00
aaizikovichoh	CS.202	8.00
aaizikovichoh	CS.203	9.00
aaizikovichoh	CS.301	7.00
aaizikovichoh	CS.302	5.00
aaizikovichoh	CS.303	7.00
aaizikovichoh	CS.401	5.00
aaizikovichoh	CS.402	8.00
aaizikovichoh	CS.403	10.00
aaizikovichoh	CS.501	8.00
aaizikovichoh	CS.502	10.00
aaizikovichoh	CS.503	9.00
aaizikovichoh	CS.601	10.00
aaizikovichoh	CS.602	10.00
aaizikovichoh	CS.603	10.00
aaizikovichoh	CS.701	6.00
aaizikovichoh	CS.702	8.00
glantrynu	CS.101	7.00
glantrynu	CS.102	9.00
glantrynu	CS.103	7.00
glantrynu	CS.201	10.00
glantrynu	CS.202	7.00
glantrynu	CS.203	5.00
glantrynu	CS.301	9.00
glantrynu	CS.302	6.00
glantrynu	CS.303	9.00
glantrynu	CS.401	9.00
glantrynu	CS.402	6.00
glantrynu	CS.403	7.00
glantrynu	CS.501	9.00
glantrynu	CS.502	5.00
glantrynu	CS.503	9.00
glantrynu	CS.601	6.00
glantrynu	CS.602	5.00
glantrynu	CS.603	10.00
glantrynu	CS.701	10.00
glantrynu	CS.702	9.00
akleeno0	CS.101	5.00
akleeno0	CS.102	5.00
akleeno0	CS.103	10.00
akleeno0	CS.201	7.00
akleeno0	CS.202	10.00
akleeno0	CS.203	10.00
akleeno0	CS.301	10.00
akleeno0	CS.302	10.00
akleeno0	CS.303	9.00
mchinnoe	CS.101	10.00
mchinnoe	CS.102	7.00
mchinnoe	CS.103	8.00
mchinnoe	CS.201	5.00
mchinnoe	CS.202	9.00
mchinnoe	CS.203	7.00
mchinnoe	CS.301	8.00
mchinnoe	CS.302	10.00
mchinnoe	CS.303	6.00
mchinnoe	CS.401	7.00
mchinnoe	CS.402	7.00
mchinnoe	CS.403	10.00
mchinnoe	CS.501	9.00
mchinnoe	CS.502	9.00
pterrenol	CS.101	9.00
pterrenol	CS.102	8.00
pterrenol	CS.103	6.00
pterrenol	CS.201	8.00
pterrenol	CS.202	9.00
pterrenol	CS.203	7.00
pterrenol	CS.301	7.00
pterrenol	CS.302	5.00
pterrenol	CS.303	6.00
pterrenol	CS.401	7.00
pterrenol	CS.402	8.00
pterrenol	CS.403	7.00
pterrenol	CS.501	10.00
pterrenol	CS.502	8.00
pterrenol	CS.503	5.00
pterrenol	CS.601	8.00
pterrenol	CS.602	9.00
rparkissono9	CS.101	5.00
rparkissono9	CS.102	7.00
rparkissono9	CS.103	8.00
rparkissono9	CS.201	8.00
rparkissono9	CS.202	5.00
rparkissono9	CS.203	10.00
rparkissono9	CS.301	8.00
osantorinioc	CS.101	8.00
osantorinioc	CS.102	9.00
osantorinioc	CS.103	7.00
osantorinioc	CS.201	6.00
osantorinioc	CS.202	5.00
osantorinioc	CS.203	5.00
osantorinioc	CS.301	6.00
osantorinioc	CS.302	9.00
osantorinioc	CS.303	5.00
osantorinioc	CS.401	7.00
osantorinioc	CS.402	7.00
osantorinioc	CS.403	5.00
osantorinioc	CS.501	5.00
astoven2	CS.101	7.00
astoven2	CS.102	8.00
astoven2	CS.103	10.00
astoven2	CS.201	10.00
astoven2	CS.202	7.00
astoven2	CS.203	6.00
astoven2	CS.301	6.00
astoven2	CS.302	5.00
astoven2	CS.303	8.00
astoven2	CS.401	7.00
astoven2	CS.402	5.00
astoven2	CS.403	5.00
dcordoz	CS.101	8.00
dcordoz	CS.102	7.00
dcordoz	CS.103	7.00
dcordoz	CS.201	7.00
dcordoz	CS.202	7.00
dcordoz	CS.203	7.00
dcordoz	CS.301	5.00
dcordoz	CS.302	8.00
dcordoz	CS.303	8.00
dcordoz	CS.401	8.00
dcordoz	CS.402	9.00
dcordoz	CS.403	9.00
dcordoz	CS.501	5.00
dcordoz	CS.502	6.00
dcordoz	CS.503	7.00
dcordoz	CS.601	7.00
dcordoz	CS.602	10.00
dcordoz	CS.603	5.00
dcordoz	CS.701	9.00
cvanleijsp9	CS.101	5.00
cvanleijsp9	CS.102	7.00
cvanleijsp9	CS.103	8.00
cvanleijsp9	CS.201	10.00
cvanleijsp9	CS.202	7.00
cvanleijsp9	CS.203	8.00
cvanleijsp9	CS.301	10.00
cvanleijsp9	CS.302	6.00
cvanleijsp9	CS.303	6.00
cvanleijsp9	CS.401	10.00
cvanleijsp9	CS.402	9.00
cvanleijsp9	CS.403	5.00
cvanleijsp9	CS.501	6.00
cvanleijsp9	CS.502	7.00
cvanleijsp9	CS.503	7.00
cvanleijsp9	CS.601	9.00
cvanleijsp9	CS.602	5.00
cvanleijsp9	CS.603	10.00
cvanleijsp9	CS.701	7.00
cvanleijsp9	CS.702	5.00
cvanleijsp9	CS.703	9.00
jchasneyn4	CS.101	8.00
jchasneyn4	CS.102	9.00
jchasneyn4	CS.103	5.00
jchasneyn4	CS.201	5.00
jchasneyn4	CS.202	9.00
jchasneyn4	CS.203	6.00
jchasneyn4	CS.301	5.00
jchasneyn4	CS.302	7.00
jchasneyn4	CS.303	5.00
jchasneyn4	CS.401	10.00
jchasneyn4	CS.402	9.00
jchasneyn4	CS.403	6.00
jchasneyn4	CS.501	7.00
jchasneyn4	CS.502	5.00
jchasneyn4	CS.503	10.00
vbennedsenn6	CS.101	5.00
vbennedsenn6	CS.102	5.00
vbennedsenn6	CS.103	10.00
vbennedsenn6	CS.201	8.00
vbennedsenn6	CS.202	7.00
vbennedsenn6	CS.203	5.00
vbennedsenn6	CS.301	9.00
vbennedsenn6	CS.302	10.00
vbennedsenn6	CS.303	9.00
vbennedsenn6	CS.401	10.00
vbennedsenn6	CS.402	8.00
vbennedsenn6	CS.403	10.00
vbennedsenn6	CS.501	6.00
vbennedsenn6	CS.502	8.00
vbennedsenn6	CS.503	8.00
vbennedsenn6	CS.601	10.00
vbennedsenn6	CS.602	8.00
vbennedsenn6	CS.603	8.00
vbennedsenn6	CS.701	5.00
vbennedsenn6	CS.702	5.00
vbennedsenn6	CS.703	6.00
ewithnalln7	CS.101	9.00
ewithnalln7	CS.102	5.00
ewithnalln7	CS.103	5.00
ewithnalln7	CS.201	5.00
ewithnalln7	CS.202	5.00
ewithnalln7	CS.203	7.00
ewithnalln7	CS.301	6.00
ewithnalln7	CS.302	9.00
ewithnalln7	CS.303	9.00
ewithnalln7	CS.401	10.00
ewithnalln7	CS.402	6.00
ewithnalln7	CS.403	7.00
ewithnalln7	CS.501	6.00
ewithnalln7	CS.502	8.00
ewithnalln7	CS.503	10.00
ewithnalln7	CS.601	10.00
ewithnalln7	CS.602	7.00
ewithnalln7	CS.603	9.00
ewithnalln7	CS.701	9.00
arenn33	CS.101	10.00
arenn33	CS.102	10.00
arenn33	CS.103	8.00
arenn33	CS.201	8.00
arenn33	CS.202	8.00
arenn33	CS.203	9.00
arenn33	CS.301	9.00
arenn33	CS.302	6.00
arenn33	CS.303	5.00
dmeakingpl	CS.101	5.00
dmeakingpl	CS.102	8.00
dmeakingpl	CS.103	5.00
dmeakingpl	CS.201	6.00
dmeakingpl	CS.202	8.00
dmeakingpl	CS.203	7.00
dmeakingpl	CS.301	7.00
dmeakingpl	CS.302	8.00
dmeakingpl	CS.303	9.00
dmeakingpl	CS.401	7.00
jjendrichpg	CS.101	7.00
jjendrichpg	CS.102	8.00
jjendrichpg	CS.103	8.00
jjendrichpg	CS.201	7.00
jjendrichpg	CS.202	9.00
jjendrichpg	CS.203	10.00
jjendrichpg	CS.301	9.00
jjendrichpg	CS.302	6.00
jjendrichpg	CS.303	6.00
jjendrichpg	CS.401	6.00
jjendrichpg	CS.402	9.00
jjendrichpg	CS.403	10.00
jjendrichpg	CS.501	10.00
jjendrichpg	CS.502	8.00
jjendrichpg	CS.503	10.00
jjendrichpg	CS.601	8.00
jjendrichpg	CS.602	6.00
jjendrichpg	CS.603	7.00
jjendrichpg	CS.701	6.00
jjendrichpg	CS.702	10.00
jjendrichpg	CS.703	6.00
jjendrichpg	CS.801	7.00
jcarlesr6	CS.101	9.00
jcarlesr6	CS.102	7.00
jcarlesr6	CS.103	9.00
jcarlesr6	CS.201	8.00
jcarlesr6	CS.202	10.00
jcarlesr6	CS.203	10.00
jcarlesr6	CS.301	10.00
jcarlesr6	CS.302	8.00
jcarlesr6	CS.303	8.00
jcarlesr6	CS.401	7.00
jcarlesr6	CS.402	10.00
jcarlesr6	CS.403	5.00
jcarlesr6	CS.501	7.00
jcarlesr6	CS.502	9.00
jcarlesr6	CS.503	10.00
jcarlesr6	CS.601	8.00
jcarlesr6	CS.602	9.00
kmilkinsrh	CS.101	6.00
kmilkinsrh	CS.102	9.00
kmilkinsrh	CS.103	10.00
kmilkinsrh	CS.201	6.00
kmilkinsrh	CS.202	10.00
kmilkinsrh	CS.203	7.00
kmilkinsrh	CS.301	9.00
kmilkinsrh	CS.302	5.00
kmilkinsrh	CS.303	7.00
kmilkinsrh	CS.401	9.00
kmilkinsrh	CS.402	10.00
kmilkinsrh	CS.403	7.00
kmilkinsrh	CS.501	7.00
kmilkinsrh	CS.502	8.00
cdeekesq5	CS.101	6.00
cdeekesq5	CS.102	7.00
cdeekesq5	CS.103	8.00
cdeekesq5	CS.201	6.00
cdeekesq5	CS.202	6.00
cdeekesq5	CS.203	8.00
cdeekesq5	CS.301	9.00
pduxfieldqx	CS.101	8.00
pduxfieldqx	CS.102	9.00
pduxfieldqx	CS.103	8.00
pduxfieldqx	CS.201	6.00
pduxfieldqx	CS.202	7.00
pduxfieldqx	CS.203	6.00
pduxfieldqx	CS.301	5.00
pduxfieldqx	CS.302	9.00
pduxfieldqx	CS.303	8.00
pduxfieldqx	CS.401	9.00
pduxfieldqx	CS.402	7.00
pduxfieldqx	CS.403	10.00
pduxfieldqx	CS.501	10.00
pduxfieldqx	CS.502	5.00
tgeryqh	CS.101	10.00
tgeryqh	CS.102	8.00
tgeryqh	CS.103	5.00
tgeryqh	CS.201	9.00
tgeryqh	CS.202	8.00
tgeryqh	CS.203	5.00
tgeryqh	CS.301	10.00
tgeryqh	CS.302	6.00
tgeryqh	CS.303	8.00
tgeryqh	CS.401	9.00
tgeryqh	CS.402	6.00
tgeryqh	CS.403	10.00
tgeryqh	CS.501	8.00
tgeryqh	CS.502	8.00
tgeryqh	CS.503	7.00
kgarrudpq	CS.101	9.00
kgarrudpq	CS.102	6.00
kgarrudpq	CS.103	5.00
kgarrudpq	CS.201	9.00
kgarrudpq	CS.202	5.00
kgarrudpq	CS.203	9.00
kgarrudpq	CS.301	7.00
kgarrudpq	CS.302	9.00
kgarrudpq	CS.303	8.00
kgarrudpq	CS.401	9.00
galthorperc	CS.101	7.00
galthorperc	CS.102	5.00
galthorperc	CS.103	10.00
galthorperc	CS.201	6.00
galthorperc	CS.202	6.00
galthorperc	CS.203	7.00
galthorperc	CS.301	5.00
galthorperc	CS.302	10.00
iestickrd	CS.101	8.00
iestickrd	CS.102	10.00
iestickrd	CS.103	9.00
iestickrd	CS.201	5.00
iestickrd	CS.202	5.00
iestickrd	CS.203	8.00
iestickrd	CS.301	10.00
iestickrd	CS.302	7.00
iestickrd	CS.303	10.00
iestickrd	CS.401	10.00
iestickrd	CS.402	10.00
iestickrd	CS.403	9.00
iestickrd	CS.501	8.00
iestickrd	CS.502	7.00
iestickrd	CS.503	5.00
iestickrd	CS.601	9.00
iestickrd	CS.602	7.00
jmcgeraghtygj	CS.101	10.00
jmcgeraghtygj	CS.102	5.00
jmcgeraghtygj	CS.103	6.00
jmcgeraghtygj	CS.201	10.00
jmcgeraghtygj	CS.202	8.00
jmcgeraghtygj	CS.203	10.00
jmcgeraghtygj	CS.301	9.00
bpersickei	CS.101	5.00
bpersickei	CS.102	5.00
bpersickei	CS.103	8.00
bpersickei	CS.201	5.00
bpersickei	CS.202	9.00
bpersickei	CS.203	8.00
bpersickei	CS.301	10.00
bpersickei	CS.302	9.00
bpersickei	CS.303	8.00
bpersickei	CS.401	10.00
bpersickei	CS.402	9.00
bpersickei	CS.403	10.00
bpersickei	CS.501	5.00
bpersickei	CS.502	7.00
bpersickei	CS.503	5.00
bpersickei	CS.601	8.00
bpersickei	CS.602	5.00
bpersickei	CS.603	9.00
bpersickei	CS.701	6.00
bpersickei	CS.702	6.00
bpersickei	CS.703	6.00
bpersickei	CS.801	9.00
wmascallg0	CS.101	6.00
wmascallg0	CS.102	10.00
wmascallg0	CS.103	8.00
wmascallg0	CS.201	7.00
wmascallg0	CS.202	5.00
wmascallg0	CS.203	7.00
wmascallg0	CS.301	7.00
wmascallg0	CS.302	10.00
wmascallg0	CS.303	8.00
wmascallg0	CS.401	5.00
gmcisaacm3	CS.101	7.00
gmcisaacm3	CS.102	9.00
gmcisaacm3	CS.103	5.00
gmcisaacm3	CS.201	8.00
gmcisaacm3	CS.202	10.00
gmcisaacm3	CS.203	6.00
gmcisaacm3	CS.301	5.00
gmcisaacm3	CS.302	5.00
gmcisaacm3	CS.303	9.00
gmcisaacm3	CS.401	6.00
gmcisaacm3	CS.402	9.00
gmcisaacm3	CS.403	9.00
gmcisaacm3	CS.501	6.00
gmcisaacm3	CS.502	10.00
gmcisaacm3	CS.503	7.00
gmcisaacm3	CS.601	7.00
gmcisaacm3	CS.602	8.00
gmcisaacm3	CS.603	10.00
gmcisaacm3	CS.701	9.00
gmcisaacm3	CS.702	5.00
trogisterq	CS.101	5.00
trogisterq	CS.102	6.00
trogisterq	CS.103	8.00
trogisterq	CS.201	6.00
trogisterq	CS.202	9.00
trogisterq	CS.203	8.00
trogisterq	CS.301	5.00
trogisterq	CS.302	7.00
trogisterq	CS.303	8.00
trogisterq	CS.401	5.00
trogisterq	CS.402	6.00
trogisterq	CS.403	8.00
trogisterq	CS.501	6.00
trogisterq	CS.502	8.00
trogisterq	CS.503	6.00
nciraldo10	CS.101	7.00
nciraldo10	CS.102	9.00
nciraldo10	CS.103	10.00
nciraldo10	CS.201	5.00
nciraldo10	CS.202	10.00
nciraldo10	CS.203	8.00
nciraldo10	CS.301	9.00
nciraldo10	CS.302	8.00
nciraldo10	CS.303	9.00
nciraldo10	CS.401	6.00
nciraldo10	CS.402	7.00
nciraldo10	CS.403	7.00
nciraldo10	CS.501	9.00
nciraldo10	CS.502	10.00
nciraldo10	CS.503	8.00
nciraldo10	CS.601	8.00
nciraldo10	CS.602	6.00
nciraldo10	CS.603	7.00
nciraldo10	CS.701	5.00
nciraldo10	CS.702	9.00
nciraldo10	CS.703	8.00
nciraldo10	CS.801	7.00
abussea2	CS.101	8.00
abussea2	CS.102	7.00
abussea2	CS.103	6.00
abussea2	CS.201	9.00
abussea2	CS.202	6.00
abussea2	CS.203	7.00
abussea2	CS.301	7.00
abussea2	CS.302	7.00
abussea2	CS.303	7.00
abussea2	CS.401	10.00
abussea2	CS.402	10.00
abussea2	CS.403	6.00
abussea2	CS.501	9.00
abussea2	CS.502	8.00
abussea2	CS.503	8.00
abussea2	CS.601	9.00
abussea2	CS.602	5.00
abussea2	CS.603	6.00
lgoford11	CS.101	10.00
lgoford11	CS.102	7.00
lgoford11	CS.103	9.00
lgoford11	CS.201	6.00
lgoford11	CS.202	8.00
lgoford11	CS.203	7.00
lgoford11	CS.301	6.00
lgoford11	CS.302	7.00
lgoford11	CS.303	8.00
lgoford11	CS.401	6.00
lgoford11	CS.402	5.00
lgoford11	CS.403	8.00
lgoford11	CS.501	6.00
gmushettb2	CS.101	5.00
gmushettb2	CS.102	5.00
gmushettb2	CS.103	9.00
gmushettb2	CS.201	8.00
gmushettb2	CS.202	9.00
gmushettb2	CS.203	9.00
gmushettb2	CS.301	10.00
gmushettb2	CS.302	7.00
gmushettb2	CS.303	10.00
gmushettb2	CS.401	8.00
gmushettb2	CS.402	10.00
gmushettb2	CS.403	8.00
gmushettb2	CS.501	10.00
gmushettb2	CS.502	8.00
nswated2	CS.101	5.00
nswated2	CS.102	7.00
nswated2	CS.103	10.00
nswated2	CS.201	9.00
nswated2	CS.202	5.00
nswated2	CS.203	7.00
nswated2	CS.301	6.00
nswated2	CS.302	9.00
nswated2	CS.303	7.00
nswated2	CS.401	7.00
bturri3	CS.101	10.00
bturri3	CS.102	6.00
bturri3	CS.103	9.00
bturri3	CS.201	6.00
bturri3	CS.202	5.00
bturri3	CS.203	10.00
bturri3	CS.301	8.00
bturri3	CS.302	6.00
bturri3	CS.303	8.00
hasburyo	CS.101	9.00
hasburyo	CS.102	7.00
hasburyo	CS.103	5.00
hasburyo	CS.201	7.00
hasburyo	CS.202	9.00
hasburyo	CS.203	8.00
hasburyo	CS.301	10.00
hasburyo	CS.302	7.00
hasburyo	CS.303	8.00
hasburyo	CS.401	10.00
hasburyo	CS.402	10.00
hasburyo	CS.403	6.00
hasburyo	CS.501	10.00
hasburyo	CS.502	5.00
hasburyo	CS.503	9.00
hasburyo	CS.601	10.00
hasburyo	CS.602	5.00
dgrzegorczykng	CS.101	10.00
dgrzegorczykng	CS.102	9.00
dgrzegorczykng	CS.103	8.00
dgrzegorczykng	CS.201	8.00
dgrzegorczykng	CS.202	5.00
dgrzegorczykng	CS.203	5.00
dgrzegorczykng	CS.301	10.00
dgrzegorczykng	CS.302	6.00
dgrzegorczykng	CS.303	9.00
dgrzegorczykng	CS.401	8.00
dgrzegorczykng	CS.402	8.00
dgrzegorczykng	CS.403	9.00
dgrzegorczykng	CS.501	10.00
dgrzegorczykng	CS.502	10.00
dgrzegorczykng	CS.503	9.00
dgrzegorczykng	CS.601	8.00
dgrzegorczykng	CS.602	8.00
ngrinstonne	CS.101	5.00
ngrinstonne	CS.102	5.00
ngrinstonne	CS.103	10.00
ngrinstonne	CS.201	5.00
ngrinstonne	CS.202	9.00
ngrinstonne	CS.203	10.00
ngrinstonne	CS.301	5.00
ngrinstonne	CS.302	9.00
ngrinstonne	CS.303	5.00
ngrinstonne	CS.401	5.00
ngrinstonne	CS.402	10.00
ngrinstonne	CS.403	9.00
ngrinstonne	CS.501	9.00
ngrinstonne	CS.502	5.00
ngrinstonne	CS.503	9.00
ngrinstonne	CS.601	9.00
ngrinstonne	CS.602	9.00
ngrinstonne	CS.603	6.00
ngrinstonne	CS.701	6.00
ngrinstonne	CS.702	8.00
ngrinstonne	CS.703	6.00
ngrinstonne	CS.801	9.00
ngrinstonne	CS.802	10.00
wmickelwright3t	CS.101	10.00
wmickelwright3t	CS.102	5.00
wmickelwright3t	CS.103	6.00
wmickelwright3t	CS.201	10.00
wmickelwright3t	CS.202	5.00
wmickelwright3t	CS.203	10.00
wmickelwright3t	CS.301	7.00
wmickelwright3t	CS.302	10.00
wmickelwright3t	CS.303	9.00
wmickelwright3t	CS.401	7.00
wmickelwright3t	CS.402	5.00
wmickelwright3t	CS.403	6.00
wmickelwright3t	CS.501	8.00
wmickelwright3t	CS.502	6.00
lrudigerc7	CS.101	9.00
lrudigerc7	CS.102	6.00
lrudigerc7	CS.103	7.00
lrudigerc7	CS.201	9.00
lrudigerc7	CS.202	7.00
lrudigerc7	CS.203	7.00
lrudigerc7	CS.301	6.00
lrudigerc7	CS.302	10.00
lrudigerc7	CS.303	7.00
lrudigerc7	CS.401	5.00
lrudigerc7	CS.402	9.00
lrudigerc7	CS.403	10.00
lrudigerc7	CS.501	7.00
lrudigerc7	CS.502	10.00
gmeale7k	CS.101	8.00
gmeale7k	CS.102	9.00
gmeale7k	CS.103	6.00
gmeale7k	CS.201	9.00
gmeale7k	CS.202	8.00
gmeale7k	CS.203	6.00
gmeale7k	CS.301	10.00
gmeale7k	CS.302	9.00
gmeale7k	CS.303	7.00
gmeale7k	CS.401	7.00
gmeale7k	CS.402	6.00
gmeale7k	CS.403	9.00
gmeale7k	CS.501	10.00
gmeale7k	CS.502	5.00
gmeale7k	CS.503	10.00
gmeale7k	CS.601	9.00
gmeale7k	CS.602	7.00
gmeale7k	CS.603	7.00
gmeale7k	CS.701	7.00
gmeale7k	CS.702	7.00
gmeale7k	CS.703	8.00
gmeale7k	CS.801	10.00
tnoonani8	CS.101	7.00
tnoonani8	CS.102	7.00
tnoonani8	CS.103	9.00
tnoonani8	CS.201	9.00
tnoonani8	CS.202	5.00
tnoonani8	CS.203	8.00
tnoonani8	CS.301	6.00
tnoonani8	CS.302	5.00
tnoonani8	CS.303	6.00
tnoonani8	CS.401	9.00
tnoonani8	CS.402	9.00
tnoonani8	CS.403	5.00
tnoonani8	CS.501	10.00
tnoonani8	CS.502	9.00
tnoonani8	CS.503	7.00
tnoonani8	CS.601	8.00
tnoonani8	CS.602	8.00
tnoonani8	CS.603	7.00
tnoonani8	CS.701	10.00
tnoonani8	CS.702	6.00
tnoonani8	CS.703	7.00
tnoonani8	CS.801	8.00
cdanell46	MA.101	5.00
cdanell46	MA.102	7.00
cdanell46	MA.103	8.00
cdanell46	MA.104	6.00
cdanell46	MA.105	9.00
cdanell46	MA.201	5.00
cdanell46	MA.202	10.00
cdanell46	MA.203	8.00
cdanell46	MA.204	10.00
cdanell46	MA.205	7.00
cdanell46	MA.301	5.00
cdanell46	MA.302	9.00
cdanell46	MA.303	6.00
cdanell46	MA.304	6.00
cdanell46	MA.305	5.00
cdanell46	MA.401	8.00
cdanell46	MA.402	9.00
cdanell46	MA.403	10.00
cdanell46	MA.404	6.00
cdanell46	MA.405	10.00
mbamblett6b	MA.101	8.00
mbamblett6b	MA.102	5.00
mbamblett6b	MA.103	7.00
mbamblett6b	MA.104	6.00
mbamblett6b	MA.105	10.00
mbamblett6b	MA.201	7.00
mbamblett6b	MA.202	8.00
mbamblett6b	MA.203	7.00
mbamblett6b	MA.204	7.00
mbamblett6b	MA.205	5.00
bgodsafeau	MA.101	7.00
bgodsafeau	MA.102	9.00
bgodsafeau	MA.103	7.00
bgodsafeau	MA.104	10.00
bgodsafeau	MA.105	10.00
bgodsafeau	MA.201	10.00
bgodsafeau	MA.202	6.00
bgodsafeau	MA.203	8.00
bgodsafeau	MA.204	6.00
jdivesfg	MA.101	8.00
jdivesfg	MA.102	9.00
jdivesfg	MA.103	10.00
jdivesfg	MA.104	10.00
jdivesfg	MA.105	6.00
jdivesfg	MA.201	7.00
jdivesfg	MA.202	6.00
jdivesfg	MA.203	8.00
jdivesfg	MA.204	5.00
jdivesfg	MA.205	7.00
jdivesfg	MA.301	7.00
jdivesfg	MA.302	7.00
jdivesfg	MA.303	7.00
jdivesfg	MA.304	10.00
jdivesfg	MA.305	5.00
jdivesfg	MA.401	9.00
jdivesfg	MA.402	10.00
jdivesfg	MA.403	8.00
jdivesfg	MA.404	9.00
jdivesfg	MA.405	10.00
jdivesfg	MA.501	6.00
jdivesfg	MA.502	9.00
amontgomeryhb	MA.101	9.00
amontgomeryhb	MA.102	10.00
amontgomeryhb	MA.103	8.00
amontgomeryhb	MA.104	5.00
amontgomeryhb	MA.105	9.00
amontgomeryhb	MA.201	9.00
amontgomeryhb	MA.202	10.00
gpuddephattlf	MA.101	8.00
gpuddephattlf	MA.102	6.00
gpuddephattlf	MA.103	8.00
gpuddephattlf	MA.104	9.00
gpuddephattlf	MA.105	8.00
gpuddephattlf	MA.201	7.00
gpuddephattlf	MA.202	7.00
gpuddephattlf	MA.203	5.00
slodfordoj	MA.101	6.00
slodfordoj	MA.102	7.00
slodfordoj	MA.103	9.00
slodfordoj	MA.104	6.00
slodfordoj	MA.105	9.00
slodfordoj	MA.201	6.00
slodfordoj	MA.202	5.00
slodfordoj	MA.203	10.00
slodfordoj	MA.204	7.00
slodfordoj	MA.205	6.00
slodfordoj	MA.301	6.00
slodfordoj	MA.302	7.00
slodfordoj	MA.303	7.00
pderoos5s	MA.101	8.00
pderoos5s	MA.102	5.00
pderoos5s	MA.103	5.00
pderoos5s	MA.104	9.00
pderoos5s	MA.105	9.00
pderoos5s	MA.201	9.00
pderoos5s	MA.202	7.00
pderoos5s	MA.203	8.00
pderoos5s	MA.204	8.00
pderoos5s	MA.205	5.00
pderoos5s	MA.301	7.00
pderoos5s	MA.302	10.00
pderoos5s	MA.303	9.00
mcrutch44	MA.101	5.00
mcrutch44	MA.102	5.00
mcrutch44	MA.103	10.00
mcrutch44	MA.104	7.00
mcrutch44	MA.105	5.00
mcrutch44	MA.201	5.00
mcrutch44	MA.202	7.00
mcrutch44	MA.203	7.00
mcrutch44	MA.204	6.00
mcrutch44	MA.205	7.00
mcrutch44	MA.301	8.00
mcrutch44	MA.302	5.00
mcrutch44	MA.303	6.00
mcrutch44	MA.304	8.00
mcrutch44	MA.305	5.00
agrossman4d	MA.101	10.00
agrossman4d	MA.102	10.00
agrossman4d	MA.103	5.00
agrossman4d	MA.104	9.00
agrossman4d	MA.105	7.00
agrossman4d	MA.201	7.00
agrossman4d	MA.202	6.00
agrossman4d	MA.203	5.00
jdeviney4j	MA.101	10.00
jdeviney4j	MA.102	7.00
jdeviney4j	MA.103	8.00
jdeviney4j	MA.104	10.00
jdeviney4j	MA.105	10.00
jdeviney4j	MA.201	6.00
jdeviney4j	MA.202	8.00
jdeviney4j	MA.203	6.00
jdeviney4j	MA.204	5.00
jdeviney4j	MA.205	7.00
jdeviney4j	MA.301	9.00
jdeviney4j	MA.302	8.00
mtrustie4k	MA.101	9.00
mtrustie4k	MA.102	6.00
mtrustie4k	MA.103	9.00
mtrustie4k	MA.104	5.00
mtrustie4k	MA.105	8.00
mtrustie4k	MA.201	8.00
mtrustie4k	MA.202	8.00
mtrustie4k	MA.203	7.00
mtrustie4k	MA.204	7.00
mtrustie4k	MA.205	6.00
mtrustie4k	MA.301	10.00
mtrustie4k	MA.302	8.00
mtrustie4k	MA.303	10.00
mtrustie4k	MA.304	9.00
mtrustie4k	MA.305	9.00
mtrustie4k	MA.401	9.00
mtrustie4k	MA.402	9.00
mtrustie4k	MA.403	9.00
mtrustie4k	MA.404	10.00
mtrustie4k	MA.405	6.00
mtrustie4k	MA.501	7.00
mtrustie4k	MA.502	5.00
mtrustie4k	MA.503	5.00
efranz4p	MA.101	10.00
efranz4p	MA.102	9.00
efranz4p	MA.103	9.00
efranz4p	MA.104	6.00
efranz4p	MA.105	7.00
efranz4p	MA.201	7.00
efranz4p	MA.202	9.00
efranz4p	MA.203	10.00
efranz4p	MA.204	9.00
efranz4p	MA.205	6.00
efranz4p	MA.301	8.00
efranz4p	MA.302	9.00
efranz4p	MA.303	6.00
efranz4p	MA.304	7.00
efranz4p	MA.305	9.00
efranz4p	MA.401	5.00
efranz4p	MA.402	7.00
efranz4p	MA.403	8.00
ekenningham5e	MA.101	5.00
ekenningham5e	MA.102	7.00
ekenningham5e	MA.103	9.00
ekenningham5e	MA.104	8.00
ekenningham5e	MA.105	9.00
ekenningham5e	MA.201	10.00
ekenningham5e	MA.202	9.00
ekenningham5e	MA.203	7.00
ekenningham5e	MA.204	7.00
ekenningham5e	MA.205	10.00
ekenningham5e	MA.301	5.00
ekenningham5e	MA.302	5.00
ekenningham5e	MA.303	6.00
lcale5g	MA.101	9.00
lcale5g	MA.102	9.00
lcale5g	MA.103	5.00
lcale5g	MA.104	7.00
lcale5g	MA.105	9.00
lcale5g	MA.201	7.00
lcale5g	MA.202	10.00
lcale5g	MA.203	7.00
lcale5g	MA.204	5.00
zmcowis4o	MA.101	5.00
zmcowis4o	MA.102	7.00
zmcowis4o	MA.103	7.00
zmcowis4o	MA.104	6.00
zmcowis4o	MA.105	10.00
zmcowis4o	MA.201	8.00
zmcowis4o	MA.202	10.00
zmcowis4o	MA.203	6.00
zmcowis4o	MA.204	8.00
zmcowis4o	MA.205	8.00
zmcowis4o	MA.301	8.00
zmcowis4o	MA.302	6.00
zmcowis4o	MA.303	5.00
zmcowis4o	MA.304	7.00
zmcowis4o	MA.305	10.00
zmcowis4o	MA.401	7.00
zmcowis4o	MA.402	6.00
zmcowis4o	MA.403	10.00
zmcowis4o	MA.404	6.00
zmcowis4o	MA.405	6.00
zmcowis4o	MA.501	9.00
zmcowis4o	MA.502	8.00
zmcowis4o	MA.503	6.00
asleep52	MA.101	7.00
asleep52	MA.102	5.00
asleep52	MA.103	6.00
asleep52	MA.104	7.00
asleep52	MA.105	6.00
asleep52	MA.201	6.00
asleep52	MA.202	5.00
asleep52	MA.203	8.00
asleep52	MA.204	8.00
asleep52	MA.205	9.00
asleep52	MA.301	9.00
asleep52	MA.302	8.00
asleep52	MA.303	7.00
asleep52	MA.304	8.00
asleep52	MA.305	10.00
asleep52	MA.401	10.00
jjennaroy5l	MA.101	8.00
jjennaroy5l	MA.102	10.00
jjennaroy5l	MA.103	10.00
jjennaroy5l	MA.104	5.00
jjennaroy5l	MA.105	10.00
jjennaroy5l	MA.201	8.00
jjennaroy5l	MA.202	10.00
jjennaroy5l	MA.203	10.00
jjennaroy5l	MA.204	7.00
jjennaroy5l	MA.205	9.00
jjennaroy5l	MA.301	10.00
jjennaroy5l	MA.302	10.00
rsigert5m	MA.101	6.00
rsigert5m	MA.102	7.00
rsigert5m	MA.103	6.00
rsigert5m	MA.104	10.00
rsigert5m	MA.105	10.00
rsigert5m	MA.201	10.00
rsigert5m	MA.202	8.00
rsigert5m	MA.203	5.00
rsigert5m	MA.204	6.00
rsigert5m	MA.205	6.00
rsigert5m	MA.301	9.00
avanderwalt7h	MA.101	8.00
avanderwalt7h	MA.102	9.00
avanderwalt7h	MA.103	8.00
avanderwalt7h	MA.104	5.00
avanderwalt7h	MA.105	5.00
avanderwalt7h	MA.201	7.00
avanderwalt7h	MA.202	10.00
avanderwalt7h	MA.203	9.00
avanderwalt7h	MA.204	5.00
avanderwalt7h	MA.205	9.00
avanderwalt7h	MA.301	9.00
avanderwalt7h	MA.302	7.00
avanderwalt7h	MA.303	6.00
avanderwalt7h	MA.304	7.00
avanderwalt7h	MA.305	6.00
avanderwalt7h	MA.401	7.00
avanderwalt7h	MA.402	5.00
avanderwalt7h	MA.403	10.00
avanderwalt7h	MA.404	10.00
avanderwalt7h	MA.405	6.00
avanderwalt7h	MA.501	7.00
avanderwalt7h	MA.502	9.00
freasce81	MA.101	7.00
freasce81	MA.102	9.00
freasce81	MA.103	9.00
freasce81	MA.104	8.00
freasce81	MA.105	6.00
freasce81	MA.201	9.00
freasce81	MA.202	7.00
freasce81	MA.203	6.00
freasce81	MA.204	7.00
freasce81	MA.205	9.00
freasce81	MA.301	6.00
freasce81	MA.302	5.00
freasce81	MA.303	6.00
freasce81	MA.304	7.00
freasce81	MA.305	6.00
freasce81	MA.401	7.00
freasce81	MA.402	9.00
freasce81	MA.403	8.00
freasce81	MA.404	5.00
freasce81	MA.405	9.00
jeggleston66	MA.101	6.00
jeggleston66	MA.102	9.00
jeggleston66	MA.103	8.00
jeggleston66	MA.104	10.00
jeggleston66	MA.105	7.00
jeggleston66	MA.201	7.00
jeggleston66	MA.202	10.00
jeggleston66	MA.203	8.00
jeggleston66	MA.204	9.00
jeggleston66	MA.205	9.00
jeggleston66	MA.301	9.00
jeggleston66	MA.302	5.00
jeggleston66	MA.303	10.00
jeggleston66	MA.304	8.00
jeggleston66	MA.305	6.00
jeggleston66	MA.401	5.00
jeggleston66	MA.402	9.00
jeggleston66	MA.403	7.00
tbortoletti6l	MA.101	7.00
tbortoletti6l	MA.102	8.00
tbortoletti6l	MA.103	10.00
tbortoletti6l	MA.104	9.00
tbortoletti6l	MA.105	10.00
tbortoletti6l	MA.201	9.00
tbortoletti6l	MA.202	7.00
sgayne76	MA.101	8.00
sgayne76	MA.102	6.00
sgayne76	MA.103	9.00
sgayne76	MA.104	9.00
sgayne76	MA.105	8.00
sgayne76	MA.201	7.00
sgayne76	MA.202	6.00
sgayne76	MA.203	5.00
sgayne76	MA.204	10.00
sgayne76	MA.205	9.00
sgayne76	MA.301	5.00
sgayne76	MA.302	8.00
bmccomas6x	MA.101	9.00
bmccomas6x	MA.102	8.00
bmccomas6x	MA.103	10.00
bmccomas6x	MA.104	8.00
bmccomas6x	MA.105	6.00
bmccomas6x	MA.201	7.00
bmccomas6x	MA.202	9.00
bmccomas6x	MA.203	9.00
bmccomas6x	MA.204	7.00
bmccomas6x	MA.205	9.00
bmccomas6x	MA.301	6.00
bmccomas6x	MA.302	5.00
bmccomas6x	MA.303	9.00
bmccomas6x	MA.304	9.00
bmccomas6x	MA.305	7.00
bmccomas6x	MA.401	10.00
bmccomas6x	MA.402	7.00
abeachem7j	MA.101	10.00
abeachem7j	MA.102	5.00
abeachem7j	MA.103	10.00
abeachem7j	MA.104	6.00
abeachem7j	MA.105	9.00
abeachem7j	MA.201	6.00
abeachem7j	MA.202	7.00
abeachem7j	MA.203	8.00
abeachem7j	MA.204	10.00
abeachem7j	MA.205	9.00
abeachem7j	MA.301	7.00
abeachem7j	MA.302	6.00
abeachem7j	MA.303	8.00
abeachem7j	MA.304	8.00
abeachem7j	MA.305	5.00
abeachem7j	MA.401	7.00
rsaxby8m	MA.101	5.00
rsaxby8m	MA.102	5.00
rsaxby8m	MA.103	6.00
rsaxby8m	MA.104	9.00
rsaxby8m	MA.105	7.00
rsaxby8m	MA.201	9.00
rsaxby8m	MA.202	9.00
rsaxby8m	MA.203	7.00
rsaxby8m	MA.204	6.00
fteal8v	MA.101	8.00
fteal8v	MA.102	10.00
fteal8v	MA.103	5.00
fteal8v	MA.104	9.00
fteal8v	MA.105	6.00
fteal8v	MA.201	10.00
fteal8v	MA.202	8.00
fteal8v	MA.203	9.00
fteal8v	MA.204	9.00
fteal8v	MA.205	10.00
fteal8v	MA.301	10.00
fteal8v	MA.302	5.00
fteal8v	MA.303	8.00
fteal8v	MA.304	6.00
rrippin8w	MA.101	10.00
rrippin8w	MA.102	9.00
rrippin8w	MA.103	8.00
rrippin8w	MA.104	8.00
rrippin8w	MA.105	6.00
rrippin8w	MA.201	9.00
rrippin8w	MA.202	5.00
rrippin8w	MA.203	8.00
rrippin8w	MA.204	7.00
rrippin8w	MA.205	8.00
rrippin8w	MA.301	6.00
rrippin8w	MA.302	7.00
rrippin8w	MA.303	8.00
rrippin8w	MA.304	5.00
rrippin8w	MA.305	6.00
agoom8t	MA.101	6.00
agoom8t	MA.102	5.00
agoom8t	MA.103	7.00
agoom8t	MA.104	6.00
agoom8t	MA.105	10.00
agoom8t	MA.201	7.00
agoom8t	MA.202	6.00
agoom8t	MA.203	7.00
agoom8t	MA.204	6.00
cdarnody9w	MA.101	9.00
cdarnody9w	MA.102	7.00
cdarnody9w	MA.103	8.00
cdarnody9w	MA.104	8.00
cdarnody9w	MA.105	7.00
cdarnody9w	MA.201	10.00
cdarnody9w	MA.202	8.00
cdarnody9w	MA.203	6.00
cdarnody9w	MA.204	5.00
cdarnody9w	MA.205	7.00
cdarnody9w	MA.301	5.00
cdarnody9w	MA.302	7.00
cdarnody9w	MA.303	5.00
cdarnody9w	MA.304	9.00
cdarnody9w	MA.305	6.00
cdarnody9w	MA.401	5.00
hhannam9f	MA.101	6.00
hhannam9f	MA.102	6.00
hhannam9f	MA.103	10.00
hhannam9f	MA.104	9.00
hhannam9f	MA.105	5.00
hhannam9f	MA.201	8.00
hhannam9f	MA.202	9.00
hhannam9f	MA.203	6.00
hhannam9f	MA.204	6.00
hhannam9f	MA.205	10.00
hhannam9f	MA.301	7.00
hhannam9f	MA.302	6.00
hhannam9f	MA.303	8.00
hhannam9f	MA.304	9.00
hhannam9f	MA.305	8.00
hhannam9f	MA.401	6.00
hhannam9f	MA.402	6.00
hhannam9f	MA.403	6.00
gmackin9l	MA.101	7.00
gmackin9l	MA.102	9.00
gmackin9l	MA.103	8.00
gmackin9l	MA.104	10.00
gmackin9l	MA.105	6.00
gmackin9l	MA.201	8.00
gmackin9l	MA.202	7.00
gmackin9l	MA.203	9.00
gmackin9l	MA.204	9.00
gmackin9l	MA.205	10.00
gmackin9l	MA.301	9.00
gmackin9l	MA.302	6.00
gmackin9l	MA.303	5.00
gmackin9l	MA.304	9.00
gmackin9l	MA.305	9.00
gmackin9l	MA.401	5.00
gmackin9l	MA.402	7.00
gmackin9l	MA.403	6.00
gmackin9l	MA.404	7.00
gmackin9l	MA.405	10.00
gmackin9l	MA.501	8.00
gmackin9l	MA.502	9.00
bbonhome9o	MA.101	5.00
bbonhome9o	MA.102	9.00
bbonhome9o	MA.103	7.00
bbonhome9o	MA.104	5.00
bbonhome9o	MA.105	5.00
bbonhome9o	MA.201	6.00
bbonhome9o	MA.202	6.00
bbonhome9o	MA.203	5.00
bbonhome9o	MA.204	8.00
bbonhome9o	MA.205	5.00
bbonhome9o	MA.301	6.00
bbonhome9o	MA.302	5.00
bbonhome9o	MA.303	6.00
sdishman9b	MA.101	5.00
sdishman9b	MA.102	5.00
sdishman9b	MA.103	7.00
sdishman9b	MA.104	7.00
sdishman9b	MA.105	9.00
sdishman9b	MA.201	10.00
sdishman9b	MA.202	5.00
sdishman9b	MA.203	6.00
sdishman9b	MA.204	9.00
sdishman9b	MA.205	5.00
sdishman9b	MA.301	9.00
sdishman9b	MA.302	10.00
sdishman9b	MA.303	5.00
sdishman9b	MA.304	9.00
sdishman9b	MA.305	5.00
sdishman9b	MA.401	6.00
sdishman9b	MA.402	10.00
sdishman9b	MA.403	10.00
sdishman9b	MA.404	7.00
sdishman9b	MA.405	8.00
vstrudwickad	MA.101	7.00
vstrudwickad	MA.102	9.00
vstrudwickad	MA.103	10.00
vstrudwickad	MA.104	7.00
vstrudwickad	MA.105	7.00
vstrudwickad	MA.201	7.00
vstrudwickad	MA.202	10.00
vstrudwickad	MA.203	5.00
vstrudwickad	MA.204	10.00
vstrudwickad	MA.205	5.00
vstrudwickad	MA.301	8.00
vstrudwickad	MA.302	6.00
vstrudwickad	MA.303	7.00
vstrudwickad	MA.304	7.00
vstrudwickad	MA.305	9.00
vstrudwickad	MA.401	5.00
vstrudwickad	MA.402	5.00
vstrudwickad	MA.403	8.00
vstrudwickad	MA.404	8.00
vstrudwickad	MA.405	6.00
vstrudwickad	MA.501	5.00
egrevilleae	MA.101	6.00
egrevilleae	MA.102	10.00
egrevilleae	MA.103	7.00
egrevilleae	MA.104	6.00
egrevilleae	MA.105	7.00
egrevilleae	MA.201	8.00
egrevilleae	MA.202	10.00
egrevilleae	MA.203	8.00
egrevilleae	MA.204	5.00
egrevilleae	MA.205	9.00
egrevilleae	MA.301	7.00
egrevilleae	MA.302	8.00
egrevilleae	MA.303	10.00
egrevilleae	MA.304	8.00
mshepcuttbh	MA.101	10.00
mshepcuttbh	MA.102	6.00
mshepcuttbh	MA.103	8.00
mshepcuttbh	MA.104	9.00
mshepcuttbh	MA.105	6.00
mshepcuttbh	MA.201	6.00
mshepcuttbh	MA.202	9.00
mshepcuttbh	MA.203	7.00
mshepcuttbh	MA.204	9.00
mshepcuttbh	MA.205	7.00
mshepcuttbh	MA.301	10.00
mshepcuttbh	MA.302	5.00
mshepcuttbh	MA.303	6.00
mshepcuttbh	MA.304	10.00
mshepcuttbh	MA.305	8.00
mshepcuttbh	MA.401	8.00
mshepcuttbh	MA.402	10.00
mshepcuttbh	MA.403	8.00
dboshersbq	MA.101	10.00
dboshersbq	MA.102	10.00
dboshersbq	MA.103	7.00
dboshersbq	MA.104	8.00
dboshersbq	MA.105	6.00
dboshersbq	MA.201	10.00
dboshersbq	MA.202	7.00
dboshersbq	MA.203	7.00
dboshersbq	MA.204	7.00
dboshersbq	MA.205	5.00
amapledoorec4	MA.101	10.00
amapledoorec4	MA.102	6.00
amapledoorec4	MA.103	5.00
amapledoorec4	MA.104	7.00
amapledoorec4	MA.105	7.00
amapledoorec4	MA.201	6.00
amapledoorec4	MA.202	9.00
amapledoorec4	MA.203	5.00
amapledoorec4	MA.204	5.00
amapledoorec4	MA.205	10.00
amapledoorec4	MA.301	8.00
amapledoorec4	MA.302	5.00
amapledoorec4	MA.303	10.00
amapledoorec4	MA.304	8.00
amapledoorec4	MA.305	7.00
amapledoorec4	MA.401	6.00
amapledoorec4	MA.402	10.00
amapledoorec4	MA.403	7.00
amapledoorec4	MA.404	10.00
amapledoorec4	MA.405	8.00
amapledoorec4	MA.501	8.00
amapledoorec4	MA.502	10.00
amapledoorec4	MA.503	7.00
bborerc6	MA.101	7.00
bborerc6	MA.102	10.00
bborerc6	MA.103	9.00
bborerc6	MA.104	8.00
bborerc6	MA.105	10.00
bborerc6	MA.201	10.00
bborerc6	MA.202	8.00
bborerc6	MA.203	7.00
bborerc6	MA.204	8.00
bborerc6	MA.205	5.00
bborerc6	MA.301	7.00
cbalogbx	MA.101	7.00
cbalogbx	MA.102	6.00
cbalogbx	MA.103	10.00
cbalogbx	MA.104	9.00
cbalogbx	MA.105	8.00
cbalogbx	MA.201	9.00
cbalogbx	MA.202	6.00
cbalogbx	MA.203	7.00
cbalogbx	MA.204	6.00
cbalogbx	MA.205	7.00
cbalogbx	MA.301	7.00
cbalogbx	MA.302	6.00
cbalogbx	MA.303	8.00
cbalogbx	MA.304	9.00
cbalogbx	MA.305	10.00
cbalogbx	MA.401	10.00
cbalogbx	MA.402	7.00
cbalogbx	MA.403	8.00
cbalogbx	MA.404	5.00
cfrodshamcj	MA.101	5.00
cfrodshamcj	MA.102	6.00
cfrodshamcj	MA.103	8.00
cfrodshamcj	MA.104	9.00
cfrodshamcj	MA.105	10.00
cfrodshamcj	MA.201	7.00
cfrodshamcj	MA.202	5.00
cfrodshamcj	MA.203	5.00
cfrodshamcj	MA.204	6.00
cfrodshamcj	MA.205	8.00
cfrodshamcj	MA.301	10.00
cfrodshamcj	MA.302	8.00
cfrodshamcj	MA.303	6.00
cfrodshamcj	MA.304	6.00
cfrodshamcj	MA.305	8.00
cfrodshamcj	MA.401	10.00
cfrodshamcj	MA.402	10.00
sbroadwoodco	MA.101	6.00
sbroadwoodco	MA.102	5.00
sbroadwoodco	MA.103	6.00
sbroadwoodco	MA.104	10.00
sbroadwoodco	MA.105	9.00
sbroadwoodco	MA.201	8.00
sbroadwoodco	MA.202	5.00
jdonizeauc8	MA.101	10.00
jdonizeauc8	MA.102	8.00
jdonizeauc8	MA.103	7.00
jdonizeauc8	MA.104	8.00
jdonizeauc8	MA.105	5.00
jdonizeauc8	MA.201	9.00
jdonizeauc8	MA.202	9.00
jdonizeauc8	MA.203	7.00
pilyukhovb0	MA.101	8.00
pilyukhovb0	MA.102	9.00
pilyukhovb0	MA.103	7.00
pilyukhovb0	MA.104	7.00
pilyukhovb0	MA.105	9.00
pilyukhovb0	MA.201	10.00
pilyukhovb0	MA.202	6.00
pilyukhovb0	MA.203	6.00
pilyukhovb0	MA.204	8.00
pilyukhovb0	MA.205	5.00
pilyukhovb0	MA.301	9.00
pilyukhovb0	MA.302	5.00
pilyukhovb0	MA.303	7.00
pilyukhovb0	MA.304	8.00
pilyukhovb0	MA.305	7.00
pilyukhovb0	MA.401	9.00
pilyukhovb0	MA.402	8.00
pilyukhovb0	MA.403	10.00
pilyukhovb0	MA.404	7.00
pilyukhovb0	MA.405	6.00
pilyukhovb0	MA.501	10.00
pilyukhovb0	MA.502	7.00
pilyukhovb0	MA.503	8.00
ajozwikbb	MA.101	9.00
ajozwikbb	MA.102	5.00
ajozwikbb	MA.103	9.00
ajozwikbb	MA.104	5.00
ajozwikbb	MA.105	7.00
ajozwikbb	MA.201	10.00
ajozwikbb	MA.202	7.00
ajozwikbb	MA.203	7.00
ajozwikbb	MA.204	8.00
ajozwikbb	MA.205	6.00
ajozwikbb	MA.301	7.00
ajozwikbb	MA.302	8.00
ajozwikbb	MA.303	10.00
ajozwikbb	MA.304	10.00
ajozwikbb	MA.305	7.00
ajozwikbb	MA.401	6.00
gjurgensonfm	MA.101	9.00
gjurgensonfm	MA.102	9.00
gjurgensonfm	MA.103	7.00
gjurgensonfm	MA.104	7.00
gjurgensonfm	MA.105	10.00
gjurgensonfm	MA.201	10.00
gjurgensonfm	MA.202	7.00
gjurgensonfm	MA.203	7.00
gjurgensonfm	MA.204	5.00
gjurgensonfm	MA.205	6.00
gjurgensonfm	MA.301	9.00
bdurhamdi	MA.101	10.00
bdurhamdi	MA.102	5.00
bdurhamdi	MA.103	7.00
bdurhamdi	MA.104	5.00
bdurhamdi	MA.105	7.00
bdurhamdi	MA.201	6.00
bdurhamdi	MA.202	6.00
bdurhamdi	MA.203	6.00
bdurhamdi	MA.204	7.00
bdurhamdi	MA.205	6.00
bdurhamdi	MA.301	5.00
bdurhamdi	MA.302	10.00
bdurhamdi	MA.303	8.00
bdurhamdi	MA.304	9.00
bdurhamdi	MA.305	8.00
bdurhamdi	MA.401	6.00
bdurhamdi	MA.402	8.00
bdurhamdi	MA.403	10.00
bdurhamdi	MA.404	8.00
bdurhamdi	MA.405	7.00
dcowxdx	MA.101	6.00
dcowxdx	MA.102	7.00
dcowxdx	MA.103	5.00
dcowxdx	MA.104	8.00
dcowxdx	MA.105	6.00
dcowxdx	MA.201	9.00
dcowxdx	MA.202	5.00
dcowxdx	MA.203	8.00
dcowxdx	MA.204	9.00
dcowxdx	MA.205	10.00
dcowxdx	MA.301	9.00
khanningdb	MA.101	9.00
khanningdb	MA.102	8.00
khanningdb	MA.103	7.00
khanningdb	MA.104	9.00
khanningdb	MA.105	8.00
khanningdb	MA.201	8.00
khanningdb	MA.202	5.00
khanningdb	MA.203	10.00
khanningdb	MA.204	9.00
esemmencee7	MA.101	6.00
esemmencee7	MA.102	6.00
esemmencee7	MA.103	5.00
esemmencee7	MA.104	7.00
esemmencee7	MA.105	8.00
esemmencee7	MA.201	6.00
esemmencee7	MA.202	7.00
esemmencee7	MA.203	9.00
esemmencee7	MA.204	10.00
esemmencee7	MA.205	7.00
esemmencee7	MA.301	10.00
esemmencee7	MA.302	10.00
esemmencee7	MA.303	6.00
esemmencee7	MA.304	8.00
esemmencee7	MA.305	7.00
esemmencee7	MA.401	8.00
esemmencee7	MA.402	5.00
esemmencee7	MA.403	6.00
esemmencee7	MA.404	8.00
bpeckes	MA.101	5.00
bpeckes	MA.102	9.00
bpeckes	MA.103	10.00
bpeckes	MA.104	10.00
bpeckes	MA.105	6.00
bpeckes	MA.201	5.00
bpeckes	MA.202	9.00
bpeckes	MA.203	10.00
bpeckes	MA.204	9.00
bpeckes	MA.205	8.00
bpeckes	MA.301	6.00
bpeckes	MA.302	9.00
bpeckes	MA.303	6.00
bpeckes	MA.304	7.00
bpeckes	MA.305	9.00
bpeckes	MA.401	7.00
bpeckes	MA.402	7.00
bpeckes	MA.403	10.00
bpeckes	MA.404	7.00
bpeckes	MA.405	9.00
bpeckes	MA.501	9.00
daugustinei	MA.101	9.00
daugustinei	MA.102	6.00
daugustinei	MA.103	9.00
daugustinei	MA.104	10.00
daugustinei	MA.105	10.00
daugustinei	MA.201	7.00
daugustinei	MA.202	6.00
daugustinei	MA.203	5.00
daugustinei	MA.204	7.00
daugustinei	MA.205	10.00
daugustinei	MA.301	5.00
daugustinei	MA.302	6.00
daugustinei	MA.303	10.00
daugustinei	MA.304	6.00
lriddockeq	MA.101	8.00
lriddockeq	MA.102	9.00
lriddockeq	MA.103	6.00
lriddockeq	MA.104	6.00
lriddockeq	MA.105	5.00
lriddockeq	MA.201	10.00
lriddockeq	MA.202	10.00
lriddockeq	MA.203	10.00
lriddockeq	MA.204	10.00
lriddockeq	MA.205	7.00
lriddockeq	MA.301	9.00
lriddockeq	MA.302	8.00
lriddockeq	MA.303	5.00
lriddockeq	MA.304	5.00
lriddockeq	MA.305	8.00
tlenahanf0	MA.101	6.00
tlenahanf0	MA.102	10.00
tlenahanf0	MA.103	5.00
tlenahanf0	MA.104	8.00
tlenahanf0	MA.105	8.00
tlenahanf0	MA.201	5.00
tlenahanf0	MA.202	9.00
tlenahanf0	MA.203	9.00
tlenahanf0	MA.204	8.00
tlenahanf0	MA.205	7.00
lilchukde	MA.101	10.00
lilchukde	MA.102	8.00
lilchukde	MA.103	9.00
lilchukde	MA.104	7.00
lilchukde	MA.105	8.00
lilchukde	MA.201	8.00
lilchukde	MA.202	7.00
lilchukde	MA.203	7.00
lilchukde	MA.204	9.00
lilchukde	MA.205	6.00
lilchukde	MA.301	10.00
lilchukde	MA.302	8.00
lilchukde	MA.303	10.00
lilchukde	MA.304	9.00
lilchukde	MA.305	9.00
dkeggindg	MA.101	8.00
dkeggindg	MA.102	9.00
dkeggindg	MA.103	10.00
dkeggindg	MA.104	5.00
dkeggindg	MA.105	7.00
dkeggindg	MA.201	10.00
dkeggindg	MA.202	8.00
dkeggindg	MA.203	5.00
dkeggindg	MA.204	5.00
dkeggindg	MA.205	8.00
dkeggindg	MA.301	7.00
dkeggindg	MA.302	10.00
dkeggindg	MA.303	7.00
dkeggindg	MA.304	6.00
dkeggindg	MA.305	8.00
dkeggindg	MA.401	7.00
kgainori1	MA.101	10.00
kgainori1	MA.102	9.00
kgainori1	MA.103	8.00
kgainori1	MA.104	9.00
kgainori1	MA.105	5.00
kgainori1	MA.201	6.00
kgainori1	MA.202	9.00
kgainori1	MA.203	7.00
paylwardfx	MA.101	8.00
paylwardfx	MA.102	5.00
paylwardfx	MA.103	8.00
paylwardfx	MA.104	8.00
paylwardfx	MA.105	6.00
paylwardfx	MA.201	7.00
paylwardfx	MA.202	10.00
paylwardfx	MA.203	9.00
paylwardfx	MA.204	9.00
paylwardfx	MA.205	6.00
paylwardfx	MA.301	7.00
paylwardfx	MA.302	9.00
paylwardfx	MA.303	8.00
paylwardfx	MA.304	9.00
paylwardfx	MA.305	8.00
paylwardfx	MA.401	8.00
paylwardfx	MA.402	7.00
paylwardfx	MA.403	10.00
paylwardfx	MA.404	8.00
paylwardfx	MA.405	9.00
paylwardfx	MA.501	7.00
paylwardfx	MA.502	9.00
sruskinga	MA.101	8.00
sruskinga	MA.102	9.00
sruskinga	MA.103	10.00
sruskinga	MA.104	9.00
sruskinga	MA.105	9.00
sruskinga	MA.201	9.00
sruskinga	MA.202	10.00
sruskinga	MA.203	8.00
sruskinga	MA.204	10.00
sruskinga	MA.205	8.00
sruskinga	MA.301	7.00
sruskinga	MA.302	8.00
sruskinga	MA.303	10.00
sruskinga	MA.304	7.00
sruskinga	MA.305	8.00
sruskinga	MA.401	8.00
sruskinga	MA.402	5.00
sruskinga	MA.403	6.00
sruskinga	MA.404	6.00
sruskinga	MA.405	8.00
sruskinga	MA.501	9.00
sruskinga	MA.502	10.00
pbonasg4	MA.101	5.00
pbonasg4	MA.102	6.00
pbonasg4	MA.103	5.00
pbonasg4	MA.104	9.00
pbonasg4	MA.105	8.00
pbonasg4	MA.201	10.00
pbonasg4	MA.202	5.00
pbonasg4	MA.203	6.00
pbonasg4	MA.204	6.00
pbonasg4	MA.205	10.00
pbonasg4	MA.301	7.00
pbonasg4	MA.302	6.00
pbonasg4	MA.303	5.00
pbonasg4	MA.304	6.00
pbonasg4	MA.305	8.00
cpetrellig5	MA.101	6.00
cpetrellig5	MA.102	5.00
cpetrellig5	MA.103	9.00
cpetrellig5	MA.104	10.00
cpetrellig5	MA.105	8.00
cpetrellig5	MA.201	7.00
cpetrellig5	MA.202	10.00
cpetrellig5	MA.203	7.00
cpetrellig5	MA.204	10.00
cpetrellig5	MA.205	9.00
cpetrellig5	MA.301	8.00
cpetrellig5	MA.302	6.00
cpetrellig5	MA.303	7.00
cpetrellig5	MA.304	7.00
cpetrellig5	MA.305	5.00
cpetrellig5	MA.401	10.00
cpetrellig5	MA.402	7.00
mjovicicg7	MA.101	9.00
mjovicicg7	MA.102	8.00
mjovicicg7	MA.103	9.00
mjovicicg7	MA.104	8.00
mjovicicg7	MA.105	8.00
mjovicicg7	MA.201	10.00
mjovicicg7	MA.202	6.00
mjovicicg7	MA.203	5.00
mjovicicg7	MA.204	5.00
mkocherg8	MA.101	5.00
mkocherg8	MA.102	9.00
mkocherg8	MA.103	9.00
mkocherg8	MA.104	8.00
mkocherg8	MA.105	6.00
mkocherg8	MA.201	9.00
mkocherg8	MA.202	9.00
mkocherg8	MA.203	7.00
mkocherg8	MA.204	9.00
mkocherg8	MA.205	10.00
mkocherg8	MA.301	8.00
mkocherg8	MA.302	8.00
mkocherg8	MA.303	5.00
mkocherg8	MA.304	5.00
rpygottgt	MA.101	7.00
rpygottgt	MA.102	9.00
rpygottgt	MA.103	9.00
rpygottgt	MA.104	7.00
rpygottgt	MA.105	7.00
rpygottgt	MA.201	10.00
rpygottgt	MA.202	9.00
rpygottgt	MA.203	7.00
rpygottgt	MA.204	5.00
rpygottgt	MA.205	9.00
rpygottgt	MA.301	9.00
rpygottgt	MA.302	10.00
rpygottgt	MA.303	7.00
rpygottgt	MA.304	5.00
rpygottgt	MA.305	7.00
rpygottgt	MA.401	6.00
rpygottgt	MA.402	5.00
rpygottgt	MA.403	6.00
rpygottgt	MA.404	5.00
rpygottgt	MA.405	10.00
rpygottgt	MA.501	9.00
aheareg9	MA.101	5.00
aheareg9	MA.102	5.00
aheareg9	MA.103	8.00
aheareg9	MA.104	7.00
aheareg9	MA.105	7.00
aheareg9	MA.201	5.00
aheareg9	MA.202	6.00
aheareg9	MA.203	10.00
aheareg9	MA.204	10.00
aheareg9	MA.205	10.00
aheareg9	MA.301	10.00
aheareg9	MA.302	8.00
aheareg9	MA.303	6.00
aheareg9	MA.304	8.00
aheareg9	MA.305	9.00
aheareg9	MA.401	6.00
aheareg9	MA.402	8.00
aheareg9	MA.403	9.00
jheyburn5c	MA.101	6.00
jheyburn5c	MA.102	8.00
jheyburn5c	MA.103	5.00
jheyburn5c	MA.104	8.00
jheyburn5c	MA.105	9.00
jheyburn5c	MA.201	10.00
jheyburn5c	MA.202	8.00
jheyburn5c	MA.203	10.00
jheyburn5c	MA.204	9.00
jheyburn5c	MA.205	7.00
jheyburn5c	MA.301	7.00
jheyburn5c	MA.302	5.00
jheyburn5c	MA.303	8.00
jheyburn5c	MA.304	8.00
jheyburn5c	MA.305	10.00
jheyburn5c	MA.401	10.00
jheyburn5c	MA.402	7.00
jheyburn5c	MA.403	5.00
jheyburn5c	MA.404	8.00
jheyburn5c	MA.405	10.00
jheyburn5c	MA.501	6.00
ljanugb	MA.101	9.00
ljanugb	MA.102	7.00
ljanugb	MA.103	10.00
ljanugb	MA.104	8.00
ljanugb	MA.105	5.00
ljanugb	MA.201	6.00
ljanugb	MA.202	5.00
ljanugb	MA.203	7.00
erickwordgn	MA.101	5.00
erickwordgn	MA.102	5.00
erickwordgn	MA.103	10.00
erickwordgn	MA.104	9.00
erickwordgn	MA.105	5.00
erickwordgn	MA.201	10.00
erickwordgn	MA.202	10.00
erickwordgn	MA.203	10.00
erickwordgn	MA.204	6.00
erickwordgn	MA.205	9.00
spickettgp	MA.101	10.00
spickettgp	MA.102	7.00
spickettgp	MA.103	5.00
spickettgp	MA.104	8.00
spickettgp	MA.105	7.00
spickettgp	MA.201	9.00
spickettgp	MA.202	5.00
spickettgp	MA.203	9.00
spickettgp	MA.204	7.00
spickettgp	MA.205	10.00
spickettgp	MA.301	9.00
spickettgp	MA.302	6.00
spickettgp	MA.303	10.00
spickettgp	MA.304	8.00
spickettgp	MA.305	9.00
atreskegq	MA.101	5.00
atreskegq	MA.102	5.00
atreskegq	MA.103	5.00
atreskegq	MA.104	9.00
atreskegq	MA.105	5.00
atreskegq	MA.201	5.00
atreskegq	MA.202	6.00
atreskegq	MA.203	9.00
atreskegq	MA.204	8.00
atreskegq	MA.205	9.00
fhakergy	MA.101	5.00
fhakergy	MA.102	10.00
fhakergy	MA.103	6.00
fhakergy	MA.104	7.00
fhakergy	MA.105	8.00
fhakergy	MA.201	9.00
fhakergy	MA.202	6.00
fhakergy	MA.203	10.00
fhakergy	MA.204	8.00
fhakergy	MA.205	5.00
fhakergy	MA.301	6.00
fhakergy	MA.302	9.00
fhakergy	MA.303	5.00
fhakergy	MA.304	8.00
fhakergy	MA.305	8.00
fhakergy	MA.401	7.00
fhakergy	MA.402	8.00
fhakergy	MA.403	9.00
fhakergy	MA.404	10.00
targileh8	MA.101	10.00
targileh8	MA.102	8.00
targileh8	MA.103	8.00
targileh8	MA.104	9.00
targileh8	MA.105	5.00
targileh8	MA.201	9.00
targileh8	MA.202	5.00
targileh8	MA.203	7.00
targileh8	MA.204	9.00
targileh8	MA.205	5.00
targileh8	MA.301	7.00
targileh8	MA.302	9.00
targileh8	MA.303	10.00
fcatlowh9	MA.101	10.00
fcatlowh9	MA.102	9.00
fcatlowh9	MA.103	5.00
fcatlowh9	MA.104	5.00
fcatlowh9	MA.105	5.00
fcatlowh9	MA.201	6.00
fcatlowh9	MA.202	10.00
fcatlowh9	MA.203	5.00
fcatlowh9	MA.204	10.00
fcatlowh9	MA.205	5.00
fcatlowh9	MA.301	9.00
fcatlowh9	MA.302	5.00
knixonjt	MA.101	6.00
knixonjt	MA.102	7.00
knixonjt	MA.103	7.00
knixonjt	MA.104	7.00
knixonjt	MA.105	5.00
knixonjt	MA.201	6.00
knixonjt	MA.202	10.00
knixonjt	MA.203	5.00
ktatekb	MA.101	5.00
ktatekb	MA.102	9.00
ktatekb	MA.103	10.00
ktatekb	MA.104	5.00
ktatekb	MA.105	9.00
ktatekb	MA.201	7.00
ktatekb	MA.202	5.00
ktatekb	MA.203	5.00
ktatekb	MA.204	5.00
lvanderwaltkc	MA.101	5.00
lvanderwaltkc	MA.102	9.00
lvanderwaltkc	MA.103	6.00
lvanderwaltkc	MA.104	8.00
lvanderwaltkc	MA.105	6.00
lvanderwaltkc	MA.201	6.00
lvanderwaltkc	MA.202	8.00
lvanderwaltkc	MA.203	7.00
lvanderwaltkc	MA.204	7.00
lvanderwaltkc	MA.205	6.00
lvanderwaltkc	MA.301	6.00
lvanderwaltkc	MA.302	6.00
lvanderwaltkc	MA.303	7.00
lvanderwaltkc	MA.304	6.00
lvanderwaltkc	MA.305	8.00
lvanderwaltkc	MA.401	9.00
lvanderwaltkc	MA.402	6.00
aflipsenkh	MA.101	8.00
aflipsenkh	MA.102	7.00
aflipsenkh	MA.103	7.00
aflipsenkh	MA.104	6.00
aflipsenkh	MA.105	5.00
aflipsenkh	MA.201	6.00
aflipsenkh	MA.202	6.00
aflipsenkh	MA.203	9.00
aflipsenkh	MA.204	10.00
aflipsenkh	MA.205	6.00
aflipsenkh	MA.301	8.00
aflipsenkh	MA.302	9.00
aflipsenkh	MA.303	5.00
aflipsenkh	MA.304	5.00
aflipsenkh	MA.305	10.00
aflipsenkh	MA.401	9.00
aflipsenkh	MA.402	10.00
aflipsenkh	MA.403	9.00
aflipsenkh	MA.404	6.00
aflipsenkh	MA.405	8.00
aflipsenkh	MA.501	9.00
aunthankk1	MA.101	6.00
aunthankk1	MA.102	8.00
aunthankk1	MA.103	7.00
aunthankk1	MA.104	9.00
aunthankk1	MA.105	7.00
aunthankk1	MA.201	7.00
aunthankk1	MA.202	5.00
aunthankk1	MA.203	10.00
aunthankk1	MA.204	7.00
aunthankk1	MA.205	5.00
aunthankk1	MA.301	10.00
wgoszji	MA.101	8.00
wgoszji	MA.102	7.00
wgoszji	MA.103	5.00
wgoszji	MA.104	7.00
wgoszji	MA.105	6.00
wgoszji	MA.201	6.00
wgoszji	MA.202	6.00
wgoszji	MA.203	5.00
wgoszji	MA.204	7.00
wgoszji	MA.205	5.00
wgoszji	MA.301	6.00
wgoszji	MA.302	6.00
wgoszji	MA.303	9.00
wgoszji	MA.304	9.00
bgraberjj	MA.101	9.00
bgraberjj	MA.102	6.00
bgraberjj	MA.103	8.00
bgraberjj	MA.104	9.00
bgraberjj	MA.105	8.00
bgraberjj	MA.201	10.00
bgraberjj	MA.202	8.00
bgraberjj	MA.203	5.00
bgraberjj	MA.204	9.00
bgraberjj	MA.205	5.00
bgraberjj	MA.301	9.00
bgraberjj	MA.302	6.00
bgraberjj	MA.303	9.00
bgraberjj	MA.304	5.00
bgraberjj	MA.305	9.00
bgraberjj	MA.401	7.00
bgraberjj	MA.402	6.00
bgraberjj	MA.403	8.00
bgraberjj	MA.404	8.00
agovenlockjw	MA.101	10.00
agovenlockjw	MA.102	9.00
agovenlockjw	MA.103	6.00
agovenlockjw	MA.104	7.00
agovenlockjw	MA.105	10.00
agovenlockjw	MA.201	5.00
agovenlockjw	MA.202	7.00
agovenlockjw	MA.203	6.00
jkindredk5	MA.101	8.00
jkindredk5	MA.102	9.00
jkindredk5	MA.103	8.00
jkindredk5	MA.104	8.00
jkindredk5	MA.105	6.00
jkindredk5	MA.201	8.00
jkindredk5	MA.202	10.00
jkindredk5	MA.203	9.00
jkindredk5	MA.204	9.00
jkindredk5	MA.205	10.00
jkindredk5	MA.301	9.00
lshalcrosk6	MA.101	5.00
lshalcrosk6	MA.102	7.00
lshalcrosk6	MA.103	7.00
lshalcrosk6	MA.104	10.00
lshalcrosk6	MA.105	6.00
lshalcrosk6	MA.201	7.00
lshalcrosk6	MA.202	10.00
lshalcrosk6	MA.203	10.00
lshalcrosk6	MA.204	7.00
lshalcrosk6	MA.205	8.00
lshalcrosk6	MA.301	9.00
lshalcrosk6	MA.302	5.00
lshalcrosk6	MA.303	7.00
lshalcrosk6	MA.304	9.00
lshalcrosk6	MA.305	6.00
lshalcrosk6	MA.401	10.00
lshalcrosk6	MA.402	9.00
lshalcrosk6	MA.403	7.00
lshalcrosk6	MA.404	7.00
lshalcrosk6	MA.405	8.00
lshalcrosk6	MA.501	10.00
rnisbithmu	MA.101	10.00
rnisbithmu	MA.102	10.00
rnisbithmu	MA.103	7.00
rnisbithmu	MA.104	5.00
rnisbithmu	MA.105	7.00
rnisbithmu	MA.201	9.00
rnisbithmu	MA.202	10.00
rnisbithmu	MA.203	6.00
rnisbithmu	MA.204	5.00
rnisbithmu	MA.205	6.00
rnisbithmu	MA.301	6.00
rnisbithmu	MA.302	5.00
rnisbithmu	MA.303	9.00
rnisbithmu	MA.304	10.00
rnisbithmu	MA.305	5.00
rnisbithmu	MA.401	8.00
rnisbithmu	MA.402	5.00
rnisbithmu	MA.403	8.00
rnisbithmu	MA.404	8.00
rnisbithmu	MA.405	7.00
nlorinczlb	MA.101	6.00
nlorinczlb	MA.102	9.00
nlorinczlb	MA.103	9.00
nlorinczlb	MA.104	6.00
nlorinczlb	MA.105	6.00
nlorinczlb	MA.201	5.00
nlorinczlb	MA.202	9.00
nlorinczlb	MA.203	10.00
nlorinczlb	MA.204	6.00
nlorinczlb	MA.205	5.00
nlorinczlb	MA.301	5.00
nlorinczlb	MA.302	6.00
nlorinczlb	MA.303	10.00
nlorinczlb	MA.304	8.00
nlorinczlb	MA.305	6.00
nlorinczlb	MA.401	7.00
nlorinczlb	MA.402	7.00
nlorinczlb	MA.403	6.00
nlorinczlb	MA.404	9.00
nlorinczlb	MA.405	7.00
nlorinczlb	MA.501	5.00
nlorinczlb	MA.502	8.00
bdowdneyld	MA.101	5.00
bdowdneyld	MA.102	10.00
bdowdneyld	MA.103	10.00
bdowdneyld	MA.104	9.00
bdowdneyld	MA.105	8.00
bdowdneyld	MA.201	8.00
bdowdneyld	MA.202	7.00
bdowdneyld	MA.203	9.00
bdowdneyld	MA.204	7.00
bdowdneyld	MA.205	5.00
bdowdneyld	MA.301	9.00
bdowdneyld	MA.302	9.00
bdowdneyld	MA.303	7.00
bdowdneyld	MA.304	7.00
rcasfordlu	MA.101	8.00
rcasfordlu	MA.102	5.00
rcasfordlu	MA.103	6.00
rcasfordlu	MA.104	8.00
rcasfordlu	MA.105	10.00
rcasfordlu	MA.201	7.00
rcasfordlu	MA.202	8.00
rcasfordlu	MA.203	7.00
rcasfordlu	MA.204	9.00
rcasfordlu	MA.205	10.00
rcasfordlu	MA.301	6.00
rcasfordlu	MA.302	7.00
rcasfordlu	MA.303	7.00
rcasfordlu	MA.304	7.00
rcasfordlu	MA.305	6.00
bcrocketlx	MA.101	9.00
bcrocketlx	MA.102	7.00
bcrocketlx	MA.103	10.00
bcrocketlx	MA.104	5.00
bcrocketlx	MA.105	5.00
bcrocketlx	MA.201	6.00
bcrocketlx	MA.202	6.00
bcrocketlx	MA.203	10.00
bcrocketlx	MA.204	9.00
bcrocketlx	MA.205	9.00
bcrocketlx	MA.301	8.00
bcrocketlx	MA.302	8.00
bcrocketlx	MA.303	7.00
bcrocketlx	MA.304	8.00
bcrocketlx	MA.305	8.00
bcrocketlx	MA.401	8.00
bcrocketlx	MA.402	7.00
bcrocketlx	MA.403	9.00
bcrocketlx	MA.404	8.00
bcrocketlx	MA.405	5.00
vgenerylz	MA.101	9.00
vgenerylz	MA.102	5.00
vgenerylz	MA.103	7.00
vgenerylz	MA.104	7.00
vgenerylz	MA.105	10.00
vgenerylz	MA.201	5.00
vgenerylz	MA.202	5.00
vgenerylz	MA.203	8.00
vgenerylz	MA.204	9.00
vgenerylz	MA.205	6.00
vgenerylz	MA.301	9.00
vgenerylz	MA.302	9.00
vgenerylz	MA.303	7.00
vgenerylz	MA.304	6.00
vgenerylz	MA.305	7.00
vgenerylz	MA.401	9.00
vgenerylz	MA.402	5.00
vgenerylz	MA.403	10.00
vgenerylz	MA.404	5.00
vgenerylz	MA.405	5.00
vgenerylz	MA.501	6.00
vgenerylz	MA.502	5.00
vgenerylz	MA.503	10.00
brickfordmh	MA.101	8.00
brickfordmh	MA.102	7.00
brickfordmh	MA.103	6.00
brickfordmh	MA.104	5.00
brickfordmh	MA.105	10.00
brickfordmh	MA.201	7.00
brickfordmh	MA.202	8.00
brickfordmh	MA.203	5.00
tdeemanmi	MA.101	7.00
tdeemanmi	MA.102	7.00
tdeemanmi	MA.103	9.00
tdeemanmi	MA.104	10.00
tdeemanmi	MA.105	9.00
tdeemanmi	MA.201	8.00
tdeemanmi	MA.202	10.00
tdeemanmi	MA.203	9.00
tdeemanmi	MA.204	7.00
tdeemanmi	MA.205	8.00
tdeemanmi	MA.301	5.00
tdeemanmi	MA.302	6.00
tdeemanmi	MA.303	5.00
tdeemanmi	MA.304	6.00
tdeemanmi	MA.305	5.00
tdeemanmi	MA.401	7.00
tdeemanmi	MA.402	5.00
tdeemanmi	MA.403	8.00
tdeemanmi	MA.404	10.00
tdeemanmi	MA.405	5.00
tdeemanmi	MA.501	6.00
tdeemanmi	MA.502	8.00
tdeemanmi	MA.503	6.00
cschottlip4	MA.101	7.00
cschottlip4	MA.102	5.00
cschottlip4	MA.103	9.00
cschottlip4	MA.104	7.00
cschottlip4	MA.105	7.00
cschottlip4	MA.201	6.00
cschottlip4	MA.202	6.00
cschottlip4	MA.203	6.00
cschottlip4	MA.204	8.00
cschottlip4	MA.205	10.00
mlibermoreot	MA.101	5.00
mlibermoreot	MA.102	10.00
mlibermoreot	MA.103	6.00
mlibermoreot	MA.104	5.00
mlibermoreot	MA.105	6.00
mlibermoreot	MA.201	9.00
mlibermoreot	MA.202	5.00
mlibermoreot	MA.203	9.00
mlibermoreot	MA.204	6.00
mlibermoreot	MA.205	8.00
mlibermoreot	MA.301	7.00
mlibermoreot	MA.302	6.00
mlibermoreot	MA.303	7.00
mlibermoreot	MA.304	6.00
mlibermoreot	MA.305	7.00
mlibermoreot	MA.401	8.00
mlibermoreot	MA.402	7.00
mlibermoreot	MA.403	6.00
mlibermoreot	MA.404	6.00
mlibermoreot	MA.405	8.00
mlibermoreot	MA.501	6.00
mlibermoreot	MA.502	10.00
dlearmountn8	MA.101	9.00
dlearmountn8	MA.102	10.00
dlearmountn8	MA.103	10.00
dlearmountn8	MA.104	6.00
dlearmountn8	MA.105	9.00
dlearmountn8	MA.201	8.00
dlearmountn8	MA.202	8.00
dlearmountn8	MA.203	10.00
dlearmountn8	MA.204	10.00
dlearmountn8	MA.205	5.00
dlearmountn8	MA.301	8.00
dlearmountn8	MA.302	9.00
dlearmountn8	MA.303	6.00
dlearmountn8	MA.304	9.00
dlearmountn8	MA.305	5.00
dlearmountn8	MA.401	5.00
xchatelainnd	MA.101	6.00
xchatelainnd	MA.102	6.00
xchatelainnd	MA.103	5.00
xchatelainnd	MA.104	6.00
xchatelainnd	MA.105	7.00
xchatelainnd	MA.201	9.00
xchatelainnd	MA.202	10.00
xchatelainnd	MA.203	10.00
xchatelainnd	MA.204	8.00
xchatelainnd	MA.205	7.00
kmacrannellnj	MA.101	10.00
kmacrannellnj	MA.102	10.00
kmacrannellnj	MA.103	9.00
kmacrannellnj	MA.104	7.00
kmacrannellnj	MA.105	5.00
kmacrannellnj	MA.201	8.00
kmacrannellnj	MA.202	8.00
kmacrannellnj	MA.203	8.00
kmacrannellnj	MA.204	5.00
kmacrannellnj	MA.205	10.00
kmacrannellnj	MA.301	5.00
kmacrannellnj	MA.302	7.00
kmacrannellnj	MA.303	10.00
kmacrannellnj	MA.304	8.00
kmacrannellnj	MA.305	6.00
kmacrannellnj	MA.401	8.00
kmacrannellnj	MA.402	7.00
kmacrannellnj	MA.403	10.00
kmacrannellnj	MA.404	9.00
kmacrannellnj	MA.405	7.00
kmacrannellnj	MA.501	5.00
kmacrannellnj	MA.502	6.00
kmacrannellnj	MA.503	8.00
ppidgennq	MA.101	6.00
ppidgennq	MA.102	6.00
ppidgennq	MA.103	10.00
ppidgennq	MA.104	8.00
ppidgennq	MA.105	9.00
ppidgennq	MA.201	5.00
ppidgennq	MA.202	5.00
ppidgennq	MA.203	6.00
ppidgennq	MA.204	6.00
kclorleynr	MA.101	8.00
kclorleynr	MA.102	6.00
kclorleynr	MA.103	9.00
kclorleynr	MA.104	5.00
kclorleynr	MA.105	5.00
kclorleynr	MA.201	9.00
kclorleynr	MA.202	7.00
kclorleynr	MA.203	5.00
dhutonow	MA.101	5.00
dhutonow	MA.102	8.00
dhutonow	MA.103	9.00
dhutonow	MA.104	10.00
dhutonow	MA.105	7.00
dhutonow	MA.201	6.00
dhutonow	MA.202	9.00
dhutonow	MA.203	9.00
dhutonow	MA.204	9.00
dhutonow	MA.205	7.00
dhutonow	MA.301	8.00
dhutonow	MA.302	10.00
dhutonow	MA.303	10.00
wpullmano4	MA.101	9.00
wpullmano4	MA.102	5.00
wpullmano4	MA.103	10.00
wpullmano4	MA.104	8.00
wpullmano4	MA.105	9.00
wpullmano4	MA.201	6.00
wpullmano4	MA.202	10.00
wpullmano4	MA.203	8.00
wpullmano4	MA.204	6.00
wpullmano4	MA.205	8.00
wpullmano4	MA.301	6.00
wpullmano4	MA.302	10.00
wpullmano4	MA.303	5.00
wpullmano4	MA.304	8.00
wpullmano4	MA.305	5.00
wpullmano4	MA.401	7.00
wpullmano4	MA.402	6.00
wpullmano4	MA.403	8.00
wpullmano4	MA.404	9.00
wpullmano4	MA.405	6.00
wpullmano4	MA.501	8.00
wpullmano4	MA.502	7.00
kstollardnx	MA.101	8.00
kstollardnx	MA.102	7.00
kstollardnx	MA.103	9.00
kstollardnx	MA.104	7.00
kstollardnx	MA.105	10.00
kstollardnx	MA.201	7.00
kstollardnx	MA.202	5.00
kstollardnx	MA.203	5.00
kstollardnx	MA.204	10.00
kstollardnx	MA.205	5.00
lkolczynskion	MA.101	5.00
lkolczynskion	MA.102	6.00
lkolczynskion	MA.103	8.00
lkolczynskion	MA.104	8.00
lkolczynskion	MA.105	9.00
lkolczynskion	MA.201	8.00
lkolczynskion	MA.202	8.00
lkolczynskion	MA.203	5.00
lkolczynskion	MA.204	10.00
lkolczynskion	MA.205	9.00
lkolczynskion	MA.301	5.00
lkolczynskion	MA.302	9.00
lkolczynskion	MA.303	10.00
lkolczynskion	MA.304	5.00
lkolczynskion	MA.305	10.00
lkolczynskion	MA.401	8.00
lkolczynskion	MA.402	6.00
lkolczynskion	MA.403	9.00
lkolczynskion	MA.404	8.00
lkolczynskion	MA.405	9.00
jfilintsevop	MA.101	8.00
jfilintsevop	MA.102	7.00
jfilintsevop	MA.103	7.00
jfilintsevop	MA.104	6.00
jfilintsevop	MA.105	9.00
jfilintsevop	MA.201	7.00
jfilintsevop	MA.202	7.00
jfilintsevop	MA.203	5.00
jfilintsevop	MA.204	10.00
jfilintsevop	MA.205	7.00
jfilintsevop	MA.301	9.00
jfilintsevop	MA.302	7.00
jfilintsevop	MA.303	6.00
jfilintsevop	MA.304	10.00
jfilintsevop	MA.305	6.00
jfilintsevop	MA.401	10.00
vbursnallpb	MA.101	8.00
vbursnallpb	MA.102	7.00
vbursnallpb	MA.103	8.00
vbursnallpb	MA.104	9.00
vbursnallpb	MA.105	7.00
vbursnallpb	MA.201	5.00
vbursnallpb	MA.202	6.00
vbursnallpb	MA.203	7.00
vbursnallpb	MA.204	6.00
wlavignern	MA.101	10.00
wlavignern	MA.102	8.00
wlavignern	MA.103	6.00
wlavignern	MA.104	5.00
wlavignern	MA.105	10.00
wlavignern	MA.201	10.00
wlavignern	MA.202	9.00
wlavignern	MA.203	5.00
wlavignern	MA.204	10.00
wlavignern	MA.205	5.00
wlavignern	MA.301	5.00
wlavignern	MA.302	6.00
pcarradiceqm	MA.101	6.00
pcarradiceqm	MA.102	7.00
pcarradiceqm	MA.103	10.00
pcarradiceqm	MA.104	6.00
pcarradiceqm	MA.105	8.00
pcarradiceqm	MA.201	6.00
pcarradiceqm	MA.202	10.00
pcarradiceqm	MA.203	10.00
pcarradiceqm	MA.204	9.00
pcarradiceqm	MA.205	10.00
pcarradiceqm	MA.301	5.00
pcarradiceqm	MA.302	6.00
pcarradiceqm	MA.303	7.00
emoreq4	MA.101	10.00
emoreq4	MA.102	10.00
emoreq4	MA.103	10.00
emoreq4	MA.104	7.00
emoreq4	MA.105	7.00
emoreq4	MA.201	8.00
emoreq4	MA.202	5.00
emoreq4	MA.203	10.00
emoreq4	MA.204	10.00
emoreq4	MA.205	5.00
emoreq4	MA.301	7.00
emoreq4	MA.302	6.00
emoreq4	MA.303	8.00
emoreq4	MA.304	6.00
emoreq4	MA.305	5.00
emoreq4	MA.401	5.00
emoreq4	MA.402	6.00
emoreq4	MA.403	5.00
eotuohyqc	MA.101	6.00
eotuohyqc	MA.102	6.00
eotuohyqc	MA.103	10.00
eotuohyqc	MA.104	9.00
eotuohyqc	MA.105	8.00
eotuohyqc	MA.201	8.00
eotuohyqc	MA.202	7.00
eotuohyqc	MA.203	9.00
eotuohyqc	MA.204	10.00
eotuohyqc	MA.205	9.00
eotuohyqc	MA.301	7.00
eotuohyqc	MA.302	5.00
eotuohyqc	MA.303	6.00
eotuohyqc	MA.304	6.00
eotuohyqc	MA.305	8.00
eotuohyqc	MA.401	7.00
eotuohyqc	MA.402	9.00
eotuohyqc	MA.403	7.00
eotuohyqc	MA.404	5.00
eotuohyqc	MA.405	10.00
kgreenshielsqd	MA.101	6.00
kgreenshielsqd	MA.102	6.00
kgreenshielsqd	MA.103	6.00
kgreenshielsqd	MA.104	9.00
kgreenshielsqd	MA.105	7.00
kgreenshielsqd	MA.201	5.00
kgreenshielsqd	MA.202	6.00
kgreenshielsqd	MA.203	7.00
kgreenshielsqd	MA.204	6.00
kgreenshielsqd	MA.205	6.00
kgreenshielsqd	MA.301	9.00
kgreenshielsqd	MA.302	10.00
kgreenshielsqd	MA.303	10.00
kgreenshielsqd	MA.304	7.00
kgreenshielsqd	MA.305	8.00
kgreenshielsqd	MA.401	6.00
kgreenshielsqd	MA.402	6.00
kgreenshielsqd	MA.403	5.00
kgreenshielsqd	MA.404	7.00
kgreenshielsqd	MA.405	6.00
kgreenshielsqd	MA.501	8.00
kgreenshielsqd	MA.502	10.00
kgreenshielsqd	MA.503	9.00
lpearseqe	MA.101	5.00
lpearseqe	MA.102	9.00
lpearseqe	MA.103	6.00
lpearseqe	MA.104	5.00
lpearseqe	MA.105	10.00
lpearseqe	MA.201	5.00
lpearseqe	MA.202	8.00
lpearseqe	MA.203	9.00
lpearseqe	MA.204	6.00
lpearseqe	MA.205	9.00
lpearseqe	MA.301	5.00
lpearseqe	MA.302	6.00
lpearseqe	MA.303	7.00
lpearseqe	MA.304	9.00
fkeriqf	MA.101	6.00
fkeriqf	MA.102	8.00
fkeriqf	MA.103	8.00
fkeriqf	MA.104	10.00
fkeriqf	MA.105	10.00
fkeriqf	MA.201	7.00
fkeriqf	MA.202	7.00
fkeriqf	MA.203	5.00
fkeriqf	MA.204	6.00
fkeriqf	MA.205	5.00
fkeriqf	MA.301	7.00
fkeriqf	MA.302	7.00
fkeriqf	MA.303	9.00
fkeriqf	MA.304	5.00
fkeriqf	MA.305	5.00
fkeriqf	MA.401	6.00
fkeriqf	MA.402	7.00
fkeriqf	MA.403	7.00
fkeriqf	MA.404	6.00
fkeriqf	MA.405	5.00
fkeriqf	MA.501	9.00
fkeriqf	MA.502	7.00
rscrannyqr	MA.101	7.00
rscrannyqr	MA.102	9.00
rscrannyqr	MA.103	5.00
rscrannyqr	MA.104	10.00
rscrannyqr	MA.105	10.00
rscrannyqr	MA.201	8.00
rscrannyqr	MA.202	9.00
rscrannyqr	MA.203	10.00
rscrannyqr	MA.204	8.00
rscrannyqr	MA.205	5.00
rscrannyqr	MA.301	10.00
rscrannyqr	MA.302	6.00
wkubinr3	MA.101	5.00
wkubinr3	MA.102	7.00
wkubinr3	MA.103	5.00
wkubinr3	MA.104	10.00
wkubinr3	MA.105	7.00
wkubinr3	MA.201	8.00
wkubinr3	MA.202	7.00
wkubinr3	MA.203	9.00
wkubinr3	MA.204	9.00
wkubinr3	MA.205	9.00
wkubinr3	MA.301	9.00
wkubinr3	MA.302	6.00
wkubinr3	MA.303	9.00
wkubinr3	MA.304	7.00
wkubinr3	MA.305	9.00
wkubinr3	MA.401	10.00
kblampyr4	MA.101	10.00
kblampyr4	MA.102	8.00
kblampyr4	MA.103	7.00
kblampyr4	MA.104	5.00
kblampyr4	MA.105	9.00
kblampyr4	MA.201	9.00
kblampyr4	MA.202	9.00
kblampyr4	MA.203	7.00
kblampyr4	MA.204	9.00
kblampyr4	MA.205	7.00
kblampyr4	MA.301	7.00
kblampyr4	MA.302	9.00
kblampyr4	MA.303	7.00
kblampyr4	MA.304	6.00
kblampyr4	MA.305	10.00
rbilovusr7	MA.101	6.00
rbilovusr7	MA.102	7.00
rbilovusr7	MA.103	8.00
rbilovusr7	MA.104	6.00
rbilovusr7	MA.105	6.00
rbilovusr7	MA.201	6.00
rbilovusr7	MA.202	8.00
rbilovusr7	MA.203	10.00
rbilovusr7	MA.204	7.00
rbilovusr7	MA.205	8.00
rbilovusr7	MA.301	8.00
rbilovusr7	MA.302	10.00
rbilovusr7	MA.303	6.00
rbilovusr7	MA.304	8.00
rbilovusr7	MA.305	8.00
rbilovusr7	MA.401	5.00
rbilovusr7	MA.402	6.00
rbilovusr7	MA.403	6.00
rbilovusr7	MA.404	10.00
scomellinir9	MA.101	8.00
scomellinir9	MA.102	9.00
scomellinir9	MA.103	7.00
scomellinir9	MA.104	10.00
scomellinir9	MA.105	6.00
scomellinir9	MA.201	9.00
scomellinir9	MA.202	10.00
scomellinir9	MA.203	5.00
scomellinir9	MA.204	6.00
scomellinir9	MA.205	9.00
scomellinir9	MA.301	8.00
scomellinir9	MA.302	5.00
scomellinir9	MA.303	5.00
scomellinir9	MA.304	8.00
scomellinir9	MA.305	9.00
scomellinir9	MA.401	9.00
scomellinir9	MA.402	7.00
scomellinir9	MA.403	8.00
scomellinir9	MA.404	8.00
bmcwardre	MA.101	9.00
bmcwardre	MA.102	9.00
bmcwardre	MA.103	7.00
bmcwardre	MA.104	9.00
bmcwardre	MA.105	9.00
bmcwardre	MA.201	6.00
bmcwardre	MA.202	6.00
bmcwardre	MA.203	6.00
bmcwardre	MA.204	6.00
bmcwardre	MA.205	7.00
bmcwardre	MA.301	8.00
bmcwardre	MA.302	5.00
bmcwardre	MA.303	5.00
bmcwardre	MA.304	6.00
bmcwardre	MA.305	5.00
ableasbya	MA.101	10.00
ableasbya	MA.102	5.00
ableasbya	MA.103	9.00
ableasbya	MA.104	9.00
ableasbya	MA.105	7.00
ableasbya	MA.201	5.00
ableasbya	MA.202	7.00
ableasbya	MA.203	5.00
ableasbya	MA.204	8.00
ableasbya	MA.205	7.00
ableasbya	MA.301	9.00
slinekerj	MA.101	9.00
slinekerj	MA.102	10.00
slinekerj	MA.103	8.00
slinekerj	MA.104	6.00
slinekerj	MA.105	10.00
slinekerj	MA.201	8.00
slinekerj	MA.202	6.00
slinekerj	MA.203	7.00
slinekerj	MA.204	5.00
slinekerj	MA.205	7.00
gcathels	MA.101	7.00
gcathels	MA.102	10.00
gcathels	MA.103	5.00
gcathels	MA.104	8.00
gcathels	MA.105	10.00
gcathels	MA.201	5.00
gcathels	MA.202	8.00
gcathels	MA.203	7.00
gcathels	MA.204	5.00
gcathels	MA.205	9.00
gcathels	MA.301	8.00
gcathels	MA.302	10.00
gcathels	MA.303	8.00
gcathels	MA.304	7.00
gcathels	MA.305	10.00
gcathels	MA.401	6.00
gcathels	MA.402	8.00
gcathels	MA.403	8.00
gcathels	MA.404	8.00
gcathels	MA.405	10.00
gcathels	MA.501	9.00
gcathels	MA.502	10.00
gcathels	MA.503	7.00
pjevesy	MA.101	5.00
pjevesy	MA.102	7.00
pjevesy	MA.103	7.00
pjevesy	MA.104	8.00
pjevesy	MA.105	10.00
pjevesy	MA.201	7.00
pjevesy	MA.202	9.00
pjevesy	MA.203	10.00
pjevesy	MA.204	10.00
pjevesy	MA.205	8.00
pjevesy	MA.301	5.00
pjevesy	MA.302	6.00
pjevesy	MA.303	7.00
pjevesy	MA.304	9.00
pjevesy	MA.305	8.00
pjevesy	MA.401	7.00
pjevesy	MA.402	10.00
lsweating92	MA.101	9.00
lsweating92	MA.102	10.00
lsweating92	MA.103	8.00
lsweating92	MA.104	7.00
lsweating92	MA.105	8.00
lsweating92	MA.201	9.00
lsweating92	MA.202	9.00
lsweating92	MA.203	9.00
lsweating92	MA.204	9.00
lsweating92	MA.205	9.00
lsweating92	MA.301	9.00
lsweating92	MA.302	10.00
lsweating92	MA.303	5.00
lsweating92	MA.304	5.00
lsweating92	MA.305	8.00
lsweating92	MA.401	9.00
lsweating92	MA.402	7.00
lsweating92	MA.403	10.00
lsweating92	MA.404	5.00
lsweating92	MA.405	10.00
lsweating92	MA.501	8.00
mingray15	MA.101	10.00
mingray15	MA.102	7.00
mingray15	MA.103	6.00
mingray15	MA.104	10.00
mingray15	MA.105	10.00
mingray15	MA.201	9.00
mingray15	MA.202	9.00
mingray15	MA.203	6.00
mingray15	MA.204	5.00
mingray15	MA.205	8.00
mingray15	MA.301	8.00
mingray15	MA.302	10.00
mingray15	MA.303	8.00
mingray15	MA.304	8.00
mingray15	MA.305	9.00
kleckenby7x	MA.101	9.00
kleckenby7x	MA.102	7.00
kleckenby7x	MA.103	5.00
kleckenby7x	MA.104	9.00
kleckenby7x	MA.105	6.00
kleckenby7x	MA.201	5.00
kleckenby7x	MA.202	7.00
kleckenby7x	MA.203	10.00
sclearekt	MA.101	9.00
sclearekt	MA.102	7.00
sclearekt	MA.103	9.00
sclearekt	MA.104	6.00
sclearekt	MA.105	6.00
sclearekt	MA.201	10.00
sclearekt	MA.202	8.00
sclearekt	MA.203	5.00
sclearekt	MA.204	7.00
sclearekt	MA.205	6.00
sclearekt	MA.301	8.00
ginger0	MA.101	5.00
ginger0	MA.102	7.00
ginger0	MA.103	9.00
ginger0	MA.104	6.00
ginger0	MA.105	9.00
ginger0	MA.201	8.00
ginger0	MA.202	8.00
ginger0	MA.203	9.00
ginger0	MA.204	8.00
ginger0	MA.205	7.00
ginger0	MA.301	7.00
ginger0	MA.302	7.00
ginger0	MA.303	6.00
ginger0	MA.304	8.00
ginger0	MA.305	7.00
ginger0	MA.401	5.00
ginger0	MA.402	6.00
ginger0	MA.403	5.00
ginger0	MA.404	6.00
ginger0	MA.405	8.00
ginger0	MA.501	7.00
ginger0	MA.502	6.00
rtyttertonmk	MA.101	10.00
rtyttertonmk	MA.102	10.00
rtyttertonmk	MA.103	9.00
rtyttertonmk	MA.104	6.00
rtyttertonmk	MA.105	9.00
rtyttertonmk	MA.201	5.00
rtyttertonmk	MA.202	6.00
rtyttertonmk	MA.203	9.00
rtyttertonmk	MA.204	10.00
rtyttertonmk	MA.205	8.00
rtyttertonmk	MA.301	10.00
rtyttertonmk	MA.302	10.00
rtyttertonmk	MA.303	7.00
rtyttertonmk	MA.304	6.00
rtyttertonmk	MA.305	9.00
rtyttertonmk	MA.401	9.00
rtyttertonmk	MA.402	10.00
rtyttertonmk	MA.403	6.00
rtyttertonmk	MA.404	10.00
urotherape	MA.101	10.00
urotherape	MA.102	8.00
urotherape	MA.103	6.00
urotherape	MA.104	10.00
urotherape	MA.105	7.00
urotherape	MA.201	10.00
urotherape	MA.202	9.00
urotherape	MA.203	8.00
urotherape	MA.204	8.00
urotherape	MA.205	6.00
urotherape	MA.301	10.00
urotherape	MA.302	10.00
urotherape	MA.303	9.00
urotherape	MA.304	9.00
cdodingpp	MA.101	8.00
cdodingpp	MA.102	8.00
cdodingpp	MA.103	8.00
cdodingpp	MA.104	10.00
cdodingpp	MA.105	5.00
cdodingpp	MA.201	6.00
cdodingpp	MA.202	8.00
cdodingpp	MA.203	7.00
cdodingpp	MA.204	9.00
cdodingpp	MA.205	6.00
cdodingpp	MA.301	5.00
cdodingpp	MA.302	5.00
cdodingpp	MA.303	5.00
cdodingpp	MA.304	6.00
cdodingpp	MA.305	8.00
cdodingpp	MA.401	6.00
cdodingpp	MA.402	9.00
cdodingpp	MA.403	5.00
tpridittqs	MA.101	6.00
tpridittqs	MA.102	10.00
tpridittqs	MA.103	5.00
tpridittqs	MA.104	8.00
tpridittqs	MA.105	9.00
tpridittqs	MA.201	9.00
tpridittqs	MA.202	10.00
tpridittqs	MA.203	6.00
tpridittqs	MA.204	6.00
tpridittqs	MA.205	7.00
tpridittqs	MA.301	6.00
tpridittqs	MA.302	9.00
tpridittqs	MA.303	8.00
tpridittqs	MA.304	5.00
tpridittqs	MA.305	8.00
tpridittqs	MA.401	8.00
tpridittqs	MA.402	10.00
tantoniate8	MA.101	9.00
tantoniate8	MA.102	8.00
tantoniate8	MA.103	10.00
tantoniate8	MA.104	10.00
tantoniate8	MA.105	10.00
tantoniate8	MA.201	9.00
tantoniate8	MA.202	5.00
tantoniate8	MA.203	7.00
tantoniate8	MA.204	9.00
tantoniate8	MA.205	9.00
tantoniate8	MA.301	9.00
tantoniate8	MA.302	5.00
blukash6z	MA.101	7.00
blukash6z	MA.102	6.00
blukash6z	MA.103	5.00
blukash6z	MA.104	6.00
blukash6z	MA.105	9.00
blukash6z	MA.201	7.00
blukash6z	MA.202	6.00
blukash6z	MA.203	7.00
blukash6z	MA.204	5.00
eclashpj	MA.101	6.00
eclashpj	MA.102	10.00
eclashpj	MA.103	7.00
eclashpj	MA.104	6.00
eclashpj	MA.105	10.00
eclashpj	MA.201	10.00
eclashpj	MA.202	8.00
eclashpj	MA.203	10.00
eclashpj	MA.204	8.00
eclashpj	MA.205	7.00
eclashpj	MA.301	8.00
eclashpj	MA.302	10.00
jmcquiltyaq	PHY.101	10.00
jmcquiltyaq	PHY.102	9.00
jmcquiltyaq	PHY.103	9.00
jmcquiltyaq	PHY.104	7.00
jmcquiltyaq	PHY.105	7.00
jmcquiltyaq	PHY.201	8.00
jmcquiltyaq	PHY.202	6.00
jmcquiltyaq	PHY.203	8.00
fstains93	PHY.101	9.00
fstains93	PHY.102	7.00
fstains93	PHY.103	7.00
fstains93	PHY.104	5.00
fstains93	PHY.105	7.00
fstains93	PHY.201	5.00
fstains93	PHY.202	6.00
fstains93	PHY.203	8.00
fstains93	PHY.204	6.00
fstains93	PHY.205	10.00
fstains93	PHY.301	8.00
fstains93	PHY.302	7.00
fstains93	PHY.303	5.00
fstains93	PHY.304	5.00
fstains93	PHY.305	7.00
mkowalskica	PHY.101	5.00
mkowalskica	PHY.102	8.00
mkowalskica	PHY.103	5.00
mkowalskica	PHY.104	10.00
mkowalskica	PHY.105	6.00
mkowalskica	PHY.201	7.00
mkowalskica	PHY.202	9.00
mkowalskica	PHY.203	10.00
mkowalskica	PHY.204	6.00
mkowalskica	PHY.205	10.00
mkowalskica	PHY.301	6.00
mkowalskica	PHY.302	9.00
mkowalskica	PHY.303	7.00
mkowalskica	PHY.304	10.00
kballaamj7	PHY.101	9.00
kballaamj7	PHY.102	5.00
kballaamj7	PHY.103	7.00
kballaamj7	PHY.104	5.00
kballaamj7	PHY.105	8.00
kballaamj7	PHY.201	6.00
kballaamj7	PHY.202	6.00
kballaamj7	PHY.203	5.00
kballaamj7	PHY.204	10.00
kballaamj7	PHY.205	6.00
kballaamj7	PHY.301	10.00
kballaamj7	PHY.302	8.00
kballaamj7	PHY.303	6.00
kballaamj7	PHY.304	6.00
kballaamj7	PHY.305	5.00
kballaamj7	PHY.401	10.00
kballaamj7	PHY.402	10.00
kballaamj7	PHY.403	6.00
kballaamj7	PHY.404	9.00
kballaamj7	PHY.405	10.00
lfenckm8	PHY.101	6.00
lfenckm8	PHY.102	10.00
lfenckm8	PHY.103	8.00
lfenckm8	PHY.104	9.00
lfenckm8	PHY.105	9.00
lfenckm8	PHY.201	5.00
lfenckm8	PHY.202	6.00
lfenckm8	PHY.203	5.00
lfenckm8	PHY.204	5.00
lfenckm8	PHY.205	9.00
lfenckm8	PHY.301	6.00
lfenckm8	PHY.302	8.00
lfenckm8	PHY.303	6.00
lfenckm8	PHY.304	9.00
lfenckm8	PHY.305	10.00
lfenckm8	PHY.401	6.00
lfenckm8	PHY.402	5.00
lfenckm8	PHY.403	9.00
lfenckm8	PHY.404	7.00
nscothernlj	PHY.101	9.00
nscothernlj	PHY.102	6.00
nscothernlj	PHY.103	8.00
nscothernlj	PHY.104	7.00
nscothernlj	PHY.105	6.00
nscothernlj	PHY.201	6.00
nscothernlj	PHY.202	5.00
nscothernlj	PHY.203	5.00
nscothernlj	PHY.204	5.00
nscothernlj	PHY.205	9.00
nscothernlj	PHY.301	9.00
nscothernlj	PHY.302	9.00
nscothernlj	PHY.303	10.00
nscothernlj	PHY.304	10.00
nscothernlj	PHY.305	6.00
nscothernlj	PHY.401	7.00
nscothernlj	PHY.402	5.00
nscothernlj	PHY.403	8.00
nscothernlj	PHY.404	7.00
nscothernlj	PHY.405	8.00
akrishtopaittis8h	PHY.101	9.00
akrishtopaittis8h	PHY.102	9.00
akrishtopaittis8h	PHY.103	5.00
akrishtopaittis8h	PHY.104	7.00
akrishtopaittis8h	PHY.105	6.00
akrishtopaittis8h	PHY.201	7.00
akrishtopaittis8h	PHY.202	5.00
akrishtopaittis8h	PHY.203	10.00
akrishtopaittis8h	PHY.204	6.00
akrishtopaittis8h	PHY.205	5.00
akrishtopaittis8h	PHY.301	10.00
eoneilq6	PHY.101	10.00
eoneilq6	PHY.102	8.00
eoneilq6	PHY.103	10.00
eoneilq6	PHY.104	10.00
eoneilq6	PHY.105	5.00
eoneilq6	PHY.201	8.00
eoneilq6	PHY.202	8.00
eoneilq6	PHY.203	7.00
eoneilq6	PHY.204	6.00
eoneilq6	PHY.205	10.00
eoneilq6	PHY.301	9.00
eoneilq6	PHY.302	9.00
eoneilq6	PHY.303	8.00
eoneilq6	PHY.304	5.00
eoneilq6	PHY.305	10.00
eoneilq6	PHY.401	9.00
skeynes8b	PHY.101	8.00
skeynes8b	PHY.102	7.00
skeynes8b	PHY.103	6.00
skeynes8b	PHY.104	6.00
skeynes8b	PHY.105	10.00
skeynes8b	PHY.201	8.00
skeynes8b	PHY.202	10.00
skeynes8b	PHY.203	6.00
skeynes8b	PHY.204	7.00
skeynes8b	PHY.205	5.00
skeynes8b	PHY.301	10.00
bcahill62	PHY.101	10.00
bcahill62	PHY.102	7.00
bcahill62	PHY.103	5.00
bcahill62	PHY.104	9.00
bcahill62	PHY.105	6.00
bcahill62	PHY.201	6.00
bcahill62	PHY.202	5.00
bcahill62	PHY.203	9.00
bcahill62	PHY.204	7.00
bcahill62	PHY.205	8.00
bcahill62	PHY.301	10.00
bcahill62	PHY.302	7.00
bcahill62	PHY.303	7.00
bcahill62	PHY.304	6.00
bcahill62	PHY.305	5.00
todonegan64	PHY.101	5.00
todonegan64	PHY.102	9.00
todonegan64	PHY.103	8.00
todonegan64	PHY.104	8.00
todonegan64	PHY.105	10.00
todonegan64	PHY.201	5.00
todonegan64	PHY.202	8.00
todonegan64	PHY.203	8.00
todonegan64	PHY.204	7.00
todonegan64	PHY.205	8.00
todonegan64	PHY.301	9.00
todonegan64	PHY.302	8.00
todonegan64	PHY.303	5.00
todonegan64	PHY.304	6.00
todonegan64	PHY.305	8.00
todonegan64	PHY.401	10.00
todonegan64	PHY.402	8.00
todonegan64	PHY.403	8.00
ccrosgrove1z	PHY.101	7.00
ccrosgrove1z	PHY.102	9.00
ccrosgrove1z	PHY.103	9.00
ccrosgrove1z	PHY.104	7.00
ccrosgrove1z	PHY.105	7.00
ccrosgrove1z	PHY.201	7.00
ccrosgrove1z	PHY.202	8.00
ccrosgrove1z	PHY.203	8.00
ccrosgrove1z	PHY.204	9.00
ccrosgrove1z	PHY.205	9.00
ccrosgrove1z	PHY.301	7.00
ccrosgrove1z	PHY.302	7.00
ccrosgrove1z	PHY.303	10.00
ccrosgrove1z	PHY.304	9.00
ccrosgrove1z	PHY.305	10.00
ccrosgrove1z	PHY.401	8.00
ccrosgrove1z	PHY.402	6.00
ccrosgrove1z	PHY.403	8.00
ccrosgrove1z	PHY.404	5.00
ccrosgrove1z	PHY.405	9.00
ccrosgrove1z	PHY.501	9.00
ccrosgrove1z	PHY.502	8.00
ccrosgrove1z	PHY.503	9.00
siacomi69	PHY.101	7.00
siacomi69	PHY.102	8.00
siacomi69	PHY.103	7.00
siacomi69	PHY.104	8.00
siacomi69	PHY.105	6.00
siacomi69	PHY.201	7.00
siacomi69	PHY.202	6.00
siacomi69	PHY.203	7.00
siacomi69	PHY.204	5.00
siacomi69	PHY.205	6.00
siacomi69	PHY.301	10.00
siacomi69	PHY.302	8.00
chuzzey85	PHY.101	6.00
chuzzey85	PHY.102	6.00
chuzzey85	PHY.103	7.00
chuzzey85	PHY.104	9.00
chuzzey85	PHY.105	9.00
chuzzey85	PHY.201	9.00
chuzzey85	PHY.202	6.00
chuzzey85	PHY.203	10.00
chuzzey85	PHY.204	6.00
chuzzey85	PHY.205	8.00
zhark6r	PHY.101	6.00
zhark6r	PHY.102	10.00
zhark6r	PHY.103	5.00
zhark6r	PHY.104	6.00
zhark6r	PHY.105	6.00
zhark6r	PHY.201	10.00
zhark6r	PHY.202	8.00
zhark6r	PHY.203	8.00
zhark6r	PHY.204	7.00
zhark6r	PHY.205	8.00
zhark6r	PHY.301	8.00
zhark6r	PHY.302	8.00
ydeverehunt77	PHY.101	8.00
ydeverehunt77	PHY.102	6.00
ydeverehunt77	PHY.103	9.00
ydeverehunt77	PHY.104	7.00
ydeverehunt77	PHY.105	7.00
ydeverehunt77	PHY.201	6.00
ydeverehunt77	PHY.202	9.00
nwinny78	PHY.101	10.00
nwinny78	PHY.102	7.00
nwinny78	PHY.103	10.00
nwinny78	PHY.104	7.00
nwinny78	PHY.105	6.00
nwinny78	PHY.201	6.00
nwinny78	PHY.202	6.00
nwinny78	PHY.203	7.00
nwinny78	PHY.204	5.00
nwinny78	PHY.205	6.00
nwinny78	PHY.301	5.00
nwinny78	PHY.302	7.00
nwinny78	PHY.303	7.00
nwinny78	PHY.304	6.00
nwinny78	PHY.305	10.00
nwinny78	PHY.401	7.00
nwinny78	PHY.402	5.00
nwinny78	PHY.403	7.00
nwinny78	PHY.404	5.00
gflight6v	PHY.101	10.00
gflight6v	PHY.102	6.00
gflight6v	PHY.103	7.00
gflight6v	PHY.104	8.00
gflight6v	PHY.105	6.00
gflight6v	PHY.201	6.00
gflight6v	PHY.202	5.00
gflight6v	PHY.203	5.00
gflight6v	PHY.204	5.00
gflight6v	PHY.205	5.00
arayman7a	PHY.101	10.00
arayman7a	PHY.102	6.00
arayman7a	PHY.103	10.00
arayman7a	PHY.104	8.00
arayman7a	PHY.105	9.00
arayman7a	PHY.201	5.00
arayman7a	PHY.202	9.00
arayman7a	PHY.203	5.00
arayman7a	PHY.204	6.00
arayman7a	PHY.205	6.00
arayman7a	PHY.301	10.00
arayman7a	PHY.302	7.00
arayman7a	PHY.303	10.00
arayman7a	PHY.304	5.00
arayman7a	PHY.305	7.00
arayman7a	PHY.401	7.00
arayman7a	PHY.402	7.00
arayman7a	PHY.403	6.00
arayman7a	PHY.404	10.00
kmonaghan7q	PHY.101	9.00
kmonaghan7q	PHY.102	10.00
kmonaghan7q	PHY.103	7.00
kmonaghan7q	PHY.104	8.00
kmonaghan7q	PHY.105	9.00
kmonaghan7q	PHY.201	9.00
kmonaghan7q	PHY.202	6.00
kmonaghan7q	PHY.203	5.00
kmonaghan7q	PHY.204	10.00
kmonaghan7q	PHY.205	6.00
kmonaghan7q	PHY.301	10.00
cbrenneke7s	PHY.101	10.00
cbrenneke7s	PHY.102	8.00
cbrenneke7s	PHY.103	8.00
cbrenneke7s	PHY.104	6.00
cbrenneke7s	PHY.105	6.00
cbrenneke7s	PHY.201	8.00
cbrenneke7s	PHY.202	8.00
cbrenneke7s	PHY.203	5.00
cbrenneke7s	PHY.204	5.00
cbrenneke7s	PHY.205	6.00
cbrenneke7s	PHY.301	10.00
cbrenneke7s	PHY.302	8.00
cbrenneke7s	PHY.303	7.00
cbrenneke7s	PHY.304	7.00
cbrenneke7s	PHY.305	5.00
cbrenneke7s	PHY.401	6.00
cbrenneke7s	PHY.402	6.00
cbrenneke7s	PHY.403	7.00
cbrenneke7s	PHY.404	5.00
cbrenneke7s	PHY.405	8.00
cbrenneke7s	PHY.501	10.00
cbrenneke7s	PHY.502	8.00
adymottat	PHY.101	10.00
adymottat	PHY.102	7.00
adymottat	PHY.103	7.00
adymottat	PHY.104	10.00
adymottat	PHY.105	10.00
adymottat	PHY.201	10.00
adymottat	PHY.202	6.00
adymottat	PHY.203	6.00
adymottat	PHY.204	7.00
adymottat	PHY.205	5.00
adymottat	PHY.301	7.00
adymottat	PHY.302	6.00
adymottat	PHY.303	9.00
mgillan9v	PHY.101	6.00
mgillan9v	PHY.102	7.00
mgillan9v	PHY.103	5.00
mgillan9v	PHY.104	10.00
mgillan9v	PHY.105	10.00
mgillan9v	PHY.201	5.00
mgillan9v	PHY.202	8.00
mgillan9v	PHY.203	10.00
mgillan9v	PHY.204	8.00
mgillan9v	PHY.205	7.00
mgillan9v	PHY.301	8.00
mgillan9v	PHY.302	7.00
mgillan9v	PHY.303	6.00
mgillan9v	PHY.304	7.00
mgillan9v	PHY.305	6.00
mgillan9v	PHY.401	6.00
mgillan9v	PHY.402	8.00
mgillan9v	PHY.403	6.00
mgillan9v	PHY.404	6.00
mgillan9v	PHY.405	8.00
mgillan9v	PHY.501	5.00
mgillan9v	PHY.502	9.00
fsiene91	PHY.101	5.00
fsiene91	PHY.102	5.00
fsiene91	PHY.103	8.00
fsiene91	PHY.104	8.00
fsiene91	PHY.105	10.00
fsiene91	PHY.201	10.00
fsiene91	PHY.202	8.00
fsiene91	PHY.203	9.00
fsiene91	PHY.204	5.00
fsiene91	PHY.205	6.00
fsiene91	PHY.301	10.00
fsiene91	PHY.302	10.00
fsiene91	PHY.303	9.00
fsiene91	PHY.304	10.00
fsiene91	PHY.305	8.00
fsiene91	PHY.401	10.00
fsiene91	PHY.402	7.00
fsiene91	PHY.403	8.00
fsiene91	PHY.404	9.00
fsiene91	PHY.405	8.00
cpalphreyman95	PHY.101	7.00
cpalphreyman95	PHY.102	7.00
cpalphreyman95	PHY.103	6.00
cpalphreyman95	PHY.104	7.00
cpalphreyman95	PHY.105	6.00
cpalphreyman95	PHY.201	8.00
cpalphreyman95	PHY.202	6.00
cpalphreyman95	PHY.203	7.00
cpalphreyman95	PHY.204	7.00
cpalphreyman95	PHY.205	7.00
cpalphreyman95	PHY.301	7.00
cpalphreyman95	PHY.302	6.00
cpalphreyman95	PHY.303	5.00
cpalphreyman95	PHY.304	8.00
cpalphreyman95	PHY.305	7.00
cpalphreyman95	PHY.401	9.00
cpalphreyman95	PHY.402	7.00
cpalphreyman95	PHY.403	5.00
cpalphreyman95	PHY.404	9.00
cpalphreyman95	PHY.405	10.00
rrene9m	PHY.101	5.00
rrene9m	PHY.102	7.00
rrene9m	PHY.103	10.00
rrene9m	PHY.104	5.00
rrene9m	PHY.105	6.00
rrene9m	PHY.201	9.00
rrene9m	PHY.202	6.00
rrene9m	PHY.203	6.00
rrene9m	PHY.204	7.00
rrene9m	PHY.205	6.00
rrene9m	PHY.301	9.00
rrene9m	PHY.302	5.00
mhickford9n	PHY.101	9.00
mhickford9n	PHY.102	7.00
mhickford9n	PHY.103	8.00
mhickford9n	PHY.104	6.00
mhickford9n	PHY.105	9.00
mhickford9n	PHY.201	10.00
mhickford9n	PHY.202	5.00
mhickford9n	PHY.203	9.00
mhickford9n	PHY.204	6.00
mhickford9n	PHY.205	6.00
mhickford9n	PHY.301	5.00
mhickford9n	PHY.302	9.00
mhickford9n	PHY.303	10.00
mhickford9n	PHY.304	9.00
mhickford9n	PHY.305	9.00
mhickford9n	PHY.401	6.00
kfiddler9c	PHY.101	9.00
kfiddler9c	PHY.102	5.00
kfiddler9c	PHY.103	8.00
kfiddler9c	PHY.104	5.00
kfiddler9c	PHY.105	9.00
kfiddler9c	PHY.201	8.00
kfiddler9c	PHY.202	10.00
mpharrow9e	PHY.101	7.00
mpharrow9e	PHY.102	7.00
mpharrow9e	PHY.103	8.00
mpharrow9e	PHY.104	10.00
mpharrow9e	PHY.105	9.00
mpharrow9e	PHY.201	8.00
mpharrow9e	PHY.202	6.00
mpharrow9e	PHY.203	5.00
mpharrow9e	PHY.204	6.00
mpharrow9e	PHY.205	10.00
mpharrow9e	PHY.301	7.00
mpharrow9e	PHY.302	6.00
mpharrow9e	PHY.303	10.00
mpharrow9e	PHY.304	8.00
mpharrow9e	PHY.305	7.00
mpharrow9e	PHY.401	5.00
odart9p	PHY.101	8.00
odart9p	PHY.102	10.00
odart9p	PHY.103	9.00
odart9p	PHY.104	8.00
odart9p	PHY.105	8.00
odart9p	PHY.201	10.00
odart9p	PHY.202	7.00
odart9p	PHY.203	6.00
odart9p	PHY.204	6.00
odart9p	PHY.205	7.00
odart9p	PHY.301	5.00
wmckelvieag	PHY.101	10.00
wmckelvieag	PHY.102	6.00
wmckelvieag	PHY.103	8.00
wmckelvieag	PHY.104	6.00
wmckelvieag	PHY.105	7.00
wmckelvieag	PHY.201	8.00
wmckelvieag	PHY.202	8.00
wmckelvieag	PHY.203	7.00
wmckelvieag	PHY.204	8.00
wmckelvieag	PHY.205	7.00
wmckelvieag	PHY.301	7.00
wmckelvieag	PHY.302	8.00
wmckelvieag	PHY.303	7.00
wmckelvieag	PHY.304	7.00
wmckelvieag	PHY.305	9.00
wmckelvieag	PHY.401	10.00
wmckelvieag	PHY.402	6.00
gsonleyb9	PHY.101	6.00
gsonleyb9	PHY.102	8.00
gsonleyb9	PHY.103	10.00
gsonleyb9	PHY.104	9.00
gsonleyb9	PHY.105	5.00
gsonleyb9	PHY.201	5.00
gsonleyb9	PHY.202	8.00
gsonleyb9	PHY.203	10.00
gsonleyb9	PHY.204	9.00
gsonleyb9	PHY.205	10.00
gsonleyb9	PHY.301	9.00
gsonleyb9	PHY.302	7.00
gsonleyb9	PHY.303	6.00
gsonleyb9	PHY.304	5.00
gsonleyb9	PHY.305	5.00
gsonleyb9	PHY.401	10.00
gsonleyb9	PHY.402	9.00
gsonleyb9	PHY.403	9.00
gsonleyb9	PHY.404	5.00
gsonleyb9	PHY.405	10.00
gsonleyb9	PHY.501	10.00
gsonleyb9	PHY.502	9.00
gsonleyb9	PHY.503	6.00
kverdenc1	PHY.101	7.00
kverdenc1	PHY.102	5.00
kverdenc1	PHY.103	6.00
kverdenc1	PHY.104	5.00
kverdenc1	PHY.105	5.00
kverdenc1	PHY.201	6.00
kverdenc1	PHY.202	5.00
kverdenc1	PHY.203	6.00
mcircuittcn	PHY.101	8.00
mcircuittcn	PHY.102	6.00
mcircuittcn	PHY.103	10.00
mcircuittcn	PHY.104	5.00
mcircuittcn	PHY.105	6.00
mcircuittcn	PHY.201	7.00
mcircuittcn	PHY.202	9.00
mcircuittcn	PHY.203	7.00
mcircuittcn	PHY.204	6.00
mcircuittcn	PHY.205	6.00
mcircuittcn	PHY.301	6.00
ksyrattbk	PHY.101	6.00
ksyrattbk	PHY.102	9.00
ksyrattbk	PHY.103	5.00
ksyrattbk	PHY.104	8.00
ksyrattbk	PHY.105	6.00
ksyrattbk	PHY.201	5.00
ksyrattbk	PHY.202	6.00
ksyrattbk	PHY.203	7.00
ksyrattbk	PHY.204	8.00
ksyrattbk	PHY.205	7.00
ksyrattbk	PHY.301	6.00
ksyrattbk	PHY.302	10.00
ksyrattbk	PHY.303	8.00
wmonetib7	PHY.101	6.00
wmonetib7	PHY.102	8.00
wmonetib7	PHY.103	9.00
wmonetib7	PHY.104	8.00
wmonetib7	PHY.105	9.00
wmonetib7	PHY.201	5.00
wmonetib7	PHY.202	7.00
wmonetib7	PHY.203	5.00
wmonetib7	PHY.204	10.00
wmonetib7	PHY.205	8.00
wmonetib7	PHY.301	9.00
wmonetib7	PHY.302	5.00
wmonetib7	PHY.303	9.00
kyeardsleybn	PHY.101	7.00
kyeardsleybn	PHY.102	6.00
kyeardsleybn	PHY.103	5.00
kyeardsleybn	PHY.104	10.00
kyeardsleybn	PHY.105	7.00
kyeardsleybn	PHY.201	5.00
kyeardsleybn	PHY.202	7.00
kyeardsleybn	PHY.203	8.00
rgodarbp	PHY.101	7.00
rgodarbp	PHY.102	5.00
rgodarbp	PHY.103	9.00
rgodarbp	PHY.104	8.00
rgodarbp	PHY.105	9.00
rgodarbp	PHY.201	5.00
rgodarbp	PHY.202	5.00
rgodarbp	PHY.203	7.00
rgodarbp	PHY.204	6.00
rgodarbp	PHY.205	8.00
tgresonbs	PHY.101	7.00
tgresonbs	PHY.102	7.00
tgresonbs	PHY.103	6.00
tgresonbs	PHY.104	6.00
tgresonbs	PHY.105	6.00
tgresonbs	PHY.201	10.00
tgresonbs	PHY.202	7.00
tgresonbs	PHY.203	8.00
tgresonbs	PHY.204	7.00
tgresonbs	PHY.205	10.00
tgresonbs	PHY.301	8.00
kknathbo	PHY.101	9.00
kknathbo	PHY.102	5.00
kknathbo	PHY.103	9.00
kknathbo	PHY.104	9.00
kknathbo	PHY.105	10.00
kknathbo	PHY.201	9.00
kknathbo	PHY.202	9.00
kknathbo	PHY.203	10.00
kknathbo	PHY.204	9.00
kknathbo	PHY.205	7.00
kknathbo	PHY.301	5.00
kknathbo	PHY.302	5.00
kknathbo	PHY.303	9.00
kknathbo	PHY.304	7.00
kknathbo	PHY.305	5.00
tanderssoncl	PHY.101	5.00
tanderssoncl	PHY.102	7.00
tanderssoncl	PHY.103	10.00
tanderssoncl	PHY.104	6.00
tanderssoncl	PHY.105	9.00
tanderssoncl	PHY.201	9.00
tanderssoncl	PHY.202	8.00
pgreyax	PHY.101	6.00
pgreyax	PHY.102	5.00
pgreyax	PHY.103	8.00
pgreyax	PHY.104	9.00
pgreyax	PHY.105	9.00
pgreyax	PHY.201	5.00
pgreyax	PHY.202	5.00
pgreyax	PHY.203	6.00
pgreyax	PHY.204	8.00
pgreyax	PHY.205	9.00
pgreyax	PHY.301	10.00
pgreyax	PHY.302	9.00
pgreyax	PHY.303	8.00
pgreyax	PHY.304	9.00
pgreyax	PHY.305	7.00
pgreyax	PHY.401	5.00
pgreyax	PHY.402	9.00
pgreyax	PHY.403	5.00
pgreyax	PHY.404	7.00
pgreyax	PHY.405	9.00
tsaddlercp	PHY.101	8.00
tsaddlercp	PHY.102	6.00
tsaddlercp	PHY.103	9.00
tsaddlercp	PHY.104	10.00
tsaddlercp	PHY.105	8.00
tsaddlercp	PHY.201	7.00
tsaddlercp	PHY.202	7.00
tsaddlercp	PHY.203	7.00
tsaddlercp	PHY.204	6.00
tsaddlercp	PHY.205	9.00
slowthay	PHY.101	5.00
slowthay	PHY.102	9.00
slowthay	PHY.103	6.00
slowthay	PHY.104	9.00
slowthay	PHY.105	5.00
slowthay	PHY.201	10.00
slowthay	PHY.202	10.00
slowthay	PHY.203	5.00
slowthay	PHY.204	7.00
slowthay	PHY.205	6.00
slowthay	PHY.301	9.00
slowthay	PHY.302	9.00
cnoted9	PHY.101	7.00
cnoted9	PHY.102	10.00
cnoted9	PHY.103	5.00
cnoted9	PHY.104	9.00
cnoted9	PHY.105	9.00
cnoted9	PHY.201	9.00
cnoted9	PHY.202	9.00
cnoted9	PHY.203	6.00
amowsdaleaw	PHY.101	7.00
amowsdaleaw	PHY.102	8.00
amowsdaleaw	PHY.103	5.00
amowsdaleaw	PHY.104	5.00
amowsdaleaw	PHY.105	8.00
amowsdaleaw	PHY.201	7.00
amowsdaleaw	PHY.202	8.00
amowsdaleaw	PHY.203	6.00
amowsdaleaw	PHY.204	6.00
amowsdaleaw	PHY.205	6.00
amowsdaleaw	PHY.301	6.00
amowsdaleaw	PHY.302	9.00
nsimpkissbd	PHY.101	6.00
nsimpkissbd	PHY.102	8.00
nsimpkissbd	PHY.103	5.00
nsimpkissbd	PHY.104	5.00
nsimpkissbd	PHY.105	8.00
nsimpkissbd	PHY.201	10.00
nsimpkissbd	PHY.202	9.00
nsimpkissbd	PHY.203	10.00
nsimpkissbd	PHY.204	10.00
nsimpkissbd	PHY.205	7.00
nsimpkissbd	PHY.301	9.00
nsimpkissbd	PHY.302	7.00
nsimpkissbd	PHY.303	8.00
ekenderfh	PHY.101	5.00
ekenderfh	PHY.102	10.00
ekenderfh	PHY.103	10.00
ekenderfh	PHY.104	5.00
ekenderfh	PHY.105	9.00
ekenderfh	PHY.201	8.00
ekenderfh	PHY.202	8.00
ekenderfh	PHY.203	9.00
ekenderfh	PHY.204	6.00
ekenderfh	PHY.205	7.00
ekenderfh	PHY.301	5.00
ekenderfh	PHY.302	8.00
ekenderfh	PHY.303	5.00
rstranaghaney	PHY.101	6.00
rstranaghaney	PHY.102	7.00
rstranaghaney	PHY.103	10.00
rstranaghaney	PHY.104	6.00
rstranaghaney	PHY.105	5.00
rstranaghaney	PHY.201	7.00
rstranaghaney	PHY.202	6.00
rstranaghaney	PHY.203	8.00
rstranaghaney	PHY.204	9.00
ldanhere5	PHY.101	7.00
ldanhere5	PHY.102	8.00
ldanhere5	PHY.103	9.00
ldanhere5	PHY.104	6.00
ldanhere5	PHY.105	9.00
ldanhere5	PHY.201	6.00
ldanhere5	PHY.202	8.00
ldanhere5	PHY.203	10.00
ldanhere5	PHY.204	8.00
ldanhere5	PHY.205	9.00
ldanhere5	PHY.301	9.00
ldanhere5	PHY.302	8.00
ldanhere5	PHY.303	6.00
ldanhere5	PHY.304	10.00
ldanhere5	PHY.305	5.00
ldanhere5	PHY.401	5.00
sbriztmandy	PHY.101	6.00
sbriztmandy	PHY.102	10.00
sbriztmandy	PHY.103	7.00
sbriztmandy	PHY.104	8.00
sbriztmandy	PHY.105	6.00
sbriztmandy	PHY.201	6.00
sbriztmandy	PHY.202	7.00
sbriztmandy	PHY.203	7.00
sbriztmandy	PHY.204	9.00
sbriztmandy	PHY.205	6.00
sbriztmandy	PHY.301	8.00
sbriztmandy	PHY.302	8.00
sbriztmandy	PHY.303	8.00
sbriztmandy	PHY.304	5.00
sbriztmandy	PHY.305	6.00
sbriztmandy	PHY.401	9.00
sbriztmandy	PHY.402	5.00
sbriztmandy	PHY.403	10.00
sbriztmandy	PHY.404	9.00
sbriztmandy	PHY.405	9.00
sbriztmandy	PHY.501	10.00
sbriztmandy	PHY.502	10.00
ameddemmendz	PHY.101	9.00
ameddemmendz	PHY.102	7.00
ameddemmendz	PHY.103	7.00
ameddemmendz	PHY.104	10.00
ameddemmendz	PHY.105	8.00
ameddemmendz	PHY.201	8.00
ameddemmendz	PHY.202	6.00
ameddemmendz	PHY.203	5.00
ameddemmendz	PHY.204	7.00
bvynehalldp	PHY.101	8.00
bvynehalldp	PHY.102	10.00
bvynehalldp	PHY.103	7.00
bvynehalldp	PHY.104	10.00
bvynehalldp	PHY.105	6.00
bvynehalldp	PHY.201	9.00
bvynehalldp	PHY.202	9.00
bvynehalldp	PHY.203	9.00
bvynehalldp	PHY.204	8.00
bvynehalldp	PHY.205	7.00
bvynehalldp	PHY.301	5.00
bvynehalldp	PHY.302	6.00
bvynehalldp	PHY.303	10.00
bvynehalldp	PHY.304	5.00
bvynehalldp	PHY.305	9.00
bvynehalldp	PHY.401	5.00
bvynehalldp	PHY.402	6.00
maldieex	PHY.101	5.00
maldieex	PHY.102	10.00
maldieex	PHY.103	9.00
maldieex	PHY.104	10.00
maldieex	PHY.105	6.00
maldieex	PHY.201	5.00
maldieex	PHY.202	9.00
maldieex	PHY.203	9.00
maldieex	PHY.204	8.00
maldieex	PHY.205	10.00
chadleef5	PHY.101	10.00
chadleef5	PHY.102	9.00
chadleef5	PHY.103	10.00
chadleef5	PHY.104	5.00
chadleef5	PHY.105	5.00
chadleef5	PHY.201	6.00
chadleef5	PHY.202	10.00
chadleef5	PHY.203	10.00
chadleef5	PHY.204	5.00
chadleef5	PHY.205	10.00
chadleef5	PHY.301	6.00
chadleef5	PHY.302	8.00
fwicherfe	PHY.101	5.00
fwicherfe	PHY.102	7.00
fwicherfe	PHY.103	6.00
fwicherfe	PHY.104	9.00
fwicherfe	PHY.105	5.00
fwicherfe	PHY.201	6.00
fwicherfe	PHY.202	7.00
fwicherfe	PHY.203	7.00
fwicherfe	PHY.204	10.00
fwicherfe	PHY.205	6.00
fwicherfe	PHY.301	10.00
fwicherfe	PHY.302	7.00
fwicherfe	PHY.303	7.00
fwicherfe	PHY.304	10.00
dtinlinedd	PHY.101	5.00
dtinlinedd	PHY.102	10.00
dtinlinedd	PHY.103	7.00
dtinlinedd	PHY.104	8.00
dtinlinedd	PHY.105	9.00
dtinlinedd	PHY.201	10.00
dtinlinedd	PHY.202	8.00
dtinlinedd	PHY.203	8.00
dtinlinedd	PHY.204	6.00
dtinlinedd	PHY.205	10.00
dtinlinedd	PHY.301	5.00
btrousdelldf	PHY.101	7.00
btrousdelldf	PHY.102	7.00
btrousdelldf	PHY.103	8.00
btrousdelldf	PHY.104	5.00
btrousdelldf	PHY.105	7.00
btrousdelldf	PHY.201	6.00
btrousdelldf	PHY.202	10.00
btrousdelldf	PHY.203	7.00
btrousdelldf	PHY.204	9.00
btrousdelldf	PHY.205	10.00
btrousdelldf	PHY.301	8.00
btrousdelldf	PHY.302	9.00
btrousdelldf	PHY.303	7.00
btrousdelldf	PHY.304	8.00
btrousdelldf	PHY.305	8.00
btrousdelldf	PHY.401	5.00
btrousdelldf	PHY.402	8.00
btrousdelldf	PHY.403	7.00
btrousdelldf	PHY.404	6.00
btrousdelldf	PHY.405	5.00
btrousdelldf	PHY.501	7.00
btrousdelldf	PHY.502	7.00
btrousdelldf	PHY.503	9.00
btrousdelldf	PHY.504	5.00
cmaymandfu	PHY.101	6.00
cmaymandfu	PHY.102	5.00
cmaymandfu	PHY.103	7.00
cmaymandfu	PHY.104	5.00
cmaymandfu	PHY.105	9.00
cmaymandfu	PHY.201	7.00
cmaymandfu	PHY.202	7.00
cmaymandfu	PHY.203	8.00
shannang1	PHY.101	9.00
shannang1	PHY.102	6.00
shannang1	PHY.103	10.00
shannang1	PHY.104	10.00
shannang1	PHY.105	9.00
shannang1	PHY.201	8.00
shannang1	PHY.202	6.00
shannang1	PHY.203	8.00
shannang1	PHY.204	8.00
shannang1	PHY.205	10.00
shannang1	PHY.301	8.00
shannang1	PHY.302	7.00
mbernardog2	PHY.101	9.00
mbernardog2	PHY.102	10.00
mbernardog2	PHY.103	9.00
mbernardog2	PHY.104	5.00
mbernardog2	PHY.105	5.00
mbernardog2	PHY.201	5.00
mbernardog2	PHY.202	10.00
mbernardog2	PHY.203	6.00
mtwinningg6	PHY.101	5.00
mtwinningg6	PHY.102	9.00
mtwinningg6	PHY.103	6.00
mtwinningg6	PHY.104	8.00
mtwinningg6	PHY.105	5.00
mtwinningg6	PHY.201	5.00
mtwinningg6	PHY.202	8.00
mtwinningg6	PHY.203	6.00
mtwinningg6	PHY.204	5.00
mtwinningg6	PHY.205	7.00
mtwinningg6	PHY.301	9.00
mtwinningg6	PHY.302	9.00
pkeenegh	PHY.101	8.00
pkeenegh	PHY.102	9.00
pkeenegh	PHY.103	9.00
pkeenegh	PHY.104	6.00
pkeenegh	PHY.105	5.00
pkeenegh	PHY.201	8.00
pkeenegh	PHY.202	5.00
pkeenegh	PHY.203	6.00
pkeenegh	PHY.204	9.00
pkeenegh	PHY.205	6.00
pkeenegh	PHY.301	6.00
pkeenegh	PHY.302	10.00
pkeenegh	PHY.303	8.00
pkeenegh	PHY.304	8.00
pkeenegh	PHY.305	9.00
pkeenegh	PHY.401	6.00
pkeenegh	PHY.402	5.00
pkeenegh	PHY.403	10.00
pkeenegh	PHY.404	7.00
pkeenegh	PHY.405	8.00
pkeenegh	PHY.501	9.00
mtolworthieh4	PHY.101	6.00
mtolworthieh4	PHY.102	9.00
mtolworthieh4	PHY.103	6.00
mtolworthieh4	PHY.104	6.00
mtolworthieh4	PHY.105	7.00
mtolworthieh4	PHY.201	5.00
mtolworthieh4	PHY.202	9.00
mtolworthieh4	PHY.203	7.00
mtolworthieh4	PHY.204	8.00
mtolworthieh4	PHY.205	9.00
mtolworthieh4	PHY.301	5.00
mtolworthieh4	PHY.302	7.00
mtolworthieh4	PHY.303	7.00
mtolworthieh4	PHY.304	5.00
mtolworthieh4	PHY.305	9.00
mtolworthieh4	PHY.401	10.00
mtolworthieh4	PHY.402	5.00
mtolworthieh4	PHY.403	10.00
mtolworthieh4	PHY.404	5.00
mtolworthieh4	PHY.405	8.00
mtolworthieh4	PHY.501	7.00
mtolworthieh4	PHY.502	9.00
jmurcuttgo	PHY.101	9.00
jmurcuttgo	PHY.102	6.00
jmurcuttgo	PHY.103	10.00
jmurcuttgo	PHY.104	6.00
jmurcuttgo	PHY.105	6.00
jmurcuttgo	PHY.201	10.00
jmurcuttgo	PHY.202	10.00
jmurcuttgo	PHY.203	8.00
jmurcuttgo	PHY.204	6.00
jmurcuttgo	PHY.205	5.00
jmurcuttgo	PHY.301	7.00
jmurcuttgo	PHY.302	6.00
jmurcuttgo	PHY.303	7.00
jmurcuttgo	PHY.304	6.00
jmurcuttgo	PHY.305	9.00
jmurcuttgo	PHY.401	8.00
jmurcuttgo	PHY.402	5.00
jmurcuttgo	PHY.403	10.00
jmurcuttgo	PHY.404	9.00
jmurcuttgo	PHY.405	9.00
lpipkingu	PHY.101	6.00
lpipkingu	PHY.102	7.00
lpipkingu	PHY.103	10.00
lpipkingu	PHY.104	8.00
lpipkingu	PHY.105	5.00
lpipkingu	PHY.201	7.00
lpipkingu	PHY.202	6.00
lpipkingu	PHY.203	10.00
lpipkingu	PHY.204	5.00
lpipkingu	PHY.205	9.00
lpipkingu	PHY.301	8.00
lpipkingu	PHY.302	8.00
lpipkingu	PHY.303	5.00
lpipkingu	PHY.304	7.00
lpipkingu	PHY.305	10.00
lpipkingu	PHY.401	9.00
lpipkingu	PHY.402	7.00
lpipkingu	PHY.403	9.00
lpipkingu	PHY.404	7.00
lpipkingu	PHY.405	8.00
lpipkingu	PHY.501	9.00
ecraythornfs	PHY.101	8.00
ecraythornfs	PHY.102	5.00
ecraythornfs	PHY.103	10.00
ecraythornfs	PHY.104	9.00
ecraythornfs	PHY.105	7.00
ecraythornfs	PHY.201	5.00
ecraythornfs	PHY.202	7.00
ecraythornfs	PHY.203	10.00
ecraythornfs	PHY.204	10.00
ecraythornfs	PHY.205	10.00
ecraythornfs	PHY.301	7.00
ecraythornfs	PHY.302	10.00
ldronsfieldgd	PHY.101	6.00
ldronsfieldgd	PHY.102	7.00
ldronsfieldgd	PHY.103	6.00
ldronsfieldgd	PHY.104	6.00
ldronsfieldgd	PHY.105	7.00
ldronsfieldgd	PHY.201	5.00
ldronsfieldgd	PHY.202	5.00
ldronsfieldgd	PHY.203	8.00
ldronsfieldgd	PHY.204	7.00
ldronsfieldgd	PHY.205	8.00
ldronsfieldgd	PHY.301	9.00
ldronsfieldgd	PHY.302	8.00
ldronsfieldgd	PHY.303	10.00
ldronsfieldgd	PHY.304	9.00
ldronsfieldgd	PHY.305	10.00
ldronsfieldgd	PHY.401	10.00
ldronsfieldgd	PHY.402	5.00
ldronsfieldgd	PHY.403	6.00
ldronsfieldgd	PHY.404	10.00
ldronsfieldgd	PHY.405	10.00
ldronsfieldgd	PHY.501	10.00
ldronsfieldgd	PHY.502	6.00
jattewha	PHY.101	8.00
jattewha	PHY.102	8.00
jattewha	PHY.103	7.00
jattewha	PHY.104	7.00
jattewha	PHY.105	8.00
jattewha	PHY.201	5.00
jattewha	PHY.202	7.00
jattewha	PHY.203	7.00
jattewha	PHY.204	8.00
jattewha	PHY.205	7.00
jattewha	PHY.301	10.00
jattewha	PHY.302	8.00
jattewha	PHY.303	8.00
jattewha	PHY.304	8.00
jattewha	PHY.305	7.00
jattewha	PHY.401	8.00
jattewha	PHY.402	6.00
gbinhamhe	PHY.101	5.00
gbinhamhe	PHY.102	8.00
gbinhamhe	PHY.103	7.00
gbinhamhe	PHY.104	6.00
gbinhamhe	PHY.105	9.00
gbinhamhe	PHY.201	9.00
gbinhamhe	PHY.202	10.00
gbinhamhe	PHY.203	5.00
gbinhamhe	PHY.204	5.00
gbinhamhe	PHY.205	9.00
gbinhamhe	PHY.301	10.00
gbinhamhe	PHY.302	7.00
gbinhamhe	PHY.303	10.00
tkainehn	PHY.101	8.00
tkainehn	PHY.102	10.00
tkainehn	PHY.103	10.00
tkainehn	PHY.104	8.00
tkainehn	PHY.105	6.00
tkainehn	PHY.201	9.00
tkainehn	PHY.202	5.00
tkainehn	PHY.203	8.00
tkainehn	PHY.204	9.00
tkainehn	PHY.205	8.00
ldiklehp	PHY.101	10.00
ldiklehp	PHY.102	7.00
ldiklehp	PHY.103	7.00
ldiklehp	PHY.104	7.00
ldiklehp	PHY.105	7.00
ldiklehp	PHY.201	7.00
ldiklehp	PHY.202	8.00
rmacronaldhf	PHY.101	10.00
rmacronaldhf	PHY.102	5.00
rmacronaldhf	PHY.103	5.00
rmacronaldhf	PHY.104	8.00
rmacronaldhf	PHY.105	8.00
rmacronaldhf	PHY.201	8.00
rmacronaldhf	PHY.202	6.00
rmacronaldhf	PHY.203	9.00
rmacronaldhf	PHY.204	5.00
vciobutarok8	PHY.101	8.00
vciobutarok8	PHY.102	5.00
vciobutarok8	PHY.103	8.00
vciobutarok8	PHY.104	6.00
vciobutarok8	PHY.105	8.00
vciobutarok8	PHY.201	5.00
vciobutarok8	PHY.202	9.00
vciobutarok8	PHY.203	5.00
vciobutarok8	PHY.204	10.00
vciobutarok8	PHY.205	10.00
vciobutarok8	PHY.301	8.00
vciobutarok8	PHY.302	10.00
rvellacottkf	PHY.101	9.00
rvellacottkf	PHY.102	5.00
rvellacottkf	PHY.103	10.00
rvellacottkf	PHY.104	7.00
rvellacottkf	PHY.105	9.00
rvellacottkf	PHY.201	9.00
rvellacottkf	PHY.202	7.00
rvellacottkf	PHY.203	7.00
rvellacottkf	PHY.204	7.00
rvellacottkf	PHY.205	9.00
rvellacottkf	PHY.301	8.00
rvellacottkf	PHY.302	6.00
rvellacottkf	PHY.303	7.00
ptimsoni7	PHY.101	5.00
ptimsoni7	PHY.102	7.00
ptimsoni7	PHY.103	9.00
ptimsoni7	PHY.104	9.00
ptimsoni7	PHY.105	5.00
ptimsoni7	PHY.201	8.00
ptimsoni7	PHY.202	7.00
ptimsoni7	PHY.203	8.00
ptimsoni7	PHY.204	5.00
ptimsoni7	PHY.205	7.00
ptimsoni7	PHY.301	7.00
ptimsoni7	PHY.302	9.00
ptimsoni7	PHY.303	5.00
ptimsoni7	PHY.304	6.00
ptimsoni7	PHY.305	8.00
ptimsoni7	PHY.401	7.00
ptimsoni7	PHY.402	9.00
ptimsoni7	PHY.403	8.00
ptimsoni7	PHY.404	8.00
ptimsoni7	PHY.405	10.00
ptimsoni7	PHY.501	5.00
ysheridanif	PHY.101	7.00
ysheridanif	PHY.102	6.00
ysheridanif	PHY.103	6.00
ysheridanif	PHY.104	10.00
ysheridanif	PHY.105	8.00
ysheridanif	PHY.201	9.00
ysheridanif	PHY.202	7.00
ysheridanif	PHY.203	10.00
ysheridanif	PHY.204	8.00
ysheridanif	PHY.205	5.00
ysheridanif	PHY.301	9.00
dgrushinig	PHY.101	10.00
dgrushinig	PHY.102	6.00
dgrushinig	PHY.103	6.00
dgrushinig	PHY.104	10.00
dgrushinig	PHY.105	5.00
dgrushinig	PHY.201	8.00
dgrushinig	PHY.202	8.00
dgrushinig	PHY.203	5.00
dgrushinig	PHY.204	6.00
dgrushinig	PHY.205	8.00
dgrushinig	PHY.301	6.00
dgrushinig	PHY.302	8.00
dgrushinig	PHY.303	7.00
dgrushinig	PHY.304	9.00
dgrushinig	PHY.305	9.00
dgrushinig	PHY.401	10.00
dgrushinig	PHY.402	10.00
dgrushinig	PHY.403	9.00
dgrushinig	PHY.404	6.00
dgrushinig	PHY.405	5.00
dgrushinig	PHY.501	8.00
dgrushinig	PHY.502	10.00
dgrushinig	PHY.503	10.00
drikardiq	PHY.101	8.00
drikardiq	PHY.102	6.00
drikardiq	PHY.103	7.00
drikardiq	PHY.104	8.00
drikardiq	PHY.105	8.00
drikardiq	PHY.201	6.00
drikardiq	PHY.202	5.00
drikardiq	PHY.203	8.00
drikardiq	PHY.204	8.00
drikardiq	PHY.205	5.00
drikardiq	PHY.301	10.00
drikardiq	PHY.302	9.00
drikardiq	PHY.303	6.00
drikardiq	PHY.304	8.00
drikardiq	PHY.305	8.00
drikardiq	PHY.401	7.00
drikardiq	PHY.402	9.00
drikardiq	PHY.403	6.00
drikardiq	PHY.404	7.00
drikardiq	PHY.405	6.00
drikardiq	PHY.501	5.00
drikardiq	PHY.502	5.00
brubinfajniu	PHY.101	9.00
brubinfajniu	PHY.102	8.00
brubinfajniu	PHY.103	6.00
brubinfajniu	PHY.104	10.00
brubinfajniu	PHY.105	10.00
brubinfajniu	PHY.201	7.00
brubinfajniu	PHY.202	10.00
brubinfajniu	PHY.203	5.00
brubinfajniu	PHY.204	9.00
brubinfajniu	PHY.205	7.00
brubinfajniu	PHY.301	7.00
brubinfajniu	PHY.302	6.00
brubinfajniu	PHY.303	9.00
brubinfajniu	PHY.304	9.00
brubinfajniu	PHY.305	10.00
brubinfajniu	PHY.401	9.00
brubinfajniu	PHY.402	5.00
brubinfajniu	PHY.403	7.00
astreaterik	PHY.101	6.00
astreaterik	PHY.102	7.00
astreaterik	PHY.103	9.00
astreaterik	PHY.104	8.00
astreaterik	PHY.105	5.00
astreaterik	PHY.201	9.00
astreaterik	PHY.202	7.00
astreaterik	PHY.203	6.00
astreaterik	PHY.204	7.00
astreaterik	PHY.205	9.00
astreaterik	PHY.301	10.00
astreaterik	PHY.302	7.00
astreaterik	PHY.303	7.00
astreaterik	PHY.304	5.00
astreaterik	PHY.305	9.00
vbrenardim	PHY.101	9.00
vbrenardim	PHY.102	6.00
vbrenardim	PHY.103	7.00
vbrenardim	PHY.104	5.00
vbrenardim	PHY.105	9.00
vbrenardim	PHY.201	8.00
vbrenardim	PHY.202	7.00
vbrenardim	PHY.203	7.00
vbrenardim	PHY.204	7.00
vbrenardim	PHY.205	8.00
vbrenardim	PHY.301	9.00
vbrenardim	PHY.302	6.00
vbrenardim	PHY.303	6.00
vbrenardim	PHY.304	6.00
vbrenardim	PHY.305	6.00
vbrenardim	PHY.401	5.00
vbrenardim	PHY.402	8.00
cdmitrievskijb	PHY.101	7.00
cdmitrievskijb	PHY.102	9.00
cdmitrievskijb	PHY.103	8.00
cdmitrievskijb	PHY.104	6.00
cdmitrievskijb	PHY.105	8.00
cdmitrievskijb	PHY.201	9.00
cdmitrievskijb	PHY.202	8.00
cdmitrievskijb	PHY.203	9.00
cdmitrievskijb	PHY.204	5.00
cdmitrievskijb	PHY.205	5.00
cdmitrievskijb	PHY.301	9.00
cdmitrievskijb	PHY.302	7.00
asinnettjh	PHY.101	6.00
asinnettjh	PHY.102	9.00
asinnettjh	PHY.103	6.00
asinnettjh	PHY.104	10.00
asinnettjh	PHY.105	9.00
asinnettjh	PHY.201	10.00
asinnettjh	PHY.202	9.00
asinnettjh	PHY.203	8.00
asinnettjh	PHY.204	5.00
asinnettjh	PHY.205	8.00
asinnettjh	PHY.301	5.00
asinnettjh	PHY.302	6.00
asinnettjh	PHY.303	5.00
asinnettjh	PHY.304	9.00
asinnettjh	PHY.305	5.00
asinnettjh	PHY.401	10.00
asinnettjh	PHY.402	5.00
lnardrupjm	PHY.101	6.00
lnardrupjm	PHY.102	7.00
lnardrupjm	PHY.103	6.00
lnardrupjm	PHY.104	10.00
lnardrupjm	PHY.105	6.00
lnardrupjm	PHY.201	7.00
lnardrupjm	PHY.202	5.00
lnardrupjm	PHY.203	6.00
lnardrupjm	PHY.204	6.00
lnardrupjm	PHY.205	5.00
lnardrupjm	PHY.301	9.00
lnardrupjm	PHY.302	9.00
lnardrupjm	PHY.303	6.00
lnardrupjm	PHY.304	10.00
lnardrupjm	PHY.305	9.00
lnardrupjm	PHY.401	7.00
lnardrupjm	PHY.402	7.00
lnardrupjm	PHY.403	10.00
lnardrupjm	PHY.404	6.00
spointsjc	PHY.101	5.00
spointsjc	PHY.102	9.00
spointsjc	PHY.103	10.00
spointsjc	PHY.104	8.00
spointsjc	PHY.105	5.00
spointsjc	PHY.201	8.00
spointsjc	PHY.202	8.00
spointsjc	PHY.203	6.00
spointsjc	PHY.204	8.00
spointsjc	PHY.205	8.00
spointsjc	PHY.301	9.00
spointsjc	PHY.302	7.00
spointsjc	PHY.303	6.00
spointsjc	PHY.304	10.00
spointsjc	PHY.305	6.00
spointsjc	PHY.401	10.00
spointsjc	PHY.402	7.00
spointsjc	PHY.403	8.00
spointsjc	PHY.404	10.00
spointsjc	PHY.405	6.00
abootei5	PHY.101	9.00
abootei5	PHY.102	9.00
abootei5	PHY.103	9.00
abootei5	PHY.104	10.00
abootei5	PHY.105	7.00
abootei5	PHY.201	10.00
abootei5	PHY.202	10.00
hjarmainjg	PHY.101	7.00
hjarmainjg	PHY.102	7.00
hjarmainjg	PHY.103	9.00
hjarmainjg	PHY.104	8.00
hjarmainjg	PHY.105	6.00
hjarmainjg	PHY.201	9.00
hjarmainjg	PHY.202	6.00
hjarmainjg	PHY.203	5.00
hjarmainjg	PHY.204	9.00
hjarmainjg	PHY.205	9.00
hjarmainjg	PHY.301	7.00
hjarmainjg	PHY.302	8.00
hjarmainjg	PHY.303	9.00
hjarmainjg	PHY.304	10.00
hjarmainjg	PHY.305	5.00
hjarmainjg	PHY.401	5.00
hjarmainjg	PHY.402	7.00
hjarmainjg	PHY.403	6.00
hjarmainjg	PHY.404	7.00
hjarmainjg	PHY.405	10.00
hjarmainjg	PHY.501	9.00
hjarmainjg	PHY.502	10.00
hjarmainjg	PHY.503	8.00
lalwenjy	PHY.101	8.00
lalwenjy	PHY.102	8.00
lalwenjy	PHY.103	9.00
lalwenjy	PHY.104	8.00
lalwenjy	PHY.105	9.00
lalwenjy	PHY.201	9.00
lalwenjy	PHY.202	6.00
lalwenjy	PHY.203	6.00
lalwenjy	PHY.204	7.00
lalwenjy	PHY.205	8.00
lalwenjy	PHY.301	10.00
lalwenjy	PHY.302	5.00
lalwenjy	PHY.303	9.00
lalwenjy	PHY.304	5.00
lalwenjy	PHY.305	5.00
ilinderjz	PHY.101	10.00
ilinderjz	PHY.102	10.00
ilinderjz	PHY.103	6.00
ilinderjz	PHY.104	7.00
ilinderjz	PHY.105	7.00
ilinderjz	PHY.201	7.00
ilinderjz	PHY.202	6.00
ilinderjz	PHY.203	7.00
ilinderjz	PHY.204	10.00
ilinderjz	PHY.205	10.00
ilinderjz	PHY.301	9.00
ilinderjz	PHY.302	5.00
ilinderjz	PHY.303	6.00
ilinderjz	PHY.304	10.00
ilinderjz	PHY.305	7.00
ilinderjz	PHY.401	7.00
ilinderjz	PHY.402	5.00
ilinderjz	PHY.403	8.00
ilinderjz	PHY.404	9.00
ksillwoodn0	PHY.101	7.00
ksillwoodn0	PHY.102	8.00
ksillwoodn0	PHY.103	5.00
ksillwoodn0	PHY.104	7.00
ksillwoodn0	PHY.105	6.00
ksillwoodn0	PHY.201	7.00
ksillwoodn0	PHY.202	8.00
ksillwoodn0	PHY.203	9.00
ksillwoodn0	PHY.204	10.00
ksillwoodn0	PHY.205	5.00
ksillwoodn0	PHY.301	7.00
ksillwoodn0	PHY.302	9.00
ksillwoodn0	PHY.303	10.00
ksillwoodn0	PHY.304	6.00
ksillwoodn0	PHY.305	9.00
ksillwoodn0	PHY.401	9.00
ksillwoodn0	PHY.402	8.00
ksillwoodn0	PHY.403	10.00
ndysartkm	PHY.101	6.00
ndysartkm	PHY.102	5.00
ndysartkm	PHY.103	5.00
ndysartkm	PHY.104	6.00
ndysartkm	PHY.105	6.00
ndysartkm	PHY.201	9.00
ndysartkm	PHY.202	6.00
lhargieko	PHY.101	8.00
lhargieko	PHY.102	10.00
lhargieko	PHY.103	5.00
lhargieko	PHY.104	6.00
lhargieko	PHY.105	6.00
lhargieko	PHY.201	10.00
lhargieko	PHY.202	10.00
lhargieko	PHY.203	6.00
lhargieko	PHY.204	7.00
lhargieko	PHY.205	5.00
lhargieko	PHY.301	8.00
lhargieko	PHY.302	8.00
lhargieko	PHY.303	10.00
lhargieko	PHY.304	6.00
lhargieko	PHY.305	8.00
lhargieko	PHY.401	8.00
lhargieko	PHY.402	8.00
lhargieko	PHY.403	10.00
efretwellkr	PHY.101	5.00
efretwellkr	PHY.102	8.00
efretwellkr	PHY.103	10.00
efretwellkr	PHY.104	9.00
efretwellkr	PHY.105	7.00
efretwellkr	PHY.201	10.00
efretwellkr	PHY.202	8.00
efretwellkr	PHY.203	9.00
efretwellkr	PHY.204	10.00
efretwellkr	PHY.205	7.00
efretwellkr	PHY.301	6.00
efretwellkr	PHY.302	10.00
efretwellkr	PHY.303	7.00
efretwellkr	PHY.304	5.00
efretwellkr	PHY.305	10.00
efretwellkr	PHY.401	9.00
efretwellkr	PHY.402	6.00
efretwellkr	PHY.403	8.00
efretwellkr	PHY.404	8.00
efretwellkr	PHY.405	8.00
fedsalllh	PHY.101	10.00
fedsalllh	PHY.102	7.00
fedsalllh	PHY.103	9.00
fedsalllh	PHY.104	7.00
fedsalllh	PHY.105	5.00
fedsalllh	PHY.201	10.00
fedsalllh	PHY.202	6.00
fedsalllh	PHY.203	6.00
fedsalllh	PHY.204	9.00
fedsalllh	PHY.205	9.00
fedsalllh	PHY.301	6.00
fedsalllh	PHY.302	7.00
fedsalllh	PHY.303	6.00
fedsalllh	PHY.304	6.00
fedsalllh	PHY.305	9.00
fedsalllh	PHY.401	6.00
hphilsonkv	PHY.101	7.00
hphilsonkv	PHY.102	8.00
hphilsonkv	PHY.103	5.00
hphilsonkv	PHY.104	7.00
hphilsonkv	PHY.105	7.00
hphilsonkv	PHY.201	8.00
hphilsonkv	PHY.202	8.00
hphilsonkv	PHY.203	6.00
hphilsonkv	PHY.204	6.00
hphilsonkv	PHY.205	10.00
hphilsonkv	PHY.301	7.00
hphilsonkv	PHY.302	10.00
icadmanla	PHY.101	7.00
icadmanla	PHY.102	6.00
icadmanla	PHY.103	7.00
icadmanla	PHY.104	9.00
icadmanla	PHY.105	10.00
icadmanla	PHY.201	10.00
icadmanla	PHY.202	9.00
icadmanla	PHY.203	10.00
icadmanla	PHY.204	6.00
icadmanla	PHY.205	8.00
icadmanla	PHY.301	6.00
icadmanla	PHY.302	10.00
icadmanla	PHY.303	9.00
icadmanla	PHY.304	8.00
ddigbylk	PHY.101	8.00
ddigbylk	PHY.102	5.00
ddigbylk	PHY.103	10.00
ddigbylk	PHY.104	6.00
ddigbylk	PHY.105	9.00
ddigbylk	PHY.201	7.00
ddigbylk	PHY.202	8.00
ddigbylk	PHY.203	9.00
ddigbylk	PHY.204	5.00
ddigbylk	PHY.205	8.00
ddigbylk	PHY.301	5.00
ddigbylk	PHY.302	6.00
ddigbylk	PHY.303	10.00
wwykeme	PHY.101	7.00
wwykeme	PHY.102	5.00
wwykeme	PHY.103	7.00
wwykeme	PHY.104	5.00
wwykeme	PHY.105	10.00
wwykeme	PHY.201	10.00
wwykeme	PHY.202	9.00
wwykeme	PHY.203	8.00
wwykeme	PHY.204	7.00
wwykeme	PHY.205	5.00
wwykeme	PHY.301	8.00
wwykeme	PHY.302	10.00
wwykeme	PHY.303	9.00
wwykeme	PHY.304	5.00
wwykeme	PHY.305	10.00
wwykeme	PHY.401	8.00
wwykeme	PHY.402	5.00
wwykeme	PHY.403	8.00
cbourdells	PHY.101	6.00
cbourdells	PHY.102	9.00
cbourdells	PHY.103	10.00
cbourdells	PHY.104	10.00
cbourdells	PHY.105	7.00
cbourdells	PHY.201	8.00
cbourdells	PHY.202	6.00
cbourdells	PHY.203	7.00
cbourdells	PHY.204	6.00
cbourdells	PHY.205	7.00
cbourdells	PHY.301	9.00
cbourdells	PHY.302	9.00
cbourdells	PHY.303	5.00
cbourdells	PHY.304	7.00
cbourdells	PHY.305	9.00
cbourdells	PHY.401	10.00
cbourdells	PHY.402	9.00
cbourdells	PHY.403	5.00
izaczekm4	PHY.101	8.00
izaczekm4	PHY.102	6.00
izaczekm4	PHY.103	9.00
izaczekm4	PHY.104	7.00
izaczekm4	PHY.105	7.00
izaczekm4	PHY.201	10.00
izaczekm4	PHY.202	5.00
izaczekm4	PHY.203	6.00
izaczekm4	PHY.204	9.00
izaczekm4	PHY.205	5.00
izaczekm4	PHY.301	8.00
izaczekm4	PHY.302	7.00
izaczekm4	PHY.303	10.00
kohanniganml	PHY.101	8.00
kohanniganml	PHY.102	9.00
kohanniganml	PHY.103	7.00
kohanniganml	PHY.104	8.00
kohanniganml	PHY.105	5.00
kohanniganml	PHY.201	10.00
kohanniganml	PHY.202	5.00
kohanniganml	PHY.203	8.00
kohanniganml	PHY.204	6.00
kohanniganml	PHY.205	5.00
kohanniganml	PHY.301	8.00
kohanniganml	PHY.302	8.00
kohanniganml	PHY.303	8.00
kohanniganml	PHY.304	10.00
kohanniganml	PHY.305	9.00
kohanniganml	PHY.401	7.00
kohanniganml	PHY.402	7.00
kohanniganml	PHY.403	9.00
alistonemm	PHY.101	7.00
alistonemm	PHY.102	5.00
alistonemm	PHY.103	8.00
alistonemm	PHY.104	7.00
alistonemm	PHY.105	6.00
alistonemm	PHY.201	10.00
alistonemm	PHY.202	5.00
alistonemm	PHY.203	6.00
alistonemm	PHY.204	9.00
alistonemm	PHY.205	5.00
alistonemm	PHY.301	7.00
alistonemm	PHY.302	8.00
alistonemm	PHY.303	6.00
alistonemm	PHY.304	10.00
alistonemm	PHY.305	5.00
alistonemm	PHY.401	5.00
bstlouismo	PHY.101	6.00
bstlouismo	PHY.102	5.00
bstlouismo	PHY.103	5.00
bstlouismo	PHY.104	10.00
bstlouismo	PHY.105	10.00
bstlouismo	PHY.201	10.00
bstlouismo	PHY.202	9.00
bstlouismo	PHY.203	5.00
bstlouismo	PHY.204	6.00
bstlouismo	PHY.205	8.00
bstlouismo	PHY.301	10.00
bstlouismo	PHY.302	5.00
bstlouismo	PHY.303	5.00
bstlouismo	PHY.304	9.00
bstlouismo	PHY.305	7.00
lpregalp3	PHY.101	10.00
lpregalp3	PHY.102	7.00
lpregalp3	PHY.103	9.00
lpregalp3	PHY.104	10.00
lpregalp3	PHY.105	8.00
lpregalp3	PHY.201	7.00
lpregalp3	PHY.202	8.00
lpregalp3	PHY.203	10.00
lpregalp3	PHY.204	9.00
lpregalp3	PHY.205	6.00
lpregalp3	PHY.301	7.00
lpregalp3	PHY.302	6.00
lpregalp3	PHY.303	9.00
lpregalp3	PHY.304	5.00
lpregalp3	PHY.305	7.00
lpregalp3	PHY.401	10.00
lpregalp3	PHY.402	5.00
lpregalp3	PHY.403	10.00
lpregalp3	PHY.404	10.00
lpregalp3	PHY.405	6.00
lpregalp3	PHY.501	10.00
lpregalp3	PHY.502	10.00
lpregalp3	PHY.503	5.00
ddadswellos	PHY.101	8.00
ddadswellos	PHY.102	8.00
ddadswellos	PHY.103	9.00
ddadswellos	PHY.104	10.00
ddadswellos	PHY.105	7.00
ddadswellos	PHY.201	10.00
ddadswellos	PHY.202	10.00
ddadswellos	PHY.203	8.00
ddadswellos	PHY.204	6.00
ddadswellos	PHY.205	5.00
sbalshenp1	PHY.101	6.00
sbalshenp1	PHY.102	10.00
sbalshenp1	PHY.103	6.00
sbalshenp1	PHY.104	8.00
sbalshenp1	PHY.105	10.00
sbalshenp1	PHY.201	9.00
sbalshenp1	PHY.202	9.00
sbalshenp1	PHY.203	5.00
sbalshenp1	PHY.204	5.00
sbalshenp1	PHY.205	8.00
sbalshenp1	PHY.301	6.00
sbalshenp1	PHY.302	5.00
sbalshenp1	PHY.303	6.00
sbalshenp1	PHY.304	6.00
sbalshenp1	PHY.305	6.00
sbalshenp1	PHY.401	10.00
sbalshenp1	PHY.402	7.00
ascibseync	PHY.101	7.00
ascibseync	PHY.102	7.00
ascibseync	PHY.103	5.00
ascibseync	PHY.104	10.00
ascibseync	PHY.105	10.00
ascibseync	PHY.201	9.00
ascibseync	PHY.202	6.00
ascibseync	PHY.203	8.00
pmelvillenh	PHY.101	7.00
pmelvillenh	PHY.102	10.00
pmelvillenh	PHY.103	10.00
pmelvillenh	PHY.104	9.00
pmelvillenh	PHY.105	5.00
pmelvillenh	PHY.201	7.00
pmelvillenh	PHY.202	10.00
pmelvillenh	PHY.203	5.00
pmelvillenh	PHY.204	5.00
ntomowicznm	PHY.101	10.00
ntomowicznm	PHY.102	7.00
ntomowicznm	PHY.103	10.00
ntomowicznm	PHY.104	7.00
ntomowicznm	PHY.105	7.00
ntomowicznm	PHY.201	10.00
ntomowicznm	PHY.202	6.00
ntomowicznm	PHY.203	7.00
ntomowicznm	PHY.204	6.00
ntomowicznm	PHY.205	8.00
ntomowicznm	PHY.301	10.00
ntomowicznm	PHY.302	6.00
ntomowicznm	PHY.303	6.00
ntomowicznm	PHY.304	8.00
ntomowicznm	PHY.305	10.00
ddayesnt	PHY.101	10.00
ddayesnt	PHY.102	6.00
ddayesnt	PHY.103	9.00
ddayesnt	PHY.104	8.00
ddayesnt	PHY.105	6.00
ddayesnt	PHY.201	6.00
ddayesnt	PHY.202	5.00
ddayesnt	PHY.203	10.00
ddayesnt	PHY.204	8.00
aeverlynz	PHY.101	8.00
aeverlynz	PHY.102	7.00
aeverlynz	PHY.103	7.00
aeverlynz	PHY.104	9.00
aeverlynz	PHY.105	8.00
aeverlynz	PHY.201	5.00
aeverlynz	PHY.202	6.00
aeverlynz	PHY.203	6.00
aeverlynz	PHY.204	7.00
aeverlynz	PHY.205	6.00
aeverlynz	PHY.301	9.00
aeverlynz	PHY.302	10.00
aeverlynz	PHY.303	8.00
aeverlynz	PHY.304	5.00
aeverlynz	PHY.305	6.00
adeeproseo5	PHY.101	9.00
adeeproseo5	PHY.102	10.00
adeeproseo5	PHY.103	9.00
adeeproseo5	PHY.104	10.00
adeeproseo5	PHY.105	8.00
adeeproseo5	PHY.201	9.00
adeeproseo5	PHY.202	7.00
adeeproseo5	PHY.203	9.00
adeeproseo5	PHY.204	6.00
adeeproseo5	PHY.205	5.00
adeeproseo5	PHY.301	8.00
adeeproseo5	PHY.302	10.00
adeeproseo5	PHY.303	7.00
adeeproseo5	PHY.304	10.00
adeeproseo5	PHY.305	8.00
adeeproseo5	PHY.401	6.00
adeeproseo5	PHY.402	5.00
adeeproseo5	PHY.403	5.00
adeeproseo5	PHY.404	5.00
adeeproseo5	PHY.405	8.00
adeeproseo5	PHY.501	5.00
adeeproseo5	PHY.502	8.00
adeeproseo5	PHY.503	10.00
adeeproseo5	PHY.504	7.00
rmcgibbonom	PHY.101	5.00
rmcgibbonom	PHY.102	9.00
rmcgibbonom	PHY.103	9.00
rmcgibbonom	PHY.104	6.00
rmcgibbonom	PHY.105	8.00
rmcgibbonom	PHY.201	5.00
rmcgibbonom	PHY.202	5.00
rmcgibbonom	PHY.203	8.00
dkobesoa	PHY.101	5.00
dkobesoa	PHY.102	10.00
dkobesoa	PHY.103	6.00
dkobesoa	PHY.104	9.00
dkobesoa	PHY.105	6.00
dkobesoa	PHY.201	9.00
dkobesoa	PHY.202	8.00
dkobesoa	PHY.203	9.00
dkobesoa	PHY.204	10.00
dkobesoa	PHY.205	5.00
dkobesoa	PHY.301	7.00
dkobesoa	PHY.302	9.00
dkobesoa	PHY.303	6.00
dkobesoa	PHY.304	5.00
dkobesoa	PHY.305	6.00
dkobesoa	PHY.401	10.00
dkobesoa	PHY.402	9.00
dkobesoa	PHY.403	6.00
dkobesoa	PHY.404	6.00
dkobesoa	PHY.405	6.00
dkobesoa	PHY.501	8.00
gdagonn3	PHY.101	10.00
gdagonn3	PHY.102	8.00
gdagonn3	PHY.103	9.00
gdagonn3	PHY.104	5.00
gdagonn3	PHY.105	9.00
gdagonn3	PHY.201	9.00
gdagonn3	PHY.202	9.00
gdagonn3	PHY.203	7.00
gdagonn3	PHY.204	10.00
gdagonn3	PHY.205	10.00
gdagonn3	PHY.301	10.00
gdagonn3	PHY.302	6.00
gdagonn3	PHY.303	7.00
gdagonn3	PHY.304	6.00
gdagonn3	PHY.305	9.00
gdagonn3	PHY.401	10.00
gdagonn3	PHY.402	9.00
gdagonn3	PHY.403	6.00
gdagonn3	PHY.404	9.00
gdagonn3	PHY.405	10.00
gdagonn3	PHY.501	5.00
gdagonn3	PHY.502	10.00
lpulleypf	PHY.101	9.00
lpulleypf	PHY.102	9.00
lpulleypf	PHY.103	5.00
lpulleypf	PHY.104	7.00
lpulleypf	PHY.105	7.00
lpulleypf	PHY.201	7.00
lpulleypf	PHY.202	9.00
lpulleypf	PHY.203	10.00
lpulleypf	PHY.204	5.00
lpulleypf	PHY.205	6.00
lpulleypf	PHY.301	6.00
lpulleypf	PHY.302	6.00
lpulleypf	PHY.303	9.00
lpulleypf	PHY.304	7.00
lpulleypf	PHY.305	7.00
lpulleypf	PHY.401	9.00
cheatlypm	PHY.101	6.00
cheatlypm	PHY.102	9.00
cheatlypm	PHY.103	5.00
cheatlypm	PHY.104	7.00
cheatlypm	PHY.105	8.00
cheatlypm	PHY.201	10.00
cheatlypm	PHY.202	7.00
cheatlypm	PHY.203	8.00
cheatlypm	PHY.204	6.00
cheatlypm	PHY.205	9.00
cheatlypm	PHY.301	9.00
apadghamq3	PHY.101	8.00
apadghamq3	PHY.102	5.00
apadghamq3	PHY.103	10.00
apadghamq3	PHY.104	9.00
apadghamq3	PHY.105	5.00
apadghamq3	PHY.201	8.00
apadghamq3	PHY.202	10.00
apadghamq3	PHY.203	7.00
apadghamq3	PHY.204	9.00
apadghamq3	PHY.205	10.00
apadghamq3	PHY.301	9.00
apadghamq3	PHY.302	6.00
apadghamq3	PHY.303	6.00
apadghamq3	PHY.304	6.00
apadghamq3	PHY.305	8.00
fbazogepw	PHY.101	6.00
fbazogepw	PHY.102	8.00
fbazogepw	PHY.103	9.00
fbazogepw	PHY.104	5.00
fbazogepw	PHY.105	8.00
fbazogepw	PHY.201	9.00
fbazogepw	PHY.202	8.00
fbazogepw	PHY.203	8.00
fbazogepw	PHY.204	9.00
fbazogepw	PHY.205	6.00
fbazogepw	PHY.301	8.00
fbazogepw	PHY.302	9.00
fbazogepw	PHY.303	5.00
fbazogepw	PHY.304	6.00
fbazogepw	PHY.305	8.00
fbazogepw	PHY.401	7.00
fbazogepw	PHY.402	7.00
fbazogepw	PHY.403	5.00
fbazogepw	PHY.404	8.00
fbazogepw	PHY.405	5.00
cdibbepy	PHY.101	9.00
cdibbepy	PHY.102	7.00
cdibbepy	PHY.103	7.00
cdibbepy	PHY.104	6.00
cdibbepy	PHY.105	10.00
cdibbepy	PHY.201	5.00
cdibbepy	PHY.202	9.00
cdibbepy	PHY.203	10.00
cdibbepy	PHY.204	8.00
cdibbepy	PHY.205	8.00
cdibbepy	PHY.301	8.00
cdibbepy	PHY.302	9.00
cdibbepy	PHY.303	8.00
cdibbepy	PHY.304	10.00
cdibbepy	PHY.305	6.00
mstoeckq8	PHY.101	5.00
mstoeckq8	PHY.102	10.00
mstoeckq8	PHY.103	7.00
mstoeckq8	PHY.104	9.00
mstoeckq8	PHY.105	9.00
mstoeckq8	PHY.201	5.00
mstoeckq8	PHY.202	9.00
mstoeckq8	PHY.203	9.00
mstoeckq8	PHY.204	5.00
mstoeckq8	PHY.205	8.00
mstoeckq8	PHY.301	5.00
mstoeckq8	PHY.302	9.00
mstoeckq8	PHY.303	5.00
mstoeckq8	PHY.304	7.00
mstoeckq8	PHY.305	10.00
mstoeckq8	PHY.401	9.00
salldreqg	PHY.101	10.00
salldreqg	PHY.102	8.00
salldreqg	PHY.103	7.00
salldreqg	PHY.104	10.00
salldreqg	PHY.105	10.00
salldreqg	PHY.201	6.00
salldreqg	PHY.202	5.00
salldreqg	PHY.203	9.00
salldreqg	PHY.204	7.00
edorrqi	PHY.101	6.00
edorrqi	PHY.102	6.00
edorrqi	PHY.103	6.00
edorrqi	PHY.104	5.00
edorrqi	PHY.105	9.00
edorrqi	PHY.201	7.00
edorrqi	PHY.202	9.00
edorrqi	PHY.203	8.00
edorrqi	PHY.204	9.00
edorrqi	PHY.205	8.00
edorrqi	PHY.301	7.00
edorrqi	PHY.302	8.00
edorrqi	PHY.303	9.00
edorrqi	PHY.304	9.00
fberettaqt	PHY.101	10.00
fberettaqt	PHY.102	9.00
fberettaqt	PHY.103	9.00
fberettaqt	PHY.104	7.00
fberettaqt	PHY.105	9.00
fberettaqt	PHY.201	6.00
fberettaqt	PHY.202	6.00
fberettaqt	PHY.203	10.00
fberettaqt	PHY.204	8.00
fberettaqt	PHY.205	7.00
fberettaqt	PHY.301	7.00
fberettaqt	PHY.302	8.00
fberettaqt	PHY.303	10.00
fberettaqt	PHY.304	7.00
fberettaqt	PHY.305	7.00
ncubbinr0	PHY.101	8.00
ncubbinr0	PHY.102	5.00
ncubbinr0	PHY.103	5.00
ncubbinr0	PHY.104	5.00
ncubbinr0	PHY.105	9.00
ncubbinr0	PHY.201	9.00
ncubbinr0	PHY.202	5.00
ncubbinr0	PHY.203	6.00
ncubbinr0	PHY.204	6.00
ncubbinr0	PHY.205	6.00
ncubbinr0	PHY.301	9.00
ncubbinr0	PHY.302	9.00
ncubbinr0	PHY.303	9.00
ncubbinr0	PHY.304	10.00
ncubbinr0	PHY.305	8.00
ncubbinr0	PHY.401	9.00
ncubbinr0	PHY.402	7.00
ncubbinr0	PHY.403	10.00
ncubbinr0	PHY.404	5.00
ncubbinr0	PHY.405	8.00
ncubbinr0	PHY.501	6.00
ncubbinr0	PHY.502	10.00
ncubbinr0	PHY.503	7.00
jdimentrl	PHY.101	9.00
jdimentrl	PHY.102	9.00
jdimentrl	PHY.103	9.00
jdimentrl	PHY.104	6.00
jdimentrl	PHY.105	7.00
jdimentrl	PHY.201	7.00
jdimentrl	PHY.202	8.00
jdimentrl	PHY.203	10.00
lmiddellra	PHY.101	10.00
lmiddellra	PHY.102	6.00
lmiddellra	PHY.103	6.00
lmiddellra	PHY.104	10.00
lmiddellra	PHY.105	10.00
lmiddellra	PHY.201	8.00
lmiddellra	PHY.202	8.00
lmiddellra	PHY.203	8.00
lmiddellra	PHY.204	9.00
lmiddellra	PHY.205	6.00
lmiddellra	PHY.301	8.00
lmiddellra	PHY.302	5.00
lmiddellra	PHY.303	10.00
lmiddellra	PHY.304	9.00
lmiddellra	PHY.305	5.00
lmiddellra	PHY.401	9.00
lmiddellra	PHY.402	5.00
lmiddellra	PHY.403	10.00
egarken3w	PHY.101	10.00
egarken3w	PHY.102	5.00
egarken3w	PHY.103	7.00
egarken3w	PHY.104	9.00
egarken3w	PHY.105	7.00
egarken3w	PHY.201	8.00
egarken3w	PHY.202	9.00
egarken3w	PHY.203	5.00
mciobutaro6	PHY.101	9.00
mciobutaro6	PHY.102	7.00
mciobutaro6	PHY.103	7.00
mciobutaro6	PHY.104	6.00
mciobutaro6	PHY.105	5.00
mciobutaro6	PHY.201	7.00
mciobutaro6	PHY.202	9.00
mciobutaro6	PHY.203	8.00
mciobutaro6	PHY.204	7.00
mciobutaro6	PHY.205	7.00
mciobutaro6	PHY.301	6.00
mciobutaro6	PHY.302	10.00
mciobutaro6	PHY.303	8.00
mciobutaro6	PHY.304	7.00
mciobutaro6	PHY.305	8.00
mciobutaro6	PHY.401	5.00
mciobutaro6	PHY.402	9.00
mciobutaro6	PHY.403	9.00
vgallafant12	PHY.101	7.00
vgallafant12	PHY.102	10.00
vgallafant12	PHY.103	7.00
vgallafant12	PHY.104	10.00
vgallafant12	PHY.105	7.00
vgallafant12	PHY.201	6.00
vgallafant12	PHY.202	8.00
vgallafant12	PHY.203	9.00
vgallafant12	PHY.204	5.00
vgallafant12	PHY.205	9.00
vgallafant12	PHY.301	7.00
vgallafant12	PHY.302	5.00
vgallafant12	PHY.303	7.00
vgallafant12	PHY.304	6.00
vgallafant12	PHY.305	5.00
vgallafant12	PHY.401	6.00
vgallafant12	PHY.402	7.00
vgallafant12	PHY.403	10.00
vgallafant12	PHY.404	7.00
vgallafant12	PHY.405	10.00
vgallafant12	PHY.501	6.00
mdunnb8	PHY.101	7.00
mdunnb8	PHY.102	9.00
mdunnb8	PHY.103	9.00
mdunnb8	PHY.104	5.00
mdunnb8	PHY.105	5.00
mdunnb8	PHY.201	6.00
mdunnb8	PHY.202	9.00
mdunnb8	PHY.203	5.00
lmahaffeyk	PHY.101	9.00
lmahaffeyk	PHY.102	6.00
lmahaffeyk	PHY.103	5.00
lmahaffeyk	PHY.104	7.00
lmahaffeyk	PHY.105	6.00
lmahaffeyk	PHY.201	6.00
lmahaffeyk	PHY.202	5.00
lmahaffeyk	PHY.203	10.00
lmahaffeyk	PHY.204	6.00
lmahaffeyk	PHY.205	6.00
lmahaffeyk	PHY.301	8.00
lmahaffeyk	PHY.302	6.00
lmahaffeyk	PHY.303	7.00
lmahaffeyk	PHY.304	8.00
lmahaffeyk	PHY.305	9.00
lmahaffeyk	PHY.401	5.00
cethelstonb	PHY.101	8.00
cethelstonb	PHY.102	10.00
cethelstonb	PHY.103	6.00
cethelstonb	PHY.104	9.00
cethelstonb	PHY.105	8.00
cethelstonb	PHY.201	10.00
cethelstonb	PHY.202	10.00
cethelstonb	PHY.203	9.00
cethelstonb	PHY.204	5.00
cethelstonb	PHY.205	9.00
cethelstonb	PHY.301	5.00
cethelstonb	PHY.302	9.00
cethelstonb	PHY.303	7.00
cethelstonb	PHY.304	7.00
cethelstonb	PHY.305	8.00
cethelstonb	PHY.401	10.00
cethelstonb	PHY.402	5.00
cethelstonb	PHY.403	9.00
cethelstonb	PHY.404	8.00
cethelstonb	PHY.405	8.00
csheardc	PHY.101	9.00
csheardc	PHY.102	10.00
csheardc	PHY.103	7.00
csheardc	PHY.104	7.00
csheardc	PHY.105	5.00
csheardc	PHY.201	7.00
csheardc	PHY.202	10.00
csheardc	PHY.203	7.00
csheardc	PHY.204	6.00
csheardc	PHY.205	7.00
csheardc	PHY.301	6.00
csheardc	PHY.302	10.00
csheardc	PHY.303	5.00
csheardc	PHY.304	5.00
csheardc	PHY.305	10.00
csheardc	PHY.401	8.00
csheardc	PHY.402	8.00
csheardc	PHY.403	6.00
csheardc	PHY.404	6.00
csheardc	PHY.405	9.00
csheardc	PHY.501	7.00
bpidduckg	PHY.101	5.00
bpidduckg	PHY.102	7.00
bpidduckg	PHY.103	6.00
bpidduckg	PHY.104	10.00
bpidduckg	PHY.105	10.00
bpidduckg	PHY.201	10.00
bpidduckg	PHY.202	9.00
bpidduckg	PHY.203	8.00
bpidduckg	PHY.204	7.00
bpidduckg	PHY.205	5.00
bpidduckg	PHY.301	10.00
bpidduckg	PHY.302	5.00
bpidduckg	PHY.303	6.00
bpidduckg	PHY.304	7.00
bpidduckg	PHY.305	6.00
bpidduckg	PHY.401	5.00
bpidduckg	PHY.402	7.00
gbleythingm	PHY.101	10.00
gbleythingm	PHY.102	5.00
gbleythingm	PHY.103	6.00
gbleythingm	PHY.104	5.00
gbleythingm	PHY.105	6.00
gbleythingm	PHY.201	7.00
gbleythingm	PHY.202	7.00
gbleythingm	PHY.203	10.00
gbleythingm	PHY.204	9.00
gbleythingm	PHY.205	7.00
gbleythingm	PHY.301	8.00
gbleythingm	PHY.302	7.00
gbleythingm	PHY.303	7.00
gbleythingm	PHY.304	8.00
gbleythingm	PHY.305	9.00
gbleythingm	PHY.401	7.00
gbleythingm	PHY.402	6.00
gbleythingm	PHY.403	6.00
gbleythingm	PHY.404	9.00
eaxcellu	PHY.101	8.00
eaxcellu	PHY.102	7.00
eaxcellu	PHY.103	8.00
eaxcellu	PHY.104	10.00
eaxcellu	PHY.105	7.00
eaxcellu	PHY.201	9.00
eaxcellu	PHY.202	8.00
eaxcellu	PHY.203	8.00
eaxcellu	PHY.204	9.00
eaxcellu	PHY.205	10.00
ccastelijnz	PHY.101	6.00
ccastelijnz	PHY.102	9.00
ccastelijnz	PHY.103	7.00
ccastelijnz	PHY.104	7.00
ccastelijnz	PHY.105	6.00
ccastelijnz	PHY.201	10.00
ccastelijnz	PHY.202	5.00
ccastelijnz	PHY.203	6.00
ccastelijnz	PHY.204	5.00
ccastelijnz	PHY.205	6.00
ccastelijnz	PHY.301	9.00
ccastelijnz	PHY.302	5.00
ccastelijnz	PHY.303	5.00
lbodycombe8d	PHY.101	7.00
lbodycombe8d	PHY.102	5.00
lbodycombe8d	PHY.103	6.00
lbodycombe8d	PHY.104	7.00
lbodycombe8d	PHY.105	8.00
lbodycombe8d	PHY.201	10.00
lbodycombe8d	PHY.202	5.00
lbodycombe8d	PHY.203	9.00
lbodycombe8d	PHY.204	10.00
lbodycombe8d	PHY.205	7.00
lbodycombe8d	PHY.301	7.00
lbodycombe8d	PHY.302	6.00
mlindstromc3	PHY.101	8.00
mlindstromc3	PHY.102	9.00
mlindstromc3	PHY.103	10.00
mlindstromc3	PHY.104	5.00
mlindstromc3	PHY.105	8.00
mlindstromc3	PHY.201	9.00
mlindstromc3	PHY.202	9.00
mlindstromc3	PHY.203	7.00
mlindstromc3	PHY.204	7.00
mlindstromc3	PHY.205	6.00
mlindstromc3	PHY.301	6.00
mlindstromc3	PHY.302	9.00
mlindstromc3	PHY.303	10.00
mlindstromc3	PHY.304	7.00
mlindstromc3	PHY.305	9.00
mlindstromc3	PHY.401	9.00
mlindstromc3	PHY.402	8.00
mlindstromc3	PHY.403	7.00
mlindstromc3	PHY.404	6.00
mlindstromc3	PHY.405	9.00
mlindstromc3	PHY.501	6.00
mlindstromc3	PHY.502	9.00
mlindstromc3	PHY.503	10.00
mlindstromc3	PHY.504	6.00
isurfleetdo	PHY.101	9.00
isurfleetdo	PHY.102	7.00
isurfleetdo	PHY.103	5.00
isurfleetdo	PHY.104	9.00
isurfleetdo	PHY.105	10.00
isurfleetdo	PHY.201	5.00
isurfleetdo	PHY.202	6.00
isurfleetdo	PHY.203	5.00
isurfleetdo	PHY.204	7.00
isurfleetdo	PHY.205	6.00
isurfleetdo	PHY.301	8.00
isurfleetdo	PHY.302	10.00
isurfleetdo	PHY.303	9.00
isurfleetdo	PHY.304	8.00
isurfleetdo	PHY.305	7.00
isurfleetdo	PHY.401	6.00
isurfleetdo	PHY.402	9.00
isurfleetdo	PHY.403	7.00
isurfleetdo	PHY.404	8.00
isurfleetdo	PHY.405	8.00
isurfleetdo	PHY.501	8.00
isurfleetdo	PHY.502	5.00
cwhitley14	PHY.101	9.00
cwhitley14	PHY.102	6.00
cwhitley14	PHY.103	8.00
cwhitley14	PHY.104	5.00
cwhitley14	PHY.105	10.00
cwhitley14	PHY.201	6.00
cwhitley14	PHY.202	5.00
cwhitley14	PHY.203	8.00
cwhitley14	PHY.204	9.00
cwhitley14	PHY.205	7.00
btidcombn	PHY.101	7.00
btidcombn	PHY.102	5.00
btidcombn	PHY.103	10.00
btidcombn	PHY.104	10.00
btidcombn	PHY.105	10.00
btidcombn	PHY.201	5.00
btidcombn	PHY.202	6.00
btidcombn	PHY.203	8.00
btidcombn	PHY.204	6.00
btidcombn	PHY.205	9.00
btidcombn	PHY.301	8.00
btidcombn	PHY.302	10.00
btidcombn	PHY.303	8.00
btidcombn	PHY.304	10.00
btidcombn	PHY.305	9.00
btidcombn	PHY.401	8.00
btidcombn	PHY.402	5.00
btidcombn	PHY.403	9.00
btidcombn	PHY.404	9.00
jabellamv	PHY.101	6.00
jabellamv	PHY.102	9.00
jabellamv	PHY.103	9.00
jabellamv	PHY.104	8.00
jabellamv	PHY.105	5.00
jabellamv	PHY.201	8.00
jabellamv	PHY.202	5.00
jabellamv	PHY.203	6.00
jabellamv	PHY.204	6.00
jabellamv	PHY.205	9.00
jabellamv	PHY.301	10.00
jabellamv	PHY.302	6.00
jabellamv	PHY.303	6.00
jabellamv	PHY.304	10.00
jabellamv	PHY.305	10.00
jabellamv	PHY.401	8.00
jabellamv	PHY.402	5.00
jabellamv	PHY.403	5.00
jabellamv	PHY.404	7.00
jabellamv	PHY.405	8.00
sgheorghiepz	PHY.101	6.00
sgheorghiepz	PHY.102	5.00
sgheorghiepz	PHY.103	6.00
sgheorghiepz	PHY.104	10.00
sgheorghiepz	PHY.105	8.00
sgheorghiepz	PHY.201	6.00
sgheorghiepz	PHY.202	6.00
ewintonmb	PHY.101	10.00
ewintonmb	PHY.102	7.00
ewintonmb	PHY.103	7.00
ewintonmb	PHY.104	7.00
ewintonmb	PHY.105	7.00
ewintonmb	PHY.201	9.00
ewintonmb	PHY.202	6.00
ewintonmb	PHY.203	5.00
ewintonmb	PHY.204	10.00
ewintonmb	PHY.205	10.00
ewintonmb	PHY.301	9.00
ewintonmb	PHY.302	6.00
ewintonmb	PHY.303	6.00
ewintonmb	PHY.304	10.00
ewintonmb	PHY.305	6.00
ewintonmb	PHY.401	8.00
ewintonmb	PHY.402	6.00
ewintonmb	PHY.403	10.00
ewintonmb	PHY.404	9.00
ewintonmb	PHY.405	9.00
ewintonmb	PHY.501	10.00
ginsleyk0	PHY.101	8.00
ginsleyk0	PHY.102	8.00
ginsleyk0	PHY.103	9.00
ginsleyk0	PHY.104	6.00
ginsleyk0	PHY.105	7.00
ginsleyk0	PHY.201	8.00
ginsleyk0	PHY.202	5.00
ginsleyk0	PHY.203	10.00
ginsleyk0	PHY.204	5.00
ginsleyk0	PHY.205	7.00
ginsleyk0	PHY.301	7.00
ginsleyk0	PHY.302	7.00
ginsleyk0	PHY.303	9.00
ginsleyk0	PHY.304	10.00
ginsleyk0	PHY.305	6.00
jgoering6h	CHEN.101	7.00
jgoering6h	CHEN.102	10.00
jgoering6h	CHEN.103	8.00
jgoering6h	CHEN.201	5.00
jgoering6h	CHEN.202	5.00
jgoering6h	CHEN.203	6.00
jgoering6h	CHEN.301	5.00
rmaccorleych	CHEN.101	5.00
rmaccorleych	CHEN.102	6.00
rmaccorleych	CHEN.103	6.00
rmaccorleych	CHEN.201	10.00
rmaccorleych	CHEN.202	8.00
rmaccorleych	CHEN.203	9.00
rmaccorleych	CHEN.301	6.00
rmaccorleych	CHEN.302	7.00
rmaccorleych	CHEN.303	9.00
rmaccorleych	CHEN.401	5.00
rmaccorleych	CHEN.402	9.00
smatveyevir	CHEN.101	10.00
smatveyevir	CHEN.102	5.00
smatveyevir	CHEN.103	8.00
smatveyevir	CHEN.201	7.00
smatveyevir	CHEN.202	5.00
smatveyevir	CHEN.203	10.00
smatveyevir	CHEN.301	7.00
smatveyevir	CHEN.302	8.00
smatveyevir	CHEN.303	8.00
smatveyevir	CHEN.401	10.00
smatveyevir	CHEN.402	8.00
smatveyevir	CHEN.403	9.00
smatveyevir	CHEN.501	8.00
smatveyevir	CHEN.502	7.00
smatveyevir	CHEN.503	9.00
smatveyevir	CHEN.601	7.00
smatveyevir	CHEN.602	10.00
smatveyevir	CHEN.603	8.00
smatveyevir	CHEN.701	8.00
abumfreymw	CHEN.101	5.00
abumfreymw	CHEN.102	5.00
abumfreymw	CHEN.103	8.00
abumfreymw	CHEN.201	7.00
abumfreymw	CHEN.202	10.00
abumfreymw	CHEN.203	6.00
abumfreymw	CHEN.301	5.00
abumfreymw	CHEN.302	5.00
abumfreymw	CHEN.303	6.00
abumfreymw	CHEN.401	5.00
abumfreymw	CHEN.402	6.00
bpretormr	CHEN.101	7.00
bpretormr	CHEN.102	8.00
bpretormr	CHEN.103	8.00
bpretormr	CHEN.201	5.00
bpretormr	CHEN.202	6.00
bpretormr	CHEN.203	6.00
bpretormr	CHEN.301	9.00
bpretormr	CHEN.302	5.00
bmarkingba	CHEN.101	7.00
bmarkingba	CHEN.102	9.00
bmarkingba	CHEN.103	9.00
bmarkingba	CHEN.201	9.00
bmarkingba	CHEN.202	6.00
bmarkingba	CHEN.203	5.00
bmarkingba	CHEN.301	7.00
bmarkingba	CHEN.302	8.00
bmarkingba	CHEN.303	8.00
bmarkingba	CHEN.401	9.00
bmarkingba	CHEN.402	6.00
bmarkingba	CHEN.403	9.00
bmarkingba	CHEN.501	7.00
bmarkingba	CHEN.502	9.00
bmarkingba	CHEN.503	10.00
bmarkingba	CHEN.601	8.00
bmarkingba	CHEN.602	5.00
bmarkingba	CHEN.603	5.00
bmarkingba	CHEN.701	10.00
bmarkingba	CHEN.702	8.00
bmarkingba	CHEN.703	7.00
bgrimoldbyo1	CHEN.101	9.00
bgrimoldbyo1	CHEN.102	8.00
bgrimoldbyo1	CHEN.103	6.00
bgrimoldbyo1	CHEN.201	8.00
bgrimoldbyo1	CHEN.202	7.00
bgrimoldbyo1	CHEN.203	7.00
bgrimoldbyo1	CHEN.301	6.00
bgrimoldbyo1	CHEN.302	5.00
bgrimoldbyo1	CHEN.303	7.00
bgrimoldbyo1	CHEN.401	10.00
bgrimoldbyo1	CHEN.402	7.00
bgrimoldbyo1	CHEN.403	7.00
mantuonio6	CHEN.101	6.00
mantuonio6	CHEN.102	10.00
mantuonio6	CHEN.103	10.00
mantuonio6	CHEN.201	10.00
mantuonio6	CHEN.202	5.00
mantuonio6	CHEN.203	6.00
mantuonio6	CHEN.301	5.00
mantuonio6	CHEN.302	10.00
ahandrekob	CHEN.101	9.00
ahandrekob	CHEN.102	5.00
ahandrekob	CHEN.103	9.00
ahandrekob	CHEN.201	8.00
ahandrekob	CHEN.202	7.00
ahandrekob	CHEN.203	7.00
ahandrekob	CHEN.301	6.00
ahandrekob	CHEN.302	10.00
ahandrekob	CHEN.303	9.00
ahandrekob	CHEN.401	8.00
ahandrekob	CHEN.402	8.00
ahandrekob	CHEN.403	10.00
ahandrekob	CHEN.501	9.00
ahandrekob	CHEN.502	7.00
ahandrekob	CHEN.503	5.00
ahandrekob	CHEN.601	8.00
ahandrekob	CHEN.602	5.00
ahandrekob	CHEN.603	5.00
ahandrekob	CHEN.701	5.00
ahandrekob	CHEN.702	10.00
ahandrekob	CHEN.703	10.00
ahandrekob	CHEN.801	8.00
lcastagnetoox	CHEN.101	7.00
lcastagnetoox	CHEN.102	8.00
lcastagnetoox	CHEN.103	7.00
lcastagnetoox	CHEN.201	7.00
lcastagnetoox	CHEN.202	5.00
lcastagnetoox	CHEN.203	9.00
lcastagnetoox	CHEN.301	7.00
lcastagnetoox	CHEN.302	9.00
lcastagnetoox	CHEN.303	7.00
lcastagnetoox	CHEN.401	10.00
lcastagnetoox	CHEN.402	6.00
lcastagnetoox	CHEN.403	8.00
lcastagnetoox	CHEN.501	9.00
lcastagnetoox	CHEN.502	8.00
lcastagnetoox	CHEN.503	10.00
lcastagnetoox	CHEN.601	10.00
lcastagnetoox	CHEN.602	9.00
lcastagnetoox	CHEN.603	6.00
lcastagnetoox	CHEN.701	10.00
lcastagnetoox	CHEN.702	9.00
lcastagnetoox	CHEN.703	9.00
lcastagnetoox	CHEN.801	9.00
jpeacockepd	CHEN.101	9.00
jpeacockepd	CHEN.102	7.00
jpeacockepd	CHEN.103	5.00
jpeacockepd	CHEN.201	9.00
jpeacockepd	CHEN.202	6.00
jpeacockepd	CHEN.203	8.00
jpeacockepd	CHEN.301	6.00
rfurzeyrk	CHEN.101	9.00
rfurzeyrk	CHEN.102	10.00
rfurzeyrk	CHEN.103	7.00
rfurzeyrk	CHEN.201	7.00
rfurzeyrk	CHEN.202	10.00
rfurzeyrk	CHEN.203	7.00
rfurzeyrk	CHEN.301	6.00
rfurzeyrk	CHEN.302	8.00
rfurzeyrk	CHEN.303	7.00
rfurzeyrk	CHEN.401	8.00
rfurzeyrk	CHEN.402	9.00
rfurzeyrk	CHEN.403	10.00
rfurzeyrk	CHEN.501	6.00
rfurzeyrk	CHEN.502	5.00
rfurzeyrk	CHEN.503	5.00
rfurzeyrk	CHEN.601	8.00
rfurzeyrk	CHEN.602	5.00
rfurzeyrk	CHEN.603	5.00
bpriddisrm	CHEN.101	8.00
bpriddisrm	CHEN.102	10.00
bpriddisrm	CHEN.103	7.00
bpriddisrm	CHEN.201	8.00
bpriddisrm	CHEN.202	7.00
bpriddisrm	CHEN.203	8.00
bpriddisrm	CHEN.301	8.00
edurrancerr	CHEN.101	6.00
edurrancerr	CHEN.102	10.00
edurrancerr	CHEN.103	10.00
edurrancerr	CHEN.201	6.00
edurrancerr	CHEN.202	6.00
edurrancerr	CHEN.203	7.00
edurrancerr	CHEN.301	8.00
edurrancerr	CHEN.302	5.00
edurrancerr	CHEN.303	6.00
edurrancerr	CHEN.401	10.00
edurrancerr	CHEN.402	7.00
edurrancerr	CHEN.403	7.00
edurrancerr	CHEN.501	6.00
edurrancerr	CHEN.502	8.00
edurrancerr	CHEN.503	9.00
edurrancerr	CHEN.601	10.00
edurrancerr	CHEN.602	10.00
edurrancerr	CHEN.603	5.00
edurrancerr	CHEN.701	10.00
edurrancerr	CHEN.702	8.00
edurrancerr	CHEN.703	7.00
edurrancerr	CHEN.801	8.00
btice3e	CHEN.101	5.00
btice3e	CHEN.102	5.00
btice3e	CHEN.103	8.00
btice3e	CHEN.201	8.00
btice3e	CHEN.202	6.00
btice3e	CHEN.203	10.00
btice3e	CHEN.301	10.00
btice3e	CHEN.302	6.00
btice3e	CHEN.303	6.00
btice3e	CHEN.401	6.00
btice3e	CHEN.402	9.00
btice3e	CHEN.403	8.00
btice3e	CHEN.501	9.00
btice3e	CHEN.502	9.00
btice3e	CHEN.503	7.00
idyerr1	CHEN.101	10.00
idyerr1	CHEN.102	10.00
idyerr1	CHEN.103	8.00
idyerr1	CHEN.201	7.00
idyerr1	CHEN.202	5.00
idyerr1	CHEN.203	10.00
idyerr1	CHEN.301	9.00
browleyro	CHEN.101	10.00
browleyro	CHEN.102	7.00
browleyro	CHEN.103	7.00
browleyro	CHEN.201	6.00
browleyro	CHEN.202	5.00
browleyro	CHEN.203	8.00
browleyro	CHEN.301	8.00
browleyro	CHEN.302	9.00
browleyro	CHEN.303	5.00
browleyro	CHEN.401	8.00
browleyro	CHEN.402	10.00
browleyro	CHEN.403	5.00
browleyro	CHEN.501	8.00
browleyro	CHEN.502	6.00
browleyro	CHEN.503	8.00
browleyro	CHEN.601	5.00
bpodd3g	CHEN.101	10.00
bpodd3g	CHEN.102	7.00
bpodd3g	CHEN.103	9.00
bpodd3g	CHEN.201	6.00
bpodd3g	CHEN.202	9.00
bpodd3g	CHEN.203	7.00
bpodd3g	CHEN.301	9.00
bpodd3g	CHEN.302	9.00
bpodd3g	CHEN.303	5.00
bpodd3g	CHEN.401	8.00
bpodd3g	CHEN.402	5.00
bpodd3g	CHEN.403	7.00
bpodd3g	CHEN.501	10.00
bpodd3g	CHEN.502	8.00
bpodd3g	CHEN.503	10.00
bpodd3g	CHEN.601	7.00
bpodd3g	CHEN.602	7.00
bpodd3g	CHEN.603	5.00
bpodd3g	CHEN.701	9.00
bpodd3g	CHEN.702	9.00
pparysiakpt	CHEN.101	5.00
pparysiakpt	CHEN.102	10.00
pparysiakpt	CHEN.103	7.00
pparysiakpt	CHEN.201	7.00
pparysiakpt	CHEN.202	9.00
pparysiakpt	CHEN.203	5.00
pparysiakpt	CHEN.301	7.00
pparysiakpt	CHEN.302	8.00
pparysiakpt	CHEN.303	10.00
pparysiakpt	CHEN.401	9.00
pparysiakpt	CHEN.402	8.00
gceschiniqb	CHEN.101	5.00
gceschiniqb	CHEN.102	7.00
gceschiniqb	CHEN.103	6.00
gceschiniqb	CHEN.201	8.00
gceschiniqb	CHEN.202	5.00
gceschiniqb	CHEN.203	10.00
gceschiniqb	CHEN.301	6.00
gceschiniqb	CHEN.302	9.00
gceschiniqb	CHEN.303	9.00
gceschiniqb	CHEN.401	6.00
gceschiniqb	CHEN.402	8.00
gceschiniqb	CHEN.403	6.00
gceschiniqb	CHEN.501	5.00
gceschiniqb	CHEN.502	5.00
gceschiniqb	CHEN.503	5.00
gceschiniqb	CHEN.601	5.00
eferensqv	CHEN.101	7.00
eferensqv	CHEN.102	9.00
eferensqv	CHEN.103	10.00
eferensqv	CHEN.201	10.00
eferensqv	CHEN.202	9.00
eferensqv	CHEN.203	5.00
eferensqv	CHEN.301	10.00
eferensqv	CHEN.302	8.00
eferensqv	CHEN.303	10.00
eferensqv	CHEN.401	9.00
eferensqv	CHEN.402	7.00
eferensqv	CHEN.403	6.00
eferensqv	CHEN.501	5.00
eferensqv	CHEN.502	6.00
dwaldingqj	CHEN.101	9.00
dwaldingqj	CHEN.102	8.00
dwaldingqj	CHEN.103	7.00
dwaldingqj	CHEN.201	9.00
dwaldingqj	CHEN.202	10.00
dwaldingqj	CHEN.203	6.00
dwaldingqj	CHEN.301	7.00
dwaldingqj	CHEN.302	8.00
dwaldingqj	CHEN.303	7.00
alacaser2	CHEN.101	7.00
alacaser2	CHEN.102	6.00
alacaser2	CHEN.103	6.00
alacaser2	CHEN.201	5.00
alacaser2	CHEN.202	5.00
alacaser2	CHEN.203	8.00
alacaser2	CHEN.301	10.00
alacaser2	CHEN.302	10.00
alacaser2	CHEN.303	5.00
alacaser2	CHEN.401	7.00
alacaser2	CHEN.402	7.00
alacaser2	CHEN.403	7.00
alacaser2	CHEN.501	7.00
alacaser2	CHEN.502	10.00
alacaser2	CHEN.503	8.00
alacaser2	CHEN.601	7.00
alacaser2	CHEN.602	9.00
alacaser2	CHEN.603	10.00
alacaser2	CHEN.701	8.00
alacaser2	CHEN.702	8.00
alacaser2	CHEN.703	5.00
alacaser2	CHEN.801	9.00
alacaser2	CHEN.802	5.00
asantelloqo	CHEN.101	8.00
asantelloqo	CHEN.102	8.00
asantelloqo	CHEN.103	10.00
asantelloqo	CHEN.201	8.00
asantelloqo	CHEN.202	6.00
asantelloqo	CHEN.203	5.00
asantelloqo	CHEN.301	9.00
asantelloqo	CHEN.302	7.00
asantelloqo	CHEN.303	10.00
asantelloqo	CHEN.401	6.00
asantelloqo	CHEN.402	10.00
asantelloqo	CHEN.403	10.00
asantelloqo	CHEN.501	9.00
asantelloqo	CHEN.502	9.00
asantelloqo	CHEN.503	10.00
asantelloqo	CHEN.601	6.00
asantelloqo	CHEN.602	8.00
asantelloqo	CHEN.603	10.00
asantelloqo	CHEN.701	5.00
asantelloqo	CHEN.702	5.00
asantelloqo	CHEN.703	10.00
asantelloqo	CHEN.801	5.00
asantelloqo	CHEN.802	7.00
asantelloqo	CHEN.803	10.00
amacgibbonqn	CHEN.101	8.00
amacgibbonqn	CHEN.102	5.00
amacgibbonqn	CHEN.103	8.00
amacgibbonqn	CHEN.201	8.00
amacgibbonqn	CHEN.202	5.00
amacgibbonqn	CHEN.203	8.00
amacgibbonqn	CHEN.301	8.00
amacgibbonqn	CHEN.302	10.00
amacgibbonqn	CHEN.303	8.00
amacgibbonqn	CHEN.401	10.00
amacgibbonqn	CHEN.402	6.00
amacgibbonqn	CHEN.403	8.00
amacgibbonqn	CHEN.501	8.00
amacgibbonqn	CHEN.502	7.00
amacgibbonqn	CHEN.503	10.00
amacgibbonqn	CHEN.601	8.00
amacgibbonqn	CHEN.602	9.00
amacgibbonqn	CHEN.603	9.00
amacgibbonqn	CHEN.701	5.00
amacgibbonqn	CHEN.702	8.00
amacgibbonqn	CHEN.703	9.00
amacgibbonqn	CHEN.801	9.00
lseniori4	CHEN.101	10.00
lseniori4	CHEN.102	7.00
lseniori4	CHEN.103	8.00
lseniori4	CHEN.201	8.00
lseniori4	CHEN.202	8.00
lseniori4	CHEN.203	8.00
lseniori4	CHEN.301	8.00
lseniori4	CHEN.302	8.00
lseniori4	CHEN.303	9.00
lseniori4	CHEN.401	8.00
lseniori4	CHEN.402	9.00
lseniori4	CHEN.403	5.00
lseniori4	CHEN.501	5.00
lseniori4	CHEN.502	6.00
lseniori4	CHEN.503	5.00
lseniori4	CHEN.601	5.00
ymcdaidii	CHEN.101	5.00
ymcdaidii	CHEN.102	6.00
ymcdaidii	CHEN.103	9.00
ymcdaidii	CHEN.201	6.00
ymcdaidii	CHEN.202	9.00
ymcdaidii	CHEN.203	5.00
ymcdaidii	CHEN.301	6.00
ymcdaidii	CHEN.302	10.00
ymcdaidii	CHEN.303	9.00
ymcdaidii	CHEN.401	8.00
ymcdaidii	CHEN.402	8.00
ymcdaidii	CHEN.403	6.00
ymcdaidii	CHEN.501	8.00
ymcdaidii	CHEN.502	8.00
kthairsjd	CHEN.101	5.00
kthairsjd	CHEN.102	8.00
kthairsjd	CHEN.103	6.00
kthairsjd	CHEN.201	7.00
kthairsjd	CHEN.202	10.00
kthairsjd	CHEN.203	8.00
kthairsjd	CHEN.301	7.00
kthairsjd	CHEN.302	7.00
kthairsjd	CHEN.303	7.00
kthairsjd	CHEN.401	7.00
kthairsjd	CHEN.402	8.00
kthairsjd	CHEN.403	6.00
mwhostonp	CHEN.101	5.00
mwhostonp	CHEN.102	5.00
mwhostonp	CHEN.103	5.00
mwhostonp	CHEN.201	9.00
mwhostonp	CHEN.202	8.00
mwhostonp	CHEN.203	10.00
mwhostonp	CHEN.301	8.00
mwhostonp	CHEN.302	10.00
mwhostonp	CHEN.303	6.00
mwhostonp	CHEN.401	7.00
mwhostonp	CHEN.402	8.00
mwhostonp	CHEN.403	7.00
mwhostonp	CHEN.501	9.00
mwhostonp	CHEN.502	10.00
mwhostonp	CHEN.503	5.00
mwhostonp	CHEN.601	6.00
mwhostonp	CHEN.602	8.00
mwhostonp	CHEN.603	5.00
mwhostonp	CHEN.701	10.00
mwhostonp	CHEN.702	10.00
mwhostonp	CHEN.703	9.00
mwhostonp	CHEN.801	8.00
mwhostonp	CHEN.802	10.00
mvenable9	CHEN.101	5.00
mvenable9	CHEN.102	8.00
mvenable9	CHEN.103	9.00
mvenable9	CHEN.201	9.00
mvenable9	CHEN.202	8.00
mvenable9	CHEN.203	5.00
mvenable9	CHEN.301	9.00
mvenable9	CHEN.302	7.00
mvenable9	CHEN.303	10.00
mvenable9	CHEN.401	7.00
mvenable9	CHEN.402	6.00
mvenable9	CHEN.403	7.00
mvenable9	CHEN.501	9.00
yflowerdewe	CHEN.101	9.00
yflowerdewe	CHEN.102	9.00
yflowerdewe	CHEN.103	8.00
yflowerdewe	CHEN.201	10.00
yflowerdewe	CHEN.202	6.00
yflowerdewe	CHEN.203	9.00
yflowerdewe	CHEN.301	5.00
yflowerdewe	CHEN.302	7.00
yflowerdewe	CHEN.303	5.00
yflowerdewe	CHEN.401	9.00
yflowerdewe	CHEN.402	8.00
yflowerdewe	CHEN.403	10.00
yflowerdewe	CHEN.501	6.00
yflowerdewe	CHEN.502	8.00
yflowerdewe	CHEN.503	10.00
yflowerdewe	CHEN.601	10.00
yflowerdewe	CHEN.602	8.00
yflowerdewe	CHEN.603	8.00
yflowerdewe	CHEN.701	7.00
yflowerdewe	CHEN.702	8.00
yflowerdewe	CHEN.703	6.00
yflowerdewe	CHEN.801	10.00
yflowerdewe	CHEN.802	6.00
yflowerdewe	CHEN.803	6.00
lcarnduff4y	CHEN.101	9.00
lcarnduff4y	CHEN.102	6.00
lcarnduff4y	CHEN.103	7.00
lcarnduff4y	CHEN.201	7.00
lcarnduff4y	CHEN.202	9.00
lcarnduff4y	CHEN.203	9.00
lcarnduff4y	CHEN.301	8.00
lcarnduff4y	CHEN.302	6.00
lcarnduff4y	CHEN.303	7.00
lcarnduff4y	CHEN.401	7.00
lcarnduff4y	CHEN.402	10.00
lcarnduff4y	CHEN.403	6.00
amatula54	CHEN.101	10.00
amatula54	CHEN.102	7.00
amatula54	CHEN.103	6.00
amatula54	CHEN.201	10.00
amatula54	CHEN.202	8.00
amatula54	CHEN.203	6.00
amatula54	CHEN.301	9.00
amatula54	CHEN.302	10.00
amatula54	CHEN.303	10.00
amatula54	CHEN.401	5.00
amatula54	CHEN.402	8.00
amatula54	CHEN.403	6.00
amatula54	CHEN.501	9.00
amatula54	CHEN.502	7.00
amatula54	CHEN.503	8.00
amatula54	CHEN.601	5.00
amatula54	CHEN.602	5.00
amatula54	CHEN.603	6.00
amatula54	CHEN.701	9.00
amatula54	CHEN.702	10.00
amatula54	CHEN.703	10.00
amatula54	CHEN.801	6.00
amatula54	CHEN.802	10.00
amatula54	CHEN.803	5.00
docoskerry7y	CHEN.101	6.00
docoskerry7y	CHEN.102	10.00
docoskerry7y	CHEN.103	8.00
docoskerry7y	CHEN.201	8.00
docoskerry7y	CHEN.202	9.00
docoskerry7y	CHEN.203	10.00
docoskerry7y	CHEN.301	6.00
cfalk84	CHEN.101	9.00
cfalk84	CHEN.102	5.00
cfalk84	CHEN.103	8.00
cfalk84	CHEN.201	10.00
cfalk84	CHEN.202	10.00
cfalk84	CHEN.203	10.00
cfalk84	CHEN.301	5.00
cfalk84	CHEN.302	10.00
cfalk84	CHEN.303	10.00
cfalk84	CHEN.401	8.00
cfalk84	CHEN.402	5.00
cfalk84	CHEN.403	8.00
cfalk84	CHEN.501	9.00
cfalk84	CHEN.502	5.00
cfalk84	CHEN.503	8.00
cfalk84	CHEN.601	6.00
cfalk84	CHEN.602	5.00
cfalk84	CHEN.603	5.00
cfalk84	CHEN.701	7.00
cfalk84	CHEN.702	6.00
cfalk84	CHEN.703	5.00
cfalk84	CHEN.801	7.00
cfalk84	CHEN.802	9.00
mpughsley86	CHEN.101	5.00
mpughsley86	CHEN.102	10.00
mpughsley86	CHEN.103	10.00
mpughsley86	CHEN.201	9.00
mpughsley86	CHEN.202	8.00
mpughsley86	CHEN.203	10.00
mpughsley86	CHEN.301	5.00
mpughsley86	CHEN.302	9.00
mpughsley86	CHEN.303	8.00
mpughsley86	CHEN.401	7.00
mpughsley86	CHEN.402	9.00
mpughsley86	CHEN.403	8.00
mpughsley86	CHEN.501	5.00
hholywell89	CHEN.101	5.00
hholywell89	CHEN.102	10.00
hholywell89	CHEN.103	10.00
hholywell89	CHEN.201	6.00
hholywell89	CHEN.202	9.00
hholywell89	CHEN.203	5.00
hholywell89	CHEN.301	6.00
hholywell89	CHEN.302	6.00
hholywell89	CHEN.303	10.00
hholywell89	CHEN.401	10.00
hholywell89	CHEN.402	10.00
hholywell89	CHEN.403	8.00
hholywell89	CHEN.501	5.00
hholywell89	CHEN.502	6.00
hholywell89	CHEN.503	10.00
hholywell89	CHEN.601	5.00
hholywell89	CHEN.602	9.00
spryor61	CHEN.101	8.00
spryor61	CHEN.102	5.00
spryor61	CHEN.103	10.00
spryor61	CHEN.201	7.00
spryor61	CHEN.202	8.00
spryor61	CHEN.203	9.00
spryor61	CHEN.301	9.00
spryor61	CHEN.302	6.00
spryor61	CHEN.303	6.00
spryor61	CHEN.401	9.00
spryor61	CHEN.402	8.00
spryor61	CHEN.403	6.00
spryor61	CHEN.501	10.00
spryor61	CHEN.502	9.00
spryor61	CHEN.503	10.00
spryor61	CHEN.601	10.00
spryor61	CHEN.602	6.00
spryor61	CHEN.603	10.00
spryor61	CHEN.701	7.00
spryor61	CHEN.702	5.00
spryor61	CHEN.703	10.00
spryor61	CHEN.801	9.00
spryor61	CHEN.802	8.00
nwanden65	CHEN.101	6.00
nwanden65	CHEN.102	6.00
nwanden65	CHEN.103	10.00
nwanden65	CHEN.201	7.00
nwanden65	CHEN.202	8.00
nwanden65	CHEN.203	8.00
nwanden65	CHEN.301	6.00
nwanden65	CHEN.302	7.00
nwanden65	CHEN.303	5.00
nwanden65	CHEN.401	10.00
nwanden65	CHEN.402	6.00
nwanden65	CHEN.403	10.00
nwanden65	CHEN.501	10.00
nwanden65	CHEN.502	6.00
nwanden65	CHEN.503	6.00
nwanden65	CHEN.601	8.00
nwanden65	CHEN.602	7.00
nwanden65	CHEN.603	6.00
nwanden65	CHEN.701	7.00
nwanden65	CHEN.702	5.00
nwanden65	CHEN.703	5.00
nwanden65	CHEN.801	5.00
shaggas6f	CHEN.101	6.00
shaggas6f	CHEN.102	7.00
shaggas6f	CHEN.103	6.00
shaggas6f	CHEN.201	8.00
shaggas6f	CHEN.202	6.00
shaggas6f	CHEN.203	10.00
shaggas6f	CHEN.301	5.00
shaggas6f	CHEN.302	9.00
shaggas6f	CHEN.303	6.00
shaggas6f	CHEN.401	5.00
shaggas6f	CHEN.402	7.00
shaggas6f	CHEN.403	7.00
shaggas6f	CHEN.501	5.00
shaggas6f	CHEN.502	6.00
shaggas6f	CHEN.503	9.00
shaggas6f	CHEN.601	6.00
shaggas6f	CHEN.602	10.00
sbucklee7n	CHEN.101	7.00
sbucklee7n	CHEN.102	6.00
sbucklee7n	CHEN.103	5.00
sbucklee7n	CHEN.201	5.00
sbucklee7n	CHEN.202	10.00
sbucklee7n	CHEN.203	8.00
sbucklee7n	CHEN.301	9.00
sbucklee7n	CHEN.302	7.00
sbucklee7n	CHEN.303	10.00
sbucklee7n	CHEN.401	7.00
sbucklee7n	CHEN.402	7.00
sbucklee7n	CHEN.403	6.00
sbucklee7n	CHEN.501	10.00
sbucklee7n	CHEN.502	6.00
sbucklee7n	CHEN.503	8.00
sbucklee7n	CHEN.601	5.00
sbucklee7n	CHEN.602	10.00
sbucklee7n	CHEN.603	10.00
sbucklee7n	CHEN.701	10.00
sbucklee7n	CHEN.702	6.00
sbucklee7n	CHEN.703	6.00
sbucklee7n	CHEN.801	9.00
apurdy6q	CHEN.101	10.00
apurdy6q	CHEN.102	9.00
apurdy6q	CHEN.103	7.00
apurdy6q	CHEN.201	7.00
apurdy6q	CHEN.202	9.00
apurdy6q	CHEN.203	7.00
apurdy6q	CHEN.301	10.00
apurdy6q	CHEN.302	5.00
apurdy6q	CHEN.303	10.00
apurdy6q	CHEN.401	6.00
apurdy6q	CHEN.402	6.00
apurdy6q	CHEN.403	9.00
apurdy6q	CHEN.501	5.00
apurdy6q	CHEN.502	9.00
apurdy6q	CHEN.503	9.00
mhuston6t	CHEN.101	10.00
mhuston6t	CHEN.102	5.00
mhuston6t	CHEN.103	8.00
mhuston6t	CHEN.201	5.00
mhuston6t	CHEN.202	6.00
mhuston6t	CHEN.203	9.00
mhuston6t	CHEN.301	10.00
mhuston6t	CHEN.302	6.00
mhuston6t	CHEN.303	8.00
mhuston6t	CHEN.401	5.00
mhuston6t	CHEN.402	7.00
mhuston6t	CHEN.403	8.00
mhuston6t	CHEN.501	10.00
mhuston6t	CHEN.502	7.00
mhuston6t	CHEN.503	6.00
mhuston6t	CHEN.601	8.00
mhuston6t	CHEN.602	5.00
mhuston6t	CHEN.603	7.00
mhuston6t	CHEN.701	9.00
mhuston6t	CHEN.702	9.00
rrowcliffe75	CHEN.101	5.00
rrowcliffe75	CHEN.102	5.00
rrowcliffe75	CHEN.103	10.00
rrowcliffe75	CHEN.201	5.00
rrowcliffe75	CHEN.202	7.00
rrowcliffe75	CHEN.203	7.00
rrowcliffe75	CHEN.301	9.00
rrowcliffe75	CHEN.302	5.00
rrowcliffe75	CHEN.303	7.00
rrowcliffe75	CHEN.401	8.00
rrowcliffe75	CHEN.402	7.00
rrowcliffe75	CHEN.403	10.00
rrowcliffe75	CHEN.501	6.00
rrowcliffe75	CHEN.502	10.00
aparlour7d	CHEN.101	7.00
aparlour7d	CHEN.102	9.00
aparlour7d	CHEN.103	8.00
aparlour7d	CHEN.201	7.00
aparlour7d	CHEN.202	5.00
aparlour7d	CHEN.203	9.00
aparlour7d	CHEN.301	10.00
aparlour7d	CHEN.302	10.00
aparlour7d	CHEN.303	9.00
aparlour7d	CHEN.401	6.00
aparlour7d	CHEN.402	10.00
aparlour7d	CHEN.403	7.00
aparlour7d	CHEN.501	10.00
aparlour7d	CHEN.502	8.00
aparlour7d	CHEN.503	9.00
aparlour7d	CHEN.601	9.00
aparlour7d	CHEN.602	10.00
aparlour7d	CHEN.603	10.00
wglantz7t	CHEN.101	7.00
wglantz7t	CHEN.102	8.00
wglantz7t	CHEN.103	6.00
wglantz7t	CHEN.201	8.00
wglantz7t	CHEN.202	6.00
wglantz7t	CHEN.203	9.00
wglantz7t	CHEN.301	6.00
wglantz7t	CHEN.302	6.00
wglantz7t	CHEN.303	5.00
wglantz7t	CHEN.401	10.00
wglantz7t	CHEN.402	6.00
wglantz7t	CHEN.403	6.00
wglantz7t	CHEN.501	6.00
wglantz7t	CHEN.502	5.00
wglantz7t	CHEN.503	6.00
wglantz7t	CHEN.601	6.00
wglantz7t	CHEN.602	6.00
wglantz7t	CHEN.603	10.00
wglantz7t	CHEN.701	10.00
wglantz7t	CHEN.702	5.00
steaseah	CHEN.101	6.00
steaseah	CHEN.102	6.00
steaseah	CHEN.103	8.00
steaseah	CHEN.201	7.00
steaseah	CHEN.202	9.00
steaseah	CHEN.203	7.00
steaseah	CHEN.301	5.00
steaseah	CHEN.302	6.00
upapenao	CHEN.101	6.00
upapenao	CHEN.102	6.00
upapenao	CHEN.103	10.00
upapenao	CHEN.201	9.00
upapenao	CHEN.202	7.00
upapenao	CHEN.203	10.00
upapenao	CHEN.301	9.00
upapenao	CHEN.302	6.00
upapenao	CHEN.303	7.00
upapenao	CHEN.401	9.00
upapenao	CHEN.402	7.00
upapenao	CHEN.403	7.00
upapenao	CHEN.501	9.00
upapenao	CHEN.502	6.00
upapenao	CHEN.503	6.00
upapenao	CHEN.601	8.00
upapenao	CHEN.602	8.00
upapenao	CHEN.603	5.00
upapenao	CHEN.701	9.00
upapenao	CHEN.702	8.00
upapenao	CHEN.703	9.00
upapenao	CHEN.801	10.00
kacory8p	CHEN.101	8.00
kacory8p	CHEN.102	9.00
kacory8p	CHEN.103	10.00
kacory8p	CHEN.201	10.00
kacory8p	CHEN.202	10.00
kacory8p	CHEN.203	10.00
kacory8p	CHEN.301	9.00
kacory8p	CHEN.302	9.00
kacory8p	CHEN.303	9.00
kacory8p	CHEN.401	7.00
kacory8p	CHEN.402	6.00
kacory8p	CHEN.403	10.00
kacory8p	CHEN.501	7.00
kacory8p	CHEN.502	9.00
kacory8p	CHEN.503	6.00
kacory8p	CHEN.601	8.00
kacory8p	CHEN.602	5.00
kacory8p	CHEN.603	8.00
kacory8p	CHEN.701	8.00
kacory8p	CHEN.702	8.00
kacory8p	CHEN.703	10.00
nmechell8y	CHEN.101	8.00
nmechell8y	CHEN.102	10.00
nmechell8y	CHEN.103	6.00
nmechell8y	CHEN.201	10.00
nmechell8y	CHEN.202	5.00
nmechell8y	CHEN.203	5.00
nmechell8y	CHEN.301	7.00
nmechell8y	CHEN.302	5.00
nmechell8y	CHEN.303	10.00
nmechell8y	CHEN.401	10.00
nmechell8y	CHEN.402	9.00
nmechell8y	CHEN.403	9.00
kknowlys8z	CHEN.101	6.00
kknowlys8z	CHEN.102	8.00
kknowlys8z	CHEN.103	5.00
kknowlys8z	CHEN.201	8.00
kknowlys8z	CHEN.202	10.00
kknowlys8z	CHEN.203	7.00
kknowlys8z	CHEN.301	7.00
kknowlys8z	CHEN.302	9.00
kknowlys8z	CHEN.303	10.00
kknowlys8z	CHEN.401	5.00
kknowlys8z	CHEN.402	7.00
avogeler9s	CHEN.101	9.00
avogeler9s	CHEN.102	5.00
avogeler9s	CHEN.103	5.00
avogeler9s	CHEN.201	9.00
avogeler9s	CHEN.202	6.00
avogeler9s	CHEN.203	6.00
avogeler9s	CHEN.301	6.00
avogeler9s	CHEN.302	6.00
avogeler9s	CHEN.303	10.00
avogeler9s	CHEN.401	5.00
avogeler9s	CHEN.402	10.00
avogeler9s	CHEN.403	9.00
avogeler9s	CHEN.501	10.00
avogeler9s	CHEN.502	8.00
avogeler9s	CHEN.503	7.00
avogeler9s	CHEN.601	7.00
avogeler9s	CHEN.602	7.00
avogeler9s	CHEN.603	5.00
avogeler9s	CHEN.701	9.00
avogeler9s	CHEN.702	5.00
avogeler9s	CHEN.703	6.00
avogeler9s	CHEN.801	9.00
avogeler9s	CHEN.802	5.00
apechet94	CHEN.101	9.00
apechet94	CHEN.102	8.00
apechet94	CHEN.103	6.00
apechet94	CHEN.201	10.00
apechet94	CHEN.202	10.00
apechet94	CHEN.203	8.00
apechet94	CHEN.301	9.00
apechet94	CHEN.302	6.00
apechet94	CHEN.303	9.00
apechet94	CHEN.401	10.00
apechet94	CHEN.402	6.00
apechet94	CHEN.403	7.00
apechet94	CHEN.501	8.00
apechet94	CHEN.502	8.00
apechet94	CHEN.503	9.00
apechet94	CHEN.601	9.00
apechet94	CHEN.602	8.00
vchappelle96	CHEN.101	8.00
vchappelle96	CHEN.102	9.00
vchappelle96	CHEN.103	8.00
vchappelle96	CHEN.201	5.00
vchappelle96	CHEN.202	7.00
vchappelle96	CHEN.203	9.00
vchappelle96	CHEN.301	7.00
vchappelle96	CHEN.302	8.00
vchappelle96	CHEN.303	8.00
vchappelle96	CHEN.401	7.00
vchappelle96	CHEN.402	6.00
vchappelle96	CHEN.403	9.00
vchappelle96	CHEN.501	6.00
vchappelle96	CHEN.502	9.00
cnorthfield9x	CHEN.101	6.00
cnorthfield9x	CHEN.102	8.00
cnorthfield9x	CHEN.103	5.00
cnorthfield9x	CHEN.201	10.00
cnorthfield9x	CHEN.202	7.00
cnorthfield9x	CHEN.203	5.00
cnorthfield9x	CHEN.301	7.00
cnorthfield9x	CHEN.302	10.00
cnorthfield9x	CHEN.303	6.00
cnorthfield9x	CHEN.401	9.00
cnorthfield9x	CHEN.402	7.00
cnorthfield9x	CHEN.403	5.00
cnorthfield9x	CHEN.501	5.00
bciculloc0	CHEN.101	6.00
bciculloc0	CHEN.102	9.00
bciculloc0	CHEN.103	8.00
bciculloc0	CHEN.201	7.00
bciculloc0	CHEN.202	8.00
bciculloc0	CHEN.203	10.00
bciculloc0	CHEN.301	6.00
bciculloc0	CHEN.302	5.00
bciculloc0	CHEN.303	8.00
bciculloc0	CHEN.401	7.00
bciculloc0	CHEN.402	8.00
bciculloc0	CHEN.403	10.00
bciculloc0	CHEN.501	9.00
bciculloc0	CHEN.502	10.00
bciculloc0	CHEN.503	6.00
bciculloc0	CHEN.601	7.00
bciculloc0	CHEN.602	9.00
bciculloc0	CHEN.603	9.00
bciculloc0	CHEN.701	5.00
bciculloc0	CHEN.702	8.00
bciculloc0	CHEN.703	7.00
zliddenb6	CHEN.101	10.00
zliddenb6	CHEN.102	5.00
zliddenb6	CHEN.103	8.00
zliddenb6	CHEN.201	6.00
zliddenb6	CHEN.202	10.00
zliddenb6	CHEN.203	9.00
zliddenb6	CHEN.301	10.00
zliddenb6	CHEN.302	6.00
zliddenb6	CHEN.303	7.00
zliddenb6	CHEN.401	10.00
zliddenb6	CHEN.402	5.00
zliddenb6	CHEN.403	5.00
rrobesonaz	CHEN.101	7.00
rrobesonaz	CHEN.102	7.00
rrobesonaz	CHEN.103	9.00
rrobesonaz	CHEN.201	8.00
rrobesonaz	CHEN.202	7.00
rrobesonaz	CHEN.203	5.00
rrobesonaz	CHEN.301	8.00
rrobesonaz	CHEN.302	5.00
rrobesonaz	CHEN.303	7.00
rrobesonaz	CHEN.401	9.00
rrobesonaz	CHEN.402	8.00
rrobesonaz	CHEN.403	10.00
rrobesonaz	CHEN.501	6.00
rrobesonaz	CHEN.502	5.00
fmurrellcd	CHEN.101	8.00
fmurrellcd	CHEN.102	7.00
fmurrellcd	CHEN.103	10.00
fmurrellcd	CHEN.201	10.00
fmurrellcd	CHEN.202	8.00
fmurrellcd	CHEN.203	10.00
fmurrellcd	CHEN.301	10.00
fmurrellcd	CHEN.302	6.00
fmurrellcd	CHEN.303	8.00
fmurrellcd	CHEN.401	5.00
fmurrellcd	CHEN.402	7.00
fmurrellcd	CHEN.403	8.00
fmurrellcd	CHEN.501	7.00
fmurrellcd	CHEN.502	5.00
fmurrellcd	CHEN.503	9.00
fmurrellcd	CHEN.601	5.00
istiegersce	CHEN.101	10.00
istiegersce	CHEN.102	10.00
istiegersce	CHEN.103	8.00
istiegersce	CHEN.201	9.00
istiegersce	CHEN.202	6.00
istiegersce	CHEN.203	9.00
istiegersce	CHEN.301	8.00
istiegersce	CHEN.302	5.00
istiegersce	CHEN.303	8.00
istiegersce	CHEN.401	6.00
istiegersce	CHEN.402	9.00
istiegersce	CHEN.403	9.00
istiegersce	CHEN.501	6.00
istiegersce	CHEN.502	7.00
cmcgillacoellcf	CHEN.101	7.00
cmcgillacoellcf	CHEN.102	10.00
cmcgillacoellcf	CHEN.103	10.00
cmcgillacoellcf	CHEN.201	5.00
cmcgillacoellcf	CHEN.202	9.00
cmcgillacoellcf	CHEN.203	9.00
cmcgillacoellcf	CHEN.301	7.00
cmcgillacoellcf	CHEN.302	9.00
cmcgillacoellcf	CHEN.303	5.00
cmcgillacoellcf	CHEN.401	10.00
cmcgillacoellcf	CHEN.402	7.00
bheindrickci	CHEN.101	7.00
bheindrickci	CHEN.102	6.00
bheindrickci	CHEN.103	7.00
bheindrickci	CHEN.201	6.00
bheindrickci	CHEN.202	6.00
bheindrickci	CHEN.203	9.00
bheindrickci	CHEN.301	9.00
bheindrickci	CHEN.302	9.00
bheindrickci	CHEN.303	7.00
bheindrickci	CHEN.401	5.00
bheindrickci	CHEN.402	5.00
bheindrickci	CHEN.403	5.00
bheindrickci	CHEN.501	7.00
bheindrickci	CHEN.502	8.00
bheindrickci	CHEN.503	8.00
bheindrickci	CHEN.601	8.00
bheindrickci	CHEN.602	7.00
bheindrickci	CHEN.603	7.00
bheindrickci	CHEN.701	5.00
bheindrickci	CHEN.702	6.00
bheindrickci	CHEN.703	5.00
bheindrickci	CHEN.801	10.00
dmirandocq	CHEN.101	7.00
dmirandocq	CHEN.102	8.00
dmirandocq	CHEN.103	7.00
dmirandocq	CHEN.201	5.00
dmirandocq	CHEN.202	10.00
dmirandocq	CHEN.203	6.00
dmirandocq	CHEN.301	8.00
dmirandocq	CHEN.302	6.00
dmirandocq	CHEN.303	10.00
dmirandocq	CHEN.401	8.00
dmirandocq	CHEN.402	6.00
dmirandocq	CHEN.403	6.00
dmirandocq	CHEN.501	6.00
dmirandocq	CHEN.502	9.00
dmirandocq	CHEN.503	5.00
dmirandocq	CHEN.601	5.00
dmirandocq	CHEN.602	6.00
dmirandocq	CHEN.603	8.00
dmirandocq	CHEN.701	6.00
dmirandocq	CHEN.702	10.00
dmirandocq	CHEN.703	5.00
dmirandocq	CHEN.801	10.00
twanecy	CHEN.101	7.00
twanecy	CHEN.102	9.00
twanecy	CHEN.103	8.00
twanecy	CHEN.201	6.00
twanecy	CHEN.202	9.00
twanecy	CHEN.203	8.00
twanecy	CHEN.301	7.00
lbotgerd0	CHEN.101	7.00
lbotgerd0	CHEN.102	8.00
lbotgerd0	CHEN.103	6.00
lbotgerd0	CHEN.201	8.00
lbotgerd0	CHEN.202	5.00
lbotgerd0	CHEN.203	7.00
lbotgerd0	CHEN.301	5.00
lbotgerd0	CHEN.302	7.00
lbotgerd0	CHEN.303	7.00
lbotgerd0	CHEN.401	8.00
lbotgerd0	CHEN.402	10.00
lbotgerd0	CHEN.403	7.00
lbotgerd0	CHEN.501	7.00
lbotgerd0	CHEN.502	6.00
lbotgerd0	CHEN.503	7.00
lbotgerd0	CHEN.601	9.00
lbotgerd0	CHEN.602	7.00
owoodusd3	CHEN.101	6.00
owoodusd3	CHEN.102	10.00
owoodusd3	CHEN.103	10.00
owoodusd3	CHEN.201	8.00
owoodusd3	CHEN.202	5.00
owoodusd3	CHEN.203	10.00
owoodusd3	CHEN.301	6.00
owoodusd3	CHEN.302	10.00
owoodusd3	CHEN.303	8.00
owoodusd3	CHEN.401	7.00
owoodusd3	CHEN.402	10.00
owoodusd3	CHEN.403	8.00
owoodusd3	CHEN.501	5.00
owoodusd3	CHEN.502	5.00
owoodusd3	CHEN.503	8.00
owoodusd3	CHEN.601	10.00
owoodusd3	CHEN.602	7.00
owoodusd3	CHEN.603	7.00
sropkingd4	CHEN.101	6.00
sropkingd4	CHEN.102	7.00
sropkingd4	CHEN.103	8.00
sropkingd4	CHEN.201	6.00
sropkingd4	CHEN.202	10.00
sropkingd4	CHEN.203	5.00
sropkingd4	CHEN.301	7.00
sropkingd4	CHEN.302	8.00
lmelvilled8	CHEN.101	7.00
lmelvilled8	CHEN.102	7.00
lmelvilled8	CHEN.103	5.00
lmelvilled8	CHEN.201	6.00
lmelvilled8	CHEN.202	9.00
lmelvilled8	CHEN.203	9.00
lmelvilled8	CHEN.301	8.00
lmelvilled8	CHEN.302	10.00
lmelvilled8	CHEN.303	9.00
lmelvilled8	CHEN.401	8.00
estreatfi	CHEN.101	7.00
estreatfi	CHEN.102	6.00
estreatfi	CHEN.103	8.00
estreatfi	CHEN.201	6.00
estreatfi	CHEN.202	8.00
estreatfi	CHEN.203	7.00
estreatfi	CHEN.301	10.00
estreatfi	CHEN.302	10.00
estreatfi	CHEN.303	9.00
estreatfi	CHEN.401	6.00
estreatfi	CHEN.402	7.00
estreatfi	CHEN.403	7.00
estreatfi	CHEN.501	9.00
chaddrelldt	CHEN.101	9.00
chaddrelldt	CHEN.102	5.00
chaddrelldt	CHEN.103	10.00
chaddrelldt	CHEN.201	5.00
chaddrelldt	CHEN.202	8.00
chaddrelldt	CHEN.203	5.00
chaddrelldt	CHEN.301	9.00
chaddrelldt	CHEN.302	10.00
chaddrelldt	CHEN.303	5.00
chaddrelldt	CHEN.401	8.00
chaddrelldt	CHEN.402	5.00
chaddrelldt	CHEN.403	7.00
chaddrelldt	CHEN.501	8.00
chaddrelldt	CHEN.502	8.00
chaddrelldt	CHEN.503	9.00
chaddrelldt	CHEN.601	10.00
chaddrelldt	CHEN.602	10.00
dhemmingwaydu	CHEN.101	6.00
dhemmingwaydu	CHEN.102	6.00
dhemmingwaydu	CHEN.103	9.00
dhemmingwaydu	CHEN.201	5.00
dhemmingwaydu	CHEN.202	10.00
dhemmingwaydu	CHEN.203	8.00
dhemmingwaydu	CHEN.301	9.00
dhemmingwaydu	CHEN.302	5.00
dhemmingwaydu	CHEN.303	8.00
dhemmingwaydu	CHEN.401	6.00
dhemmingwaydu	CHEN.402	6.00
dhemmingwaydu	CHEN.403	6.00
dhemmingwaydu	CHEN.501	6.00
dhemmingwaydu	CHEN.502	10.00
dhemmingwaydu	CHEN.503	10.00
tfishbiee1	CHEN.101	7.00
tfishbiee1	CHEN.102	6.00
tfishbiee1	CHEN.103	6.00
tfishbiee1	CHEN.201	7.00
tfishbiee1	CHEN.202	7.00
tfishbiee1	CHEN.203	7.00
tfishbiee1	CHEN.301	5.00
tfishbiee1	CHEN.302	8.00
tfishbiee1	CHEN.303	9.00
tfishbiee1	CHEN.401	10.00
tfishbiee1	CHEN.402	7.00
tfishbiee1	CHEN.403	5.00
tfishbiee1	CHEN.501	7.00
tfishbiee1	CHEN.502	8.00
tfishbiee1	CHEN.503	5.00
tfishbiee1	CHEN.601	7.00
tfishbiee1	CHEN.602	6.00
tfishbiee1	CHEN.603	8.00
tfishbiee1	CHEN.701	6.00
tfishbiee1	CHEN.702	10.00
tfishbiee1	CHEN.703	5.00
tfishbiee1	CHEN.801	9.00
wepper	CHEN.101	6.00
wepper	CHEN.102	10.00
wepper	CHEN.103	8.00
wepper	CHEN.201	10.00
wepper	CHEN.202	6.00
wepper	CHEN.203	5.00
wepper	CHEN.301	6.00
wepper	CHEN.302	9.00
wepper	CHEN.303	7.00
smouanew	CHEN.101	7.00
smouanew	CHEN.102	5.00
smouanew	CHEN.103	10.00
smouanew	CHEN.201	10.00
smouanew	CHEN.202	8.00
smouanew	CHEN.203	5.00
smouanew	CHEN.301	5.00
smouanew	CHEN.302	8.00
smouanew	CHEN.303	8.00
smouanew	CHEN.401	7.00
smouanew	CHEN.402	10.00
smouanew	CHEN.403	8.00
smouanew	CHEN.501	9.00
smouanew	CHEN.502	9.00
smouanew	CHEN.503	5.00
smouanew	CHEN.601	5.00
smouanew	CHEN.602	5.00
smouanew	CHEN.603	7.00
smouanew	CHEN.701	5.00
mcominiek	CHEN.101	8.00
mcominiek	CHEN.102	9.00
mcominiek	CHEN.103	6.00
mcominiek	CHEN.201	7.00
mcominiek	CHEN.202	9.00
mcominiek	CHEN.203	5.00
mcominiek	CHEN.301	9.00
mcominiek	CHEN.302	6.00
mcominiek	CHEN.303	10.00
mcominiek	CHEN.401	10.00
mcominiek	CHEN.402	6.00
mcominiek	CHEN.403	6.00
mcominiek	CHEN.501	8.00
agravyel	CHEN.101	7.00
agravyel	CHEN.102	9.00
agravyel	CHEN.103	8.00
agravyel	CHEN.201	5.00
agravyel	CHEN.202	9.00
agravyel	CHEN.203	6.00
agravyel	CHEN.301	9.00
agravyel	CHEN.302	9.00
agravyel	CHEN.303	5.00
agravyel	CHEN.401	6.00
agravyel	CHEN.402	9.00
agravyel	CHEN.403	6.00
agravyel	CHEN.501	9.00
agravyel	CHEN.502	7.00
agravyel	CHEN.503	8.00
agravyel	CHEN.601	8.00
agravyel	CHEN.602	10.00
agravyel	CHEN.603	6.00
agravyel	CHEN.701	10.00
agravyel	CHEN.702	5.00
ewhewayen	CHEN.101	7.00
ewhewayen	CHEN.102	6.00
ewhewayen	CHEN.103	10.00
ewhewayen	CHEN.201	7.00
ewhewayen	CHEN.202	8.00
ewhewayen	CHEN.203	6.00
ewhewayen	CHEN.301	9.00
ewhewayen	CHEN.302	5.00
elongfutf9	CHEN.101	9.00
elongfutf9	CHEN.102	8.00
elongfutf9	CHEN.103	10.00
elongfutf9	CHEN.201	8.00
elongfutf9	CHEN.202	6.00
elongfutf9	CHEN.203	9.00
elongfutf9	CHEN.301	9.00
elongfutf9	CHEN.302	9.00
elongfutf9	CHEN.303	10.00
elongfutf9	CHEN.401	7.00
elongfutf9	CHEN.402	7.00
elongfutf9	CHEN.403	8.00
elongfutf9	CHEN.501	10.00
cpylkynytonf1	CHEN.101	8.00
cpylkynytonf1	CHEN.102	9.00
cpylkynytonf1	CHEN.103	6.00
cpylkynytonf1	CHEN.201	5.00
cpylkynytonf1	CHEN.202	6.00
cpylkynytonf1	CHEN.203	7.00
cpylkynytonf1	CHEN.301	5.00
cpylkynytonf1	CHEN.302	10.00
cpylkynytonf1	CHEN.303	7.00
cpylkynytonf1	CHEN.401	5.00
cpylkynytonf1	CHEN.402	9.00
cpylkynytonf1	CHEN.403	8.00
cpylkynytonf1	CHEN.501	8.00
cpylkynytonf1	CHEN.502	9.00
cpylkynytonf1	CHEN.503	6.00
cpylkynytonf1	CHEN.601	5.00
cpylkynytonf1	CHEN.602	7.00
cpylkynytonf1	CHEN.603	9.00
cpylkynytonf1	CHEN.701	8.00
cpylkynytonf1	CHEN.702	9.00
cpylkynytonf1	CHEN.703	9.00
cpylkynytonf1	CHEN.801	5.00
stukelyf8	CHEN.101	6.00
stukelyf8	CHEN.102	7.00
stukelyf8	CHEN.103	10.00
stukelyf8	CHEN.201	6.00
stukelyf8	CHEN.202	9.00
stukelyf8	CHEN.203	8.00
stukelyf8	CHEN.301	7.00
stukelyf8	CHEN.302	10.00
stukelyf8	CHEN.303	10.00
stukelyf8	CHEN.401	8.00
stukelyf8	CHEN.402	6.00
stukelyf8	CHEN.403	10.00
tmunnshj	CHEN.101	7.00
tmunnshj	CHEN.102	7.00
tmunnshj	CHEN.103	5.00
tmunnshj	CHEN.201	5.00
tmunnshj	CHEN.202	8.00
tmunnshj	CHEN.203	6.00
tmunnshj	CHEN.301	5.00
tmunnshj	CHEN.302	8.00
tmunnshj	CHEN.303	9.00
tmunnshj	CHEN.401	6.00
tmunnshj	CHEN.402	8.00
tmunnshj	CHEN.403	8.00
tmunnshj	CHEN.501	9.00
tmunnshj	CHEN.502	10.00
tmunnshj	CHEN.503	7.00
tmunnshj	CHEN.601	10.00
tmunnshj	CHEN.602	9.00
tmunnshj	CHEN.603	5.00
kfargherhk	CHEN.101	9.00
kfargherhk	CHEN.102	5.00
kfargherhk	CHEN.103	5.00
kfargherhk	CHEN.201	9.00
kfargherhk	CHEN.202	7.00
kfargherhk	CHEN.203	10.00
kfargherhk	CHEN.301	8.00
kfargherhk	CHEN.302	7.00
kfargherhk	CHEN.303	9.00
kfargherhk	CHEN.401	6.00
kfargherhk	CHEN.402	10.00
kfargherhk	CHEN.403	6.00
kfargherhk	CHEN.501	6.00
kfargherhk	CHEN.502	6.00
kfargherhk	CHEN.503	10.00
kfargherhk	CHEN.601	10.00
kfargherhk	CHEN.602	6.00
kfargherhk	CHEN.603	10.00
kfargherhk	CHEN.701	5.00
kfargherhk	CHEN.702	10.00
kfargherhk	CHEN.703	7.00
kfargherhk	CHEN.801	9.00
kfargherhk	CHEN.802	7.00
esouthwardhw	CHEN.101	5.00
esouthwardhw	CHEN.102	10.00
esouthwardhw	CHEN.103	7.00
esouthwardhw	CHEN.201	6.00
esouthwardhw	CHEN.202	9.00
esouthwardhw	CHEN.203	10.00
esouthwardhw	CHEN.301	10.00
treesoni2	CHEN.101	9.00
treesoni2	CHEN.102	7.00
treesoni2	CHEN.103	6.00
treesoni2	CHEN.201	6.00
treesoni2	CHEN.202	6.00
treesoni2	CHEN.203	5.00
treesoni2	CHEN.301	7.00
treesoni2	CHEN.302	6.00
treesoni2	CHEN.303	9.00
treesoni2	CHEN.401	10.00
treesoni2	CHEN.402	10.00
treesoni2	CHEN.403	6.00
treesoni2	CHEN.501	5.00
treesoni2	CHEN.502	9.00
treesoni2	CHEN.503	9.00
treesoni2	CHEN.601	8.00
treesoni2	CHEN.602	10.00
treesoni2	CHEN.603	8.00
treesoni2	CHEN.701	5.00
treesoni2	CHEN.702	5.00
treesoni2	CHEN.703	6.00
treesoni2	CHEN.801	6.00
treesoni2	CHEN.802	9.00
treesoni2	CHEN.803	6.00
ilapennafw	CHEN.101	6.00
ilapennafw	CHEN.102	6.00
ilapennafw	CHEN.103	7.00
ilapennafw	CHEN.201	7.00
ilapennafw	CHEN.202	7.00
ilapennafw	CHEN.203	10.00
ilapennafw	CHEN.301	9.00
ilapennafw	CHEN.302	5.00
ilapennafw	CHEN.303	8.00
ilapennafw	CHEN.401	6.00
ilapennafw	CHEN.402	8.00
ilapennafw	CHEN.403	9.00
ilapennafw	CHEN.501	8.00
ilapennafw	CHEN.502	7.00
ilapennafw	CHEN.503	8.00
ilapennafw	CHEN.601	7.00
ilapennafw	CHEN.602	6.00
ilapennafw	CHEN.603	10.00
ilapennafw	CHEN.701	5.00
ilapennafw	CHEN.702	5.00
ilapennafw	CHEN.703	8.00
blungehh	CHEN.101	10.00
blungehh	CHEN.102	6.00
blungehh	CHEN.103	6.00
blungehh	CHEN.201	7.00
blungehh	CHEN.202	9.00
blungehh	CHEN.203	6.00
blungehh	CHEN.301	6.00
blungehh	CHEN.302	5.00
ndearthgg	CHEN.101	7.00
ndearthgg	CHEN.102	8.00
ndearthgg	CHEN.103	7.00
ndearthgg	CHEN.201	7.00
ndearthgg	CHEN.202	9.00
ndearthgg	CHEN.203	6.00
ndearthgg	CHEN.301	9.00
ndearthgg	CHEN.302	6.00
ndearthgg	CHEN.303	10.00
ndearthgg	CHEN.401	9.00
ndearthgg	CHEN.402	6.00
ndearthgg	CHEN.403	9.00
ndearthgg	CHEN.501	10.00
ndearthgg	CHEN.502	7.00
ndearthgg	CHEN.503	8.00
ndearthgg	CHEN.601	6.00
ycunliffegl	CHEN.101	7.00
ycunliffegl	CHEN.102	7.00
ycunliffegl	CHEN.103	5.00
ycunliffegl	CHEN.201	10.00
ycunliffegl	CHEN.202	8.00
ycunliffegl	CHEN.203	9.00
ycunliffegl	CHEN.301	10.00
ycunliffegl	CHEN.302	8.00
ycunliffegl	CHEN.303	7.00
ycunliffegl	CHEN.401	10.00
ycunliffegl	CHEN.402	9.00
ycunliffegl	CHEN.403	5.00
ycunliffegl	CHEN.501	10.00
vrobinettegc	CHEN.101	6.00
vrobinettegc	CHEN.102	10.00
vrobinettegc	CHEN.103	6.00
vrobinettegc	CHEN.201	6.00
vrobinettegc	CHEN.202	8.00
vrobinettegc	CHEN.203	6.00
vrobinettegc	CHEN.301	10.00
vrobinettegc	CHEN.302	10.00
vrobinettegc	CHEN.303	9.00
vrobinettegc	CHEN.401	9.00
vrobinettegc	CHEN.402	7.00
vrobinettegc	CHEN.403	5.00
vrobinettegc	CHEN.501	10.00
vrobinettegc	CHEN.502	6.00
vrobinettegc	CHEN.503	10.00
vrobinettegc	CHEN.601	10.00
vrobinettegc	CHEN.602	5.00
vrobinettegc	CHEN.603	9.00
vrobinettegc	CHEN.701	6.00
wschlagtmanshd	CHEN.101	9.00
wschlagtmanshd	CHEN.102	5.00
wschlagtmanshd	CHEN.103	5.00
wschlagtmanshd	CHEN.201	5.00
wschlagtmanshd	CHEN.202	9.00
wschlagtmanshd	CHEN.203	9.00
wschlagtmanshd	CHEN.301	6.00
wschlagtmanshd	CHEN.302	10.00
wschlagtmanshd	CHEN.303	9.00
wschlagtmanshd	CHEN.401	5.00
wschlagtmanshd	CHEN.402	8.00
wschlagtmanshd	CHEN.403	10.00
bcorderoh2	CHEN.101	5.00
bcorderoh2	CHEN.102	9.00
bcorderoh2	CHEN.103	6.00
bcorderoh2	CHEN.201	10.00
bcorderoh2	CHEN.202	10.00
bcorderoh2	CHEN.203	9.00
bcorderoh2	CHEN.301	10.00
bcorderoh2	CHEN.302	9.00
bcorderoh2	CHEN.303	8.00
bcorderoh2	CHEN.401	6.00
bcorderoh2	CHEN.402	8.00
bcorderoh2	CHEN.403	9.00
bcorderoh2	CHEN.501	5.00
bcorderoh2	CHEN.502	10.00
bcorderoh2	CHEN.503	6.00
bcorderoh2	CHEN.601	5.00
bcorderoh2	CHEN.602	9.00
bcorderoh2	CHEN.603	10.00
bcorderoh2	CHEN.701	8.00
bcorderoh2	CHEN.702	8.00
bcorderoh2	CHEN.703	8.00
dbrownellhq	CHEN.101	5.00
dbrownellhq	CHEN.102	5.00
dbrownellhq	CHEN.103	6.00
dbrownellhq	CHEN.201	8.00
dbrownellhq	CHEN.202	5.00
dbrownellhq	CHEN.203	6.00
dbrownellhq	CHEN.301	5.00
dbrownellhq	CHEN.302	9.00
dbrownellhq	CHEN.303	7.00
dbrownellhq	CHEN.401	5.00
dbrownellhq	CHEN.402	8.00
dbrownellhq	CHEN.403	9.00
cpeapleju	CHEN.101	9.00
cpeapleju	CHEN.102	10.00
cpeapleju	CHEN.103	7.00
cpeapleju	CHEN.201	6.00
cpeapleju	CHEN.202	9.00
cpeapleju	CHEN.203	6.00
cpeapleju	CHEN.301	10.00
cpeapleju	CHEN.302	8.00
cpeapleju	CHEN.303	8.00
cpeapleju	CHEN.401	8.00
cpeapleju	CHEN.402	5.00
cpeapleju	CHEN.403	6.00
cpeapleju	CHEN.501	9.00
cpeapleju	CHEN.502	5.00
cpeapleju	CHEN.503	7.00
cpeapleju	CHEN.601	8.00
cpeapleju	CHEN.602	5.00
cpeapleju	CHEN.603	5.00
cpeapleju	CHEN.701	6.00
cpeapleju	CHEN.702	8.00
cpeapleju	CHEN.703	8.00
cpeapleju	CHEN.801	5.00
cpeapleju	CHEN.802	7.00
mfosskd	CHEN.101	5.00
mfosskd	CHEN.102	6.00
mfosskd	CHEN.103	10.00
mfosskd	CHEN.201	5.00
mfosskd	CHEN.202	10.00
mfosskd	CHEN.203	9.00
mfosskd	CHEN.301	6.00
mfosskd	CHEN.302	10.00
tjoriokg	CHEN.101	9.00
tjoriokg	CHEN.102	10.00
tjoriokg	CHEN.103	7.00
tjoriokg	CHEN.201	7.00
tjoriokg	CHEN.202	8.00
tjoriokg	CHEN.203	7.00
tjoriokg	CHEN.301	7.00
tjoriokg	CHEN.302	5.00
tjoriokg	CHEN.303	8.00
tjoriokg	CHEN.401	9.00
tjoriokg	CHEN.402	5.00
tjoriokg	CHEN.403	8.00
tjoriokg	CHEN.501	7.00
mlunnj6	CHEN.101	5.00
mlunnj6	CHEN.102	7.00
mlunnj6	CHEN.103	10.00
mlunnj6	CHEN.201	5.00
mlunnj6	CHEN.202	5.00
mlunnj6	CHEN.203	5.00
mlunnj6	CHEN.301	7.00
mlunnj6	CHEN.302	10.00
mlunnj6	CHEN.303	8.00
mlunnj6	CHEN.401	8.00
mlunnj6	CHEN.402	9.00
mlunnj6	CHEN.403	10.00
mlunnj6	CHEN.501	9.00
mlunnj6	CHEN.502	7.00
mlunnj6	CHEN.503	7.00
mlunnj6	CHEN.601	10.00
naxstonih	CHEN.101	10.00
naxstonih	CHEN.102	5.00
naxstonih	CHEN.103	10.00
naxstonih	CHEN.201	10.00
naxstonih	CHEN.202	6.00
naxstonih	CHEN.203	6.00
naxstonih	CHEN.301	6.00
naxstonih	CHEN.302	6.00
naxstonih	CHEN.303	10.00
naxstonih	CHEN.401	9.00
naxstonih	CHEN.402	6.00
naxstonih	CHEN.403	7.00
naxstonih	CHEN.501	10.00
naxstonih	CHEN.502	8.00
naxstonih	CHEN.503	6.00
naxstonih	CHEN.601	8.00
naxstonih	CHEN.602	10.00
naxstonih	CHEN.603	7.00
naxstonih	CHEN.701	6.00
naxstonih	CHEN.702	10.00
amirfinij	CHEN.101	9.00
amirfinij	CHEN.102	6.00
amirfinij	CHEN.103	9.00
amirfinij	CHEN.201	8.00
amirfinij	CHEN.202	6.00
amirfinij	CHEN.203	5.00
amirfinij	CHEN.301	6.00
amirfinij	CHEN.302	8.00
amirfinij	CHEN.303	7.00
amirfinij	CHEN.401	7.00
amirfinij	CHEN.402	9.00
amirfinij	CHEN.403	9.00
amirfinij	CHEN.501	6.00
abenkheip	CHEN.101	5.00
abenkheip	CHEN.102	10.00
abenkheip	CHEN.103	9.00
abenkheip	CHEN.201	10.00
abenkheip	CHEN.202	10.00
abenkheip	CHEN.203	7.00
abenkheip	CHEN.301	5.00
abenkheip	CHEN.302	6.00
abenkheip	CHEN.303	5.00
abenkheip	CHEN.401	5.00
abenkheip	CHEN.402	6.00
abenkheip	CHEN.403	10.00
abenkheip	CHEN.501	8.00
abenkheip	CHEN.502	6.00
abenkheip	CHEN.503	8.00
abenkheip	CHEN.601	9.00
abenkheip	CHEN.602	5.00
abenkheip	CHEN.603	5.00
abenkheip	CHEN.701	10.00
abenkheip	CHEN.702	8.00
abenkheip	CHEN.703	10.00
abenkheip	CHEN.801	10.00
abenkheip	CHEN.802	10.00
foriginis	CHEN.101	5.00
foriginis	CHEN.102	6.00
foriginis	CHEN.103	6.00
foriginis	CHEN.201	10.00
foriginis	CHEN.202	8.00
foriginis	CHEN.203	5.00
foriginis	CHEN.301	10.00
foriginis	CHEN.302	7.00
foriginis	CHEN.303	7.00
foriginis	CHEN.401	8.00
ahuittj4	CHEN.101	9.00
ahuittj4	CHEN.102	5.00
ahuittj4	CHEN.103	7.00
ahuittj4	CHEN.201	5.00
ahuittj4	CHEN.202	10.00
ahuittj4	CHEN.203	10.00
ahuittj4	CHEN.301	10.00
ahuittj4	CHEN.302	8.00
ahuittj4	CHEN.303	9.00
ahuittj4	CHEN.401	10.00
ahuittj4	CHEN.402	10.00
ahuittj4	CHEN.403	8.00
ahuittj4	CHEN.501	5.00
ahuittj4	CHEN.502	10.00
lbreartonj8	CHEN.101	7.00
lbreartonj8	CHEN.102	8.00
lbreartonj8	CHEN.103	9.00
lbreartonj8	CHEN.201	6.00
lbreartonj8	CHEN.202	5.00
lbreartonj8	CHEN.203	6.00
lbreartonj8	CHEN.301	9.00
lbreartonj8	CHEN.302	8.00
lbreartonj8	CHEN.303	9.00
lbreartonj8	CHEN.401	8.00
lbreartonj8	CHEN.402	8.00
lbreartonj8	CHEN.403	9.00
lbreartonj8	CHEN.501	7.00
lbreartonj8	CHEN.502	8.00
lbreartonj8	CHEN.503	5.00
lbreartonj8	CHEN.601	5.00
lbreartonj8	CHEN.602	9.00
lbreartonj8	CHEN.603	10.00
amerceyix	CHEN.101	9.00
amerceyix	CHEN.102	6.00
amerceyix	CHEN.103	9.00
amerceyix	CHEN.201	7.00
amerceyix	CHEN.202	7.00
amerceyix	CHEN.203	10.00
amerceyix	CHEN.301	7.00
amerceyix	CHEN.302	5.00
amerceyix	CHEN.303	8.00
amerceyix	CHEN.401	6.00
amerceyix	CHEN.402	8.00
amerceyix	CHEN.403	8.00
amerceyix	CHEN.501	5.00
amerceyix	CHEN.502	7.00
amerceyix	CHEN.503	5.00
amerceyix	CHEN.601	7.00
amerceyix	CHEN.602	8.00
amerceyix	CHEN.603	5.00
amcquorkellk3	CHEN.101	7.00
amcquorkellk3	CHEN.102	10.00
amcquorkellk3	CHEN.103	6.00
amcquorkellk3	CHEN.201	6.00
amcquorkellk3	CHEN.202	10.00
amcquorkellk3	CHEN.203	10.00
amcquorkellk3	CHEN.301	6.00
amcquorkellk3	CHEN.302	5.00
amcquorkellk3	CHEN.303	8.00
amcquorkellk3	CHEN.401	5.00
amcquorkellk3	CHEN.402	5.00
amcquorkellk3	CHEN.403	6.00
amcquorkellk3	CHEN.501	5.00
amcquorkellk3	CHEN.502	9.00
amcquorkellk3	CHEN.503	8.00
amcquorkellk3	CHEN.601	9.00
amcquorkellk3	CHEN.602	6.00
amcquorkellk3	CHEN.603	6.00
amcquorkellk3	CHEN.701	5.00
amcquorkellk3	CHEN.702	9.00
amcquorkellk3	CHEN.703	8.00
eplatfootje	CHEN.101	7.00
eplatfootje	CHEN.102	5.00
eplatfootje	CHEN.103	10.00
eplatfootje	CHEN.201	10.00
eplatfootje	CHEN.202	9.00
eplatfootje	CHEN.203	10.00
eplatfootje	CHEN.301	7.00
eplatfootje	CHEN.302	9.00
eplatfootje	CHEN.303	6.00
eplatfootje	CHEN.401	8.00
eplatfootje	CHEN.402	7.00
eplatfootje	CHEN.403	9.00
eplatfootje	CHEN.501	10.00
eplatfootje	CHEN.502	5.00
eplatfootje	CHEN.503	7.00
eplatfootje	CHEN.601	7.00
eplatfootje	CHEN.602	8.00
eplatfootje	CHEN.603	5.00
ajerochk4	CHEN.101	7.00
ajerochk4	CHEN.102	7.00
ajerochk4	CHEN.103	9.00
ajerochk4	CHEN.201	5.00
ajerochk4	CHEN.202	7.00
ajerochk4	CHEN.203	7.00
ajerochk4	CHEN.301	5.00
ajerochk4	CHEN.302	5.00
ajerochk4	CHEN.303	7.00
ajerochk4	CHEN.401	5.00
ajerochk4	CHEN.402	6.00
ajerochk4	CHEN.403	8.00
ajerochk4	CHEN.501	5.00
ajerochk4	CHEN.502	6.00
ajerochk4	CHEN.503	10.00
ajerochk4	CHEN.601	7.00
ajerochk4	CHEN.602	8.00
ajerochk4	CHEN.603	7.00
ajerochk4	CHEN.701	10.00
ggodwinmy	CHEN.101	9.00
ggodwinmy	CHEN.102	5.00
ggodwinmy	CHEN.103	7.00
ggodwinmy	CHEN.201	9.00
ggodwinmy	CHEN.202	10.00
ggodwinmy	CHEN.203	9.00
ggodwinmy	CHEN.301	5.00
ggodwinmy	CHEN.302	7.00
ggodwinmy	CHEN.303	5.00
ggodwinmy	CHEN.401	7.00
mmcboylekp	CHEN.101	5.00
mmcboylekp	CHEN.102	5.00
mmcboylekp	CHEN.103	6.00
mmcboylekp	CHEN.201	10.00
mmcboylekp	CHEN.202	6.00
mmcboylekp	CHEN.203	8.00
mmcboylekp	CHEN.301	8.00
mmcboylekp	CHEN.302	6.00
mmcboylekp	CHEN.303	10.00
mmcboylekp	CHEN.401	9.00
mmcboylekp	CHEN.402	9.00
mmcboylekp	CHEN.403	5.00
mmcboylekp	CHEN.501	5.00
mmcboylekp	CHEN.502	9.00
mmcboylekp	CHEN.503	7.00
mmcboylekp	CHEN.601	8.00
plavrinovlt	CHEN.101	5.00
plavrinovlt	CHEN.102	8.00
plavrinovlt	CHEN.103	9.00
plavrinovlt	CHEN.201	6.00
plavrinovlt	CHEN.202	10.00
plavrinovlt	CHEN.203	5.00
plavrinovlt	CHEN.301	8.00
plavrinovlt	CHEN.302	7.00
plavrinovlt	CHEN.303	5.00
plavrinovlt	CHEN.401	5.00
plavrinovlt	CHEN.402	8.00
plavrinovlt	CHEN.403	5.00
plavrinovlt	CHEN.501	9.00
plavrinovlt	CHEN.502	9.00
plavrinovlt	CHEN.503	6.00
plavrinovlt	CHEN.601	9.00
plavrinovlt	CHEN.602	9.00
plavrinovlt	CHEN.603	8.00
plavrinovlt	CHEN.701	8.00
plavrinovlt	CHEN.702	9.00
plavrinovlt	CHEN.703	10.00
plavrinovlt	CHEN.801	10.00
ecollingwoodm1	CHEN.101	7.00
ecollingwoodm1	CHEN.102	5.00
ecollingwoodm1	CHEN.103	8.00
ecollingwoodm1	CHEN.201	10.00
ecollingwoodm1	CHEN.202	10.00
ecollingwoodm1	CHEN.203	5.00
ecollingwoodm1	CHEN.301	6.00
ecollingwoodm1	CHEN.302	8.00
ecollingwoodm1	CHEN.303	8.00
ecollingwoodm1	CHEN.401	6.00
ecollingwoodm1	CHEN.402	5.00
ecollingwoodm1	CHEN.403	10.00
ecollingwoodm1	CHEN.501	10.00
ecollingwoodm1	CHEN.502	8.00
ecollingwoodm1	CHEN.503	9.00
sgronavkx	CHEN.101	10.00
sgronavkx	CHEN.102	6.00
sgronavkx	CHEN.103	7.00
sgronavkx	CHEN.201	10.00
sgronavkx	CHEN.202	9.00
sgronavkx	CHEN.203	9.00
sgronavkx	CHEN.301	6.00
sgronavkx	CHEN.302	6.00
sgronavkx	CHEN.303	5.00
avauxl5	CHEN.101	10.00
avauxl5	CHEN.102	8.00
avauxl5	CHEN.103	9.00
avauxl5	CHEN.201	8.00
avauxl5	CHEN.202	10.00
avauxl5	CHEN.203	8.00
avauxl5	CHEN.301	7.00
avauxl5	CHEN.302	7.00
avauxl5	CHEN.303	7.00
avauxl5	CHEN.401	5.00
avauxl5	CHEN.402	6.00
avauxl5	CHEN.403	9.00
avauxl5	CHEN.501	10.00
avauxl5	CHEN.502	6.00
avauxl5	CHEN.503	10.00
avauxl5	CHEN.601	10.00
avauxl5	CHEN.602	6.00
avauxl5	CHEN.603	6.00
avauxl5	CHEN.701	10.00
avauxl5	CHEN.702	5.00
avauxl5	CHEN.703	5.00
sinnocentil3	CHEN.101	5.00
sinnocentil3	CHEN.102	7.00
sinnocentil3	CHEN.103	9.00
sinnocentil3	CHEN.201	6.00
sinnocentil3	CHEN.202	5.00
sinnocentil3	CHEN.203	9.00
sinnocentil3	CHEN.301	9.00
sinnocentil3	CHEN.302	9.00
sinnocentil3	CHEN.303	10.00
sinnocentil3	CHEN.401	10.00
sinnocentil3	CHEN.402	9.00
sinnocentil3	CHEN.403	6.00
sinnocentil3	CHEN.501	10.00
sinnocentil3	CHEN.502	9.00
sinnocentil3	CHEN.503	6.00
sinnocentil3	CHEN.601	8.00
sinnocentil3	CHEN.602	8.00
sinnocentil3	CHEN.603	10.00
sinnocentil3	CHEN.701	7.00
sinnocentil3	CHEN.702	8.00
pdormanmf	CHEN.101	8.00
pdormanmf	CHEN.102	5.00
pdormanmf	CHEN.103	6.00
pdormanmf	CHEN.201	10.00
pdormanmf	CHEN.202	6.00
pdormanmf	CHEN.203	5.00
pdormanmf	CHEN.301	7.00
pdormanmf	CHEN.302	7.00
wpostinmp	CHEN.101	9.00
wpostinmp	CHEN.102	10.00
wpostinmp	CHEN.103	8.00
wpostinmp	CHEN.201	7.00
wpostinmp	CHEN.202	5.00
wpostinmp	CHEN.203	7.00
wpostinmp	CHEN.301	10.00
wpostinmp	CHEN.302	5.00
wpostinmp	CHEN.303	8.00
wpostinmp	CHEN.401	9.00
wpostinmp	CHEN.402	8.00
wpostinmp	CHEN.403	6.00
wpostinmp	CHEN.501	9.00
wpostinmp	CHEN.502	5.00
wpostinmp	CHEN.503	5.00
wpostinmp	CHEN.601	9.00
wlantuffele	CHEN.101	10.00
wlantuffele	CHEN.102	10.00
wlantuffele	CHEN.103	5.00
wlantuffele	CHEN.201	10.00
wlantuffele	CHEN.202	10.00
wlantuffele	CHEN.203	6.00
wlantuffele	CHEN.301	5.00
wlantuffele	CHEN.302	6.00
wlantuffele	CHEN.303	9.00
wlantuffele	CHEN.401	9.00
wlantuffele	CHEN.402	7.00
wlantuffele	CHEN.403	6.00
wlantuffele	CHEN.501	7.00
wlantuffele	CHEN.502	6.00
wlantuffele	CHEN.503	8.00
wlantuffele	CHEN.601	5.00
wlantuffele	CHEN.602	10.00
wlantuffele	CHEN.603	9.00
wlantuffele	CHEN.701	7.00
rbrucklg	CHEN.101	5.00
rbrucklg	CHEN.102	6.00
rbrucklg	CHEN.103	5.00
rbrucklg	CHEN.201	7.00
rbrucklg	CHEN.202	5.00
rbrucklg	CHEN.203	6.00
rbrucklg	CHEN.301	10.00
rbrucklg	CHEN.302	5.00
rbrucklg	CHEN.303	10.00
rbrucklg	CHEN.401	8.00
rbrucklg	CHEN.402	10.00
rbrucklg	CHEN.403	9.00
rbrucklg	CHEN.501	10.00
rbrucklg	CHEN.502	8.00
rbrucklg	CHEN.503	9.00
rbrucklg	CHEN.601	10.00
rbrucklg	CHEN.602	5.00
rbrucklg	CHEN.603	9.00
rbrucklg	CHEN.701	9.00
rbrucklg	CHEN.702	10.00
rbrucklg	CHEN.703	9.00
lelnoughll	CHEN.101	6.00
lelnoughll	CHEN.102	10.00
lelnoughll	CHEN.103	6.00
lelnoughll	CHEN.201	10.00
lelnoughll	CHEN.202	7.00
lelnoughll	CHEN.203	6.00
lelnoughll	CHEN.301	9.00
lelnoughll	CHEN.302	7.00
lelnoughll	CHEN.303	7.00
cpullingermn	CHEN.101	10.00
cpullingermn	CHEN.102	9.00
cpullingermn	CHEN.103	6.00
cpullingermn	CHEN.201	9.00
cpullingermn	CHEN.202	9.00
cpullingermn	CHEN.203	6.00
cpullingermn	CHEN.301	8.00
cpullingermn	CHEN.302	8.00
cpullingermn	CHEN.303	7.00
cpullingermn	CHEN.401	8.00
cpullingermn	CHEN.402	6.00
cpullingermn	CHEN.403	10.00
cpullingermn	CHEN.501	6.00
cpullingermn	CHEN.502	7.00
cpullingermn	CHEN.503	9.00
cpullingermn	CHEN.601	8.00
gmatoshinlc	CHEN.101	9.00
gmatoshinlc	CHEN.102	7.00
gmatoshinlc	CHEN.103	6.00
gmatoshinlc	CHEN.201	9.00
gmatoshinlc	CHEN.202	5.00
gmatoshinlc	CHEN.203	9.00
gmatoshinlc	CHEN.301	10.00
gmatoshinlc	CHEN.302	7.00
gmatoshinlc	CHEN.303	6.00
gmatoshinlc	CHEN.401	9.00
gmatoshinlc	CHEN.402	5.00
bquinanem9	CHEN.101	8.00
bquinanem9	CHEN.102	10.00
bquinanem9	CHEN.103	10.00
bquinanem9	CHEN.201	8.00
bquinanem9	CHEN.202	9.00
bquinanem9	CHEN.203	7.00
bquinanem9	CHEN.301	6.00
bquinanem9	CHEN.302	7.00
bquinanem9	CHEN.303	7.00
bquinanem9	CHEN.401	6.00
bquinanem9	CHEN.402	10.00
bquinanem9	CHEN.403	9.00
chawkettks	CHEN.101	8.00
chawkettks	CHEN.102	5.00
chawkettks	CHEN.103	8.00
chawkettks	CHEN.201	8.00
chawkettks	CHEN.202	8.00
chawkettks	CHEN.203	7.00
chawkettks	CHEN.301	6.00
chawkettks	CHEN.302	10.00
chawkettks	CHEN.303	8.00
chawkettks	CHEN.401	7.00
chawkettks	CHEN.402	8.00
chawkettks	CHEN.403	8.00
epurcellp7	CHEN.101	9.00
epurcellp7	CHEN.102	5.00
epurcellp7	CHEN.103	8.00
epurcellp7	CHEN.201	9.00
epurcellp7	CHEN.202	9.00
epurcellp7	CHEN.203	7.00
epurcellp7	CHEN.301	10.00
epurcellp7	CHEN.302	9.00
epurcellp7	CHEN.303	9.00
epurcellp7	CHEN.401	6.00
epurcellp7	CHEN.402	5.00
epurcellp7	CHEN.403	6.00
epurcellp7	CHEN.501	5.00
epurcellp7	CHEN.502	10.00
epurcellp7	CHEN.503	10.00
epurcellp7	CHEN.601	8.00
epurcellp7	CHEN.602	5.00
gebrallnk	CHEN.101	7.00
gebrallnk	CHEN.102	9.00
gebrallnk	CHEN.103	10.00
gebrallnk	CHEN.201	9.00
gebrallnk	CHEN.202	6.00
gebrallnk	CHEN.203	5.00
gebrallnk	CHEN.301	9.00
gebrallnk	CHEN.302	8.00
gebrallnk	CHEN.303	9.00
gebrallnk	CHEN.401	5.00
gebrallnk	CHEN.402	9.00
gebrallnk	CHEN.403	8.00
gebrallnk	CHEN.501	8.00
gebrallnk	CHEN.502	10.00
gebrallnk	CHEN.503	10.00
gebrallnk	CHEN.601	9.00
gebrallnk	CHEN.602	6.00
gebrallnk	CHEN.603	10.00
gebrallnk	CHEN.701	5.00
gebrallnk	CHEN.702	7.00
gebrallnk	CHEN.703	5.00
gebrallnk	CHEN.801	5.00
gebrallnk	CHEN.802	9.00
bbrickwoodnn	CHEN.101	7.00
bbrickwoodnn	CHEN.102	5.00
bbrickwoodnn	CHEN.103	9.00
bbrickwoodnn	CHEN.201	10.00
bbrickwoodnn	CHEN.202	7.00
bbrickwoodnn	CHEN.203	7.00
bbrickwoodnn	CHEN.301	6.00
bbrickwoodnn	CHEN.302	10.00
bbrickwoodnn	CHEN.303	7.00
bbrickwoodnn	CHEN.401	7.00
bbrickwoodnn	CHEN.402	10.00
bbrickwoodnn	CHEN.403	10.00
rmcguckenno	CHEN.101	6.00
rmcguckenno	CHEN.102	9.00
rmcguckenno	CHEN.103	5.00
rmcguckenno	CHEN.201	10.00
rmcguckenno	CHEN.202	5.00
rmcguckenno	CHEN.203	10.00
rmcguckenno	CHEN.301	6.00
rmcguckenno	CHEN.302	7.00
rmcguckenno	CHEN.303	9.00
rmcguckenno	CHEN.401	7.00
rmcguckenno	CHEN.402	8.00
rmcguckenno	CHEN.403	6.00
rmcguckenno	CHEN.501	5.00
rmcguckenno	CHEN.502	9.00
skeohaneo2	CHEN.101	10.00
skeohaneo2	CHEN.102	8.00
skeohaneo2	CHEN.103	9.00
skeohaneo2	CHEN.201	9.00
skeohaneo2	CHEN.202	5.00
skeohaneo2	CHEN.203	8.00
skeohaneo2	CHEN.301	5.00
skeohaneo2	CHEN.302	8.00
skeohaneo2	CHEN.303	5.00
glittlejohno3	CHEN.101	9.00
glittlejohno3	CHEN.102	10.00
glittlejohno3	CHEN.103	10.00
glittlejohno3	CHEN.201	9.00
glittlejohno3	CHEN.202	10.00
glittlejohno3	CHEN.203	6.00
glittlejohno3	CHEN.301	10.00
glittlejohno3	CHEN.302	5.00
glittlejohno3	CHEN.303	10.00
glittlejohno3	CHEN.401	6.00
glittlejohno3	CHEN.402	10.00
glittlejohno3	CHEN.403	8.00
glittlejohno3	CHEN.501	6.00
glittlejohno3	CHEN.502	10.00
glittlejohno3	CHEN.503	5.00
glittlejohno3	CHEN.601	10.00
glittlejohno3	CHEN.602	10.00
glittlejohno3	CHEN.603	9.00
glittlejohno3	CHEN.701	7.00
glittlejohno3	CHEN.702	5.00
glittlejohno3	CHEN.703	6.00
glittlejohno3	CHEN.801	5.00
jsoaresov	CHEN.101	8.00
jsoaresov	CHEN.102	6.00
jsoaresov	CHEN.103	8.00
jsoaresov	CHEN.201	10.00
jsoaresov	CHEN.202	10.00
jsoaresov	CHEN.203	7.00
jsoaresov	CHEN.301	8.00
wmarshallsayf	CHEN.101	5.00
wmarshallsayf	CHEN.102	5.00
wmarshallsayf	CHEN.103	5.00
wmarshallsayf	CHEN.201	5.00
wmarshallsayf	CHEN.202	9.00
wmarshallsayf	CHEN.203	5.00
wmarshallsayf	CHEN.301	5.00
wmarshallsayf	CHEN.302	9.00
bgaitskillr	CHEN.101	9.00
bgaitskillr	CHEN.102	10.00
bgaitskillr	CHEN.103	5.00
bgaitskillr	CHEN.201	7.00
bgaitskillr	CHEN.202	10.00
bgaitskillr	CHEN.203	5.00
bgaitskillr	CHEN.301	8.00
bgaitskillr	CHEN.302	7.00
bgaitskillr	CHEN.303	5.00
bgaitskillr	CHEN.401	7.00
bgaitskillr	CHEN.402	8.00
bgaitskillr	CHEN.403	10.00
mstrowlgerw	CHEN.101	9.00
mstrowlgerw	CHEN.102	7.00
mstrowlgerw	CHEN.103	10.00
mstrowlgerw	CHEN.201	10.00
mstrowlgerw	CHEN.202	10.00
mstrowlgerw	CHEN.203	6.00
mstrowlgerw	CHEN.301	10.00
wcorbishley9d	CHEN.101	10.00
wcorbishley9d	CHEN.102	6.00
wcorbishley9d	CHEN.103	7.00
wcorbishley9d	CHEN.201	7.00
wcorbishley9d	CHEN.202	9.00
wcorbishley9d	CHEN.203	10.00
wcorbishley9d	CHEN.301	6.00
wcorbishley9d	CHEN.302	8.00
wcorbishley9d	CHEN.303	6.00
wcorbishley9d	CHEN.401	7.00
wcorbishley9d	CHEN.402	5.00
wcorbishley9d	CHEN.403	9.00
kiacavonea9	CHEN.101	7.00
kiacavonea9	CHEN.102	10.00
kiacavonea9	CHEN.103	6.00
kiacavonea9	CHEN.201	6.00
kiacavonea9	CHEN.202	9.00
kiacavonea9	CHEN.203	10.00
kiacavonea9	CHEN.301	7.00
kiacavonea9	CHEN.302	10.00
kiacavonea9	CHEN.303	10.00
kiacavonea9	CHEN.401	10.00
kiacavonea9	CHEN.402	6.00
kiacavonea9	CHEN.403	6.00
kiacavonea9	CHEN.501	6.00
kiacavonea9	CHEN.502	8.00
kiacavonea9	CHEN.503	8.00
kiacavonea9	CHEN.601	7.00
kfysh9j	CHEN.101	6.00
kfysh9j	CHEN.102	8.00
kfysh9j	CHEN.103	8.00
kfysh9j	CHEN.201	6.00
kfysh9j	CHEN.202	6.00
kfysh9j	CHEN.203	9.00
kfysh9j	CHEN.301	7.00
kfysh9j	CHEN.302	7.00
kfysh9j	CHEN.303	6.00
kfysh9j	CHEN.401	5.00
kfysh9j	CHEN.402	9.00
csimnellf6	CHEN.101	8.00
csimnellf6	CHEN.102	6.00
csimnellf6	CHEN.103	9.00
csimnellf6	CHEN.201	9.00
csimnellf6	CHEN.202	9.00
csimnellf6	CHEN.203	8.00
csimnellf6	CHEN.301	5.00
csimnellf6	CHEN.302	5.00
csimnellf6	CHEN.303	7.00
csimnellf6	CHEN.401	10.00
csimnellf6	CHEN.402	10.00
csimnellf6	CHEN.403	9.00
csimnellf6	CHEN.501	5.00
csimnellf6	CHEN.502	9.00
csimnellf6	CHEN.503	8.00
csimnellf6	CHEN.601	9.00
csimnellf6	CHEN.602	9.00
sbuckoke13	CHEN.101	9.00
sbuckoke13	CHEN.102	9.00
sbuckoke13	CHEN.103	6.00
sbuckoke13	CHEN.201	6.00
sbuckoke13	CHEN.202	6.00
sbuckoke13	CHEN.203	7.00
sbuckoke13	CHEN.301	8.00
sbuckoke13	CHEN.302	10.00
sbuckoke13	CHEN.303	5.00
sbuckoke13	CHEN.401	6.00
sbuckoke13	CHEN.402	9.00
sbuckoke13	CHEN.403	10.00
sbuckoke13	CHEN.501	7.00
sbuckoke13	CHEN.502	7.00
sbuckoke13	CHEN.503	8.00
sbuckoke13	CHEN.601	8.00
dwallicecb	CHEN.101	6.00
dwallicecb	CHEN.102	6.00
dwallicecb	CHEN.103	5.00
dwallicecb	CHEN.201	7.00
dwallicecb	CHEN.202	10.00
dwallicecb	CHEN.203	10.00
dwallicecb	CHEN.301	8.00
dwallicecb	CHEN.302	9.00
dwallicecb	CHEN.303	9.00
dwallicecb	CHEN.401	6.00
dwallicecb	CHEN.402	10.00
dwallicecb	CHEN.403	9.00
dwallicecb	CHEN.501	8.00
dwallicecb	CHEN.502	9.00
dwallicecb	CHEN.503	8.00
nthunderse6	CHEN.101	5.00
nthunderse6	CHEN.102	8.00
nthunderse6	CHEN.103	10.00
nthunderse6	CHEN.201	6.00
nthunderse6	CHEN.202	9.00
nthunderse6	CHEN.203	8.00
nthunderse6	CHEN.301	9.00
nthunderse6	CHEN.302	5.00
nthunderse6	CHEN.303	5.00
nthunderse6	CHEN.401	6.00
nthunderse6	CHEN.402	6.00
nthunderse6	CHEN.403	5.00
nthunderse6	CHEN.501	10.00
nthunderse6	CHEN.502	7.00
nthunderse6	CHEN.503	8.00
nthunderse6	CHEN.601	9.00
nthunderse6	CHEN.602	6.00
nthunderse6	CHEN.603	5.00
nthunderse6	CHEN.701	8.00
nthunderse6	CHEN.702	10.00
edayment2	CHEN.101	6.00
edayment2	CHEN.102	8.00
edayment2	CHEN.103	6.00
edayment2	CHEN.201	6.00
edayment2	CHEN.202	8.00
edayment2	CHEN.203	5.00
edayment2	CHEN.301	6.00
edayment2	CHEN.302	8.00
edayment2	CHEN.303	9.00
edayment2	CHEN.401	7.00
svolante4	CHEN.101	7.00
svolante4	CHEN.102	7.00
svolante4	CHEN.103	8.00
svolante4	CHEN.201	5.00
svolante4	CHEN.202	10.00
svolante4	CHEN.203	8.00
svolante4	CHEN.301	9.00
svolante4	CHEN.302	9.00
svolante4	CHEN.303	7.00
aseelbach7p	CHEN.101	9.00
aseelbach7p	CHEN.102	10.00
aseelbach7p	CHEN.103	7.00
aseelbach7p	CHEN.201	6.00
aseelbach7p	CHEN.202	5.00
aseelbach7p	CHEN.203	5.00
aseelbach7p	CHEN.301	7.00
aseelbach7p	CHEN.302	9.00
aseelbach7p	CHEN.303	7.00
aseelbach7p	CHEN.401	5.00
aseelbach7p	CHEN.402	9.00
aseelbach7p	CHEN.403	8.00
aseelbach7p	CHEN.501	8.00
aseelbach7p	CHEN.502	9.00
aseelbach7p	CHEN.503	6.00
aseelbach7p	CHEN.601	7.00
aseelbach7p	CHEN.602	5.00
aseelbach7p	CHEN.603	10.00
aseelbach7p	CHEN.701	6.00
aseelbach7p	CHEN.702	9.00
jmartinet82	CHEN.101	5.00
jmartinet82	CHEN.102	10.00
jmartinet82	CHEN.103	8.00
jmartinet82	CHEN.201	8.00
jmartinet82	CHEN.202	9.00
jmartinet82	CHEN.203	5.00
jmartinet82	CHEN.301	9.00
jmartinet82	CHEN.302	8.00
jmartinet82	CHEN.303	10.00
jmartinet82	CHEN.401	7.00
jmartinet82	CHEN.402	9.00
jmartinet82	CHEN.403	5.00
jmartinet82	CHEN.501	10.00
jmartinet82	CHEN.502	7.00
jmartinet82	CHEN.503	6.00
jmartinet82	CHEN.601	10.00
jmartinet82	CHEN.602	6.00
jmartinet82	CHEN.603	6.00
jmartinet82	CHEN.701	9.00
jmartinet82	CHEN.702	6.00
jmartinet82	CHEN.703	10.00
wchilde8i	CHEN.101	10.00
wchilde8i	CHEN.102	8.00
wchilde8i	CHEN.103	10.00
wchilde8i	CHEN.201	5.00
wchilde8i	CHEN.202	10.00
wchilde8i	CHEN.203	6.00
wchilde8i	CHEN.301	8.00
wchilde8i	CHEN.302	9.00
wchilde8i	CHEN.303	5.00
wchilde8i	CHEN.401	6.00
wchilde8i	CHEN.402	7.00
wchilde8i	CHEN.403	5.00
wchilde8i	CHEN.501	6.00
wchilde8i	CHEN.502	5.00
wchilde8i	CHEN.503	9.00
wchilde8i	CHEN.601	5.00
wchilde8i	CHEN.602	7.00
wchilde8i	CHEN.603	6.00
wchilde8i	CHEN.701	8.00
wchilde8i	CHEN.702	6.00
wchilde8i	CHEN.703	6.00
rallsopph	CHEN.101	8.00
rallsopph	CHEN.102	7.00
rallsopph	CHEN.103	6.00
rallsopph	CHEN.201	5.00
rallsopph	CHEN.202	5.00
rallsopph	CHEN.203	7.00
rallsopph	CHEN.301	7.00
rallsopph	CHEN.302	5.00
rallsopph	CHEN.303	10.00
rallsopph	CHEN.401	9.00
rallsopph	CHEN.402	5.00
rallsopph	CHEN.403	7.00
rallsopph	CHEN.501	6.00
rallsopph	CHEN.502	5.00
rallsopph	CHEN.503	6.00
rallsopph	CHEN.601	7.00
rallsopph	CHEN.602	8.00
rallsopph	CHEN.603	5.00
rallsopph	CHEN.701	9.00
rallsopph	CHEN.702	5.00
rallsopph	CHEN.703	10.00
rallsopph	CHEN.801	9.00
rallsopph	CHEN.802	7.00
rallsopph	CHEN.803	9.00
wferrieripi	CHEN.101	9.00
wferrieripi	CHEN.102	9.00
wferrieripi	CHEN.103	10.00
wferrieripi	CHEN.201	6.00
wferrieripi	CHEN.202	8.00
wferrieripi	CHEN.203	7.00
wferrieripi	CHEN.301	8.00
wferrieripi	CHEN.302	10.00
wferrieripi	CHEN.303	7.00
wferrieripi	CHEN.401	7.00
wferrieripi	CHEN.402	5.00
wferrieripi	CHEN.403	9.00
wferrieripi	CHEN.501	5.00
wferrieripi	CHEN.502	8.00
wferrieripi	CHEN.503	6.00
wferrieripi	CHEN.601	10.00
wferrieripi	CHEN.602	5.00
wferrieripi	CHEN.603	5.00
nsidwick80	NUSEC.101	6.00
nsidwick80	NUSEC.102	9.00
nsidwick80	NUSEC.103	9.00
nsidwick80	NUSEC.201	9.00
nsidwick80	NUSEC.202	10.00
nsidwick80	NUSEC.203	10.00
nsidwick80	NUSEC.301	9.00
nsidwick80	NUSEC.302	10.00
nsidwick80	NUSEC.303	7.00
nsidwick80	NUSEC.401	7.00
nsidwick80	NUSEC.402	6.00
nsidwick80	NUSEC.403	9.00
nsidwick80	NUSEC.501	9.00
nsidwick80	NUSEC.502	9.00
nsidwick80	NUSEC.503	5.00
nsidwick80	NUSEC.601	5.00
nsidwick80	NUSEC.602	10.00
nsidwick80	NUSEC.603	8.00
nsidwick80	NUSEC.701	8.00
nsidwick80	NUSEC.702	7.00
nsidwick80	NUSEC.703	8.00
nsidwick80	NUSEC.801	9.00
rmacgormanaa	NUSEC.101	8.00
rmacgormanaa	NUSEC.102	5.00
rmacgormanaa	NUSEC.103	5.00
rmacgormanaa	NUSEC.201	8.00
rmacgormanaa	NUSEC.202	10.00
rmacgormanaa	NUSEC.203	10.00
rmacgormanaa	NUSEC.301	8.00
rmacgormanaa	NUSEC.302	9.00
rmacgormanaa	NUSEC.303	7.00
rmacgormanaa	NUSEC.401	9.00
rmacgormanaa	NUSEC.402	5.00
rmacgormanaa	NUSEC.403	6.00
rmacgormanaa	NUSEC.501	5.00
rmacgormanaa	NUSEC.502	9.00
rmacgormanaa	NUSEC.503	5.00
rmacgormanaa	NUSEC.601	7.00
rmacgormanaa	NUSEC.602	9.00
rmacgormanaa	NUSEC.603	7.00
rmacgormanaa	NUSEC.701	5.00
rmacgormanaa	NUSEC.702	10.00
rmacgormanaa	NUSEC.703	7.00
rmacgormanaa	NUSEC.801	6.00
bcrosonbr	NUSEC.101	10.00
bcrosonbr	NUSEC.102	10.00
bcrosonbr	NUSEC.103	7.00
bcrosonbr	NUSEC.201	9.00
bcrosonbr	NUSEC.202	10.00
bcrosonbr	NUSEC.203	5.00
bcrosonbr	NUSEC.301	9.00
bcrosonbr	NUSEC.302	6.00
bcrosonbr	NUSEC.303	8.00
bcrosonbr	NUSEC.401	9.00
bcrosonbr	NUSEC.402	5.00
bcrosonbr	NUSEC.403	10.00
bcrosonbr	NUSEC.501	9.00
bcrosonbr	NUSEC.502	9.00
bcrosonbr	NUSEC.503	10.00
bcrosonbr	NUSEC.601	5.00
bcrosonbr	NUSEC.602	8.00
bcrosonbr	NUSEC.603	7.00
bmcnaye0	NUSEC.101	5.00
bmcnaye0	NUSEC.102	5.00
bmcnaye0	NUSEC.103	10.00
bmcnaye0	NUSEC.201	6.00
bmcnaye0	NUSEC.202	9.00
bmcnaye0	NUSEC.203	5.00
bmcnaye0	NUSEC.301	5.00
bmcnaye0	NUSEC.302	6.00
bmcnaye0	NUSEC.303	5.00
bmcnaye0	NUSEC.401	6.00
bmcnaye0	NUSEC.402	6.00
bmcnaye0	NUSEC.403	8.00
bmcnaye0	NUSEC.501	7.00
bmcnaye0	NUSEC.502	8.00
bsierms	NUSEC.101	6.00
bsierms	NUSEC.102	7.00
bsierms	NUSEC.103	6.00
bsierms	NUSEC.201	7.00
bsierms	NUSEC.202	9.00
bsierms	NUSEC.203	5.00
bsierms	NUSEC.301	6.00
bsierms	NUSEC.302	5.00
bsierms	NUSEC.303	9.00
bsierms	NUSEC.401	6.00
bsierms	NUSEC.402	6.00
mdelavaletteparisotoi	NUSEC.101	5.00
mdelavaletteparisotoi	NUSEC.102	5.00
mdelavaletteparisotoi	NUSEC.103	5.00
mdelavaletteparisotoi	NUSEC.201	9.00
mdelavaletteparisotoi	NUSEC.202	9.00
mdelavaletteparisotoi	NUSEC.203	7.00
mdelavaletteparisotoi	NUSEC.301	9.00
mdelavaletteparisotoi	NUSEC.302	5.00
mdelavaletteparisotoi	NUSEC.303	9.00
mdelavaletteparisotoi	NUSEC.401	10.00
mdelavaletteparisotoi	NUSEC.402	10.00
mdelavaletteparisotoi	NUSEC.403	10.00
mdelavaletteparisotoi	NUSEC.501	8.00
mdelavaletteparisotoi	NUSEC.502	7.00
mdelavaletteparisotoi	NUSEC.503	9.00
mdelavaletteparisotoi	NUSEC.601	7.00
mdelavaletteparisotoi	NUSEC.602	7.00
mdelavaletteparisotoi	NUSEC.603	7.00
mdelavaletteparisotoi	NUSEC.701	9.00
mdelavaletteparisotoi	NUSEC.702	8.00
mdelavaletteparisotoi	NUSEC.703	10.00
mdelavaletteparisotoi	NUSEC.801	8.00
blockleyok	NUSEC.101	7.00
blockleyok	NUSEC.102	9.00
blockleyok	NUSEC.103	5.00
blockleyok	NUSEC.201	9.00
blockleyok	NUSEC.202	8.00
blockleyok	NUSEC.203	10.00
blockleyok	NUSEC.301	5.00
blockleyok	NUSEC.302	9.00
blockleyok	NUSEC.303	10.00
blockleyok	NUSEC.401	6.00
blockleyok	NUSEC.402	8.00
blockleyok	NUSEC.403	10.00
blockleyok	NUSEC.501	10.00
rdarlasson8	NUSEC.101	8.00
rdarlasson8	NUSEC.102	8.00
rdarlasson8	NUSEC.103	5.00
rdarlasson8	NUSEC.201	10.00
rdarlasson8	NUSEC.202	10.00
rdarlasson8	NUSEC.203	10.00
rdarlasson8	NUSEC.301	9.00
tedgerley40	NUSEC.101	10.00
tedgerley40	NUSEC.102	6.00
tedgerley40	NUSEC.103	7.00
tedgerley40	NUSEC.201	7.00
tedgerley40	NUSEC.202	5.00
tedgerley40	NUSEC.203	9.00
tedgerley40	NUSEC.301	10.00
tedgerley40	NUSEC.302	7.00
tedgerley40	NUSEC.303	6.00
tedgerley40	NUSEC.401	7.00
tedgerley40	NUSEC.402	9.00
tedgerley40	NUSEC.403	9.00
tedgerley40	NUSEC.501	8.00
tedgerley40	NUSEC.502	7.00
tedgerley40	NUSEC.503	6.00
tedgerley40	NUSEC.601	5.00
hwalbridgegs	NUSEC.101	5.00
hwalbridgegs	NUSEC.102	5.00
hwalbridgegs	NUSEC.103	5.00
hwalbridgegs	NUSEC.201	6.00
hwalbridgegs	NUSEC.202	7.00
hwalbridgegs	NUSEC.203	9.00
hwalbridgegs	NUSEC.301	10.00
hwalbridgegs	NUSEC.302	6.00
hwalbridgegs	NUSEC.303	8.00
hwalbridgegs	NUSEC.401	10.00
hwalbridgegs	NUSEC.402	7.00
hwalbridgegs	NUSEC.403	5.00
hwalbridgegs	NUSEC.501	9.00
hwalbridgegs	NUSEC.502	6.00
hwalbridgegs	NUSEC.503	9.00
hwalbridgegs	NUSEC.601	6.00
wkirvinhc	NUSEC.101	10.00
wkirvinhc	NUSEC.102	9.00
wkirvinhc	NUSEC.103	9.00
wkirvinhc	NUSEC.201	7.00
wkirvinhc	NUSEC.202	9.00
wkirvinhc	NUSEC.203	10.00
wkirvinhc	NUSEC.301	7.00
wkirvinhc	NUSEC.302	10.00
wkirvinhc	NUSEC.303	5.00
wkirvinhc	NUSEC.401	6.00
wkirvinhc	NUSEC.402	10.00
wkirvinhc	NUSEC.403	10.00
wkirvinhc	NUSEC.501	6.00
wkirvinhc	NUSEC.502	6.00
joteagueh1	NUSEC.101	7.00
joteagueh1	NUSEC.102	8.00
joteagueh1	NUSEC.103	7.00
joteagueh1	NUSEC.201	5.00
joteagueh1	NUSEC.202	10.00
joteagueh1	NUSEC.203	8.00
joteagueh1	NUSEC.301	6.00
joteagueh1	NUSEC.302	5.00
joteagueh1	NUSEC.303	5.00
joteagueh1	NUSEC.401	6.00
joteagueh1	NUSEC.402	7.00
joteagueh1	NUSEC.403	7.00
eharrald50	NUSEC.101	9.00
eharrald50	NUSEC.102	8.00
eharrald50	NUSEC.103	7.00
eharrald50	NUSEC.201	8.00
eharrald50	NUSEC.202	7.00
eharrald50	NUSEC.203	6.00
eharrald50	NUSEC.301	6.00
eharrald50	NUSEC.302	5.00
eharrald50	NUSEC.303	10.00
eharrald50	NUSEC.401	9.00
eharrald50	NUSEC.402	8.00
eharrald50	NUSEC.403	6.00
eharrald50	NUSEC.501	10.00
eharrald50	NUSEC.502	8.00
eharrald50	NUSEC.503	8.00
eharrald50	NUSEC.601	8.00
eharrald50	NUSEC.602	8.00
eharrald50	NUSEC.603	7.00
lheathcott5f	NUSEC.101	8.00
lheathcott5f	NUSEC.102	7.00
lheathcott5f	NUSEC.103	6.00
lheathcott5f	NUSEC.201	9.00
lheathcott5f	NUSEC.202	5.00
lheathcott5f	NUSEC.203	10.00
lheathcott5f	NUSEC.301	8.00
emcgarahan5j	NUSEC.101	5.00
emcgarahan5j	NUSEC.102	10.00
emcgarahan5j	NUSEC.103	8.00
emcgarahan5j	NUSEC.201	9.00
emcgarahan5j	NUSEC.202	8.00
emcgarahan5j	NUSEC.203	9.00
emcgarahan5j	NUSEC.301	9.00
emcgarahan5j	NUSEC.302	8.00
emcgarahan5j	NUSEC.303	7.00
emcgarahan5j	NUSEC.401	8.00
emcgarahan5j	NUSEC.402	5.00
sjansens5k	NUSEC.101	9.00
sjansens5k	NUSEC.102	10.00
sjansens5k	NUSEC.103	8.00
sjansens5k	NUSEC.201	5.00
sjansens5k	NUSEC.202	10.00
sjansens5k	NUSEC.203	9.00
sjansens5k	NUSEC.301	8.00
sjansens5k	NUSEC.302	7.00
sjansens5k	NUSEC.303	8.00
sjansens5k	NUSEC.401	6.00
sjansens5k	NUSEC.402	8.00
sjansens5k	NUSEC.403	7.00
sjansens5k	NUSEC.501	7.00
sjansens5k	NUSEC.502	8.00
sjansens5k	NUSEC.503	7.00
smccreath7w	NUSEC.101	6.00
smccreath7w	NUSEC.102	6.00
smccreath7w	NUSEC.103	7.00
smccreath7w	NUSEC.201	7.00
smccreath7w	NUSEC.202	7.00
smccreath7w	NUSEC.203	5.00
smccreath7w	NUSEC.301	8.00
smccreath7w	NUSEC.302	9.00
smccreath7w	NUSEC.303	7.00
smccreath7w	NUSEC.401	10.00
smccreath7w	NUSEC.402	5.00
glory7z	NUSEC.101	6.00
glory7z	NUSEC.102	6.00
glory7z	NUSEC.103	6.00
glory7z	NUSEC.201	7.00
glory7z	NUSEC.202	7.00
glory7z	NUSEC.203	8.00
glory7z	NUSEC.301	6.00
glory7z	NUSEC.302	5.00
glory7z	NUSEC.303	6.00
glory7z	NUSEC.401	5.00
glory7z	NUSEC.402	5.00
glory7z	NUSEC.403	9.00
glory7z	NUSEC.501	5.00
glory7z	NUSEC.502	9.00
glory7z	NUSEC.503	8.00
sgye5z	NUSEC.101	10.00
sgye5z	NUSEC.102	8.00
sgye5z	NUSEC.103	7.00
sgye5z	NUSEC.201	5.00
sgye5z	NUSEC.202	10.00
sgye5z	NUSEC.203	7.00
sgye5z	NUSEC.301	7.00
sgye5z	NUSEC.302	6.00
sgye5z	NUSEC.303	5.00
sgye5z	NUSEC.401	9.00
sgye5z	NUSEC.402	6.00
sgye5z	NUSEC.403	5.00
sgye5z	NUSEC.501	8.00
ebenkhe67	NUSEC.101	7.00
ebenkhe67	NUSEC.102	8.00
ebenkhe67	NUSEC.103	6.00
ebenkhe67	NUSEC.201	6.00
ebenkhe67	NUSEC.202	9.00
ebenkhe67	NUSEC.203	9.00
ebenkhe67	NUSEC.301	9.00
ebenkhe67	NUSEC.302	9.00
ebenkhe67	NUSEC.303	6.00
ebenkhe67	NUSEC.401	8.00
ebenkhe67	NUSEC.402	10.00
ebenkhe67	NUSEC.403	8.00
ebenkhe67	NUSEC.501	8.00
ebenkhe67	NUSEC.502	6.00
icantillon6e	NUSEC.101	9.00
icantillon6e	NUSEC.102	9.00
icantillon6e	NUSEC.103	5.00
icantillon6e	NUSEC.201	7.00
icantillon6e	NUSEC.202	5.00
icantillon6e	NUSEC.203	10.00
icantillon6e	NUSEC.301	8.00
icantillon6e	NUSEC.302	9.00
icantillon6e	NUSEC.303	8.00
icantillon6e	NUSEC.401	7.00
icantillon6e	NUSEC.402	8.00
icantillon6e	NUSEC.403	5.00
icantillon6e	NUSEC.501	5.00
icantillon6e	NUSEC.502	5.00
icantillon6e	NUSEC.503	7.00
icantillon6e	NUSEC.601	9.00
icantillon6e	NUSEC.602	5.00
icantillon6e	NUSEC.603	8.00
mphippen6s	NUSEC.101	5.00
mphippen6s	NUSEC.102	9.00
mphippen6s	NUSEC.103	6.00
mphippen6s	NUSEC.201	10.00
mphippen6s	NUSEC.202	6.00
mphippen6s	NUSEC.203	7.00
mphippen6s	NUSEC.301	9.00
mphippen6s	NUSEC.302	5.00
mphippen6s	NUSEC.303	8.00
mphippen6s	NUSEC.401	9.00
mphippen6s	NUSEC.402	7.00
mphippen6s	NUSEC.403	7.00
mphippen6s	NUSEC.501	9.00
mphippen6s	NUSEC.502	6.00
mphippen6s	NUSEC.503	5.00
mphippen6s	NUSEC.601	5.00
mphippen6s	NUSEC.602	8.00
mphippen6s	NUSEC.603	8.00
mphippen6s	NUSEC.701	6.00
mphippen6s	NUSEC.702	10.00
mphippen6s	NUSEC.703	10.00
fgores6o	NUSEC.101	7.00
fgores6o	NUSEC.102	9.00
fgores6o	NUSEC.103	5.00
fgores6o	NUSEC.201	7.00
fgores6o	NUSEC.202	6.00
fgores6o	NUSEC.203	8.00
fgores6o	NUSEC.301	10.00
fgores6o	NUSEC.302	10.00
fgores6o	NUSEC.303	5.00
fgores6o	NUSEC.401	8.00
fgores6o	NUSEC.402	10.00
fgores6o	NUSEC.403	6.00
fgores6o	NUSEC.501	7.00
fgores6o	NUSEC.502	6.00
fgores6o	NUSEC.503	7.00
fgores6o	NUSEC.601	8.00
fgores6o	NUSEC.602	9.00
fgores6o	NUSEC.603	5.00
fgores6o	NUSEC.701	9.00
fgores6o	NUSEC.702	7.00
fgores6o	NUSEC.703	10.00
fgores6o	NUSEC.801	10.00
fgores6o	NUSEC.802	9.00
wshooter71	NUSEC.101	9.00
wshooter71	NUSEC.102	7.00
wshooter71	NUSEC.103	6.00
wshooter71	NUSEC.201	7.00
wshooter71	NUSEC.202	6.00
wshooter71	NUSEC.203	6.00
wshooter71	NUSEC.301	7.00
wshooter71	NUSEC.302	8.00
wshooter71	NUSEC.303	6.00
wshooter71	NUSEC.401	8.00
wshooter71	NUSEC.402	5.00
wshooter71	NUSEC.403	6.00
wshooter71	NUSEC.501	10.00
wshooter71	NUSEC.502	6.00
wshooter71	NUSEC.503	5.00
wshooter71	NUSEC.601	7.00
wshooter71	NUSEC.602	8.00
wshooter71	NUSEC.603	8.00
wshooter71	NUSEC.701	8.00
wshooter71	NUSEC.702	9.00
tsherry72	NUSEC.101	9.00
tsherry72	NUSEC.102	6.00
tsherry72	NUSEC.103	9.00
tsherry72	NUSEC.201	10.00
tsherry72	NUSEC.202	7.00
tsherry72	NUSEC.203	8.00
tsherry72	NUSEC.301	9.00
tsherry72	NUSEC.302	9.00
tsherry72	NUSEC.303	10.00
tsherry72	NUSEC.401	5.00
tsherry72	NUSEC.402	10.00
tsherry72	NUSEC.403	5.00
tsherry72	NUSEC.501	7.00
tsherry72	NUSEC.502	10.00
tsherry72	NUSEC.503	9.00
tsherry72	NUSEC.601	7.00
tsherry72	NUSEC.602	9.00
skellart7v	NUSEC.101	8.00
skellart7v	NUSEC.102	9.00
skellart7v	NUSEC.103	5.00
skellart7v	NUSEC.201	6.00
skellart7v	NUSEC.202	6.00
skellart7v	NUSEC.203	7.00
skellart7v	NUSEC.301	6.00
skellart7v	NUSEC.302	9.00
skellart7v	NUSEC.303	6.00
skellart7v	NUSEC.401	6.00
skellart7v	NUSEC.402	9.00
skellart7v	NUSEC.403	8.00
skellart7v	NUSEC.501	6.00
skellart7v	NUSEC.502	6.00
skellart7v	NUSEC.503	8.00
skellart7v	NUSEC.601	5.00
skellart7v	NUSEC.602	7.00
skellart7v	NUSEC.603	8.00
hstovingar	NUSEC.101	7.00
hstovingar	NUSEC.102	8.00
hstovingar	NUSEC.103	6.00
hstovingar	NUSEC.201	9.00
hstovingar	NUSEC.202	9.00
hstovingar	NUSEC.203	8.00
hstovingar	NUSEC.301	5.00
londrasek8q	NUSEC.101	5.00
londrasek8q	NUSEC.102	9.00
londrasek8q	NUSEC.103	7.00
londrasek8q	NUSEC.201	5.00
londrasek8q	NUSEC.202	7.00
londrasek8q	NUSEC.203	9.00
londrasek8q	NUSEC.301	7.00
londrasek8q	NUSEC.302	6.00
londrasek8q	NUSEC.303	6.00
londrasek8q	NUSEC.401	7.00
londrasek8q	NUSEC.402	9.00
londrasek8q	NUSEC.403	5.00
londrasek8q	NUSEC.501	9.00
londrasek8q	NUSEC.502	9.00
londrasek8q	NUSEC.503	7.00
londrasek8q	NUSEC.601	9.00
londrasek8q	NUSEC.602	10.00
londrasek8q	NUSEC.603	6.00
londrasek8q	NUSEC.701	6.00
londrasek8q	NUSEC.702	6.00
londrasek8q	NUSEC.703	8.00
wkillimister8u	NUSEC.101	6.00
wkillimister8u	NUSEC.102	6.00
wkillimister8u	NUSEC.103	5.00
wkillimister8u	NUSEC.201	5.00
wkillimister8u	NUSEC.202	7.00
wkillimister8u	NUSEC.203	7.00
wkillimister8u	NUSEC.301	9.00
wkillimister8u	NUSEC.302	10.00
aswadlin90	NUSEC.101	7.00
aswadlin90	NUSEC.102	10.00
aswadlin90	NUSEC.103	10.00
aswadlin90	NUSEC.201	8.00
aswadlin90	NUSEC.202	7.00
aswadlin90	NUSEC.203	8.00
aswadlin90	NUSEC.301	8.00
aswadlin90	NUSEC.302	7.00
aswadlin90	NUSEC.303	10.00
aswadlin90	NUSEC.401	5.00
aswadlin90	NUSEC.402	8.00
aswadlin90	NUSEC.403	6.00
aswadlin90	NUSEC.501	10.00
boneary97	NUSEC.101	7.00
boneary97	NUSEC.102	10.00
boneary97	NUSEC.103	10.00
boneary97	NUSEC.201	7.00
boneary97	NUSEC.202	10.00
boneary97	NUSEC.203	7.00
boneary97	NUSEC.301	6.00
boneary97	NUSEC.302	9.00
boneary97	NUSEC.303	9.00
boneary97	NUSEC.401	8.00
boneary97	NUSEC.402	6.00
boneary97	NUSEC.403	7.00
boneary97	NUSEC.501	5.00
boneary97	NUSEC.502	8.00
boneary97	NUSEC.503	5.00
boneary97	NUSEC.601	6.00
boneary97	NUSEC.602	5.00
boneary97	NUSEC.603	8.00
ibozward9z	NUSEC.101	5.00
ibozward9z	NUSEC.102	9.00
ibozward9z	NUSEC.103	6.00
ibozward9z	NUSEC.201	8.00
ibozward9z	NUSEC.202	8.00
ibozward9z	NUSEC.203	8.00
ibozward9z	NUSEC.301	10.00
ibozward9z	NUSEC.302	9.00
ibozward9z	NUSEC.303	6.00
ibozward9z	NUSEC.401	6.00
ibozward9z	NUSEC.402	6.00
ibozward9z	NUSEC.403	10.00
ibozward9z	NUSEC.501	8.00
ibozward9z	NUSEC.502	10.00
ibozward9z	NUSEC.503	6.00
ibozward9z	NUSEC.601	5.00
ibozward9z	NUSEC.602	9.00
ibozward9z	NUSEC.603	8.00
ibozward9z	NUSEC.701	5.00
ibozward9z	NUSEC.702	6.00
hadnea0	NUSEC.101	8.00
hadnea0	NUSEC.102	6.00
hadnea0	NUSEC.103	8.00
hadnea0	NUSEC.201	5.00
hadnea0	NUSEC.202	6.00
hadnea0	NUSEC.203	7.00
hadnea0	NUSEC.301	5.00
hadnea0	NUSEC.302	5.00
hadnea0	NUSEC.303	8.00
hadnea0	NUSEC.401	8.00
hadnea0	NUSEC.402	5.00
hadnea0	NUSEC.403	10.00
hadnea0	NUSEC.501	8.00
hadnea0	NUSEC.502	6.00
hadnea0	NUSEC.503	7.00
hadnea0	NUSEC.601	9.00
hadnea0	NUSEC.602	10.00
hadnea0	NUSEC.603	6.00
dspellesya4	NUSEC.101	9.00
dspellesya4	NUSEC.102	9.00
dspellesya4	NUSEC.103	6.00
dspellesya4	NUSEC.201	10.00
dspellesya4	NUSEC.202	9.00
dspellesya4	NUSEC.203	5.00
dspellesya4	NUSEC.301	7.00
dspellesya4	NUSEC.302	8.00
dspellesya4	NUSEC.303	6.00
dspellesya4	NUSEC.401	8.00
dspellesya4	NUSEC.402	7.00
dspellesya4	NUSEC.403	8.00
dspellesya4	NUSEC.501	10.00
dspellesya4	NUSEC.502	6.00
dspellesya4	NUSEC.503	9.00
dspellesya4	NUSEC.601	6.00
lreaditt9q	NUSEC.101	9.00
lreaditt9q	NUSEC.102	10.00
lreaditt9q	NUSEC.103	8.00
lreaditt9q	NUSEC.201	10.00
lreaditt9q	NUSEC.202	7.00
lreaditt9q	NUSEC.203	9.00
lreaditt9q	NUSEC.301	8.00
lreaditt9q	NUSEC.302	10.00
lreaditt9q	NUSEC.303	5.00
lreaditt9q	NUSEC.401	7.00
lreaditt9q	NUSEC.402	10.00
lreaditt9q	NUSEC.403	6.00
lreaditt9q	NUSEC.501	7.00
lreaditt9q	NUSEC.502	7.00
lreaditt9q	NUSEC.503	7.00
lreaditt9q	NUSEC.601	10.00
tgisbyea6	NUSEC.101	5.00
tgisbyea6	NUSEC.102	10.00
tgisbyea6	NUSEC.103	6.00
tgisbyea6	NUSEC.201	10.00
tgisbyea6	NUSEC.202	8.00
tgisbyea6	NUSEC.203	6.00
tgisbyea6	NUSEC.301	8.00
tgisbyea6	NUSEC.302	7.00
tgisbyea6	NUSEC.303	9.00
tgisbyea6	NUSEC.401	7.00
tgisbyea6	NUSEC.402	6.00
mminchindonaf	NUSEC.101	5.00
mminchindonaf	NUSEC.102	6.00
mminchindonaf	NUSEC.103	10.00
mminchindonaf	NUSEC.201	9.00
mminchindonaf	NUSEC.202	7.00
mminchindonaf	NUSEC.203	9.00
mminchindonaf	NUSEC.301	10.00
wcampsallb5	NUSEC.101	5.00
wcampsallb5	NUSEC.102	5.00
wcampsallb5	NUSEC.103	6.00
wcampsallb5	NUSEC.201	10.00
wcampsallb5	NUSEC.202	10.00
wcampsallb5	NUSEC.203	5.00
wcampsallb5	NUSEC.301	10.00
wcampsallb5	NUSEC.302	5.00
wcampsallb5	NUSEC.303	5.00
wcampsallb5	NUSEC.401	9.00
wcampsallb5	NUSEC.402	6.00
wcampsallb5	NUSEC.403	10.00
wcampsallb5	NUSEC.501	5.00
wcampsallb5	NUSEC.502	6.00
wcampsallb5	NUSEC.503	9.00
fowbrickcz	NUSEC.101	10.00
fowbrickcz	NUSEC.102	9.00
fowbrickcz	NUSEC.103	7.00
fowbrickcz	NUSEC.201	7.00
fowbrickcz	NUSEC.202	7.00
fowbrickcz	NUSEC.203	8.00
fowbrickcz	NUSEC.301	7.00
fowbrickcz	NUSEC.302	10.00
whefferbu	NUSEC.101	10.00
whefferbu	NUSEC.102	8.00
whefferbu	NUSEC.103	10.00
whefferbu	NUSEC.201	9.00
whefferbu	NUSEC.202	9.00
whefferbu	NUSEC.203	9.00
whefferbu	NUSEC.301	8.00
whefferbu	NUSEC.302	5.00
whefferbu	NUSEC.303	9.00
whefferbu	NUSEC.401	9.00
whefferbu	NUSEC.402	10.00
whefferbu	NUSEC.403	8.00
aspollencm	NUSEC.101	7.00
aspollencm	NUSEC.102	7.00
aspollencm	NUSEC.103	7.00
aspollencm	NUSEC.201	9.00
aspollencm	NUSEC.202	10.00
aspollencm	NUSEC.203	7.00
aspollencm	NUSEC.301	5.00
aspollencm	NUSEC.302	9.00
bjanczewskiby	NUSEC.101	6.00
bjanczewskiby	NUSEC.102	10.00
bjanczewskiby	NUSEC.103	6.00
bjanczewskiby	NUSEC.201	10.00
bjanczewskiby	NUSEC.202	6.00
bjanczewskiby	NUSEC.203	10.00
bjanczewskiby	NUSEC.301	8.00
bjanczewskiby	NUSEC.302	6.00
bjanczewskiby	NUSEC.303	8.00
bjanczewskiby	NUSEC.401	6.00
bjanczewskiby	NUSEC.402	5.00
bjanczewskiby	NUSEC.403	5.00
bjanczewskiby	NUSEC.501	5.00
bjanczewskiby	NUSEC.502	8.00
bjanczewskiby	NUSEC.503	10.00
bjanczewskiby	NUSEC.601	9.00
bjanczewskiby	NUSEC.602	7.00
bjanczewskiby	NUSEC.603	9.00
bjanczewskiby	NUSEC.701	5.00
bjanczewskiby	NUSEC.702	7.00
bjanczewskiby	NUSEC.703	10.00
mstoppc9	NUSEC.101	8.00
mstoppc9	NUSEC.102	9.00
mstoppc9	NUSEC.103	9.00
mstoppc9	NUSEC.201	5.00
mstoppc9	NUSEC.202	7.00
mstoppc9	NUSEC.203	9.00
mstoppc9	NUSEC.301	5.00
mstoppc9	NUSEC.302	10.00
mstoppc9	NUSEC.303	8.00
mstoppc9	NUSEC.401	8.00
mstoppc9	NUSEC.402	8.00
mstoppc9	NUSEC.403	8.00
mstoppc9	NUSEC.501	8.00
mstoppc9	NUSEC.502	6.00
mstoppc9	NUSEC.503	8.00
mstoppc9	NUSEC.601	10.00
tmountcs	NUSEC.101	8.00
tmountcs	NUSEC.102	6.00
tmountcs	NUSEC.103	10.00
tmountcs	NUSEC.201	7.00
tmountcs	NUSEC.202	7.00
tmountcs	NUSEC.203	5.00
tmountcs	NUSEC.301	7.00
tmountcs	NUSEC.302	10.00
tmountcs	NUSEC.303	7.00
tmountcs	NUSEC.401	5.00
tmountcs	NUSEC.402	10.00
tmountcs	NUSEC.403	8.00
tmountcs	NUSEC.501	7.00
tmountcs	NUSEC.502	8.00
tmountcs	NUSEC.503	7.00
tmountcs	NUSEC.601	9.00
dtrobed5	NUSEC.101	7.00
dtrobed5	NUSEC.102	7.00
dtrobed5	NUSEC.103	5.00
dtrobed5	NUSEC.201	6.00
dtrobed5	NUSEC.202	9.00
dtrobed5	NUSEC.203	9.00
dtrobed5	NUSEC.301	5.00
dtrobed5	NUSEC.302	6.00
dtrobed5	NUSEC.303	10.00
carpurbg	NUSEC.101	7.00
carpurbg	NUSEC.102	5.00
carpurbg	NUSEC.103	8.00
carpurbg	NUSEC.201	9.00
carpurbg	NUSEC.202	7.00
carpurbg	NUSEC.203	7.00
carpurbg	NUSEC.301	8.00
carpurbg	NUSEC.302	7.00
carpurbg	NUSEC.303	10.00
carpurbg	NUSEC.401	6.00
mpolinib1	NUSEC.101	8.00
mpolinib1	NUSEC.102	8.00
mpolinib1	NUSEC.103	8.00
mpolinib1	NUSEC.201	6.00
mpolinib1	NUSEC.202	7.00
mpolinib1	NUSEC.203	5.00
mpolinib1	NUSEC.301	6.00
mpolinib1	NUSEC.302	6.00
mpolinib1	NUSEC.303	10.00
egiacobod7	NUSEC.101	9.00
egiacobod7	NUSEC.102	5.00
egiacobod7	NUSEC.103	6.00
egiacobod7	NUSEC.201	10.00
egiacobod7	NUSEC.202	5.00
egiacobod7	NUSEC.203	7.00
egiacobod7	NUSEC.301	9.00
egiacobod7	NUSEC.302	5.00
egiacobod7	NUSEC.303	6.00
egiacobod7	NUSEC.401	8.00
rhastelowbc	NUSEC.101	8.00
rhastelowbc	NUSEC.102	7.00
rhastelowbc	NUSEC.103	8.00
rhastelowbc	NUSEC.201	6.00
rhastelowbc	NUSEC.202	9.00
rhastelowbc	NUSEC.203	10.00
rhastelowbc	NUSEC.301	7.00
rhastelowbc	NUSEC.302	8.00
rhastelowbc	NUSEC.303	10.00
rhastelowbc	NUSEC.401	9.00
rhastelowbc	NUSEC.402	9.00
rhastelowbc	NUSEC.403	8.00
rhastelowbc	NUSEC.501	7.00
rhastelowbc	NUSEC.502	5.00
rhastelowbc	NUSEC.503	9.00
rhastelowbc	NUSEC.601	9.00
rhastelowbc	NUSEC.602	8.00
rhastelowbc	NUSEC.603	7.00
rhastelowbc	NUSEC.701	10.00
rhastelowbc	NUSEC.702	8.00
jdashkovfk	NUSEC.101	6.00
jdashkovfk	NUSEC.102	8.00
jdashkovfk	NUSEC.103	5.00
jdashkovfk	NUSEC.201	6.00
jdashkovfk	NUSEC.202	10.00
jdashkovfk	NUSEC.203	6.00
jdashkovfk	NUSEC.301	8.00
jdashkovfk	NUSEC.302	8.00
jdashkovfk	NUSEC.303	7.00
jdashkovfk	NUSEC.401	5.00
jdashkovfk	NUSEC.402	7.00
jdashkovfk	NUSEC.403	9.00
jdashkovfk	NUSEC.501	10.00
jdashkovfk	NUSEC.502	7.00
jdashkovfk	NUSEC.503	7.00
jdashkovfk	NUSEC.601	7.00
jdashkovfk	NUSEC.602	8.00
dgeerlingfl	NUSEC.101	9.00
dgeerlingfl	NUSEC.102	6.00
dgeerlingfl	NUSEC.103	10.00
dgeerlingfl	NUSEC.201	6.00
dgeerlingfl	NUSEC.202	5.00
dgeerlingfl	NUSEC.203	7.00
dgeerlingfl	NUSEC.301	6.00
dgeerlingfl	NUSEC.302	9.00
dgeerlingfl	NUSEC.303	5.00
dgeerlingfl	NUSEC.401	8.00
dgeerlingfl	NUSEC.402	7.00
dgeerlingfl	NUSEC.403	5.00
dgeerlingfl	NUSEC.501	9.00
dgeerlingfl	NUSEC.502	10.00
dgeerlingfl	NUSEC.503	7.00
dgeerlingfl	NUSEC.601	9.00
dgeerlingfl	NUSEC.602	7.00
dgeerlingfl	NUSEC.603	6.00
dgeerlingfl	NUSEC.701	7.00
dgeerlingfl	NUSEC.702	6.00
dgeerlingfl	NUSEC.703	8.00
dgeerlingfl	NUSEC.801	6.00
dgeerlingfl	NUSEC.802	9.00
ddockreayeh	NUSEC.101	9.00
ddockreayeh	NUSEC.102	10.00
ddockreayeh	NUSEC.103	9.00
ddockreayeh	NUSEC.201	6.00
ddockreayeh	NUSEC.202	9.00
ddockreayeh	NUSEC.203	6.00
ddockreayeh	NUSEC.301	7.00
ddockreayeh	NUSEC.302	9.00
ddockreayeh	NUSEC.303	7.00
jheinlfj	NUSEC.101	5.00
jheinlfj	NUSEC.102	7.00
jheinlfj	NUSEC.103	8.00
jheinlfj	NUSEC.201	10.00
jheinlfj	NUSEC.202	8.00
jheinlfj	NUSEC.203	10.00
jheinlfj	NUSEC.301	6.00
jheinlfj	NUSEC.302	9.00
jheinlfj	NUSEC.303	9.00
jheinlfj	NUSEC.401	10.00
jheinlfj	NUSEC.402	8.00
jheinlfj	NUSEC.403	7.00
jheinlfj	NUSEC.501	7.00
jheinlfj	NUSEC.502	6.00
jheinlfj	NUSEC.503	9.00
coniondk	NUSEC.101	9.00
coniondk	NUSEC.102	10.00
coniondk	NUSEC.103	6.00
coniondk	NUSEC.201	8.00
coniondk	NUSEC.202	10.00
coniondk	NUSEC.203	6.00
coniondk	NUSEC.301	10.00
coniondk	NUSEC.302	9.00
coniondk	NUSEC.303	7.00
coniondk	NUSEC.401	6.00
coniondk	NUSEC.402	5.00
coniondk	NUSEC.403	5.00
msawelle3	NUSEC.101	6.00
msawelle3	NUSEC.102	8.00
msawelle3	NUSEC.103	9.00
msawelle3	NUSEC.201	6.00
msawelle3	NUSEC.202	6.00
msawelle3	NUSEC.203	8.00
msawelle3	NUSEC.301	10.00
msawelle3	NUSEC.302	6.00
msawelle3	NUSEC.303	6.00
msawelle3	NUSEC.401	9.00
msawelle3	NUSEC.402	6.00
msawelle3	NUSEC.403	10.00
msawelle3	NUSEC.501	10.00
dtinneref	NUSEC.101	10.00
dtinneref	NUSEC.102	10.00
dtinneref	NUSEC.103	5.00
dtinneref	NUSEC.201	7.00
dtinneref	NUSEC.202	10.00
dtinneref	NUSEC.203	9.00
dtinneref	NUSEC.301	10.00
dtinneref	NUSEC.302	5.00
dtinneref	NUSEC.303	10.00
dtinneref	NUSEC.401	5.00
dtinneref	NUSEC.402	6.00
dtinneref	NUSEC.403	10.00
dtinneref	NUSEC.501	5.00
dtinneref	NUSEC.502	6.00
dtinneref	NUSEC.503	7.00
dtinneref	NUSEC.601	10.00
ghanscombefc	NUSEC.101	5.00
ghanscombefc	NUSEC.102	9.00
ghanscombefc	NUSEC.103	5.00
ghanscombefc	NUSEC.201	5.00
ghanscombefc	NUSEC.202	9.00
ghanscombefc	NUSEC.203	8.00
ghanscombefc	NUSEC.301	9.00
ghanscombefc	NUSEC.302	8.00
ghanscombefc	NUSEC.303	7.00
ghanscombefc	NUSEC.401	7.00
ghanscombefc	NUSEC.402	7.00
ghanscombefc	NUSEC.403	6.00
lhawketdw	NUSEC.101	8.00
lhawketdw	NUSEC.102	10.00
lhawketdw	NUSEC.103	7.00
lhawketdw	NUSEC.201	8.00
lhawketdw	NUSEC.202	6.00
lhawketdw	NUSEC.203	7.00
lhawketdw	NUSEC.301	8.00
lhawketdw	NUSEC.302	6.00
lhawketdw	NUSEC.303	8.00
lhawketdw	NUSEC.401	10.00
lhawketdw	NUSEC.402	5.00
lhawketdw	NUSEC.403	7.00
lhawketdw	NUSEC.501	7.00
dnobbse4	NUSEC.101	10.00
dnobbse4	NUSEC.102	7.00
dnobbse4	NUSEC.103	9.00
dnobbse4	NUSEC.201	10.00
dnobbse4	NUSEC.202	8.00
dnobbse4	NUSEC.203	6.00
dnobbse4	NUSEC.301	5.00
dnobbse4	NUSEC.302	5.00
dnobbse4	NUSEC.303	7.00
dnobbse4	NUSEC.401	6.00
dairtone9	NUSEC.101	9.00
dairtone9	NUSEC.102	7.00
dairtone9	NUSEC.103	6.00
dairtone9	NUSEC.201	10.00
dairtone9	NUSEC.202	8.00
dairtone9	NUSEC.203	10.00
dairtone9	NUSEC.301	5.00
dairtone9	NUSEC.302	9.00
dairtone9	NUSEC.303	6.00
dairtone9	NUSEC.401	9.00
dairtone9	NUSEC.402	7.00
dairtone9	NUSEC.403	9.00
tvaudea	NUSEC.101	5.00
tvaudea	NUSEC.102	5.00
tvaudea	NUSEC.103	7.00
tvaudea	NUSEC.201	5.00
tvaudea	NUSEC.202	9.00
tvaudea	NUSEC.203	10.00
tvaudea	NUSEC.301	7.00
tvaudea	NUSEC.302	5.00
tvaudea	NUSEC.303	8.00
tvaudea	NUSEC.401	5.00
tvaudea	NUSEC.402	5.00
tvaudea	NUSEC.403	9.00
tvaudea	NUSEC.501	6.00
tvaudea	NUSEC.502	5.00
tvaudea	NUSEC.503	10.00
tvaudea	NUSEC.601	6.00
tvaudea	NUSEC.602	5.00
tvaudea	NUSEC.603	8.00
tvaudea	NUSEC.701	6.00
tvaudea	NUSEC.702	6.00
vsawneyej	NUSEC.101	8.00
vsawneyej	NUSEC.102	10.00
vsawneyej	NUSEC.103	7.00
vsawneyej	NUSEC.201	5.00
vsawneyej	NUSEC.202	10.00
vsawneyej	NUSEC.203	10.00
vsawneyej	NUSEC.301	10.00
vsawneyej	NUSEC.302	6.00
vsawneyej	NUSEC.303	10.00
vsawneyej	NUSEC.401	6.00
vsawneyej	NUSEC.402	8.00
vsawneyej	NUSEC.403	5.00
vsawneyej	NUSEC.501	8.00
vsawneyej	NUSEC.502	7.00
gdiemf7	NUSEC.101	6.00
gdiemf7	NUSEC.102	9.00
gdiemf7	NUSEC.103	8.00
gdiemf7	NUSEC.201	7.00
gdiemf7	NUSEC.202	7.00
gdiemf7	NUSEC.203	10.00
gdiemf7	NUSEC.301	10.00
gdiemf7	NUSEC.302	8.00
gdiemf7	NUSEC.303	10.00
gdiemf7	NUSEC.401	10.00
gdiemf7	NUSEC.402	10.00
gdiemf7	NUSEC.403	8.00
tbolwellfd	NUSEC.101	8.00
tbolwellfd	NUSEC.102	8.00
tbolwellfd	NUSEC.103	9.00
tbolwellfd	NUSEC.201	7.00
tbolwellfd	NUSEC.202	9.00
tbolwellfd	NUSEC.203	10.00
tbolwellfd	NUSEC.301	7.00
tbolwellfd	NUSEC.302	5.00
tbolwellfd	NUSEC.303	10.00
tbolwellfd	NUSEC.401	6.00
tbolwellfd	NUSEC.402	9.00
tbolwellfd	NUSEC.403	8.00
skedslief3	NUSEC.101	5.00
skedslief3	NUSEC.102	10.00
skedslief3	NUSEC.103	9.00
skedslief3	NUSEC.201	8.00
skedslief3	NUSEC.202	8.00
skedslief3	NUSEC.203	7.00
skedslief3	NUSEC.301	7.00
skedslief3	NUSEC.302	7.00
skedslief3	NUSEC.303	7.00
skedslief3	NUSEC.401	10.00
skedslief3	NUSEC.402	8.00
skedslief3	NUSEC.403	8.00
skedslief3	NUSEC.501	8.00
skedslief3	NUSEC.502	5.00
skedslief3	NUSEC.503	7.00
skedslief3	NUSEC.601	5.00
skedslief3	NUSEC.602	8.00
skedslief3	NUSEC.603	5.00
skedslief3	NUSEC.701	5.00
skedslief3	NUSEC.702	5.00
skedslief3	NUSEC.703	5.00
glackemannfp	NUSEC.101	6.00
glackemannfp	NUSEC.102	7.00
glackemannfp	NUSEC.103	5.00
glackemannfp	NUSEC.201	9.00
glackemannfp	NUSEC.202	6.00
glackemannfp	NUSEC.203	10.00
glackemannfp	NUSEC.301	9.00
glackemannfp	NUSEC.302	10.00
glackemannfp	NUSEC.303	5.00
glackemannfp	NUSEC.401	7.00
glackemannfp	NUSEC.402	6.00
glackemannfp	NUSEC.403	6.00
glackemannfp	NUSEC.501	10.00
glackemannfp	NUSEC.502	6.00
glackemannfp	NUSEC.503	7.00
glackemannfp	NUSEC.601	5.00
glackemannfp	NUSEC.602	6.00
glackemannfp	NUSEC.603	9.00
glackemannfp	NUSEC.701	7.00
glackemannfp	NUSEC.702	5.00
glackemannfp	NUSEC.703	6.00
hlealhg	NUSEC.101	8.00
hlealhg	NUSEC.102	6.00
hlealhg	NUSEC.103	7.00
hlealhg	NUSEC.201	7.00
hlealhg	NUSEC.202	10.00
hlealhg	NUSEC.203	8.00
hlealhg	NUSEC.301	7.00
hlealhg	NUSEC.302	5.00
hlealhg	NUSEC.303	9.00
hlealhg	NUSEC.401	7.00
hlealhg	NUSEC.402	9.00
hlealhg	NUSEC.403	9.00
hsutherelhi	NUSEC.101	5.00
hsutherelhi	NUSEC.102	8.00
hsutherelhi	NUSEC.103	8.00
hsutherelhi	NUSEC.201	6.00
hsutherelhi	NUSEC.202	10.00
hsutherelhi	NUSEC.203	7.00
hsutherelhi	NUSEC.301	7.00
hsutherelhi	NUSEC.302	7.00
hsutherelhi	NUSEC.303	6.00
hsutherelhi	NUSEC.401	7.00
hsutherelhi	NUSEC.402	5.00
hsutherelhi	NUSEC.403	8.00
hsutherelhi	NUSEC.501	9.00
hsutherelhi	NUSEC.502	5.00
hsutherelhi	NUSEC.503	6.00
hsutherelhi	NUSEC.601	9.00
hsutherelhi	NUSEC.602	6.00
hsutherelhi	NUSEC.603	8.00
hsutherelhi	NUSEC.701	6.00
mcellohu	NUSEC.101	6.00
mcellohu	NUSEC.102	7.00
mcellohu	NUSEC.103	5.00
mcellohu	NUSEC.201	7.00
mcellohu	NUSEC.202	9.00
mcellohu	NUSEC.203	9.00
mcellohu	NUSEC.301	7.00
mcellohu	NUSEC.302	10.00
mcellohu	NUSEC.303	8.00
gpallisteri3	NUSEC.101	6.00
gpallisteri3	NUSEC.102	6.00
gpallisteri3	NUSEC.103	10.00
gpallisteri3	NUSEC.201	6.00
gpallisteri3	NUSEC.202	9.00
gpallisteri3	NUSEC.203	5.00
gpallisteri3	NUSEC.301	5.00
gpallisteri3	NUSEC.302	6.00
gpallisteri3	NUSEC.303	5.00
gpallisteri3	NUSEC.401	10.00
gpallisteri3	NUSEC.402	8.00
gpallisteri3	NUSEC.403	5.00
gpallisteri3	NUSEC.501	8.00
gpallisteri3	NUSEC.502	7.00
gpallisteri3	NUSEC.503	9.00
gpallisteri3	NUSEC.601	6.00
gpallisteri3	NUSEC.602	9.00
gpallisteri3	NUSEC.603	10.00
gpallisteri3	NUSEC.701	9.00
gpallisteri3	NUSEC.702	5.00
gpallisteri3	NUSEC.703	10.00
lgoodrickft	NUSEC.101	7.00
lgoodrickft	NUSEC.102	10.00
lgoodrickft	NUSEC.103	7.00
lgoodrickft	NUSEC.201	7.00
lgoodrickft	NUSEC.202	8.00
lgoodrickft	NUSEC.203	8.00
lgoodrickft	NUSEC.301	6.00
lgoodrickft	NUSEC.302	8.00
lgoodrickft	NUSEC.303	9.00
lgoodrickft	NUSEC.401	8.00
lgoodrickft	NUSEC.402	8.00
lgoodrickft	NUSEC.403	6.00
lgoodrickft	NUSEC.501	5.00
lgoodrickft	NUSEC.502	5.00
lgoodrickft	NUSEC.503	5.00
lgoodrickft	NUSEC.601	10.00
lgoodrickft	NUSEC.602	7.00
lgoodrickft	NUSEC.603	8.00
lgoodrickft	NUSEC.701	10.00
lgoodrickft	NUSEC.702	5.00
cdexterfv	NUSEC.101	10.00
cdexterfv	NUSEC.102	6.00
cdexterfv	NUSEC.103	8.00
cdexterfv	NUSEC.201	8.00
cdexterfv	NUSEC.202	7.00
cdexterfv	NUSEC.203	9.00
cdexterfv	NUSEC.301	9.00
cdexterfv	NUSEC.302	6.00
cdexterfv	NUSEC.303	6.00
cdexterfv	NUSEC.401	7.00
cdexterfv	NUSEC.402	5.00
cdexterfv	NUSEC.403	6.00
cdexterfv	NUSEC.501	8.00
gcloughergk	NUSEC.101	5.00
gcloughergk	NUSEC.102	7.00
gcloughergk	NUSEC.103	7.00
gcloughergk	NUSEC.201	7.00
gcloughergk	NUSEC.202	5.00
gcloughergk	NUSEC.203	5.00
gcloughergk	NUSEC.301	7.00
gcloughergk	NUSEC.302	5.00
gcloughergk	NUSEC.303	8.00
gcloughergk	NUSEC.401	10.00
gcloughergk	NUSEC.402	10.00
gcloughergk	NUSEC.403	5.00
gcloughergk	NUSEC.501	6.00
gcloughergk	NUSEC.502	10.00
mbodycombeh5	NUSEC.101	5.00
mbodycombeh5	NUSEC.102	10.00
mbodycombeh5	NUSEC.103	7.00
mbodycombeh5	NUSEC.201	8.00
mbodycombeh5	NUSEC.202	5.00
mbodycombeh5	NUSEC.203	8.00
mbodycombeh5	NUSEC.301	7.00
mbodycombeh5	NUSEC.302	10.00
pchienekj	NUSEC.101	9.00
pchienekj	NUSEC.102	5.00
pchienekj	NUSEC.103	7.00
pchienekj	NUSEC.201	10.00
pchienekj	NUSEC.202	6.00
pchienekj	NUSEC.203	7.00
pchienekj	NUSEC.301	7.00
pchienekj	NUSEC.302	10.00
pchienekj	NUSEC.303	7.00
pchienekj	NUSEC.401	10.00
pchienekj	NUSEC.402	7.00
pchienekj	NUSEC.403	9.00
pchienekj	NUSEC.501	6.00
pchienekj	NUSEC.502	10.00
pchienekj	NUSEC.503	6.00
pchienekj	NUSEC.601	8.00
pchienekj	NUSEC.602	5.00
pchienekj	NUSEC.603	9.00
pchienekj	NUSEC.701	5.00
pchienekj	NUSEC.702	8.00
pchienekj	NUSEC.703	10.00
pchienekj	NUSEC.801	6.00
pchienekj	NUSEC.802	8.00
preidia	NUSEC.101	10.00
preidia	NUSEC.102	6.00
preidia	NUSEC.103	5.00
preidia	NUSEC.201	7.00
preidia	NUSEC.202	9.00
preidia	NUSEC.203	5.00
preidia	NUSEC.301	6.00
preidia	NUSEC.302	10.00
preidia	NUSEC.303	6.00
preidia	NUSEC.401	6.00
preidia	NUSEC.402	9.00
preidia	NUSEC.403	10.00
preidia	NUSEC.501	8.00
preidia	NUSEC.502	8.00
preidia	NUSEC.503	7.00
fcobbledickjx	NUSEC.101	6.00
fcobbledickjx	NUSEC.102	9.00
fcobbledickjx	NUSEC.103	10.00
fcobbledickjx	NUSEC.201	7.00
fcobbledickjx	NUSEC.202	10.00
fcobbledickjx	NUSEC.203	10.00
fcobbledickjx	NUSEC.301	5.00
fcobbledickjx	NUSEC.302	7.00
fcobbledickjx	NUSEC.303	7.00
fcobbledickjx	NUSEC.401	8.00
fcobbledickjx	NUSEC.402	6.00
fcobbledickjx	NUSEC.403	8.00
fcobbledickjx	NUSEC.501	6.00
fcobbledickjx	NUSEC.502	5.00
fcobbledickjx	NUSEC.503	10.00
fcobbledickjx	NUSEC.601	6.00
fcobbledickjx	NUSEC.602	6.00
fcobbledickjx	NUSEC.603	9.00
fcobbledickjx	NUSEC.701	10.00
fcobbledickjx	NUSEC.702	9.00
fcobbledickjx	NUSEC.703	9.00
fcobbledickjx	NUSEC.801	6.00
fcobbledickjx	NUSEC.802	9.00
daldinsil	NUSEC.101	9.00
daldinsil	NUSEC.102	8.00
daldinsil	NUSEC.103	5.00
daldinsil	NUSEC.201	8.00
daldinsil	NUSEC.202	10.00
daldinsil	NUSEC.203	5.00
daldinsil	NUSEC.301	10.00
daldinsil	NUSEC.302	10.00
daldinsil	NUSEC.303	10.00
daldinsil	NUSEC.401	6.00
daldinsil	NUSEC.402	7.00
daldinsil	NUSEC.403	9.00
daldinsil	NUSEC.501	5.00
daldinsil	NUSEC.502	6.00
daldinsil	NUSEC.503	10.00
tastleiv	NUSEC.101	10.00
tastleiv	NUSEC.102	8.00
tastleiv	NUSEC.103	10.00
tastleiv	NUSEC.201	5.00
tastleiv	NUSEC.202	6.00
tastleiv	NUSEC.203	10.00
tastleiv	NUSEC.301	9.00
tastleiv	NUSEC.302	10.00
tastleiv	NUSEC.303	9.00
tastleiv	NUSEC.401	6.00
tastleiv	NUSEC.402	7.00
tastleiv	NUSEC.403	8.00
hdorgonj9	NUSEC.101	8.00
hdorgonj9	NUSEC.102	10.00
hdorgonj9	NUSEC.103	9.00
hdorgonj9	NUSEC.201	6.00
hdorgonj9	NUSEC.202	10.00
hdorgonj9	NUSEC.203	10.00
hdorgonj9	NUSEC.301	5.00
hdorgonj9	NUSEC.302	7.00
hdorgonj9	NUSEC.303	9.00
hdorgonj9	NUSEC.401	7.00
hdorgonj9	NUSEC.402	10.00
hdorgonj9	NUSEC.403	5.00
hdorgonj9	NUSEC.501	7.00
hdorgonj9	NUSEC.502	6.00
hdorgonj9	NUSEC.503	9.00
dparletj2	NUSEC.101	9.00
dparletj2	NUSEC.102	9.00
dparletj2	NUSEC.103	7.00
dparletj2	NUSEC.201	8.00
dparletj2	NUSEC.202	9.00
dparletj2	NUSEC.203	10.00
dparletj2	NUSEC.301	10.00
dparletj2	NUSEC.302	10.00
ppattersjf	NUSEC.101	5.00
ppattersjf	NUSEC.102	5.00
ppattersjf	NUSEC.103	7.00
ppattersjf	NUSEC.201	6.00
ppattersjf	NUSEC.202	9.00
ppattersjf	NUSEC.203	9.00
ppattersjf	NUSEC.301	6.00
ppattersjf	NUSEC.302	5.00
ppattersjf	NUSEC.303	6.00
nbezantsmz	NUSEC.101	6.00
nbezantsmz	NUSEC.102	10.00
nbezantsmz	NUSEC.103	9.00
nbezantsmz	NUSEC.201	10.00
nbezantsmz	NUSEC.202	10.00
nbezantsmz	NUSEC.203	5.00
nbezantsmz	NUSEC.301	9.00
nbezantsmz	NUSEC.302	7.00
nbezantsmz	NUSEC.303	6.00
nbezantsmz	NUSEC.401	10.00
nbezantsmz	NUSEC.402	9.00
nbezantsmz	NUSEC.403	8.00
nbezantsmz	NUSEC.501	8.00
nbezantsmz	NUSEC.502	8.00
nbezantsmz	NUSEC.503	5.00
nbezantsmz	NUSEC.601	9.00
nbezantsmz	NUSEC.602	5.00
nbezantsmz	NUSEC.603	7.00
nbezantsmz	NUSEC.701	6.00
nbezantsmz	NUSEC.702	8.00
nbezantsmz	NUSEC.703	8.00
nbezantsmz	NUSEC.801	8.00
nbezantsmz	NUSEC.802	9.00
hhumblestonemt	NUSEC.101	8.00
hhumblestonemt	NUSEC.102	8.00
hhumblestonemt	NUSEC.103	7.00
hhumblestonemt	NUSEC.201	10.00
hhumblestonemt	NUSEC.202	5.00
hhumblestonemt	NUSEC.203	10.00
hhumblestonemt	NUSEC.301	6.00
gnoultonkw	NUSEC.101	5.00
gnoultonkw	NUSEC.102	9.00
gnoultonkw	NUSEC.103	7.00
gnoultonkw	NUSEC.201	9.00
gnoultonkw	NUSEC.202	10.00
gnoultonkw	NUSEC.203	6.00
gnoultonkw	NUSEC.301	8.00
gnoultonkw	NUSEC.302	7.00
gnoultonkw	NUSEC.303	10.00
gnoultonkw	NUSEC.401	5.00
gnoultonkw	NUSEC.402	6.00
gnoultonkw	NUSEC.403	10.00
gnoultonkw	NUSEC.501	10.00
gnoultonkw	NUSEC.502	7.00
gnoultonkw	NUSEC.503	6.00
abenitl8	NUSEC.101	7.00
abenitl8	NUSEC.102	5.00
abenitl8	NUSEC.103	9.00
abenitl8	NUSEC.201	7.00
abenitl8	NUSEC.202	10.00
abenitl8	NUSEC.203	5.00
abenitl8	NUSEC.301	5.00
abenitl8	NUSEC.302	5.00
abenitl8	NUSEC.303	10.00
abenitl8	NUSEC.401	9.00
abenitl8	NUSEC.402	9.00
abenitl8	NUSEC.403	7.00
abenitl8	NUSEC.501	6.00
abenitl8	NUSEC.502	6.00
abenitl8	NUSEC.503	8.00
abenitl8	NUSEC.601	7.00
abenitl8	NUSEC.602	10.00
abenitl8	NUSEC.603	6.00
bsienel1	NUSEC.101	9.00
bsienel1	NUSEC.102	10.00
bsienel1	NUSEC.103	9.00
bsienel1	NUSEC.201	8.00
bsienel1	NUSEC.202	10.00
bsienel1	NUSEC.203	5.00
bsienel1	NUSEC.301	7.00
bsienel1	NUSEC.302	7.00
bsienel1	NUSEC.303	5.00
bsienel1	NUSEC.401	8.00
bsienel1	NUSEC.402	8.00
bsienel1	NUSEC.403	10.00
bsienel1	NUSEC.501	5.00
bsienel1	NUSEC.502	7.00
bsienel1	NUSEC.503	8.00
bsienel1	NUSEC.601	9.00
bsienel1	NUSEC.602	5.00
bsienel1	NUSEC.603	7.00
bsienel1	NUSEC.701	9.00
bsienel1	NUSEC.702	10.00
bsienel1	NUSEC.703	10.00
bsienel1	NUSEC.801	8.00
bsienel1	NUSEC.802	9.00
jcottonl2	NUSEC.101	5.00
jcottonl2	NUSEC.102	5.00
jcottonl2	NUSEC.103	8.00
jcottonl2	NUSEC.201	7.00
jcottonl2	NUSEC.202	9.00
jcottonl2	NUSEC.203	5.00
jcottonl2	NUSEC.301	6.00
jcottonl2	NUSEC.302	9.00
jcottonl2	NUSEC.303	8.00
jcottonl2	NUSEC.401	6.00
jcottonl2	NUSEC.402	7.00
jcottonl2	NUSEC.403	5.00
jcottonl2	NUSEC.501	6.00
jcottonl2	NUSEC.502	7.00
jcottonl2	NUSEC.503	10.00
jcottonl2	NUSEC.601	5.00
jcottonl2	NUSEC.602	8.00
jcottonl2	NUSEC.603	10.00
jcottonl2	NUSEC.701	7.00
jcottonl2	NUSEC.702	10.00
klanmeidl4	NUSEC.101	6.00
klanmeidl4	NUSEC.102	8.00
klanmeidl4	NUSEC.103	5.00
klanmeidl4	NUSEC.201	10.00
klanmeidl4	NUSEC.202	8.00
klanmeidl4	NUSEC.203	7.00
klanmeidl4	NUSEC.301	7.00
klanmeidl4	NUSEC.302	9.00
klanmeidl4	NUSEC.303	7.00
klanmeidl4	NUSEC.401	5.00
bsaffellky	NUSEC.101	9.00
bsaffellky	NUSEC.102	10.00
bsaffellky	NUSEC.103	7.00
bsaffellky	NUSEC.201	7.00
bsaffellky	NUSEC.202	7.00
bsaffellky	NUSEC.203	7.00
bsaffellky	NUSEC.301	8.00
bsaffellky	NUSEC.302	6.00
bsaffellky	NUSEC.303	5.00
dkahenli	NUSEC.101	8.00
dkahenli	NUSEC.102	7.00
dkahenli	NUSEC.103	10.00
dkahenli	NUSEC.201	8.00
dkahenli	NUSEC.202	10.00
dkahenli	NUSEC.203	5.00
dkahenli	NUSEC.301	8.00
dkahenli	NUSEC.302	8.00
dkahenli	NUSEC.303	9.00
dkahenli	NUSEC.401	7.00
dkahenli	NUSEC.402	8.00
dkahenli	NUSEC.403	5.00
dkahenli	NUSEC.501	7.00
dkahenli	NUSEC.502	10.00
dkahenli	NUSEC.503	7.00
mpragnellln	NUSEC.101	6.00
mpragnellln	NUSEC.102	6.00
mpragnellln	NUSEC.103	7.00
mpragnellln	NUSEC.201	5.00
mpragnellln	NUSEC.202	5.00
mpragnellln	NUSEC.203	5.00
mpragnellln	NUSEC.301	10.00
mpragnellln	NUSEC.302	10.00
jewerlo	NUSEC.101	10.00
jewerlo	NUSEC.102	9.00
jewerlo	NUSEC.103	10.00
jewerlo	NUSEC.201	6.00
jewerlo	NUSEC.202	5.00
jewerlo	NUSEC.203	7.00
jewerlo	NUSEC.301	5.00
jewerlo	NUSEC.302	6.00
jewerlo	NUSEC.303	9.00
jewerlo	NUSEC.401	5.00
jewerlo	NUSEC.402	10.00
jewerlo	NUSEC.403	10.00
jewerlo	NUSEC.501	7.00
jewerlo	NUSEC.502	5.00
jewerlo	NUSEC.503	5.00
jewerlo	NUSEC.601	9.00
jewerlo	NUSEC.602	5.00
jewerlo	NUSEC.603	5.00
jewerlo	NUSEC.701	9.00
jewerlo	NUSEC.702	5.00
aconsterdinem2	NUSEC.101	6.00
aconsterdinem2	NUSEC.102	8.00
aconsterdinem2	NUSEC.103	7.00
aconsterdinem2	NUSEC.201	7.00
aconsterdinem2	NUSEC.202	5.00
aconsterdinem2	NUSEC.203	10.00
aconsterdinem2	NUSEC.301	10.00
aconsterdinem2	NUSEC.302	9.00
aconsterdinem2	NUSEC.303	9.00
aconsterdinem2	NUSEC.401	6.00
aconsterdinem2	NUSEC.402	5.00
aconsterdinem2	NUSEC.403	9.00
aconsterdinem2	NUSEC.501	10.00
aconsterdinem2	NUSEC.502	9.00
aconsterdinem2	NUSEC.503	5.00
aconsterdinem2	NUSEC.601	9.00
rhefnerl6	NUSEC.101	9.00
rhefnerl6	NUSEC.102	5.00
rhefnerl6	NUSEC.103	8.00
rhefnerl6	NUSEC.201	5.00
rhefnerl6	NUSEC.202	9.00
rhefnerl6	NUSEC.203	5.00
rhefnerl6	NUSEC.301	7.00
rhefnerl6	NUSEC.302	5.00
rhefnerl6	NUSEC.303	10.00
rhefnerl6	NUSEC.401	10.00
rhefnerl6	NUSEC.402	5.00
rhefnerl6	NUSEC.403	6.00
rhefnerl6	NUSEC.501	9.00
psturneym6	NUSEC.101	10.00
psturneym6	NUSEC.102	10.00
psturneym6	NUSEC.103	10.00
psturneym6	NUSEC.201	8.00
psturneym6	NUSEC.202	5.00
psturneym6	NUSEC.203	8.00
psturneym6	NUSEC.301	7.00
psturneym6	NUSEC.302	6.00
psturneym6	NUSEC.303	5.00
psturneym6	NUSEC.401	8.00
psturneym6	NUSEC.402	6.00
psturneym6	NUSEC.403	5.00
psturneym6	NUSEC.501	7.00
psturneym6	NUSEC.502	8.00
psturneym6	NUSEC.503	10.00
psturneym6	NUSEC.601	10.00
psturneym6	NUSEC.602	10.00
psturneym6	NUSEC.603	10.00
psturneym6	NUSEC.701	9.00
psturneym6	NUSEC.702	5.00
psturneym6	NUSEC.703	8.00
psturneym6	NUSEC.801	5.00
psturneym6	NUSEC.802	10.00
psturneym6	NUSEC.803	5.00
dmcclintockmc	NUSEC.101	5.00
dmcclintockmc	NUSEC.102	9.00
dmcclintockmc	NUSEC.103	5.00
dmcclintockmc	NUSEC.201	6.00
dmcclintockmc	NUSEC.202	8.00
dmcclintockmc	NUSEC.203	10.00
dmcclintockmc	NUSEC.301	6.00
dmcclintockmc	NUSEC.302	5.00
dmcclintockmc	NUSEC.303	10.00
dmcclintockmc	NUSEC.401	8.00
dmcclintockmc	NUSEC.402	8.00
dmcclintockmc	NUSEC.403	8.00
dmcclintockmc	NUSEC.501	10.00
kdowningo8	NUSEC.101	9.00
kdowningo8	NUSEC.102	6.00
kdowningo8	NUSEC.103	7.00
kdowningo8	NUSEC.201	8.00
kdowningo8	NUSEC.202	9.00
kdowningo8	NUSEC.203	7.00
kdowningo8	NUSEC.301	8.00
kdowningo8	NUSEC.302	7.00
kdowningo8	NUSEC.303	10.00
kdowningo8	NUSEC.401	10.00
kdowningo8	NUSEC.402	8.00
kdowningo8	NUSEC.403	10.00
kdowningo8	NUSEC.501	5.00
jkleinerna	NUSEC.101	5.00
jkleinerna	NUSEC.102	9.00
jkleinerna	NUSEC.103	10.00
jkleinerna	NUSEC.201	7.00
jkleinerna	NUSEC.202	10.00
jkleinerna	NUSEC.203	6.00
jkleinerna	NUSEC.301	5.00
jkleinerna	NUSEC.302	7.00
jkleinerna	NUSEC.303	9.00
jkleinerna	NUSEC.401	5.00
jkleinerna	NUSEC.402	7.00
jkleinerna	NUSEC.403	10.00
jkleinerna	NUSEC.501	6.00
jkleinerna	NUSEC.502	10.00
jkleinerna	NUSEC.503	10.00
tcoattsnf	NUSEC.101	5.00
tcoattsnf	NUSEC.102	7.00
tcoattsnf	NUSEC.103	9.00
tcoattsnf	NUSEC.201	8.00
tcoattsnf	NUSEC.202	6.00
tcoattsnf	NUSEC.203	6.00
tcoattsnf	NUSEC.301	6.00
tcoattsnf	NUSEC.302	9.00
tcoattsnf	NUSEC.303	10.00
tcoattsnf	NUSEC.401	9.00
tcoattsnf	NUSEC.402	5.00
tcoattsnf	NUSEC.403	9.00
tcoattsnf	NUSEC.501	7.00
tcoattsnf	NUSEC.502	9.00
tcoattsnf	NUSEC.503	9.00
tcoattsnf	NUSEC.601	5.00
tcoattsnf	NUSEC.602	6.00
janthiftlenp	NUSEC.101	5.00
janthiftlenp	NUSEC.102	6.00
janthiftlenp	NUSEC.103	6.00
janthiftlenp	NUSEC.201	5.00
janthiftlenp	NUSEC.202	6.00
janthiftlenp	NUSEC.203	9.00
janthiftlenp	NUSEC.301	8.00
janthiftlenp	NUSEC.302	9.00
mmcgrailnw	NUSEC.101	5.00
mmcgrailnw	NUSEC.102	6.00
mmcgrailnw	NUSEC.103	7.00
mmcgrailnw	NUSEC.201	6.00
mmcgrailnw	NUSEC.202	5.00
mmcgrailnw	NUSEC.203	8.00
mmcgrailnw	NUSEC.301	7.00
mmcgrailnw	NUSEC.302	7.00
mmcgrailnw	NUSEC.303	9.00
mmcgrailnw	NUSEC.401	10.00
mmcgrailnw	NUSEC.402	8.00
mmcgrailnw	NUSEC.403	5.00
rlatekoo	NUSEC.101	5.00
rlatekoo	NUSEC.102	5.00
rlatekoo	NUSEC.103	9.00
rlatekoo	NUSEC.201	10.00
rlatekoo	NUSEC.202	5.00
rlatekoo	NUSEC.203	7.00
rlatekoo	NUSEC.301	10.00
rlatekoo	NUSEC.302	10.00
rlatekoo	NUSEC.303	10.00
rlatekoo	NUSEC.401	7.00
rlatekoo	NUSEC.402	10.00
rlatekoo	NUSEC.403	9.00
rlatekoo	NUSEC.501	5.00
fkalkofero7	NUSEC.101	6.00
fkalkofero7	NUSEC.102	9.00
fkalkofero7	NUSEC.103	7.00
fkalkofero7	NUSEC.201	8.00
fkalkofero7	NUSEC.202	6.00
fkalkofero7	NUSEC.203	8.00
fkalkofero7	NUSEC.301	10.00
fkalkofero7	NUSEC.302	8.00
fkalkofero7	NUSEC.303	7.00
fkalkofero7	NUSEC.401	8.00
fkalkofero7	NUSEC.402	7.00
fkalkofero7	NUSEC.403	5.00
fkalkofero7	NUSEC.501	7.00
fkalkofero7	NUSEC.502	8.00
fkalkofero7	NUSEC.503	10.00
fkalkofero7	NUSEC.601	7.00
fkalkofero7	NUSEC.602	7.00
pjeavesod	NUSEC.101	8.00
pjeavesod	NUSEC.102	10.00
pjeavesod	NUSEC.103	6.00
pjeavesod	NUSEC.201	6.00
pjeavesod	NUSEC.202	5.00
pjeavesod	NUSEC.203	6.00
pjeavesod	NUSEC.301	8.00
pjeavesod	NUSEC.302	10.00
pjeavesod	NUSEC.303	6.00
rpoolor	NUSEC.101	7.00
rpoolor	NUSEC.102	5.00
rpoolor	NUSEC.103	6.00
rpoolor	NUSEC.201	7.00
rpoolor	NUSEC.202	9.00
rpoolor	NUSEC.203	8.00
rpoolor	NUSEC.301	8.00
dbaccusou	NUSEC.101	5.00
dbaccusou	NUSEC.102	6.00
dbaccusou	NUSEC.103	7.00
dbaccusou	NUSEC.201	9.00
dbaccusou	NUSEC.202	5.00
dbaccusou	NUSEC.203	5.00
dbaccusou	NUSEC.301	9.00
dbaccusou	NUSEC.302	5.00
dbaccusou	NUSEC.303	8.00
dbaccusou	NUSEC.401	6.00
dbaccusou	NUSEC.402	10.00
dbaccusou	NUSEC.403	5.00
iaustinsp8	NUSEC.101	7.00
iaustinsp8	NUSEC.102	8.00
iaustinsp8	NUSEC.103	10.00
iaustinsp8	NUSEC.201	9.00
iaustinsp8	NUSEC.202	6.00
iaustinsp8	NUSEC.203	6.00
iaustinsp8	NUSEC.301	5.00
iaustinsp8	NUSEC.302	9.00
iaustinsp8	NUSEC.303	8.00
iaustinsp8	NUSEC.401	7.00
iaustinsp8	NUSEC.402	6.00
iaustinsp8	NUSEC.403	9.00
iaustinsp8	NUSEC.501	10.00
iaustinsp8	NUSEC.502	6.00
iaustinsp8	NUSEC.503	6.00
iaustinsp8	NUSEC.601	9.00
iaustinsp8	NUSEC.602	10.00
iaustinsp8	NUSEC.603	7.00
iaustinsp8	NUSEC.701	5.00
iaustinsp8	NUSEC.702	7.00
aragateri	NUSEC.101	8.00
aragateri	NUSEC.102	5.00
aragateri	NUSEC.103	6.00
aragateri	NUSEC.201	5.00
aragateri	NUSEC.202	9.00
aragateri	NUSEC.203	6.00
aragateri	NUSEC.301	6.00
aragateri	NUSEC.302	9.00
aragateri	NUSEC.303	6.00
aragateri	NUSEC.401	8.00
aragateri	NUSEC.402	9.00
aragateri	NUSEC.403	8.00
aragateri	NUSEC.501	10.00
aragateri	NUSEC.502	10.00
aragateri	NUSEC.503	10.00
aragateri	NUSEC.601	10.00
aragateri	NUSEC.602	8.00
aragateri	NUSEC.603	10.00
aragateri	NUSEC.701	9.00
aragateri	NUSEC.702	6.00
aragateri	NUSEC.703	8.00
aragateri	NUSEC.801	8.00
dgearerj	NUSEC.101	5.00
dgearerj	NUSEC.102	6.00
dgearerj	NUSEC.103	7.00
dgearerj	NUSEC.201	9.00
dgearerj	NUSEC.202	7.00
dgearerj	NUSEC.203	9.00
dgearerj	NUSEC.301	5.00
dgearerj	NUSEC.302	8.00
dgearerj	NUSEC.303	7.00
dgearerj	NUSEC.401	10.00
dgearerj	NUSEC.402	9.00
dgearerj	NUSEC.403	9.00
mmacilhargypn	NUSEC.101	9.00
mmacilhargypn	NUSEC.102	7.00
mmacilhargypn	NUSEC.103	9.00
mmacilhargypn	NUSEC.201	5.00
mmacilhargypn	NUSEC.202	7.00
mmacilhargypn	NUSEC.203	8.00
mmacilhargypn	NUSEC.301	6.00
mmacilhargypn	NUSEC.302	5.00
mmacilhargypn	NUSEC.303	9.00
mmacilhargypn	NUSEC.401	10.00
mmacilhargypn	NUSEC.402	9.00
mmacilhargypn	NUSEC.403	9.00
mmacilhargypn	NUSEC.501	8.00
mmacilhargypn	NUSEC.502	9.00
mmacilhargypn	NUSEC.503	6.00
mmacilhargypn	NUSEC.601	8.00
mmacilhargypn	NUSEC.602	8.00
mmacilhargypn	NUSEC.603	5.00
mmacilhargypn	NUSEC.701	5.00
mmacilhargypn	NUSEC.702	8.00
mmacilhargypn	NUSEC.703	7.00
aredbornqu	NUSEC.101	9.00
aredbornqu	NUSEC.102	10.00
aredbornqu	NUSEC.103	6.00
aredbornqu	NUSEC.201	5.00
aredbornqu	NUSEC.202	7.00
aredbornqu	NUSEC.203	9.00
aredbornqu	NUSEC.301	9.00
aredbornqu	NUSEC.302	7.00
aredbornqu	NUSEC.303	9.00
aredbornqu	NUSEC.401	10.00
dbannardq1	NUSEC.101	9.00
dbannardq1	NUSEC.102	7.00
dbannardq1	NUSEC.103	5.00
dbannardq1	NUSEC.201	5.00
dbannardq1	NUSEC.202	5.00
dbannardq1	NUSEC.203	9.00
dbannardq1	NUSEC.301	10.00
dbannardq1	NUSEC.302	7.00
dbannardq1	NUSEC.303	8.00
dbannardq1	NUSEC.401	10.00
dbannardq1	NUSEC.402	8.00
dbannardq1	NUSEC.403	10.00
dbannardq1	NUSEC.501	6.00
dbannardq1	NUSEC.502	8.00
dbannardq1	NUSEC.503	7.00
dbannardq1	NUSEC.601	5.00
hmardypx	NUSEC.101	10.00
hmardypx	NUSEC.102	9.00
hmardypx	NUSEC.103	6.00
hmardypx	NUSEC.201	8.00
hmardypx	NUSEC.202	10.00
hmardypx	NUSEC.203	7.00
hmardypx	NUSEC.301	8.00
hmardypx	NUSEC.302	10.00
shogbenpv	NUSEC.101	8.00
shogbenpv	NUSEC.102	5.00
shogbenpv	NUSEC.103	8.00
shogbenpv	NUSEC.201	5.00
shogbenpv	NUSEC.202	6.00
shogbenpv	NUSEC.203	6.00
shogbenpv	NUSEC.301	7.00
shogbenpv	NUSEC.302	6.00
shogbenpv	NUSEC.303	6.00
shogbenpv	NUSEC.401	9.00
shogbenpv	NUSEC.402	10.00
shogbenpv	NUSEC.403	8.00
shogbenpv	NUSEC.501	9.00
shogbenpv	NUSEC.502	5.00
gyoulesq7	NUSEC.101	10.00
gyoulesq7	NUSEC.102	7.00
gyoulesq7	NUSEC.103	9.00
gyoulesq7	NUSEC.201	6.00
gyoulesq7	NUSEC.202	6.00
gyoulesq7	NUSEC.203	6.00
gyoulesq7	NUSEC.301	9.00
gyoulesq7	NUSEC.302	5.00
gyoulesq7	NUSEC.303	6.00
gyoulesq7	NUSEC.401	10.00
gyoulesq7	NUSEC.402	5.00
gyoulesq7	NUSEC.403	10.00
hstorrpo	NUSEC.101	7.00
hstorrpo	NUSEC.102	9.00
hstorrpo	NUSEC.103	8.00
hstorrpo	NUSEC.201	7.00
hstorrpo	NUSEC.202	6.00
hstorrpo	NUSEC.203	8.00
hstorrpo	NUSEC.301	9.00
hstorrpo	NUSEC.302	10.00
hstorrpo	NUSEC.303	10.00
hstorrpo	NUSEC.401	10.00
hstorrpo	NUSEC.402	7.00
hstorrpo	NUSEC.403	7.00
hstorrpo	NUSEC.501	8.00
hstorrpo	NUSEC.502	9.00
hstorrpo	NUSEC.503	10.00
hstorrpo	NUSEC.601	9.00
hstorrpo	NUSEC.602	5.00
hstorrpo	NUSEC.603	9.00
ebondsqa	NUSEC.101	6.00
ebondsqa	NUSEC.102	5.00
ebondsqa	NUSEC.103	7.00
ebondsqa	NUSEC.201	9.00
ebondsqa	NUSEC.202	9.00
ebondsqa	NUSEC.203	10.00
ebondsqa	NUSEC.301	10.00
ebondsqa	NUSEC.302	8.00
ebondsqa	NUSEC.303	5.00
ebondsqa	NUSEC.401	5.00
ebondsqa	NUSEC.402	8.00
ebondsqa	NUSEC.403	9.00
ebondsqa	NUSEC.501	9.00
ebondsqa	NUSEC.502	8.00
ebondsqa	NUSEC.503	8.00
ebondsqa	NUSEC.601	8.00
jenstonqz	NUSEC.101	6.00
jenstonqz	NUSEC.102	6.00
jenstonqz	NUSEC.103	7.00
jenstonqz	NUSEC.201	8.00
jenstonqz	NUSEC.202	5.00
jenstonqz	NUSEC.203	10.00
jenstonqz	NUSEC.301	10.00
jenstonqz	NUSEC.302	5.00
jenstonqz	NUSEC.303	7.00
jenstonqz	NUSEC.401	7.00
jenstonqz	NUSEC.402	5.00
jenstonqz	NUSEC.403	8.00
jenstonqz	NUSEC.501	5.00
jenstonqz	NUSEC.502	8.00
jenstonqz	NUSEC.503	8.00
jenstonqz	NUSEC.601	5.00
edunneqk	NUSEC.101	8.00
edunneqk	NUSEC.102	9.00
edunneqk	NUSEC.103	7.00
edunneqk	NUSEC.201	7.00
edunneqk	NUSEC.202	10.00
edunneqk	NUSEC.203	7.00
edunneqk	NUSEC.301	7.00
edunneqk	NUSEC.302	7.00
edunneqk	NUSEC.303	9.00
edunneqk	NUSEC.401	6.00
edunneqk	NUSEC.402	9.00
edunneqk	NUSEC.403	9.00
edunneqk	NUSEC.501	9.00
edunneqk	NUSEC.502	9.00
edunneqk	NUSEC.503	7.00
edunneqk	NUSEC.601	5.00
edunneqk	NUSEC.602	6.00
edunneqk	NUSEC.603	9.00
edunneqk	NUSEC.701	9.00
edunneqk	NUSEC.702	8.00
edunneqk	NUSEC.703	9.00
edunneqk	NUSEC.801	7.00
edunneqk	NUSEC.802	10.00
edunneqk	NUSEC.803	9.00
jnisotr5	NUSEC.101	7.00
jnisotr5	NUSEC.102	5.00
jnisotr5	NUSEC.103	9.00
jnisotr5	NUSEC.201	5.00
jnisotr5	NUSEC.202	5.00
jnisotr5	NUSEC.203	7.00
jnisotr5	NUSEC.301	9.00
jnisotr5	NUSEC.302	9.00
jnisotr5	NUSEC.303	5.00
jnisotr5	NUSEC.401	8.00
kboundeyqq	NUSEC.101	6.00
kboundeyqq	NUSEC.102	8.00
kboundeyqq	NUSEC.103	10.00
kboundeyqq	NUSEC.201	8.00
kboundeyqq	NUSEC.202	5.00
kboundeyqq	NUSEC.203	9.00
kboundeyqq	NUSEC.301	9.00
kboundeyqq	NUSEC.302	9.00
kboundeyqq	NUSEC.303	10.00
kboundeyqq	NUSEC.401	10.00
kboundeyqq	NUSEC.402	7.00
kboundeyqq	NUSEC.403	9.00
kboundeyqq	NUSEC.501	5.00
kboundeyqq	NUSEC.502	5.00
kboundeyqq	NUSEC.503	7.00
kboundeyqq	NUSEC.601	7.00
kboundeyqq	NUSEC.602	9.00
kboundeyqq	NUSEC.603	6.00
kboundeyqq	NUSEC.701	9.00
kboundeyqq	NUSEC.702	10.00
kboundeyqq	NUSEC.703	9.00
kboundeyqq	NUSEC.801	7.00
kboundeyqq	NUSEC.802	7.00
kzumbuschrb	NUSEC.101	7.00
kzumbuschrb	NUSEC.102	6.00
kzumbuschrb	NUSEC.103	7.00
kzumbuschrb	NUSEC.201	9.00
kzumbuschrb	NUSEC.202	7.00
kzumbuschrb	NUSEC.203	5.00
kzumbuschrb	NUSEC.301	5.00
kzumbuschrb	NUSEC.302	8.00
kzumbuschrb	NUSEC.303	8.00
kzumbuschrb	NUSEC.401	7.00
kzumbuschrb	NUSEC.402	7.00
kzumbuschrb	NUSEC.403	10.00
kzumbuschrb	NUSEC.501	8.00
kzumbuschrb	NUSEC.502	5.00
kzumbuschrb	NUSEC.503	7.00
kzumbuschrb	NUSEC.601	10.00
kzumbuschrb	NUSEC.602	9.00
kzumbuschrb	NUSEC.603	9.00
kzumbuschrb	NUSEC.701	6.00
kzumbuschrb	NUSEC.702	6.00
kzumbuschrb	NUSEC.703	10.00
mtarbertd	NUSEC.101	10.00
mtarbertd	NUSEC.102	6.00
mtarbertd	NUSEC.103	10.00
mtarbertd	NUSEC.201	5.00
mtarbertd	NUSEC.202	7.00
mtarbertd	NUSEC.203	8.00
mtarbertd	NUSEC.301	6.00
mtarbertd	NUSEC.302	8.00
mtarbertd	NUSEC.303	9.00
mtarbertd	NUSEC.401	6.00
mtarbertd	NUSEC.402	9.00
mtarbertd	NUSEC.403	7.00
mtarbertd	NUSEC.501	9.00
mtarbertd	NUSEC.502	5.00
pkaufman4t	NUSEC.101	7.00
pkaufman4t	NUSEC.102	8.00
pkaufman4t	NUSEC.103	7.00
pkaufman4t	NUSEC.201	6.00
pkaufman4t	NUSEC.202	8.00
pkaufman4t	NUSEC.203	9.00
pkaufman4t	NUSEC.301	6.00
pkaufman4t	NUSEC.302	10.00
pkaufman4t	NUSEC.303	8.00
pkaufman4t	NUSEC.401	5.00
pkaufman4t	NUSEC.402	9.00
pkaufman4t	NUSEC.403	8.00
pkaufman4t	NUSEC.501	8.00
cledgerbm	NUSEC.101	9.00
cledgerbm	NUSEC.102	5.00
cledgerbm	NUSEC.103	5.00
cledgerbm	NUSEC.201	10.00
cledgerbm	NUSEC.202	10.00
cledgerbm	NUSEC.203	8.00
cledgerbm	NUSEC.301	10.00
cledgerbm	NUSEC.302	9.00
cledgerbm	NUSEC.303	7.00
cledgerbm	NUSEC.401	6.00
cledgerbm	NUSEC.402	9.00
cledgerbm	NUSEC.403	6.00
cledgerbm	NUSEC.501	5.00
cledgerbm	NUSEC.502	9.00
cledgerbm	NUSEC.503	6.00
cledgerbm	NUSEC.601	6.00
cledgerbm	NUSEC.602	7.00
cledgerbm	NUSEC.603	10.00
cledgerbm	NUSEC.701	7.00
cledgerbm	NUSEC.702	8.00
moveraldh	NUSEC.101	7.00
moveraldh	NUSEC.102	6.00
moveraldh	NUSEC.103	10.00
moveraldh	NUSEC.201	8.00
moveraldh	NUSEC.202	10.00
moveraldh	NUSEC.203	7.00
moveraldh	NUSEC.301	7.00
moveraldh	NUSEC.302	6.00
moveraldh	NUSEC.303	10.00
moveraldh	NUSEC.401	6.00
moveraldh	NUSEC.402	5.00
moveraldh	NUSEC.403	10.00
moveraldh	NUSEC.501	7.00
moveraldh	NUSEC.502	7.00
moveraldh	NUSEC.503	8.00
moveraldh	NUSEC.601	6.00
moveraldh	NUSEC.602	5.00
moveraldh	NUSEC.603	8.00
moveraldh	NUSEC.701	6.00
moveraldh	NUSEC.702	8.00
moveraldh	NUSEC.703	8.00
moveraldh	NUSEC.801	7.00
mike	NUSEC.101	5.00
mike	NUSEC.102	9.00
mike	NUSEC.103	6.00
mike	NUSEC.201	8.00
mike	NUSEC.202	8.00
mike	NUSEC.203	5.00
mike	NUSEC.301	7.00
mike	NUSEC.302	7.00
mike	NUSEC.303	5.00
mike	NUSEC.401	6.00
mike	NUSEC.402	10.00
mike	NUSEC.403	10.00
mike	NUSEC.501	8.00
mike	NUSEC.502	9.00
mike	NUSEC.503	7.00
mike	NUSEC.601	10.00
mike	NUSEC.602	5.00
mike	NUSEC.603	10.00
mike	NUSEC.701	8.00
mike	NUSEC.702	9.00
mike	NUSEC.703	5.00
dmcphersonp5	NUSEC.101	5.00
dmcphersonp5	NUSEC.102	5.00
dmcphersonp5	NUSEC.103	5.00
dmcphersonp5	NUSEC.201	10.00
dmcphersonp5	NUSEC.202	5.00
dmcphersonp5	NUSEC.203	9.00
dmcphersonp5	NUSEC.301	5.00
dmcphersonp5	NUSEC.302	9.00
dmcphersonp5	NUSEC.303	7.00
dmcphersonp5	NUSEC.401	7.00
dmcphersonp5	NUSEC.402	9.00
dmcphersonp5	NUSEC.403	8.00
dmcphersonp5	NUSEC.501	7.00
dmcphersonp5	NUSEC.502	6.00
dmcphersonp5	NUSEC.503	10.00
dmcphersonp5	NUSEC.601	5.00
dmcphersonp5	NUSEC.602	7.00
hdartnall3m	NUSEC.101	5.00
hdartnall3m	NUSEC.102	6.00
hdartnall3m	NUSEC.103	8.00
hdartnall3m	NUSEC.201	7.00
hdartnall3m	NUSEC.202	9.00
hdartnall3m	NUSEC.203	6.00
hdartnall3m	NUSEC.301	5.00
hdartnall3m	NUSEC.302	8.00
hdartnall3m	NUSEC.303	8.00
hdartnall3m	NUSEC.401	6.00
hdartnall3m	NUSEC.402	10.00
hdartnall3m	NUSEC.403	6.00
hdartnall3m	NUSEC.501	9.00
hdartnall3m	NUSEC.502	8.00
hdartnall3m	NUSEC.503	5.00
hdartnall3m	NUSEC.601	8.00
hdartnall3m	NUSEC.602	7.00
hdartnall3m	NUSEC.603	7.00
hdartnall3m	NUSEC.701	6.00
hdartnall3m	NUSEC.702	9.00
hdartnall3m	NUSEC.703	7.00
cpitcockfb	AAN.101	6.00
cpitcockfb	AAN.102	7.00
cpitcockfb	AAN.103	8.00
cpitcockfb	AAN.104	8.00
cpitcockfb	AAN.105	9.00
cpitcockfb	AAN.201	8.00
cpitcockfb	AAN.202	9.00
cpitcockfb	AAN.203	5.00
cpitcockfb	AAN.204	7.00
cpitcockfb	AAN.205	7.00
cpitcockfb	AAN.301	10.00
cpitcockfb	AAN.302	10.00
cpitcockfb	AAN.303	6.00
cpitcockfb	AAN.304	6.00
cpitcockfb	AAN.305	7.00
cpitcockfb	AAN.401	5.00
cpitcockfb	AAN.402	9.00
cpitcockfb	AAN.403	5.00
cpitcockfb	AAN.404	8.00
cpitcockfb	AAN.405	5.00
cpitcockfb	AAN.501	7.00
cpitcockfb	AAN.502	10.00
sthomsonec	AAN.101	6.00
sthomsonec	AAN.102	5.00
sthomsonec	AAN.103	7.00
sthomsonec	AAN.104	8.00
sthomsonec	AAN.105	6.00
sthomsonec	AAN.201	8.00
sthomsonec	AAN.202	5.00
sthomsonec	AAN.203	6.00
gabbetth3	AAN.101	8.00
gabbetth3	AAN.102	8.00
gabbetth3	AAN.103	10.00
gabbetth3	AAN.104	9.00
gabbetth3	AAN.105	6.00
gabbetth3	AAN.201	7.00
gabbetth3	AAN.202	8.00
gabbetth3	AAN.203	8.00
gabbetth3	AAN.204	5.00
gabbetth3	AAN.205	10.00
gabbetth3	AAN.301	9.00
edambrosilq	AAN.101	9.00
edambrosilq	AAN.102	10.00
edambrosilq	AAN.103	10.00
edambrosilq	AAN.104	9.00
edambrosilq	AAN.105	10.00
edambrosilq	AAN.201	8.00
edambrosilq	AAN.202	9.00
edambrosilq	AAN.203	5.00
edambrosilq	AAN.204	9.00
edambrosilq	AAN.205	9.00
edambrosilq	AAN.301	8.00
edambrosilq	AAN.302	9.00
edambrosilq	AAN.303	9.00
hricartq0	AAN.101	5.00
hricartq0	AAN.102	5.00
hricartq0	AAN.103	7.00
hricartq0	AAN.104	8.00
hricartq0	AAN.105	9.00
hricartq0	AAN.201	8.00
hricartq0	AAN.202	8.00
hricartq0	AAN.203	8.00
hricartq0	AAN.204	9.00
hricartq0	AAN.205	6.00
hricartq0	AAN.301	9.00
hricartq0	AAN.302	6.00
hricartq0	AAN.303	7.00
hricartq0	AAN.304	5.00
hricartq0	AAN.305	9.00
hricartq0	AAN.401	9.00
hricartq0	AAN.402	8.00
hricartq0	AAN.403	8.00
hricartq0	AAN.404	9.00
hricartq0	AAN.405	10.00
hricartq0	AAN.501	7.00
hricartq0	AAN.502	7.00
jovery6a	AAN.101	9.00
jovery6a	AAN.102	6.00
jovery6a	AAN.103	8.00
jovery6a	AAN.104	10.00
jovery6a	AAN.105	9.00
jovery6a	AAN.201	5.00
jovery6a	AAN.202	6.00
jovery6a	AAN.203	6.00
jovery6a	AAN.204	10.00
jovery6a	AAN.205	10.00
jovery6a	AAN.301	7.00
jovery6a	AAN.302	5.00
jovery6a	AAN.303	9.00
jovery6a	AAN.304	10.00
jovery6a	AAN.305	7.00
jovery6a	AAN.401	7.00
jovery6a	AAN.402	7.00
jovery6a	AAN.403	8.00
jovery6a	AAN.404	10.00
ktruman73	AAN.101	6.00
ktruman73	AAN.102	10.00
ktruman73	AAN.103	5.00
ktruman73	AAN.104	5.00
ktruman73	AAN.105	7.00
ktruman73	AAN.201	10.00
ktruman73	AAN.202	7.00
ktruman73	AAN.203	7.00
ktruman73	AAN.204	5.00
ktruman73	AAN.205	10.00
ktruman73	AAN.301	7.00
ktruman73	AAN.302	10.00
ktruman73	AAN.303	10.00
ktruman73	AAN.304	7.00
ktruman73	AAN.305	8.00
cthorogood6m	AAN.101	7.00
cthorogood6m	AAN.102	10.00
cthorogood6m	AAN.103	8.00
cthorogood6m	AAN.104	6.00
cthorogood6m	AAN.105	8.00
cthorogood6m	AAN.201	5.00
cthorogood6m	AAN.202	8.00
cthorogood6m	AAN.203	9.00
cthorogood6m	AAN.204	5.00
cthorogood6m	AAN.205	8.00
cthorogood6m	AAN.301	8.00
cthorogood6m	AAN.302	6.00
cthorogood6m	AAN.303	7.00
cthorogood6m	AAN.304	5.00
cthorogood6m	AAN.305	7.00
cthorogood6m	AAN.401	6.00
cthorogood6m	AAN.402	9.00
cthorogood6m	AAN.403	7.00
cthorogood6m	AAN.404	6.00
cthorogood6m	AAN.405	5.00
mshakespear6n	AAN.101	6.00
mshakespear6n	AAN.102	9.00
mshakespear6n	AAN.103	8.00
mshakespear6n	AAN.104	5.00
mshakespear6n	AAN.105	10.00
mshakespear6n	AAN.201	8.00
mshakespear6n	AAN.202	9.00
mshakespear6n	AAN.203	10.00
mshakespear6n	AAN.204	7.00
mshakespear6n	AAN.205	7.00
mshakespear6n	AAN.301	6.00
mshakespear6n	AAN.302	6.00
mshakespear6n	AAN.303	7.00
mshakespear6n	AAN.304	8.00
mshakespear6n	AAN.305	8.00
mshakespear6n	AAN.401	5.00
mshakespear6n	AAN.402	6.00
mshakespear6n	AAN.403	10.00
mshakespear6n	AAN.404	9.00
mshakespear6n	AAN.405	7.00
mshakespear6n	AAN.501	5.00
nivanichev6i	AAN.101	6.00
nivanichev6i	AAN.102	5.00
nivanichev6i	AAN.103	8.00
nivanichev6i	AAN.104	6.00
nivanichev6i	AAN.105	9.00
nivanichev6i	AAN.201	6.00
nivanichev6i	AAN.202	8.00
vpilsworth6p	AAN.101	8.00
vpilsworth6p	AAN.102	8.00
vpilsworth6p	AAN.103	6.00
vpilsworth6p	AAN.104	7.00
vpilsworth6p	AAN.105	5.00
vpilsworth6p	AAN.201	6.00
vpilsworth6p	AAN.202	7.00
vpilsworth6p	AAN.203	8.00
vpilsworth6p	AAN.204	5.00
vpilsworth6p	AAN.205	9.00
vpilsworth6p	AAN.301	8.00
vpilsworth6p	AAN.302	7.00
vpilsworth6p	AAN.303	9.00
vpilsworth6p	AAN.304	5.00
vpilsworth6p	AAN.305	7.00
vpilsworth6p	AAN.401	10.00
vpilsworth6p	AAN.402	9.00
vpilsworth6p	AAN.403	10.00
vpilsworth6p	AAN.404	6.00
vpilsworth6p	AAN.405	5.00
vpilsworth6p	AAN.501	9.00
rnormanvell6y	AAN.101	9.00
rnormanvell6y	AAN.102	8.00
rnormanvell6y	AAN.103	5.00
rnormanvell6y	AAN.104	6.00
rnormanvell6y	AAN.105	7.00
rnormanvell6y	AAN.201	8.00
rnormanvell6y	AAN.202	9.00
rnormanvell6y	AAN.203	8.00
rnormanvell6y	AAN.204	6.00
rnormanvell6y	AAN.205	10.00
rnormanvell6y	AAN.301	5.00
rnormanvell6y	AAN.302	10.00
rnormanvell6y	AAN.303	6.00
rnormanvell6y	AAN.304	9.00
rnormanvell6y	AAN.305	10.00
rnormanvell6y	AAN.401	5.00
rnormanvell6y	AAN.402	9.00
rnormanvell6y	AAN.403	6.00
rnormanvell6y	AAN.404	10.00
rnormanvell6y	AAN.405	8.00
msitford74	AAN.101	8.00
msitford74	AAN.102	8.00
msitford74	AAN.103	5.00
msitford74	AAN.104	7.00
msitford74	AAN.105	6.00
msitford74	AAN.201	7.00
msitford74	AAN.202	10.00
msitford74	AAN.203	5.00
msitford74	AAN.204	6.00
msitford74	AAN.205	10.00
msitford74	AAN.301	6.00
msitford74	AAN.302	10.00
msitford74	AAN.303	9.00
msitford74	AAN.304	9.00
msitford74	AAN.305	10.00
msitford74	AAN.401	5.00
msitford74	AAN.402	6.00
msitford74	AAN.403	6.00
msitford74	AAN.404	6.00
cverner79	AAN.101	10.00
cverner79	AAN.102	5.00
cverner79	AAN.103	10.00
cverner79	AAN.104	7.00
cverner79	AAN.105	6.00
cverner79	AAN.201	7.00
cverner79	AAN.202	6.00
cverner79	AAN.203	10.00
agauche7e	AAN.101	6.00
agauche7e	AAN.102	6.00
agauche7e	AAN.103	7.00
agauche7e	AAN.104	5.00
agauche7e	AAN.105	6.00
agauche7e	AAN.201	6.00
agauche7e	AAN.202	8.00
agauche7e	AAN.203	8.00
ismaling7f	AAN.101	5.00
ismaling7f	AAN.102	8.00
ismaling7f	AAN.103	7.00
ismaling7f	AAN.104	10.00
ismaling7f	AAN.105	5.00
ismaling7f	AAN.201	7.00
ismaling7f	AAN.202	5.00
ismaling7f	AAN.203	7.00
rbirts7o	AAN.101	10.00
rbirts7o	AAN.102	10.00
rbirts7o	AAN.103	9.00
rbirts7o	AAN.104	10.00
rbirts7o	AAN.105	6.00
rbirts7o	AAN.201	7.00
rbirts7o	AAN.202	7.00
rbirts7o	AAN.203	9.00
rbirts7o	AAN.204	10.00
rbirts7o	AAN.205	9.00
rbirts7o	AAN.301	8.00
dtyndallhr	AAN.101	8.00
dtyndallhr	AAN.102	9.00
dtyndallhr	AAN.103	9.00
dtyndallhr	AAN.104	10.00
dtyndallhr	AAN.105	5.00
dtyndallhr	AAN.201	7.00
dtyndallhr	AAN.202	10.00
dtyndallhr	AAN.203	6.00
dtyndallhr	AAN.204	6.00
dtyndallhr	AAN.205	10.00
dtyndallhr	AAN.301	9.00
dtyndallhr	AAN.302	8.00
dtyndallhr	AAN.303	8.00
dtyndallhr	AAN.304	9.00
dtyndallhr	AAN.305	6.00
dtyndallhr	AAN.401	8.00
eberdaleqp	AAN.101	10.00
eberdaleqp	AAN.102	9.00
eberdaleqp	AAN.103	5.00
eberdaleqp	AAN.104	8.00
eberdaleqp	AAN.105	7.00
eberdaleqp	AAN.201	6.00
eberdaleqp	AAN.202	7.00
eberdaleqp	AAN.203	8.00
eberdaleqp	AAN.204	6.00
eberdaleqp	AAN.205	9.00
eberdaleqp	AAN.301	8.00
eberdaleqp	AAN.302	8.00
eberdaleqp	AAN.303	8.00
abourbonrf	AAN.101	5.00
abourbonrf	AAN.102	6.00
abourbonrf	AAN.103	7.00
abourbonrf	AAN.104	6.00
abourbonrf	AAN.105	8.00
abourbonrf	AAN.201	6.00
abourbonrf	AAN.202	7.00
abourbonrf	AAN.203	8.00
abourbonrf	AAN.204	7.00
abourbonrf	AAN.205	6.00
abourbonrf	AAN.301	6.00
abourbonrf	AAN.302	6.00
awrathallrg	AAN.101	6.00
awrathallrg	AAN.102	10.00
awrathallrg	AAN.103	5.00
awrathallrg	AAN.104	8.00
awrathallrg	AAN.105	8.00
awrathallrg	AAN.201	6.00
awrathallrg	AAN.202	6.00
awrathallrg	AAN.203	10.00
wcoulthardki	AAN.101	5.00
wcoulthardki	AAN.102	9.00
wcoulthardki	AAN.103	10.00
wcoulthardki	AAN.104	6.00
wcoulthardki	AAN.105	6.00
wcoulthardki	AAN.201	6.00
wcoulthardki	AAN.202	7.00
wcoulthardki	AAN.203	10.00
wcoulthardki	AAN.204	5.00
wcoulthardki	AAN.205	5.00
wcoulthardki	AAN.301	5.00
wcoulthardki	AAN.302	7.00
wcoulthardki	AAN.303	8.00
wcoulthardki	AAN.304	8.00
wcoulthardki	AAN.305	9.00
wcoulthardki	AAN.401	8.00
wcoulthardki	AAN.402	7.00
wcoulthardki	AAN.403	8.00
wcoulthardki	AAN.404	6.00
wcoulthardki	AAN.405	10.00
wcoulthardki	AAN.501	8.00
hlemmerst	AAN.101	8.00
hlemmerst	AAN.102	7.00
hlemmerst	AAN.103	8.00
hlemmerst	AAN.104	5.00
hlemmerst	AAN.105	6.00
hlemmerst	AAN.201	6.00
hlemmerst	AAN.202	10.00
hlemmerst	AAN.203	9.00
hlemmerst	AAN.204	8.00
hlemmerst	AAN.205	10.00
hlemmerst	AAN.301	10.00
hlemmerst	AAN.302	6.00
hlemmerst	AAN.303	6.00
hlemmerst	AAN.304	10.00
hlemmerst	AAN.305	7.00
hlemmerst	AAN.401	9.00
hlemmerst	AAN.402	10.00
hlemmerst	AAN.403	5.00
hlemmerst	AAN.404	8.00
hlemmerst	AAN.405	10.00
hlemmerst	AAN.501	7.00
hlemmerst	AAN.502	5.00
aabramski7	AAN.101	7.00
aabramski7	AAN.102	7.00
aabramski7	AAN.103	9.00
aabramski7	AAN.104	5.00
aabramski7	AAN.105	8.00
aabramski7	AAN.201	10.00
aabramski7	AAN.202	8.00
aabramski7	AAN.203	5.00
aabramski7	AAN.204	9.00
gsimanh	AAN.101	10.00
gsimanh	AAN.102	5.00
gsimanh	AAN.103	6.00
gsimanh	AAN.104	8.00
gsimanh	AAN.105	7.00
gsimanh	AAN.201	5.00
gsimanh	AAN.202	8.00
gsimanh	AAN.203	6.00
gsimanh	AAN.204	8.00
gsimanh	AAN.205	10.00
gsimanh	AAN.301	10.00
gsimanh	AAN.302	7.00
gsimanh	AAN.303	9.00
gsimanh	AAN.304	10.00
cmcgahernl	AAN.101	6.00
cmcgahernl	AAN.102	5.00
cmcgahernl	AAN.103	9.00
cmcgahernl	AAN.104	9.00
cmcgahernl	AAN.105	7.00
cmcgahernl	AAN.201	10.00
cmcgahernl	AAN.202	6.00
cmcgahernl	AAN.203	7.00
cmcgahernl	AAN.204	6.00
cmcgahernl	AAN.205	10.00
cmcgahernl	AAN.301	5.00
cmcgahernl	AAN.302	7.00
cmcgahernl	AAN.303	10.00
cmcgahernl	AAN.304	6.00
cmcgahernl	AAN.305	5.00
cmcgahernl	AAN.401	9.00
cmcgahernl	AAN.402	10.00
cmcgahernl	AAN.403	10.00
nhaslockev	AAN.101	7.00
nhaslockev	AAN.102	8.00
nhaslockev	AAN.103	5.00
nhaslockev	AAN.104	8.00
nhaslockev	AAN.105	10.00
nhaslockev	AAN.201	6.00
nhaslockev	AAN.202	8.00
nhaslockev	AAN.203	9.00
nhaslockev	AAN.204	8.00
nhaslockev	AAN.205	8.00
nhaslockev	AAN.301	5.00
nhaslockev	AAN.302	9.00
nhaslockev	AAN.303	6.00
nhaslockev	AAN.304	9.00
nhaslockev	AAN.305	6.00
nhaslockev	AAN.401	7.00
nhaslockev	AAN.402	8.00
nhaslockev	AAN.403	10.00
nhaslockev	AAN.404	7.00
lkryskax	AAN.101	8.00
lkryskax	AAN.102	6.00
lkryskax	AAN.103	9.00
lkryskax	AAN.104	10.00
lkryskax	AAN.105	10.00
lkryskax	AAN.201	9.00
lkryskax	AAN.202	5.00
lkryskax	AAN.203	6.00
lkryskax	AAN.204	9.00
lkryskax	AAN.205	7.00
mcastan70	AAN.101	7.00
mcastan70	AAN.102	9.00
mcastan70	AAN.103	8.00
mcastan70	AAN.104	5.00
mcastan70	AAN.105	5.00
mcastan70	AAN.201	6.00
mcastan70	AAN.202	5.00
mcastan70	AAN.203	7.00
mcastan70	AAN.204	8.00
mcastan70	AAN.205	6.00
mcastan70	AAN.301	7.00
mcastan70	AAN.302	6.00
mcastan70	AAN.303	7.00
mcastan70	AAN.304	10.00
mcastan70	AAN.305	10.00
mcastan70	AAN.401	9.00
mcastan70	AAN.402	6.00
mcastan70	AAN.403	7.00
mcastan70	AAN.404	8.00
mcastan70	AAN.405	8.00
mcastan70	AAN.501	5.00
sfearnsidel0	AAN.101	8.00
sfearnsidel0	AAN.102	5.00
sfearnsidel0	AAN.103	7.00
sfearnsidel0	AAN.104	5.00
sfearnsidel0	AAN.105	8.00
sfearnsidel0	AAN.201	6.00
sfearnsidel0	AAN.202	5.00
sfearnsidel0	AAN.203	9.00
sfearnsidel0	AAN.204	9.00
sfearnsidel0	AAN.205	6.00
sfearnsidel0	AAN.301	9.00
sfearnsidel0	AAN.302	6.00
sfearnsidel0	AAN.303	8.00
sfearnsidel0	AAN.304	10.00
sfearnsidel0	AAN.305	9.00
sfearnsidel0	AAN.401	5.00
sfearnsidel0	AAN.402	5.00
sfearnsidel0	AAN.403	6.00
ksayse6k	AAN.101	10.00
ksayse6k	AAN.102	10.00
ksayse6k	AAN.103	7.00
ksayse6k	AAN.104	5.00
ksayse6k	AAN.105	6.00
ksayse6k	AAN.201	9.00
ksayse6k	AAN.202	10.00
ksayse6k	AAN.203	10.00
ksayse6k	AAN.204	7.00
mbalecv	AAN.101	9.00
mbalecv	AAN.102	5.00
mbalecv	AAN.103	7.00
mbalecv	AAN.104	9.00
mbalecv	AAN.105	9.00
mbalecv	AAN.201	9.00
mbalecv	AAN.202	5.00
mbalecv	AAN.203	9.00
smcnabbda	AAN.101	7.00
smcnabbda	AAN.102	7.00
smcnabbda	AAN.103	7.00
smcnabbda	AAN.104	8.00
smcnabbda	AAN.105	7.00
smcnabbda	AAN.201	9.00
smcnabbda	AAN.202	5.00
smcnabbda	AAN.203	6.00
smcnabbda	AAN.204	7.00
smcnabbda	AAN.205	10.00
smcnabbda	AAN.301	9.00
smcnabbda	AAN.302	5.00
smcnabbda	AAN.303	9.00
smcnabbda	AAN.304	9.00
smcnabbda	AAN.305	6.00
smcnabbda	AAN.401	7.00
smcnabbda	AAN.402	8.00
mghilardiet	AAN.101	5.00
mghilardiet	AAN.102	9.00
mghilardiet	AAN.103	10.00
mghilardiet	AAN.104	10.00
mghilardiet	AAN.105	5.00
mghilardiet	AAN.201	5.00
mghilardiet	AAN.202	10.00
mghilardiet	AAN.203	8.00
mghilardiet	AAN.204	10.00
mghilardiet	AAN.205	5.00
mghilardiet	AAN.301	9.00
mghilardiet	AAN.302	9.00
mghilardiet	AAN.303	7.00
mghilardiet	AAN.304	6.00
dpeetff	AAN.101	5.00
dpeetff	AAN.102	7.00
dpeetff	AAN.103	10.00
dpeetff	AAN.104	5.00
dpeetff	AAN.105	9.00
dpeetff	AAN.201	9.00
dpeetff	AAN.202	5.00
dpeetff	AAN.203	10.00
dpeetff	AAN.204	5.00
dpeetff	AAN.205	10.00
dpeetff	AAN.301	10.00
dpeetff	AAN.302	8.00
rgomersallfq	AAN.101	8.00
rgomersallfq	AAN.102	7.00
rgomersallfq	AAN.103	5.00
rgomersallfq	AAN.104	8.00
rgomersallfq	AAN.105	6.00
rgomersallfq	AAN.201	10.00
rgomersallfq	AAN.202	9.00
swillsheekl	AAN.101	6.00
swillsheekl	AAN.102	10.00
swillsheekl	AAN.103	9.00
swillsheekl	AAN.104	7.00
swillsheekl	AAN.105	8.00
swillsheekl	AAN.201	7.00
swillsheekl	AAN.202	10.00
swillsheekl	AAN.203	7.00
swillsheekl	AAN.204	7.00
swillsheekl	AAN.205	7.00
swillsheekl	AAN.301	6.00
swillsheekl	AAN.302	8.00
swillsheekl	AAN.303	5.00
swillsheekl	AAN.304	9.00
edallin5	AAN.101	10.00
edallin5	AAN.102	5.00
edallin5	AAN.103	6.00
edallin5	AAN.104	7.00
edallin5	AAN.105	5.00
edallin5	AAN.201	9.00
edallin5	AAN.202	7.00
edallin5	AAN.203	9.00
edallin5	AAN.204	8.00
edallin5	AAN.205	9.00
edallin5	AAN.301	7.00
edallin5	AAN.302	9.00
edallin5	AAN.303	10.00
cknibbsn1	AAN.101	5.00
cknibbsn1	AAN.102	5.00
cknibbsn1	AAN.103	6.00
cknibbsn1	AAN.104	10.00
cknibbsn1	AAN.105	10.00
cknibbsn1	AAN.201	9.00
cknibbsn1	AAN.202	10.00
cknibbsn1	AAN.203	9.00
cknibbsn1	AAN.204	8.00
cknibbsn1	AAN.205	8.00
cknibbsn1	AAN.301	6.00
cknibbsn1	AAN.302	7.00
cknibbsn1	AAN.303	6.00
ltreecen5	AAN.101	8.00
ltreecen5	AAN.102	10.00
ltreecen5	AAN.103	6.00
ltreecen5	AAN.104	5.00
ltreecen5	AAN.105	6.00
ltreecen5	AAN.201	5.00
ltreecen5	AAN.202	10.00
ltreecen5	AAN.203	8.00
ltreecen5	AAN.204	10.00
ltreecen5	AAN.205	8.00
ltreecen5	AAN.301	6.00
ltreecen5	AAN.302	6.00
ltreecen5	AAN.303	7.00
ltreecen5	AAN.304	7.00
ltreecen5	AAN.305	7.00
ltreecen5	AAN.401	9.00
ltreecen5	AAN.402	8.00
ltreecen5	AAN.403	10.00
brayerj1	AAN.101	8.00
brayerj1	AAN.102	9.00
brayerj1	AAN.103	6.00
brayerj1	AAN.104	6.00
brayerj1	AAN.105	6.00
brayerj1	AAN.201	7.00
brayerj1	AAN.202	10.00
brayerj1	AAN.203	5.00
brayerj1	AAN.204	7.00
brayerj1	AAN.205	6.00
lambrodinv	AAN.101	10.00
lambrodinv	AAN.102	7.00
lambrodinv	AAN.103	8.00
lambrodinv	AAN.104	9.00
lambrodinv	AAN.105	5.00
lambrodinv	AAN.201	7.00
lambrodinv	AAN.202	10.00
lambrodinv	AAN.203	6.00
lambrodinv	AAN.204	8.00
lambrodinv	AAN.205	10.00
lambrodinv	AAN.301	8.00
lambrodinv	AAN.302	7.00
lambrodinv	AAN.303	9.00
lambrodinv	AAN.304	8.00
lambrodinv	AAN.305	10.00
lambrodinv	AAN.401	10.00
lambrodinv	AAN.402	9.00
lambrodinv	AAN.403	6.00
lambrodinv	AAN.404	10.00
lambrodinv	AAN.405	6.00
borneblow4u	AAN.101	10.00
borneblow4u	AAN.102	6.00
borneblow4u	AAN.103	5.00
borneblow4u	AAN.104	9.00
borneblow4u	AAN.105	8.00
borneblow4u	AAN.201	6.00
borneblow4u	AAN.202	8.00
borneblow4u	AAN.203	6.00
borneblow4u	AAN.204	8.00
borneblow4u	AAN.205	7.00
borneblow4u	AAN.301	5.00
borneblow4u	AAN.302	7.00
borneblow4u	AAN.303	6.00
borneblow4u	AAN.304	9.00
borneblow4u	AAN.305	9.00
borneblow4u	AAN.401	5.00
borneblow4u	AAN.402	5.00
borneblow4u	AAN.403	9.00
borneblow4u	AAN.404	10.00
theakins2a	AAN.101	5.00
theakins2a	AAN.102	5.00
theakins2a	AAN.103	8.00
theakins2a	AAN.104	6.00
theakins2a	AAN.105	5.00
theakins2a	AAN.201	9.00
theakins2a	AAN.202	9.00
theakins2a	AAN.203	5.00
theakins2a	AAN.204	10.00
theakins2a	AAN.205	8.00
theakins2a	AAN.301	8.00
theakins2a	AAN.302	9.00
theakins2a	AAN.303	9.00
mdupoyam	AAN.101	6.00
mdupoyam	AAN.102	5.00
mdupoyam	AAN.103	5.00
mdupoyam	AAN.104	6.00
mdupoyam	AAN.105	8.00
mdupoyam	AAN.201	7.00
mdupoyam	AAN.202	10.00
mdupoyam	AAN.203	9.00
mdupoyam	AAN.204	5.00
mdupoyam	AAN.205	6.00
mdupoyam	AAN.301	6.00
mdupoyam	AAN.302	10.00
mdupoyam	AAN.303	6.00
mdupoyam	AAN.304	6.00
mdupoyam	AAN.305	6.00
mdupoyam	AAN.401	6.00
mdupoyam	AAN.402	8.00
mdupoyam	AAN.403	6.00
mdupoyam	AAN.404	7.00
daimerap	AAN.101	5.00
daimerap	AAN.102	6.00
daimerap	AAN.103	5.00
daimerap	AAN.104	7.00
daimerap	AAN.105	10.00
daimerap	AAN.201	9.00
daimerap	AAN.202	5.00
daimerap	AAN.203	10.00
daimerap	AAN.204	10.00
daimerap	AAN.205	10.00
daimerap	AAN.301	7.00
daimerap	AAN.302	5.00
daimerap	AAN.303	6.00
daimerap	AAN.304	8.00
daimerap	AAN.305	6.00
daimerap	AAN.401	8.00
daimerap	AAN.402	8.00
daimerap	AAN.403	9.00
coxshottas	AAN.101	9.00
coxshottas	AAN.102	10.00
coxshottas	AAN.103	5.00
coxshottas	AAN.104	5.00
coxshottas	AAN.105	9.00
coxshottas	AAN.201	7.00
coxshottas	AAN.202	7.00
coxshottas	AAN.203	6.00
coxshottas	AAN.204	10.00
coxshottas	AAN.205	7.00
coxshottas	AAN.301	9.00
coxshottas	AAN.302	8.00
coxshottas	AAN.303	9.00
coxshottas	AAN.304	10.00
coxshottas	AAN.305	5.00
coxshottas	AAN.401	9.00
coxshottas	AAN.402	10.00
coxshottas	AAN.403	10.00
coxshottas	AAN.404	9.00
coxshottas	AAN.405	5.00
coxshottas	AAN.501	5.00
coxshottas	AAN.502	6.00
coxshottas	AAN.503	6.00
coxshottas	AAN.504	10.00
mempringhamav	AAN.101	8.00
mempringhamav	AAN.102	7.00
mempringhamav	AAN.103	6.00
mempringhamav	AAN.104	6.00
mempringhamav	AAN.105	9.00
mempringhamav	AAN.201	6.00
mempringhamav	AAN.202	5.00
mempringhamav	AAN.203	8.00
mempringhamav	AAN.204	9.00
mempringhamav	AAN.205	5.00
bgloucester8j	AAN.101	7.00
bgloucester8j	AAN.102	7.00
bgloucester8j	AAN.103	5.00
bgloucester8j	AAN.104	6.00
bgloucester8j	AAN.105	7.00
bgloucester8j	AAN.201	5.00
bgloucester8j	AAN.202	5.00
bgloucester8j	AAN.203	7.00
bgloucester8j	AAN.204	5.00
bgloucester8j	AAN.205	7.00
kbenner8n	AAN.101	9.00
kbenner8n	AAN.102	9.00
kbenner8n	AAN.103	6.00
kbenner8n	AAN.104	7.00
kbenner8n	AAN.105	6.00
kbenner8n	AAN.201	10.00
kbenner8n	AAN.202	6.00
kbenner8n	AAN.203	9.00
kbenner8n	AAN.204	9.00
kbenner8n	AAN.205	7.00
kbenner8n	AAN.301	9.00
kbenner8n	AAN.302	8.00
kbenner8n	AAN.303	7.00
kbenner8n	AAN.304	8.00
kbenner8n	AAN.305	10.00
kbenner8n	AAN.401	10.00
kbenner8n	AAN.402	9.00
kbenner8n	AAN.403	9.00
kbenner8n	AAN.404	7.00
kbenner8n	AAN.405	6.00
kbenner8n	AAN.501	8.00
kbenner8n	AAN.502	7.00
kbenner8n	AAN.503	9.00
wslides8o	AAN.101	5.00
wslides8o	AAN.102	10.00
wslides8o	AAN.103	5.00
wslides8o	AAN.104	8.00
wslides8o	AAN.105	7.00
wslides8o	AAN.201	5.00
wslides8o	AAN.202	7.00
wslides8o	AAN.203	9.00
wslides8o	AAN.204	10.00
wslides8o	AAN.205	10.00
wslides8o	AAN.301	7.00
wslides8o	AAN.302	9.00
wslides8o	AAN.303	6.00
wslides8o	AAN.304	7.00
wslides8o	AAN.305	6.00
wslides8o	AAN.401	6.00
wslides8o	AAN.402	10.00
wslides8o	AAN.403	6.00
wslides8o	AAN.404	5.00
wslides8o	AAN.405	10.00
wslides8o	AAN.501	5.00
mvileal	AAN.101	8.00
mvileal	AAN.102	6.00
mvileal	AAN.103	5.00
mvileal	AAN.104	8.00
mvileal	AAN.105	9.00
mvileal	AAN.201	7.00
mvileal	AAN.202	9.00
mvileal	AAN.203	10.00
mvileal	AAN.204	6.00
mvileal	AAN.205	10.00
mvileal	AAN.301	5.00
mvileal	AAN.302	8.00
mvileal	AAN.303	8.00
mvileal	AAN.304	6.00
mvileal	AAN.305	5.00
mvileal	AAN.401	5.00
lwaulker8r	AAN.101	10.00
lwaulker8r	AAN.102	6.00
lwaulker8r	AAN.103	10.00
lwaulker8r	AAN.104	10.00
lwaulker8r	AAN.105	10.00
lwaulker8r	AAN.201	8.00
lwaulker8r	AAN.202	9.00
lwaulker8r	AAN.203	10.00
lwaulker8r	AAN.204	6.00
lwaulker8r	AAN.205	6.00
lwaulker8r	AAN.301	8.00
lwaulker8r	AAN.302	9.00
lwaulker8r	AAN.303	10.00
lwaulker8r	AAN.304	9.00
lwaulker8r	AAN.305	6.00
imegarrell98	AAN.101	8.00
imegarrell98	AAN.102	9.00
imegarrell98	AAN.103	5.00
imegarrell98	AAN.104	7.00
imegarrell98	AAN.105	8.00
imegarrell98	AAN.201	6.00
imegarrell98	AAN.202	5.00
imegarrell98	AAN.203	7.00
imegarrell98	AAN.204	6.00
imegarrell98	AAN.205	7.00
imegarrell98	AAN.301	5.00
imegarrell98	AAN.302	8.00
imegarrell98	AAN.303	9.00
imegarrell98	AAN.304	10.00
imegarrell98	AAN.305	6.00
imegarrell98	AAN.401	6.00
imegarrell98	AAN.402	5.00
imegarrell98	AAN.403	7.00
imegarrell98	AAN.404	8.00
imegarrell98	AAN.405	8.00
cbroadbere9t	AAN.101	9.00
cbroadbere9t	AAN.102	7.00
cbroadbere9t	AAN.103	7.00
cbroadbere9t	AAN.104	6.00
cbroadbere9t	AAN.105	8.00
cbroadbere9t	AAN.201	8.00
cbroadbere9t	AAN.202	5.00
cbroadbere9t	AAN.203	9.00
cbroadbere9t	AAN.204	6.00
cbroadbere9t	AAN.205	6.00
cbroadbere9t	AAN.301	6.00
cbroadbere9t	AAN.302	9.00
cbroadbere9t	AAN.303	5.00
cbroadbere9t	AAN.304	7.00
cbroadbere9t	AAN.305	9.00
cbroadbere9t	AAN.401	9.00
cbroadbere9t	AAN.402	9.00
cbroadbere9t	AAN.403	10.00
cbroadbere9t	AAN.404	10.00
cbroadbere9t	AAN.405	5.00
acherrieai	AAN.101	7.00
acherrieai	AAN.102	7.00
acherrieai	AAN.103	7.00
acherrieai	AAN.104	9.00
acherrieai	AAN.105	8.00
acherrieai	AAN.201	7.00
acherrieai	AAN.202	9.00
acherrieai	AAN.203	8.00
acherrieai	AAN.204	6.00
acherrieai	AAN.205	6.00
acherrieai	AAN.301	8.00
lmarshlandac	AAN.101	6.00
lmarshlandac	AAN.102	9.00
lmarshlandac	AAN.103	8.00
lmarshlandac	AAN.104	8.00
lmarshlandac	AAN.105	7.00
lmarshlandac	AAN.201	9.00
lmarshlandac	AAN.202	7.00
lmarshlandac	AAN.203	7.00
lmarshlandac	AAN.204	10.00
lmarshlandac	AAN.205	7.00
gblyth9g	AAN.101	5.00
gblyth9g	AAN.102	7.00
gblyth9g	AAN.103	10.00
gblyth9g	AAN.104	7.00
gblyth9g	AAN.105	10.00
gblyth9g	AAN.201	5.00
gblyth9g	AAN.202	7.00
gblyth9g	AAN.203	10.00
gblyth9g	AAN.204	6.00
gblyth9g	AAN.205	9.00
gblyth9g	AAN.301	5.00
gblyth9g	AAN.302	8.00
gblyth9g	AAN.303	10.00
gblyth9g	AAN.304	6.00
gblyth9g	AAN.305	8.00
gblyth9g	AAN.401	5.00
gblyth9g	AAN.402	8.00
gblyth9g	AAN.403	10.00
bjaggia1	AAN.101	10.00
bjaggia1	AAN.102	9.00
bjaggia1	AAN.103	7.00
bjaggia1	AAN.104	5.00
bjaggia1	AAN.105	10.00
bjaggia1	AAN.201	10.00
bjaggia1	AAN.202	10.00
bjaggia1	AAN.203	9.00
bjaggia1	AAN.204	8.00
egrayera3	AAN.101	9.00
egrayera3	AAN.102	8.00
egrayera3	AAN.103	9.00
egrayera3	AAN.104	9.00
egrayera3	AAN.105	7.00
egrayera3	AAN.201	8.00
egrayera3	AAN.202	8.00
egrayera3	AAN.203	6.00
ngrishagina5	AAN.101	7.00
ngrishagina5	AAN.102	9.00
ngrishagina5	AAN.103	6.00
ngrishagina5	AAN.104	8.00
ngrishagina5	AAN.105	8.00
ngrishagina5	AAN.201	7.00
ngrishagina5	AAN.202	8.00
ngrishagina5	AAN.203	9.00
ngrishagina5	AAN.204	10.00
ngrishagina5	AAN.205	5.00
ngrishagina5	AAN.301	8.00
ngrishagina5	AAN.302	9.00
ngrishagina5	AAN.303	8.00
ngrishagina5	AAN.304	8.00
ngrishagina5	AAN.305	9.00
jrapier9u	AAN.101	6.00
jrapier9u	AAN.102	7.00
jrapier9u	AAN.103	7.00
jrapier9u	AAN.104	9.00
jrapier9u	AAN.105	9.00
jrapier9u	AAN.201	8.00
jrapier9u	AAN.202	10.00
jrapier9u	AAN.203	6.00
jrapier9u	AAN.204	9.00
jrapier9u	AAN.205	6.00
jrapier9u	AAN.301	7.00
jrapier9u	AAN.302	6.00
jrapier9u	AAN.303	6.00
jrapier9u	AAN.304	6.00
jrapier9u	AAN.305	9.00
jrapier9u	AAN.401	8.00
fdaleman9y	AAN.101	6.00
fdaleman9y	AAN.102	7.00
fdaleman9y	AAN.103	5.00
fdaleman9y	AAN.104	10.00
fdaleman9y	AAN.105	10.00
fdaleman9y	AAN.201	10.00
fdaleman9y	AAN.202	9.00
fdaleman9y	AAN.203	9.00
fdaleman9y	AAN.204	9.00
fdaleman9y	AAN.205	7.00
fdaleman9y	AAN.301	8.00
fdaleman9y	AAN.302	5.00
fdaleman9y	AAN.303	5.00
fdaleman9y	AAN.304	8.00
fdaleman9y	AAN.305	9.00
fdaleman9y	AAN.401	6.00
fdaleman9y	AAN.402	9.00
fdaleman9y	AAN.403	9.00
fdaleman9y	AAN.404	9.00
fdaleman9y	AAN.405	6.00
fdaleman9y	AAN.501	5.00
fdaleman9y	AAN.502	5.00
fdaleman9y	AAN.503	8.00
abrisleyab	AAN.101	8.00
abrisleyab	AAN.102	10.00
abrisleyab	AAN.103	7.00
abrisleyab	AAN.104	6.00
abrisleyab	AAN.105	10.00
abrisleyab	AAN.201	5.00
abrisleyab	AAN.202	8.00
efancuttcw	AAN.101	6.00
efancuttcw	AAN.102	6.00
efancuttcw	AAN.103	8.00
efancuttcw	AAN.104	9.00
efancuttcw	AAN.105	5.00
efancuttcw	AAN.201	8.00
efancuttcw	AAN.202	6.00
efancuttcw	AAN.203	9.00
efancuttcw	AAN.204	8.00
onewarkbl	AAN.101	7.00
onewarkbl	AAN.102	7.00
onewarkbl	AAN.103	9.00
onewarkbl	AAN.104	5.00
onewarkbl	AAN.105	8.00
onewarkbl	AAN.201	9.00
onewarkbl	AAN.202	7.00
onewarkbl	AAN.203	10.00
onewarkbl	AAN.204	8.00
onewarkbl	AAN.205	6.00
ebannerbt	AAN.101	5.00
ebannerbt	AAN.102	10.00
ebannerbt	AAN.103	6.00
ebannerbt	AAN.104	9.00
ebannerbt	AAN.105	6.00
ebannerbt	AAN.201	7.00
ebannerbt	AAN.202	5.00
ebannerbt	AAN.203	8.00
ebannerbt	AAN.204	10.00
ebannerbt	AAN.205	10.00
ebannerbt	AAN.301	7.00
ebannerbt	AAN.302	7.00
ebannerbt	AAN.303	8.00
ebannerbt	AAN.304	10.00
ebannerbt	AAN.305	9.00
ebannerbt	AAN.401	10.00
ebannerbt	AAN.402	8.00
ebannerbt	AAN.403	10.00
ebannerbt	AAN.404	7.00
ebannerbt	AAN.405	9.00
ebannerbt	AAN.501	7.00
ebannerbt	AAN.502	7.00
jgouldenc5	AAN.101	8.00
jgouldenc5	AAN.102	10.00
jgouldenc5	AAN.103	10.00
jgouldenc5	AAN.104	10.00
jgouldenc5	AAN.105	8.00
jgouldenc5	AAN.201	9.00
jgouldenc5	AAN.202	8.00
jgouldenc5	AAN.203	7.00
jgouldenc5	AAN.204	6.00
jgouldenc5	AAN.205	9.00
jgouldenc5	AAN.301	5.00
jgouldenc5	AAN.302	9.00
jgouldenc5	AAN.303	10.00
jgouldenc5	AAN.304	6.00
jgouldenc5	AAN.305	8.00
jgouldenc5	AAN.401	8.00
jgouldenc5	AAN.402	7.00
jgouldenc5	AAN.403	9.00
jgouldenc5	AAN.404	8.00
jgouldenc5	AAN.405	10.00
jgouldenc5	AAN.501	8.00
tgutteridgecc	AAN.101	8.00
tgutteridgecc	AAN.102	9.00
tgutteridgecc	AAN.103	10.00
tgutteridgecc	AAN.104	6.00
tgutteridgecc	AAN.105	6.00
tgutteridgecc	AAN.201	5.00
tgutteridgecc	AAN.202	5.00
tgutteridgecc	AAN.203	5.00
tgutteridgecc	AAN.204	8.00
tgutteridgecc	AAN.205	10.00
tgutteridgecc	AAN.301	8.00
tgutteridgecc	AAN.302	10.00
tgutteridgecc	AAN.303	6.00
tgutteridgecc	AAN.304	7.00
tgutteridgecc	AAN.305	6.00
rwoakesbv	AAN.101	6.00
rwoakesbv	AAN.102	6.00
rwoakesbv	AAN.103	8.00
rwoakesbv	AAN.104	5.00
rwoakesbv	AAN.105	5.00
rwoakesbv	AAN.201	10.00
rwoakesbv	AAN.202	8.00
rwoakesbv	AAN.203	8.00
rwoakesbv	AAN.204	8.00
rwoakesbv	AAN.205	8.00
rwoakesbv	AAN.301	8.00
spraundlck	AAN.101	10.00
spraundlck	AAN.102	5.00
spraundlck	AAN.103	8.00
spraundlck	AAN.104	5.00
spraundlck	AAN.105	7.00
spraundlck	AAN.201	8.00
spraundlck	AAN.202	8.00
spraundlck	AAN.203	7.00
spraundlck	AAN.204	7.00
spraundlck	AAN.205	9.00
spraundlck	AAN.301	7.00
spraundlck	AAN.302	6.00
spraundlck	AAN.303	5.00
spraundlck	AAN.304	10.00
spraundlck	AAN.305	10.00
spraundlck	AAN.401	10.00
spraundlck	AAN.402	7.00
spraundlck	AAN.403	5.00
spraundlck	AAN.404	7.00
spraundlck	AAN.405	8.00
kwaggec2	AAN.101	6.00
kwaggec2	AAN.102	9.00
kwaggec2	AAN.103	9.00
kwaggec2	AAN.104	8.00
kwaggec2	AAN.105	6.00
kwaggec2	AAN.201	5.00
kwaggec2	AAN.202	10.00
kwaggec2	AAN.203	8.00
kwaggec2	AAN.204	7.00
kwaggec2	AAN.205	7.00
kwaggec2	AAN.301	10.00
kwaggec2	AAN.302	7.00
kwaggec2	AAN.303	5.00
kwaggec2	AAN.304	6.00
kwaggec2	AAN.305	10.00
kwaggec2	AAN.401	8.00
kwaggec2	AAN.402	5.00
kwaggec2	AAN.403	8.00
kwaggec2	AAN.404	7.00
kwaggec2	AAN.405	7.00
kwaggec2	AAN.501	10.00
mleishmanct	AAN.101	5.00
mleishmanct	AAN.102	10.00
mleishmanct	AAN.103	9.00
mleishmanct	AAN.104	9.00
mleishmanct	AAN.105	9.00
mleishmanct	AAN.201	7.00
mleishmanct	AAN.202	6.00
jriddickcx	AAN.101	8.00
jriddickcx	AAN.102	6.00
jriddickcx	AAN.103	10.00
jriddickcx	AAN.104	7.00
jriddickcx	AAN.105	6.00
jriddickcx	AAN.201	7.00
jriddickcx	AAN.202	7.00
jriddickcx	AAN.203	9.00
jriddickcx	AAN.204	9.00
jriddickcx	AAN.205	6.00
jriddickcx	AAN.301	6.00
jriddickcx	AAN.302	8.00
jriddickcx	AAN.303	10.00
jriddickcx	AAN.304	5.00
jriddickcx	AAN.305	5.00
jriddickcx	AAN.401	9.00
ktamesd1	AAN.101	9.00
ktamesd1	AAN.102	6.00
ktamesd1	AAN.103	8.00
ktamesd1	AAN.104	10.00
ktamesd1	AAN.105	7.00
ktamesd1	AAN.201	9.00
ktamesd1	AAN.202	10.00
ktamesd1	AAN.203	8.00
ktamesd1	AAN.204	8.00
ktamesd1	AAN.205	10.00
ktamesd1	AAN.301	8.00
ktamesd1	AAN.302	5.00
ktamesd1	AAN.303	6.00
ktamesd1	AAN.304	7.00
ktamesd1	AAN.305	10.00
ktamesd1	AAN.401	10.00
ktamesd1	AAN.402	6.00
ktamesd1	AAN.403	10.00
ktamesd1	AAN.404	10.00
ktamesd1	AAN.405	5.00
ktamesd1	AAN.501	10.00
bswaylandd6	AAN.101	10.00
bswaylandd6	AAN.102	5.00
bswaylandd6	AAN.103	7.00
bswaylandd6	AAN.104	10.00
bswaylandd6	AAN.105	10.00
bswaylandd6	AAN.201	7.00
bswaylandd6	AAN.202	9.00
bswaylandd6	AAN.203	6.00
bswaylandd6	AAN.204	8.00
bswaylandd6	AAN.205	8.00
bswaylandd6	AAN.301	6.00
mredhousefn	AAN.101	6.00
mredhousefn	AAN.102	9.00
mredhousefn	AAN.103	8.00
mredhousefn	AAN.104	10.00
mredhousefn	AAN.105	5.00
mredhousefn	AAN.201	5.00
mredhousefn	AAN.202	5.00
mredhousefn	AAN.203	5.00
mredhousefn	AAN.204	8.00
tbleddoneo	AAN.101	6.00
tbleddoneo	AAN.102	7.00
tbleddoneo	AAN.103	7.00
tbleddoneo	AAN.104	5.00
tbleddoneo	AAN.105	7.00
tbleddoneo	AAN.201	6.00
tbleddoneo	AAN.202	10.00
tbleddoneo	AAN.203	6.00
tbleddoneo	AAN.204	7.00
sblythindc	AAN.101	6.00
sblythindc	AAN.102	9.00
sblythindc	AAN.103	6.00
sblythindc	AAN.104	5.00
sblythindc	AAN.105	9.00
sblythindc	AAN.201	6.00
sblythindc	AAN.202	6.00
sblythindc	AAN.203	7.00
sblythindc	AAN.204	9.00
sblythindc	AAN.205	6.00
sblythindc	AAN.301	5.00
sblythindc	AAN.302	9.00
sblythindc	AAN.303	6.00
sblythindc	AAN.304	6.00
sblythindc	AAN.305	5.00
sblythindc	AAN.401	10.00
sblythindc	AAN.402	8.00
sblythindc	AAN.403	10.00
sblythindc	AAN.404	5.00
sblythindc	AAN.405	9.00
sblythindc	AAN.501	6.00
sblythindc	AAN.502	7.00
sblythindc	AAN.503	5.00
sblythindc	AAN.504	10.00
smachostedq	AAN.101	10.00
smachostedq	AAN.102	5.00
smachostedq	AAN.103	8.00
smachostedq	AAN.104	10.00
smachostedq	AAN.105	8.00
smachostedq	AAN.201	6.00
smachostedq	AAN.202	10.00
smachostedq	AAN.203	7.00
smachostedq	AAN.204	10.00
smachostedq	AAN.205	10.00
smachostedq	AAN.301	10.00
smachostedq	AAN.302	5.00
smachostedq	AAN.303	6.00
smachostedq	AAN.304	10.00
smachostedq	AAN.305	7.00
smachostedq	AAN.401	8.00
smachostedq	AAN.402	7.00
smachostedq	AAN.403	10.00
smachostedq	AAN.404	5.00
smachostedq	AAN.405	8.00
smachostedq	AAN.501	6.00
smachostedq	AAN.502	5.00
smachostedq	AAN.503	8.00
ebriked	AAN.101	8.00
ebriked	AAN.102	9.00
ebriked	AAN.103	7.00
ebriked	AAN.104	9.00
ebriked	AAN.105	7.00
ebriked	AAN.201	5.00
ebriked	AAN.202	5.00
ebriked	AAN.203	5.00
ebriked	AAN.204	5.00
ebriked	AAN.205	9.00
ebriked	AAN.301	5.00
ebriked	AAN.302	8.00
ebriked	AAN.303	5.00
ebriked	AAN.304	5.00
ebriked	AAN.305	10.00
ebriked	AAN.401	8.00
ebriked	AAN.402	8.00
ebriked	AAN.403	5.00
ebriked	AAN.404	10.00
ebriked	AAN.405	10.00
ebriked	AAN.501	7.00
ebriked	AAN.502	7.00
ebriked	AAN.503	10.00
ebriked	AAN.504	6.00
mwheeldoneb	AAN.101	10.00
mwheeldoneb	AAN.102	8.00
mwheeldoneb	AAN.103	6.00
mwheeldoneb	AAN.104	5.00
mwheeldoneb	AAN.105	5.00
mwheeldoneb	AAN.201	5.00
mwheeldoneb	AAN.202	5.00
mwheeldoneb	AAN.203	10.00
mwheeldoneb	AAN.204	8.00
mwheeldoneb	AAN.205	9.00
mwheeldoneb	AAN.301	5.00
mwheeldoneb	AAN.302	9.00
mwheeldoneb	AAN.303	10.00
mwheeldoneb	AAN.304	9.00
mwheeldoneb	AAN.305	8.00
mwheeldoneb	AAN.401	6.00
mwheeldoneb	AAN.402	7.00
mwheeldoneb	AAN.403	9.00
mwheeldoneb	AAN.404	5.00
mwheeldoneb	AAN.405	8.00
mwheeldoneb	AAN.501	7.00
mwheeldoneb	AAN.502	10.00
mwheeldoneb	AAN.503	10.00
hugloweu	AAN.101	9.00
hugloweu	AAN.102	6.00
hugloweu	AAN.103	10.00
hugloweu	AAN.104	7.00
hugloweu	AAN.105	8.00
hugloweu	AAN.201	5.00
hugloweu	AAN.202	9.00
hugloweu	AAN.203	6.00
hugloweu	AAN.204	7.00
hugloweu	AAN.205	5.00
hugloweu	AAN.301	6.00
hugloweu	AAN.302	9.00
lconnollyfa	AAN.101	7.00
lconnollyfa	AAN.102	8.00
lconnollyfa	AAN.103	10.00
lconnollyfa	AAN.104	10.00
lconnollyfa	AAN.105	9.00
lconnollyfa	AAN.201	7.00
lconnollyfa	AAN.202	10.00
lconnollyfa	AAN.203	8.00
lconnollyfa	AAN.204	6.00
lconnollyfa	AAN.205	7.00
lconnollyfa	AAN.301	8.00
lconnollyfa	AAN.302	8.00
lconnollyfa	AAN.303	9.00
lconnollyfa	AAN.304	10.00
lconnollyfa	AAN.305	6.00
lconnollyfa	AAN.401	5.00
jchandersdr	AAN.101	8.00
jchandersdr	AAN.102	5.00
jchandersdr	AAN.103	9.00
jchandersdr	AAN.104	5.00
jchandersdr	AAN.105	9.00
jchandersdr	AAN.201	7.00
jchandersdr	AAN.202	10.00
jchandersdr	AAN.203	6.00
jchandersdr	AAN.204	6.00
jchandersdr	AAN.205	10.00
jchandersdr	AAN.301	6.00
jchandersdr	AAN.302	8.00
jchandersdr	AAN.303	6.00
jchandersdr	AAN.304	5.00
jchandersdr	AAN.305	7.00
jchandersdr	AAN.401	8.00
jchandersdr	AAN.402	5.00
jchandersdr	AAN.403	7.00
jchandersdr	AAN.404	5.00
csmelliehv	AAN.101	7.00
csmelliehv	AAN.102	10.00
csmelliehv	AAN.103	7.00
csmelliehv	AAN.104	6.00
csmelliehv	AAN.105	5.00
csmelliehv	AAN.201	9.00
csmelliehv	AAN.202	6.00
csmelliehv	AAN.203	5.00
csmelliehv	AAN.204	6.00
csmelliehv	AAN.205	10.00
csmelliehv	AAN.301	9.00
csmelliehv	AAN.302	8.00
csmelliehv	AAN.303	7.00
csmelliehv	AAN.304	6.00
csmelliehv	AAN.305	5.00
csmelliehv	AAN.401	6.00
csmelliehv	AAN.402	7.00
csmelliehv	AAN.403	9.00
csmelliehv	AAN.404	7.00
csmelliehv	AAN.405	8.00
csmelliehv	AAN.501	8.00
csmelliehv	AAN.502	9.00
pcraftshx	AAN.101	8.00
pcraftshx	AAN.102	7.00
pcraftshx	AAN.103	10.00
pcraftshx	AAN.104	10.00
pcraftshx	AAN.105	8.00
pcraftshx	AAN.201	9.00
pcraftshx	AAN.202	10.00
pcraftshx	AAN.203	9.00
pcraftshx	AAN.204	9.00
pcraftshx	AAN.205	10.00
pcraftshx	AAN.301	10.00
pcraftshx	AAN.302	5.00
pcraftshx	AAN.303	7.00
pcraftshx	AAN.304	8.00
gaustoni0	AAN.101	9.00
gaustoni0	AAN.102	6.00
gaustoni0	AAN.103	9.00
gaustoni0	AAN.104	7.00
gaustoni0	AAN.105	10.00
gaustoni0	AAN.201	6.00
gaustoni0	AAN.202	6.00
gaustoni0	AAN.203	5.00
gaustoni0	AAN.204	6.00
gaustoni0	AAN.205	10.00
gaustoni0	AAN.301	10.00
gaustoni0	AAN.302	6.00
gaustoni0	AAN.303	8.00
ntynanfy	AAN.101	7.00
ntynanfy	AAN.102	5.00
ntynanfy	AAN.103	9.00
ntynanfy	AAN.104	8.00
ntynanfy	AAN.105	7.00
ntynanfy	AAN.201	6.00
ntynanfy	AAN.202	10.00
ntynanfy	AAN.203	9.00
sroizht	AAN.101	6.00
sroizht	AAN.102	6.00
sroizht	AAN.103	8.00
sroizht	AAN.104	6.00
sroizht	AAN.105	9.00
sroizht	AAN.201	7.00
sroizht	AAN.202	7.00
sroizht	AAN.203	5.00
sroizht	AAN.204	8.00
sroizht	AAN.205	6.00
sroizht	AAN.301	9.00
sroizht	AAN.302	10.00
ccraigiehy	AAN.101	6.00
ccraigiehy	AAN.102	6.00
ccraigiehy	AAN.103	6.00
ccraigiehy	AAN.104	6.00
ccraigiehy	AAN.105	10.00
ccraigiehy	AAN.201	7.00
ccraigiehy	AAN.202	6.00
ccraigiehy	AAN.203	7.00
ccraigiehy	AAN.204	8.00
ccraigiehy	AAN.205	9.00
ccraigiehy	AAN.301	7.00
ccraigiehy	AAN.302	5.00
ccraigiehy	AAN.303	8.00
ccraigiehy	AAN.304	5.00
ccraigiehy	AAN.305	7.00
ccraigiehy	AAN.401	6.00
ccraigiehy	AAN.402	5.00
ccraigiehy	AAN.403	6.00
ccraigiehy	AAN.404	9.00
ccraigiehy	AAN.405	5.00
ccraigiehy	AAN.501	7.00
ccraigiehy	AAN.502	7.00
ccraigiehy	AAN.503	6.00
ptemplefz	AAN.101	5.00
ptemplefz	AAN.102	5.00
ptemplefz	AAN.103	9.00
ptemplefz	AAN.104	9.00
ptemplefz	AAN.105	9.00
ptemplefz	AAN.201	6.00
ptemplefz	AAN.202	5.00
ptemplefz	AAN.203	10.00
ptemplefz	AAN.204	7.00
ptemplefz	AAN.205	10.00
ptemplefz	AAN.301	7.00
ptemplefz	AAN.302	8.00
ptemplefz	AAN.303	5.00
ptemplefz	AAN.304	5.00
ptemplefz	AAN.305	8.00
ptemplefz	AAN.401	7.00
ptemplefz	AAN.402	10.00
ptemplefz	AAN.403	6.00
ptemplefz	AAN.404	7.00
ptemplefz	AAN.405	7.00
ptemplefz	AAN.501	9.00
ptemplefz	AAN.502	8.00
ptemplefz	AAN.503	7.00
jmowbrayge	AAN.101	9.00
jmowbrayge	AAN.102	6.00
jmowbrayge	AAN.103	6.00
jmowbrayge	AAN.104	9.00
jmowbrayge	AAN.105	9.00
jmowbrayge	AAN.201	8.00
jmowbrayge	AAN.202	8.00
jmowbrayge	AAN.203	5.00
jmowbrayge	AAN.204	10.00
jmowbrayge	AAN.205	10.00
jmowbrayge	AAN.301	9.00
jmowbrayge	AAN.302	5.00
jmowbrayge	AAN.303	6.00
jmowbrayge	AAN.304	6.00
jmowbrayge	AAN.305	5.00
jmowbrayge	AAN.401	9.00
jmowbrayge	AAN.402	5.00
jmowbrayge	AAN.403	9.00
cknibbsgi	AAN.101	10.00
cknibbsgi	AAN.102	6.00
cknibbsgi	AAN.103	9.00
cknibbsgi	AAN.104	6.00
cknibbsgi	AAN.105	10.00
cknibbsgi	AAN.201	9.00
cknibbsgi	AAN.202	9.00
cknibbsgi	AAN.203	9.00
cknibbsgi	AAN.204	7.00
cknibbsgi	AAN.205	8.00
bmowsdillg3	AAN.101	8.00
bmowsdillg3	AAN.102	6.00
bmowsdillg3	AAN.103	10.00
bmowsdillg3	AAN.104	6.00
bmowsdillg3	AAN.105	5.00
bmowsdillg3	AAN.201	9.00
bmowsdillg3	AAN.202	9.00
bmowsdillg3	AAN.203	10.00
bmowsdillg3	AAN.204	6.00
bmowsdillg3	AAN.205	9.00
bmowsdillg3	AAN.301	7.00
bmowsdillg3	AAN.302	8.00
bmowsdillg3	AAN.303	9.00
bmowsdillg3	AAN.304	6.00
bmowsdillg3	AAN.305	6.00
bmowsdillg3	AAN.401	5.00
bmowsdillg3	AAN.402	8.00
bmowsdillg3	AAN.403	10.00
bmowsdillg3	AAN.404	7.00
bmowsdillg3	AAN.405	7.00
bmowsdillg3	AAN.501	6.00
bmowsdillg3	AAN.502	5.00
rstonesgr	AAN.101	7.00
rstonesgr	AAN.102	10.00
rstonesgr	AAN.103	5.00
rstonesgr	AAN.104	7.00
rstonesgr	AAN.105	9.00
rstonesgr	AAN.201	7.00
rstonesgr	AAN.202	10.00
rstonesgr	AAN.203	5.00
rstonesgr	AAN.204	10.00
rstonesgr	AAN.205	6.00
rstonesgr	AAN.301	7.00
rstonesgr	AAN.302	5.00
rstonesgr	AAN.303	7.00
rstonesgr	AAN.304	6.00
rstonesgr	AAN.305	10.00
rstonesgr	AAN.401	5.00
rstonesgr	AAN.402	7.00
rstonesgr	AAN.403	7.00
rstonesgr	AAN.404	10.00
rstonesgr	AAN.405	9.00
rstonesgr	AAN.501	7.00
rstonesgr	AAN.502	7.00
rstonesgr	AAN.503	8.00
cshacklegw	AAN.101	7.00
cshacklegw	AAN.102	7.00
cshacklegw	AAN.103	6.00
cshacklegw	AAN.104	8.00
cshacklegw	AAN.105	5.00
cshacklegw	AAN.201	5.00
cshacklegw	AAN.202	9.00
cshacklegw	AAN.203	9.00
cshacklegw	AAN.204	10.00
rsleafordgx	AAN.101	5.00
rsleafordgx	AAN.102	7.00
rsleafordgx	AAN.103	5.00
rsleafordgx	AAN.104	7.00
rsleafordgx	AAN.105	6.00
rsleafordgx	AAN.201	10.00
rsleafordgx	AAN.202	7.00
rsleafordgx	AAN.203	9.00
rsleafordgx	AAN.204	8.00
rsleafordgx	AAN.205	10.00
rsleafordgx	AAN.301	8.00
rsleafordgx	AAN.302	6.00
rsleafordgx	AAN.303	8.00
rsleafordgx	AAN.304	7.00
rsleafordgx	AAN.305	8.00
rsleafordgx	AAN.401	8.00
rsleafordgx	AAN.402	9.00
rsleafordgx	AAN.403	5.00
rsleafordgx	AAN.404	6.00
rsleafordgx	AAN.405	6.00
dloughanh0	AAN.101	9.00
dloughanh0	AAN.102	6.00
dloughanh0	AAN.103	6.00
dloughanh0	AAN.104	8.00
dloughanh0	AAN.105	10.00
dloughanh0	AAN.201	8.00
dloughanh0	AAN.202	9.00
dloughanh0	AAN.203	8.00
dloughanh0	AAN.204	5.00
dloughanh0	AAN.205	8.00
dloughanh0	AAN.301	8.00
dloughanh0	AAN.302	8.00
dloughanh0	AAN.303	10.00
dloughanh0	AAN.304	6.00
jgilroyjq	AAN.101	6.00
jgilroyjq	AAN.102	8.00
jgilroyjq	AAN.103	8.00
jgilroyjq	AAN.104	8.00
jgilroyjq	AAN.105	6.00
jgilroyjq	AAN.201	10.00
jgilroyjq	AAN.202	7.00
jgilroyjq	AAN.203	7.00
jgilroyjq	AAN.204	6.00
jgilroyjq	AAN.205	10.00
jgilroyjq	AAN.301	5.00
jgilroyjq	AAN.302	8.00
jgilroyjq	AAN.303	5.00
rpergensjs	AAN.101	10.00
rpergensjs	AAN.102	7.00
rpergensjs	AAN.103	9.00
rpergensjs	AAN.104	7.00
rpergensjs	AAN.105	9.00
rpergensjs	AAN.201	10.00
rpergensjs	AAN.202	6.00
rpergensjs	AAN.203	10.00
rpergensjs	AAN.204	7.00
rpergensjs	AAN.205	6.00
deylesk9	AAN.101	6.00
deylesk9	AAN.102	9.00
deylesk9	AAN.103	5.00
deylesk9	AAN.104	7.00
deylesk9	AAN.105	8.00
deylesk9	AAN.201	9.00
deylesk9	AAN.202	7.00
deylesk9	AAN.203	5.00
btrevaskuskk	AAN.101	7.00
btrevaskuskk	AAN.102	9.00
btrevaskuskk	AAN.103	8.00
btrevaskuskk	AAN.104	7.00
btrevaskuskk	AAN.105	8.00
btrevaskuskk	AAN.201	8.00
btrevaskuskk	AAN.202	9.00
btrevaskuskk	AAN.203	10.00
btrevaskuskk	AAN.204	5.00
btrevaskuskk	AAN.205	10.00
btrevaskuskk	AAN.301	8.00
btrevaskuskk	AAN.302	6.00
btrevaskuskk	AAN.303	7.00
btrevaskuskk	AAN.304	9.00
cborellic	AAN.101	5.00
cborellic	AAN.102	8.00
cborellic	AAN.103	5.00
cborellic	AAN.104	9.00
cborellic	AAN.105	6.00
cborellic	AAN.201	8.00
cborellic	AAN.202	8.00
cborellic	AAN.203	10.00
cborellic	AAN.204	10.00
cborellic	AAN.205	6.00
cborellic	AAN.301	9.00
cborellic	AAN.302	5.00
cborellic	AAN.303	7.00
cborellic	AAN.304	7.00
cborellic	AAN.305	6.00
cborellic	AAN.401	10.00
cborellic	AAN.402	6.00
cborellic	AAN.403	9.00
cborellic	AAN.404	10.00
ehryniewickijr	AAN.101	6.00
ehryniewickijr	AAN.102	8.00
ehryniewickijr	AAN.103	8.00
ehryniewickijr	AAN.104	8.00
ehryniewickijr	AAN.105	9.00
ehryniewickijr	AAN.201	5.00
ehryniewickijr	AAN.202	10.00
ehryniewickijr	AAN.203	7.00
fdovingtonk2	AAN.101	10.00
fdovingtonk2	AAN.102	5.00
fdovingtonk2	AAN.103	7.00
fdovingtonk2	AAN.104	5.00
fdovingtonk2	AAN.105	6.00
fdovingtonk2	AAN.201	5.00
fdovingtonk2	AAN.202	7.00
fdovingtonk2	AAN.203	6.00
fdovingtonk2	AAN.204	7.00
fdovingtonk2	AAN.205	6.00
fdovingtonk2	AAN.301	9.00
fdovingtonk2	AAN.302	6.00
fdovingtonk2	AAN.303	5.00
fdovingtonk2	AAN.304	7.00
fdovingtonk2	AAN.305	7.00
fdovingtonk2	AAN.401	7.00
laptedid	AAN.101	9.00
laptedid	AAN.102	10.00
laptedid	AAN.103	10.00
laptedid	AAN.104	5.00
laptedid	AAN.105	9.00
laptedid	AAN.201	10.00
laptedid	AAN.202	10.00
laptedid	AAN.203	5.00
laptedid	AAN.204	5.00
laptedid	AAN.205	5.00
laptedid	AAN.301	6.00
laptedid	AAN.302	10.00
laptedid	AAN.303	9.00
laptedid	AAN.304	9.00
laptedid	AAN.305	9.00
azottoliio	AAN.101	8.00
azottoliio	AAN.102	6.00
azottoliio	AAN.103	6.00
azottoliio	AAN.104	7.00
azottoliio	AAN.105	5.00
azottoliio	AAN.201	9.00
azottoliio	AAN.202	10.00
azottoliio	AAN.203	10.00
azottoliio	AAN.204	6.00
azottoliio	AAN.205	7.00
azottoliio	AAN.301	7.00
azottoliio	AAN.302	5.00
azottoliio	AAN.303	8.00
azottoliio	AAN.304	8.00
azottoliio	AAN.305	6.00
azottoliio	AAN.401	10.00
azottoliio	AAN.402	10.00
azottoliio	AAN.403	10.00
azottoliio	AAN.404	7.00
azottoliio	AAN.405	10.00
azottoliio	AAN.501	7.00
npollitti9	AAN.101	7.00
npollitti9	AAN.102	6.00
npollitti9	AAN.103	10.00
npollitti9	AAN.104	9.00
npollitti9	AAN.105	8.00
npollitti9	AAN.201	6.00
npollitti9	AAN.202	6.00
npollitti9	AAN.203	5.00
atolmanj0	AAN.101	10.00
atolmanj0	AAN.102	8.00
atolmanj0	AAN.103	5.00
atolmanj0	AAN.104	5.00
atolmanj0	AAN.105	7.00
atolmanj0	AAN.201	6.00
atolmanj0	AAN.202	5.00
atolmanj0	AAN.203	8.00
atolmanj0	AAN.204	5.00
jscamalin	AAN.101	5.00
jscamalin	AAN.102	8.00
jscamalin	AAN.103	8.00
jscamalin	AAN.104	6.00
jscamalin	AAN.105	10.00
jscamalin	AAN.201	9.00
jscamalin	AAN.202	8.00
jscamalin	AAN.203	6.00
jscamalin	AAN.204	7.00
jscamalin	AAN.205	6.00
jscamalin	AAN.301	9.00
jscamalin	AAN.302	8.00
jscamalin	AAN.303	7.00
jscamalin	AAN.304	10.00
jscamalin	AAN.305	6.00
jscamalin	AAN.401	10.00
jscamalin	AAN.402	10.00
jscamalin	AAN.403	5.00
jscamalin	AAN.404	7.00
jscamalin	AAN.405	5.00
jscamalin	AAN.501	6.00
mmuatj3	AAN.101	8.00
mmuatj3	AAN.102	10.00
mmuatj3	AAN.103	9.00
mmuatj3	AAN.104	5.00
mmuatj3	AAN.105	10.00
mmuatj3	AAN.201	9.00
mmuatj3	AAN.202	8.00
mmuatj3	AAN.203	7.00
mmuatj3	AAN.204	6.00
mmuatj3	AAN.205	5.00
mmuatj3	AAN.301	8.00
mmuatj3	AAN.302	8.00
mmuatj3	AAN.303	5.00
mmuatj3	AAN.304	5.00
jsimcoxja	AAN.101	8.00
jsimcoxja	AAN.102	7.00
jsimcoxja	AAN.103	6.00
jsimcoxja	AAN.104	7.00
jsimcoxja	AAN.105	9.00
jsimcoxja	AAN.201	8.00
jsimcoxja	AAN.202	5.00
jsimcoxja	AAN.203	5.00
jsimcoxja	AAN.204	10.00
jsimcoxja	AAN.205	9.00
jsimcoxja	AAN.301	6.00
jsimcoxja	AAN.302	5.00
abigriggiz	AAN.101	7.00
abigriggiz	AAN.102	5.00
abigriggiz	AAN.103	5.00
abigriggiz	AAN.104	7.00
abigriggiz	AAN.105	6.00
abigriggiz	AAN.201	7.00
abigriggiz	AAN.202	10.00
abigriggiz	AAN.203	7.00
abigriggiz	AAN.204	9.00
abigriggiz	AAN.205	9.00
abigriggiz	AAN.301	10.00
abigriggiz	AAN.302	8.00
abigriggiz	AAN.303	5.00
abigriggiz	AAN.304	9.00
bffoulkesjo	AAN.101	5.00
bffoulkesjo	AAN.102	10.00
bffoulkesjo	AAN.103	10.00
bffoulkesjo	AAN.104	9.00
bffoulkesjo	AAN.105	5.00
bffoulkesjo	AAN.201	7.00
bffoulkesjo	AAN.202	8.00
bffoulkesjo	AAN.203	5.00
bffoulkesjo	AAN.204	6.00
bffoulkesjo	AAN.205	9.00
bffoulkesjo	AAN.301	10.00
bffoulkesjo	AAN.302	7.00
bffoulkesjo	AAN.303	7.00
bffoulkesjo	AAN.304	6.00
bffoulkesjo	AAN.305	7.00
bffoulkesjo	AAN.401	9.00
bffoulkesjo	AAN.402	8.00
bffoulkesjo	AAN.403	5.00
bffoulkesjo	AAN.404	10.00
bffoulkesjo	AAN.405	5.00
mdecristofalom7	AAN.101	7.00
mdecristofalom7	AAN.102	5.00
mdecristofalom7	AAN.103	6.00
mdecristofalom7	AAN.104	5.00
mdecristofalom7	AAN.105	9.00
mdecristofalom7	AAN.201	7.00
mdecristofalom7	AAN.202	8.00
mdecristofalom7	AAN.203	7.00
mdecristofalom7	AAN.204	5.00
mdecristofalom7	AAN.205	8.00
mdecristofalom7	AAN.301	8.00
mdecristofalom7	AAN.302	6.00
mdecristofalom7	AAN.303	5.00
mdecristofalom7	AAN.304	10.00
mdecristofalom7	AAN.305	6.00
mdecristofalom7	AAN.401	5.00
mdecristofalom7	AAN.402	9.00
mdecristofalom7	AAN.403	9.00
mdecristofalom7	AAN.404	5.00
dgallichankn	AAN.101	8.00
dgallichankn	AAN.102	6.00
dgallichankn	AAN.103	7.00
dgallichankn	AAN.104	7.00
dgallichankn	AAN.105	10.00
dgallichankn	AAN.201	9.00
dgallichankn	AAN.202	8.00
dgallichankn	AAN.203	10.00
dgallichankn	AAN.204	10.00
dgallichankn	AAN.205	10.00
dgallichankn	AAN.301	7.00
dgallichankn	AAN.302	7.00
dgallichankn	AAN.303	8.00
dgallichankn	AAN.304	10.00
dgallichankn	AAN.305	5.00
dgallichankn	AAN.401	10.00
dgallichankn	AAN.402	8.00
dgallichankn	AAN.403	9.00
dgallichankn	AAN.404	6.00
dgallichankn	AAN.405	10.00
dgallichankn	AAN.501	9.00
dgallichankn	AAN.502	6.00
dgallichankn	AAN.503	6.00
sposvnerku	AAN.101	8.00
sposvnerku	AAN.102	10.00
sposvnerku	AAN.103	9.00
sposvnerku	AAN.104	10.00
sposvnerku	AAN.105	5.00
sposvnerku	AAN.201	7.00
sposvnerku	AAN.202	6.00
sposvnerku	AAN.203	10.00
sposvnerku	AAN.204	9.00
sposvnerku	AAN.205	8.00
sposvnerku	AAN.301	8.00
sposvnerku	AAN.302	5.00
sposvnerku	AAN.303	7.00
sposvnerku	AAN.304	10.00
sposvnerku	AAN.305	7.00
idownsel7	AAN.101	10.00
idownsel7	AAN.102	5.00
idownsel7	AAN.103	8.00
idownsel7	AAN.104	5.00
idownsel7	AAN.105	6.00
idownsel7	AAN.201	8.00
idownsel7	AAN.202	10.00
idownsel7	AAN.203	8.00
idownsel7	AAN.204	8.00
idownsel7	AAN.205	9.00
idownsel7	AAN.301	7.00
idownsel7	AAN.302	6.00
idownsel7	AAN.303	8.00
idownsel7	AAN.304	6.00
idownsel7	AAN.305	9.00
idownsel7	AAN.401	9.00
idownsel7	AAN.402	10.00
idownsel7	AAN.403	5.00
idownsel7	AAN.404	6.00
idownsel7	AAN.405	10.00
goatteskz	AAN.101	5.00
goatteskz	AAN.102	8.00
goatteskz	AAN.103	6.00
goatteskz	AAN.104	9.00
goatteskz	AAN.105	9.00
goatteskz	AAN.201	9.00
goatteskz	AAN.202	8.00
goatteskz	AAN.203	8.00
goatteskz	AAN.204	5.00
goatteskz	AAN.205	7.00
icucksonl9	AAN.101	5.00
icucksonl9	AAN.102	5.00
icucksonl9	AAN.103	7.00
icucksonl9	AAN.104	9.00
icucksonl9	AAN.105	9.00
icucksonl9	AAN.201	7.00
icucksonl9	AAN.202	6.00
icucksonl9	AAN.203	5.00
icucksonl9	AAN.204	6.00
icucksonl9	AAN.205	5.00
icucksonl9	AAN.301	9.00
icucksonl9	AAN.302	6.00
icucksonl9	AAN.303	9.00
icucksonl9	AAN.304	5.00
icucksonl9	AAN.305	5.00
icucksonl9	AAN.401	6.00
icucksonl9	AAN.402	8.00
icucksonl9	AAN.403	9.00
icucksonl9	AAN.404	6.00
icucksonl9	AAN.405	5.00
icucksonl9	AAN.501	7.00
icucksonl9	AAN.502	9.00
lboothlp	AAN.101	7.00
lboothlp	AAN.102	6.00
lboothlp	AAN.103	10.00
lboothlp	AAN.104	8.00
lboothlp	AAN.105	6.00
lboothlp	AAN.201	8.00
lboothlp	AAN.202	7.00
lboothlp	AAN.203	7.00
lboothlp	AAN.204	9.00
ecurrmmj	AAN.101	9.00
ecurrmmj	AAN.102	8.00
ecurrmmj	AAN.103	8.00
ecurrmmj	AAN.104	7.00
ecurrmmj	AAN.105	8.00
ecurrmmj	AAN.201	5.00
ecurrmmj	AAN.202	7.00
ecurrmmj	AAN.203	10.00
ecurrmmj	AAN.204	9.00
ecurrmmj	AAN.205	9.00
ecurrmmj	AAN.301	9.00
ecurrmmj	AAN.302	7.00
ecurrmmj	AAN.303	8.00
ecurrmmj	AAN.304	6.00
ecurrmmj	AAN.305	5.00
ecurrmmj	AAN.401	6.00
ecurrmmj	AAN.402	8.00
sfinanm5	AAN.101	9.00
sfinanm5	AAN.102	5.00
sfinanm5	AAN.103	10.00
sfinanm5	AAN.104	9.00
sfinanm5	AAN.105	10.00
sfinanm5	AAN.201	7.00
sfinanm5	AAN.202	6.00
sfinanm5	AAN.203	7.00
sfinanm5	AAN.204	5.00
sfinanm5	AAN.205	10.00
sfinanm5	AAN.301	9.00
sfinanm5	AAN.302	8.00
sfinanm5	AAN.303	7.00
sfinanm5	AAN.304	7.00
sfinanm5	AAN.305	8.00
sfinanm5	AAN.401	5.00
sfinanm5	AAN.402	5.00
sfinanm5	AAN.403	8.00
sfinanm5	AAN.404	5.00
sfinanm5	AAN.405	6.00
sfinanm5	AAN.501	7.00
sfinanm5	AAN.502	5.00
mschuckmg	AAN.101	8.00
mschuckmg	AAN.102	6.00
mschuckmg	AAN.103	7.00
mschuckmg	AAN.104	5.00
mschuckmg	AAN.105	9.00
mschuckmg	AAN.201	10.00
mschuckmg	AAN.202	6.00
mschuckmg	AAN.203	8.00
mschuckmg	AAN.204	8.00
mschuckmg	AAN.205	10.00
mschuckmg	AAN.301	7.00
mschuckmg	AAN.302	9.00
mschuckmg	AAN.303	7.00
mschuckmg	AAN.304	9.00
mschuckmg	AAN.305	6.00
mschuckmg	AAN.401	5.00
mschuckmg	AAN.402	7.00
mschuckmg	AAN.403	10.00
mschuckmg	AAN.404	5.00
mschuckmg	AAN.405	7.00
mschuckmg	AAN.501	6.00
mschuckmg	AAN.502	9.00
mschuckmg	AAN.503	9.00
ameffinp6	AAN.101	7.00
ameffinp6	AAN.102	10.00
ameffinp6	AAN.103	8.00
ameffinp6	AAN.104	9.00
ameffinp6	AAN.105	10.00
ameffinp6	AAN.201	8.00
ameffinp6	AAN.202	8.00
ameffinp6	AAN.203	7.00
ameffinp6	AAN.204	6.00
ameffinp6	AAN.205	8.00
ameffinp6	AAN.301	6.00
ameffinp6	AAN.302	6.00
emcvittyny	AAN.101	7.00
emcvittyny	AAN.102	7.00
emcvittyny	AAN.103	6.00
emcvittyny	AAN.104	7.00
emcvittyny	AAN.105	9.00
emcvittyny	AAN.201	5.00
emcvittyny	AAN.202	7.00
emcvittyny	AAN.203	7.00
emcvittyny	AAN.204	9.00
emcvittyny	AAN.205	9.00
emcvittyny	AAN.301	5.00
emcvittyny	AAN.302	9.00
lpickrillof	AAN.101	8.00
lpickrillof	AAN.102	10.00
lpickrillof	AAN.103	10.00
lpickrillof	AAN.104	8.00
lpickrillof	AAN.105	5.00
lpickrillof	AAN.201	8.00
lpickrillof	AAN.202	5.00
lpickrillof	AAN.203	8.00
lpickrillof	AAN.204	10.00
lpickrillof	AAN.205	9.00
lpickrillof	AAN.301	5.00
lpickrillof	AAN.302	9.00
lpickrillof	AAN.303	5.00
lpickrillof	AAN.304	6.00
lpickrillof	AAN.305	8.00
lpickrillof	AAN.401	6.00
lpickrillof	AAN.402	10.00
lpickrillof	AAN.403	10.00
dovisenl	AAN.101	9.00
dovisenl	AAN.102	7.00
dovisenl	AAN.103	5.00
dovisenl	AAN.104	6.00
dovisenl	AAN.105	8.00
dovisenl	AAN.201	6.00
dovisenl	AAN.202	7.00
dovisenl	AAN.203	10.00
kcartneroq	AAN.101	6.00
kcartneroq	AAN.102	9.00
kcartneroq	AAN.103	6.00
kcartneroq	AAN.104	9.00
kcartneroq	AAN.105	5.00
kcartneroq	AAN.201	10.00
kcartneroq	AAN.202	7.00
kcartneroq	AAN.203	5.00
kcartneroq	AAN.204	7.00
kcartneroq	AAN.205	8.00
kcartneroq	AAN.301	6.00
kcartneroq	AAN.302	10.00
kcartneroq	AAN.303	6.00
kcartneroq	AAN.304	6.00
kcartneroq	AAN.305	10.00
kcartneroq	AAN.401	8.00
lgeeritzpc	AAN.101	9.00
lgeeritzpc	AAN.102	5.00
lgeeritzpc	AAN.103	8.00
lgeeritzpc	AAN.104	10.00
lgeeritzpc	AAN.105	7.00
lgeeritzpc	AAN.201	5.00
lgeeritzpc	AAN.202	5.00
lgeeritzpc	AAN.203	10.00
lgeeritzpc	AAN.204	7.00
lgeeritzpc	AAN.205	6.00
lgeeritzpc	AAN.301	5.00
cgierckeoy	AAN.101	7.00
cgierckeoy	AAN.102	9.00
cgierckeoy	AAN.103	7.00
cgierckeoy	AAN.104	6.00
cgierckeoy	AAN.105	7.00
cgierckeoy	AAN.201	6.00
cgierckeoy	AAN.202	6.00
cgierckeoy	AAN.203	9.00
cgierckeoy	AAN.204	5.00
cgierckeoy	AAN.205	8.00
cgierckeoy	AAN.301	8.00
cgierckeoy	AAN.302	8.00
cgierckeoy	AAN.303	9.00
cgierckeoy	AAN.304	5.00
nhewlingsp0	AAN.101	7.00
nhewlingsp0	AAN.102	7.00
nhewlingsp0	AAN.103	9.00
nhewlingsp0	AAN.104	8.00
nhewlingsp0	AAN.105	10.00
nhewlingsp0	AAN.201	5.00
nhewlingsp0	AAN.202	8.00
nhewlingsp0	AAN.203	7.00
nhewlingsp0	AAN.204	7.00
nhewlingsp0	AAN.205	5.00
nhewlingsp0	AAN.301	9.00
nhewlingsp0	AAN.302	10.00
nhewlingsp0	AAN.303	10.00
nhewlingsp0	AAN.304	5.00
nhewlingsp0	AAN.305	5.00
nhewlingsp0	AAN.401	8.00
nhewlingsp0	AAN.402	7.00
ccaldowp2	AAN.101	7.00
ccaldowp2	AAN.102	6.00
ccaldowp2	AAN.103	5.00
ccaldowp2	AAN.104	6.00
ccaldowp2	AAN.105	5.00
ccaldowp2	AAN.201	7.00
ccaldowp2	AAN.202	10.00
ccaldowp2	AAN.203	10.00
ccaldowp2	AAN.204	8.00
ccaldowp2	AAN.205	6.00
ccaldowp2	AAN.301	6.00
ccaldowp2	AAN.302	8.00
ccaldowp2	AAN.303	8.00
ccaldowp2	AAN.304	7.00
ccaldowp2	AAN.305	9.00
ccaldowp2	AAN.401	6.00
ccaldowp2	AAN.402	8.00
ccaldowp2	AAN.403	5.00
ccaldowp2	AAN.404	8.00
ccaldowp2	AAN.405	8.00
bshermarpa	AAN.101	5.00
bshermarpa	AAN.102	8.00
bshermarpa	AAN.103	5.00
bshermarpa	AAN.104	8.00
bshermarpa	AAN.105	8.00
bshermarpa	AAN.201	7.00
bshermarpa	AAN.202	5.00
bshermarpa	AAN.203	6.00
bshermarpa	AAN.204	5.00
bshermarpa	AAN.205	8.00
bshermarpa	AAN.301	7.00
bshermarpa	AAN.302	7.00
bshermarpa	AAN.303	10.00
bshermarpa	AAN.304	7.00
bshermarpa	AAN.305	5.00
bshermarpa	AAN.401	5.00
bshermarpa	AAN.402	7.00
bshermarpa	AAN.403	5.00
bshermarpa	AAN.404	6.00
bshermarpa	AAN.405	8.00
cnewalln9	AAN.101	7.00
cnewalln9	AAN.102	9.00
cnewalln9	AAN.103	8.00
cnewalln9	AAN.104	5.00
cnewalln9	AAN.105	7.00
cnewalln9	AAN.201	7.00
cnewalln9	AAN.202	5.00
cnewalln9	AAN.203	8.00
cnewalln9	AAN.204	5.00
cnewalln9	AAN.205	6.00
cnewalln9	AAN.301	10.00
cnewalln9	AAN.302	7.00
cnewalln9	AAN.303	10.00
cnewalln9	AAN.304	10.00
cnewalln9	AAN.305	9.00
cnewalln9	AAN.401	6.00
cnewalln9	AAN.402	7.00
cwartonbyrp	AAN.101	10.00
cwartonbyrp	AAN.102	5.00
cwartonbyrp	AAN.103	8.00
cwartonbyrp	AAN.104	9.00
cwartonbyrp	AAN.105	9.00
cwartonbyrp	AAN.201	9.00
cwartonbyrp	AAN.202	9.00
cwartonbyrp	AAN.203	7.00
cwartonbyrp	AAN.204	5.00
cwartonbyrp	AAN.205	7.00
cwartonbyrp	AAN.301	5.00
cwartonbyrp	AAN.302	10.00
cwartonbyrp	AAN.303	5.00
cwartonbyrp	AAN.304	8.00
cwartonbyrp	AAN.305	9.00
cwartonbyrp	AAN.401	7.00
cwartonbyrp	AAN.402	9.00
cwartonbyrp	AAN.403	7.00
cwartonbyrp	AAN.404	9.00
lespinospr	AAN.101	5.00
lespinospr	AAN.102	5.00
lespinospr	AAN.103	6.00
lespinospr	AAN.104	8.00
lespinospr	AAN.105	8.00
lespinospr	AAN.201	10.00
lespinospr	AAN.202	9.00
lespinospr	AAN.203	9.00
lespinospr	AAN.204	8.00
lespinospr	AAN.205	5.00
lespinospr	AAN.301	6.00
lespinospr	AAN.302	10.00
htuttps	AAN.101	7.00
htuttps	AAN.102	10.00
htuttps	AAN.103	9.00
htuttps	AAN.104	6.00
htuttps	AAN.105	9.00
htuttps	AAN.201	6.00
htuttps	AAN.202	6.00
htuttps	AAN.203	10.00
htuttps	AAN.204	6.00
htuttps	AAN.205	10.00
htuttps	AAN.301	9.00
htuttps	AAN.302	7.00
htuttps	AAN.303	8.00
gwyllieq2	AAN.101	10.00
gwyllieq2	AAN.102	5.00
gwyllieq2	AAN.103	5.00
gwyllieq2	AAN.104	9.00
gwyllieq2	AAN.105	5.00
gwyllieq2	AAN.201	5.00
gwyllieq2	AAN.202	10.00
gwyllieq2	AAN.203	6.00
gwyllieq2	AAN.204	5.00
gwyllieq2	AAN.205	8.00
gwyllieq2	AAN.301	5.00
gwyllieq2	AAN.302	6.00
gwyllieq2	AAN.303	6.00
gwyllieq2	AAN.304	10.00
gwyllieq2	AAN.305	7.00
gwyllieq2	AAN.401	10.00
gwyllieq2	AAN.402	5.00
gwyllieq2	AAN.403	9.00
cblasingpu	AAN.101	5.00
cblasingpu	AAN.102	8.00
cblasingpu	AAN.103	5.00
cblasingpu	AAN.104	5.00
cblasingpu	AAN.105	5.00
cblasingpu	AAN.201	10.00
cblasingpu	AAN.202	9.00
cblasingpu	AAN.203	10.00
cblasingpu	AAN.204	8.00
cblasingpu	AAN.205	6.00
cblasingpu	AAN.301	5.00
cblasingpu	AAN.302	9.00
cblasingpu	AAN.303	9.00
kkopkerq	AAN.101	8.00
kkopkerq	AAN.102	8.00
kkopkerq	AAN.103	10.00
kkopkerq	AAN.104	7.00
kkopkerq	AAN.105	9.00
kkopkerq	AAN.201	9.00
kkopkerq	AAN.202	9.00
kkopkerq	AAN.203	6.00
kkopkerq	AAN.204	5.00
kkopkerq	AAN.205	5.00
kkopkerq	AAN.301	10.00
kkopkerq	AAN.302	7.00
kkopkerq	AAN.303	9.00
kkopkerq	AAN.304	8.00
kkopkerq	AAN.305	6.00
kkopkerq	AAN.401	6.00
kkopkerq	AAN.402	9.00
rgillesonq9	AAN.101	9.00
rgillesonq9	AAN.102	7.00
rgillesonq9	AAN.103	10.00
rgillesonq9	AAN.104	9.00
rgillesonq9	AAN.105	9.00
rgillesonq9	AAN.201	9.00
rgillesonq9	AAN.202	10.00
rgillesonq9	AAN.203	5.00
rgillesonq9	AAN.204	9.00
rgillesonq9	AAN.205	6.00
rgillesonq9	AAN.301	7.00
emerrittqw	AAN.101	9.00
emerrittqw	AAN.102	10.00
emerrittqw	AAN.103	8.00
emerrittqw	AAN.104	5.00
emerrittqw	AAN.105	9.00
emerrittqw	AAN.201	7.00
emerrittqw	AAN.202	5.00
emerrittqw	AAN.203	6.00
emerrittqw	AAN.204	7.00
emerrittqw	AAN.205	7.00
emerrittqw	AAN.301	8.00
emerrittqw	AAN.302	7.00
emerrittqw	AAN.303	8.00
emerrittqw	AAN.304	9.00
emerrittqw	AAN.305	5.00
emerrittqw	AAN.401	10.00
emerrittqw	AAN.402	5.00
emerrittqw	AAN.403	9.00
emerrittqw	AAN.404	7.00
emerrittqw	AAN.405	6.00
emerrittqw	AAN.501	5.00
emerrittqw	AAN.502	5.00
emerrittqw	AAN.503	9.00
bkingdomqy	AAN.101	6.00
bkingdomqy	AAN.102	10.00
bkingdomqy	AAN.103	9.00
bkingdomqy	AAN.104	6.00
bkingdomqy	AAN.105	6.00
bkingdomqy	AAN.201	9.00
bkingdomqy	AAN.202	7.00
bkingdomqy	AAN.203	9.00
bkingdomqy	AAN.204	8.00
bkingdomqy	AAN.205	5.00
bkingdomqy	AAN.301	6.00
bkingdomqy	AAN.302	8.00
bkingdomqy	AAN.303	7.00
bkingdomqy	AAN.304	9.00
bkingdomqy	AAN.305	6.00
bkingdomqy	AAN.401	7.00
bkingdomqy	AAN.402	7.00
bkingdomqy	AAN.403	5.00
gshaylerql	AAN.101	8.00
gshaylerql	AAN.102	10.00
gshaylerql	AAN.103	6.00
gshaylerql	AAN.104	8.00
gshaylerql	AAN.105	8.00
gshaylerql	AAN.201	10.00
gshaylerql	AAN.202	7.00
gshaylerql	AAN.203	10.00
gshaylerql	AAN.204	10.00
gshaylerql	AAN.205	8.00
gshaylerql	AAN.301	9.00
gshaylerql	AAN.302	9.00
gshaylerql	AAN.303	5.00
gshaylerql	AAN.304	5.00
gshaylerql	AAN.305	8.00
gshaylerql	AAN.401	8.00
gshaylerql	AAN.402	8.00
gcroppr8	AAN.101	6.00
gcroppr8	AAN.102	5.00
gcroppr8	AAN.103	10.00
gcroppr8	AAN.104	6.00
gcroppr8	AAN.105	8.00
gcroppr8	AAN.201	9.00
gcroppr8	AAN.202	9.00
gcroppr8	AAN.203	9.00
gcroppr8	AAN.204	9.00
gcroppr8	AAN.205	10.00
gcroppr8	AAN.301	6.00
gcroppr8	AAN.302	6.00
gcroppr8	AAN.303	8.00
gcroppr8	AAN.304	8.00
gcroppr8	AAN.305	8.00
gcroppr8	AAN.401	9.00
jmayworthbj	AAN.101	6.00
jmayworthbj	AAN.102	6.00
jmayworthbj	AAN.103	10.00
jmayworthbj	AAN.104	9.00
jmayworthbj	AAN.105	5.00
jmayworthbj	AAN.201	8.00
jmayworthbj	AAN.202	6.00
jmayworthbj	AAN.203	8.00
jmayworthbj	AAN.204	5.00
jmayworthbj	AAN.205	7.00
jmayworthbj	AAN.301	5.00
jmayworthbj	AAN.302	10.00
jmayworthbj	AAN.303	8.00
jmayworthbj	AAN.304	6.00
jmayworthbj	AAN.305	9.00
rmouncherlw	CS.101	10.00
jtranfield6c	CS.101	5.00
mike	NUSEC.801	8.00
mike	NUSEC.802	2.00
\.


--
-- TOC entry 2842 (class 0 OID 16422)
-- Dependencies: 196
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (username, name, surname, department) FROM stdin;
bredborn34	Berti	Redborn	Mathematics
gcowndley35	Giff	Cowndley	Chemical Engineering
acornils38	Andrej	Cornils	Mathematics
cbaden1d	Cathi	Baden	Physics
jscutter1e	Jeddy	Scutter	Chemical Engineering
sgrigolashvill1f	Spencer	Grigolashvill	Nuclear Science and Engineering
ahamshaw1g	Ase	Hamshaw	Aeronautics and Astronautics
pblakeden1h	Pen	Blakeden	Mathematics
lshivlin1i	Lyle	Shivlin	Computer Science
civashnikov1j	Claire	Ivashnikov	Computer Science
jliebmann27	Julita	Liebmann	Mathematics
cwakley1r	Carolynn	Wakley	Chemical Engineering
agolds1s	Annadiana	Golds	Chemical Engineering
ktock1c	Kari	Tock	Aeronautics and Astronautics
ejeavon21	Evangeline	Jeavon	Aeronautics and Astronautics
lybarra22	Leshia	Ybarra	Physics
rwesthead23	Randell	Westhead	Computer Science
cunderdown1t	Chrysler	Underdown	Computer Science
nschumacher1k	Neile	Schumacher	Mathematics
pryce1l	Page	Ryce	Mathematics
tmacleese1m	Trace	MacLeese	Nuclear Science and Engineering
vdoumer2e	Vassily	Doumer	Chemical Engineering
dfarington2j	Dorey	Farington	Aeronautics and Astronautics
gpudsall2t	Germayne	Pudsall	Physics
poldknow2z	Paco	Oldknow	Aeronautics and Astronautics
ahedling36	Amandie	Hedling	Mathematics
mblencowe37	Mac	Blencowe	Mathematics
pklasen3h	Patrice	Klasen	Mathematics
vmaas1b	Virgie	Maas	Nuclear Science and Engineering
jfyers1a	Jarrid	Fyers	Chemical Engineering
gmontez26	Gaylord	Montez	Physics
bcodner28	Bari	Codner	Mathematics
ejagiela29	Essy	Jagiela	Physics
fcourtman2b	Fionnula	Courtman	Nuclear Science and Engineering
shenningham1n	Sarita	Henningham	Physics
cmuck1o	Candis	Muck	Physics
dhassell2d	Damon	Hassell	Chemical Engineering
jfoulstone2w	Jodie	Foulstone	Physics
tscurr19	Theadora	Scurr	Nuclear Science and Engineering
acuddihy1q	Amber	Cuddihy	Physics
cdahlberg30	Corabella	Dahlberg	Aeronautics and Astronautics
ddealey2f	Dusty	Dealey	Computer Science
chanstock1p	Cherlyn	Hanstock	Chemical Engineering
alefeuvre1x	Aimil	Le feuvre	Mathematics
hkuhnwald1y	Hannie	Kuhnwald	Physics
twynn20	Teddy	Wynn	Aeronautics and Astronautics
rlaight1u	Royal	Laight	Physics
ewatkin1w	Esther	Watkin	Computer Science
sbourdas2g	Shanna	Bourdas	Computer Science
wheskin2h	Willy	Heskin	Nuclear Science and Engineering
kknipe2i	Killian	Knipe	Chemical Engineering
abottoner2k	Adamo	Bottoner	Computer Science
tderyebarrett2l	Truda	Derye-Barrett	Mathematics
ccraxford2m	Cherry	Craxford	Mathematics
rnavan3b	Raven	Navan	Computer Science
hlefleming2n	Had	Le Fleming	Nuclear Science and Engineering
hhonack24	Hodge	Honack	Computer Science
xassaf25	Xaviera	Assaf	Physics
alundbeck2o	Adan	Lundbeck	Chemical Engineering
aboocock2p	Amelie	Boocock	Physics
gcrigin2q	Gale	Crigin	Mathematics
jhunnicutt2r	Jarrid	Hunnicutt	Mathematics
tthacker2s	Tildy	Thacker	Nuclear Science and Engineering
glockyer2u	Gerick	Lockyer	Mathematics
egabbatiss2x	Emmye	Gabbatiss	Computer Science
sredholes3f	Sophie	Redholes	Physics
tjobson3i	Theo	Jobson	Computer Science
tsigg3j	Tadeo	Sigg	Mathematics
mperham3k	Malina	Perham	Nuclear Science and Engineering
fmayler2y	Florencia	Mayler	Mathematics
sbrach31	Saree	Brach	Computer Science
wniblo32	Wells	Niblo	Nuclear Science and Engineering
shinge39	Scarlett	Hinge	Nuclear Science and Engineering
fguillerman3a	Fred	Guillerman	Physics
mpybus3c	Marjorie	Pybus	Aeronautics and Astronautics
bduffitt3d	Binny	Duffitt	Nuclear Science and Engineering
abulgen1	Aurie	Bulgen	Chemical Engineering
nelger16	Nikolaos	Elger	Chemical Engineering
agregh17	Annabel	Gregh	Aeronautics and Astronautics
lfishley18	Levy	Fishley	Nuclear Science and Engineering
proux2c	Pearle	Roux	Mathematics
fboyall56	Fidelio	Boyall	Mathematics
jfehner59	Juliana	Fehner	Chemical Engineering
mmartynikhin5a	Mara	Martynikhin	Nuclear Science and Engineering
bbernhardi5b	Barbette	Bernhardi	Physics
tacome5p	Tobit	Acome	Nuclear Science and Engineering
ariditch5q	Allyn	Riditch	Chemical Engineering
rboliver5r	Ritchie	Boliver	Computer Science
battreed5t	Benedicta	Attreed	Computer Science
gmanach5v	Gale	Manach	Chemical Engineering
jfearns5w	Joelie	Fearns	Chemical Engineering
sfulkes5x	Sunny	Fulkes	Nuclear Science and Engineering
kmayston5y	Kessiah	Mayston	Mathematics
oboshell3l	Ode	Boshell	Mathematics
efulks1v	Ellene	Fulks	Physics
noherlihy3n	Natal	Oherlihy	Mathematics
apablo3o	Adi	Pablo	Computer Science
mglasscock3p	Marna	Glasscock	Physics
dmalley3r	Duke	Malley	Mathematics
cstener4l	Cris	Stener	Computer Science
ddebanke4w	Darice	De Banke	Aeronautics and Astronautics
cbarten53	Carolina	Barten	Nuclear Science and Engineering
jheyburn5c	Julee	Heyburn	Mathematics
uminichi5n	Umeko	Minichi	Chemical Engineering
mcapun5u	Maitilde	Capun	Chemical Engineering
gsandels3s	Guss	Sandels	Physics
gsanbroke3u	Gillian	Sanbroke	Computer Science
dtorricina3x	Dahlia	Torricina	Nuclear Science and Engineering
bfosbraey45	Bertie	Fosbraey	Aeronautics and Astronautics
cdanell46	Consuela	Danell	Mathematics
gtuplin3y	Gregg	Tuplin	Nuclear Science and Engineering
ctomczynski3z	Camille	Tomczynski	Chemical Engineering
lcapes41	Legra	Capes	Chemical Engineering
mtompsett42	Megen	Tompsett	Computer Science
gruperto43	Gun	Ruperto	Chemical Engineering
ebarter47	Emlyn	Barter	Chemical Engineering
dkeiling48	Dewey	Keiling	Aeronautics and Astronautics
oclampin49	Otha	Clampin	Physics
knel4h	Kaela	Nel	Chemical Engineering
bgraser4e	Bartram	Graser	Physics
llergan4f	Lyell	Lergan	Nuclear Science and Engineering
cmytton57	Corrianne	Mytton	Chemical Engineering
tdible5h	Tally	Dible	Physics
pderoos5s	Paulina	De Roos	Mathematics
lduke3q	Lothaire	Duke	Chemical Engineering
mcrutch44	Morie	Crutch	Mathematics
kalastair4g	Kristofor	Alastair	Aeronautics and Astronautics
jfulleylove4c	Joya	Fulleylove	Computer Science
agrossman4d	Allis	Grossman	Mathematics
rsandison4i	Ricki	Sandison	Physics
jdeviney4j	Jeremie	Deviney	Mathematics
mtrustie4k	Marie-ann	Trustie	Mathematics
mragdale4m	Melony	Ragdale	Aeronautics and Astronautics
tpeacher4n	Tamar	Peacher	Nuclear Science and Engineering
efranz4p	Edik	Franz	Mathematics
wyurkiewicz4q	Welsh	Yurkiewicz	Physics
dbelamy58	Doug	Belamy	Aeronautics and Astronautics
cgiffen4a	Cinnamon	Giffen	Aeronautics and Astronautics
scansfield4b	Skye	Cansfield	Aeronautics and Astronautics
gmckinnon4r	Gran	McKinnon	Nuclear Science and Engineering
aweben4s	Angie	Weben	Nuclear Science and Engineering
wnerheny4v	Wilbert	Nerheny	Chemical Engineering
ggethings4x	Gilburt	Gethings	Aeronautics and Astronautics
tedgerley40	Theo	Edgerley	Nuclear Science and Engineering
lcarnduff4y	Lucy	Carnduff	Chemical Engineering
jmaclennan4z	Jacklin	MacLennan	Physics
eharrald50	Edin	Harrald	Nuclear Science and Engineering
ekenningham5e	Eleonora	Kenningham	Mathematics
lheathcott5f	Loren	Heathcott	Nuclear Science and Engineering
lcale5g	Leora	Cale	Mathematics
zmcowis4o	Zonnya	Mcowis	Mathematics
abrierton51	Anabelle	Brierton	Computer Science
asleep52	Almire	Sleep	Mathematics
amatula54	Aldin	Matula	Chemical Engineering
ghair55	Gael	Hair	Computer Science
fbarbosa5d	Felix	Barbosa	Aeronautics and Astronautics
nclaxson5i	Nessa	Claxson	Aeronautics and Astronautics
emcgarahan5j	Editha	McGarahan	Nuclear Science and Engineering
sjansens5k	Sybila	Jansens	Nuclear Science and Engineering
jjennaroy5l	Jessee	Jennaroy	Mathematics
rsigert5m	Robinett	Sigert	Mathematics
tspruce5o	Tiffanie	Spruce	Physics
bkroin3v	Bernette	Kroin	Aeronautics and Astronautics
sguinane7g	Susette	Guinane	Computer Science
avanderwalt7h	Arron	Van Der Walt	Mathematics
smccreath7w	Sal	McCreath	Nuclear Science and Engineering
docoskerry7y	Donnajean	O'Coskerry	Chemical Engineering
glory7z	Gene	Lory	Nuclear Science and Engineering
nsidwick80	Nealy	Sidwick	Nuclear Science and Engineering
freasce81	Farah	Reasce	Mathematics
lromero83	Lida	Romero	Aeronautics and Astronautics
cfalk84	Chiquia	Falk	Chemical Engineering
mpughsley86	Marina	Pughsley	Chemical Engineering
acowper87	Anya	Cowper	Physics
agradwell88	Abigail	Gradwell	Computer Science
hholywell89	Henrietta	Holywell	Chemical Engineering
lduffit8a	Loralie	Duffit	Aeronautics and Astronautics
skeynes8b	Sander	Keynes	Physics
kcragoe8c	Kippar	Cragoe	Aeronautics and Astronautics
mgyppes8e	Matti	Gyppes	Aeronautics and Astronautics
sgye5z	Salaidh	Gye	Nuclear Science and Engineering
mjurzyk60	Marcelo	Jurzyk	Computer Science
spryor61	Shelby	Pryor	Chemical Engineering
bcahill62	Bili	Cahill	Physics
hpetrolli63	Henrietta	Petrolli	Computer Science
todonegan64	Tessy	O'Donegan	Physics
nwanden65	Nesta	Wanden	Chemical Engineering
spoure7c	Shena	Poure	Aeronautics and Astronautics
cmaciaszczyk7m	Calla	Maciaszczyk	Aeronautics and Astronautics
ccrosgrove1z	Corri	Crosgrove	Physics
jeggleston66	Jsandye	Eggleston	Mathematics
ebenkhe67	Ermanno	Benkhe	Nuclear Science and Engineering
jovery6a	Jasun	Overy	Aeronautics and Astronautics
mbamblett6b	Mata	Bamblett	Mathematics
jtranfield6c	Joyan	Tranfield	Computer Science
rpearne6d	Rachelle	Pearne	Computer Science
icantillon6e	Izak	Cantillon	Nuclear Science and Engineering
alawes68	Andie	Lawes	Computer Science
siacomi69	Sherline	Iacomi	Physics
ktruman73	Kasper	Truman	Aeronautics and Astronautics
shaggas6f	Simeon	Haggas	Chemical Engineering
achinge6j	Arlena	Chinge	Computer Science
tbortoletti6l	Torrey	Bortoletti	Mathematics
cthorogood6m	Cathryn	Thorogood	Aeronautics and Astronautics
mshakespear6n	Mandie	Shakespear	Aeronautics and Astronautics
sbucklee7n	Sally	Bucklee	Chemical Engineering
bogden7u	Bent	Ogden	Computer Science
chuzzey85	Camellia	Huzzey	Physics
mphippen6s	Mickie	Phippen	Nuclear Science and Engineering
cbenedettini6g	Cletus	Benedettini	Computer Science
jgoering6h	James	Goering	Chemical Engineering
nivanichev6i	Nyssa	Ivanichev	Aeronautics and Astronautics
fgores6o	Flinn	Gores	Nuclear Science and Engineering
vpilsworth6p	Valerie	Pilsworth	Aeronautics and Astronautics
apurdy6q	Artus	Purdy	Chemical Engineering
zhark6r	Zita	Hark	Physics
mhuston6t	Marcie	Huston	Chemical Engineering
sgayne76	Sascha	Gayne	Mathematics
ydeverehunt77	Yorgos	De'Vere - Hunt	Physics
nwinny78	Neils	Winny	Physics
emonnoyer6u	Eada	Monnoyer	Computer Science
gflight6v	Gloriane	Flight	Physics
qdullard6w	Quent	Dullard	Computer Science
bmccomas6x	Barbe	McComas	Mathematics
rnormanvell6y	Robenia	Normanvell	Aeronautics and Astronautics
wshooter71	Wiatt	Shooter	Nuclear Science and Engineering
tsherry72	Tasha	Sherry	Nuclear Science and Engineering
msitford74	Mariya	Sitford	Aeronautics and Astronautics
rrowcliffe75	Rog	Rowcliffe	Chemical Engineering
cverner79	Chrysa	Verner	Aeronautics and Astronautics
arayman7a	Adair	Rayman	Physics
agauche7e	Alli	Gauche	Aeronautics and Astronautics
edene7b	Elias	Dene	Computer Science
aparlour7d	Ashley	Parlour	Chemical Engineering
ismaling7f	Ian	Smaling	Aeronautics and Astronautics
nkyllford7i	Nikoletta	Kyllford	Computer Science
abeachem7j	Agnes	Beachem	Mathematics
ccashford7l	Carmela	Cashford	Computer Science
rbirts7o	Raven	Birts	Aeronautics and Astronautics
kmonaghan7q	Kally	Monaghan	Physics
lbathoe7r	Lewes	Bathoe	Computer Science
cbrenneke7s	Candace	Brenneke	Physics
wglantz7t	Ward	Glantz	Chemical Engineering
skellart7v	Sigfried	Kellart	Nuclear Science and Engineering
steaseah	Stefano	Tease	Chemical Engineering
fraynesaj	Freddy	Raynes	Computer Science
lbrunsdonak	Leyla	Brunsdon	Computer Science
mdupoyam	Malva	Dupoy	Aeronautics and Astronautics
cbartalinian	Cleve	Bartalini	Computer Science
upapenao	Ulrikaumeko	Papen	Chemical Engineering
daimerap	Dru	Aimer	Aeronautics and Astronautics
jmcquiltyaq	Jerald	McQuilty	Physics
hstovingar	Harbert	Stoving	Nuclear Science and Engineering
coxshottas	Cybill	Oxshott	Aeronautics and Astronautics
adymottat	Aldous	Dymott	Physics
bgodsafeau	Brent	Godsafe	Mathematics
mempringhamav	Marjorie	Empringham	Aeronautics and Astronautics
bgloucester8j	Bevon	Gloucester	Aeronautics and Astronautics
aluter8k	Alonzo	Luter	Computer Science
tburniston8l	Tobias	Burniston	Computer Science
rsaxby8m	Raddy	Saxby	Mathematics
kbenner8n	Khalil	Benner	Aeronautics and Astronautics
wslides8o	William	Slides	Aeronautics and Astronautics
mgillan9v	Maximilien	Gillan	Physics
mvileal	Merrili	Vile	Aeronautics and Astronautics
treinmar8g	Thorvald	Reinmar	Computer Science
kacory8p	Keven	Acory	Chemical Engineering
fteal8v	Franciska	Teal	Mathematics
rrippin8w	Raff	Rippin	Mathematics
ehaggarty8x	Eben	Haggarty	Computer Science
nmechell8y	Neel	Mechell	Chemical Engineering
kknowlys8z	Kleon	Knowlys	Chemical Engineering
londrasek8q	Leshia	Ondrasek	Nuclear Science and Engineering
nkytley8s	Nonah	Kytley	Computer Science
agoom8t	Averil	Goom	Mathematics
wkillimister8u	Wolfgang	Killimister	Nuclear Science and Engineering
fsiene91	Ferrell	Siene	Physics
lwaulker8r	Lulu	Waulker	Aeronautics and Astronautics
aswadlin90	Aluino	Swadlin	Nuclear Science and Engineering
cdarnody9w	Caryl	Darnody	Mathematics
boneary97	Byrom	O'Neary	Nuclear Science and Engineering
imegarrell98	Inglis	Megarrell	Aeronautics and Astronautics
tbayle99	Trixi	Bayle	Computer Science
taloshikin9k	Trish	Aloshikin	Computer Science
avogeler9s	Ainslie	Vogeler	Chemical Engineering
cbroadbere9t	Charles	Broadbere	Aeronautics and Astronautics
acherrieai	Ariella	Cherrie	Aeronautics and Astronautics
lmarshlandac	Leonanie	Marshland	Aeronautics and Astronautics
fstains93	Farra	Stains	Physics
apechet94	Ardra	Pechet	Chemical Engineering
cpalphreyman95	Chicky	Palphreyman	Physics
hhannam9f	Henrie	Hannam	Mathematics
gblyth9g	Giles	Blyth	Aeronautics and Astronautics
cpadrick9h	Corinne	Padrick	Computer Science
abilton9i	Arlen	Bilton	Computer Science
gmackin9l	Giulia	Mackin	Mathematics
rrene9m	Rossie	Rene	Physics
mhickford9n	Myrtia	Hickford	Physics
bbonhome9o	Barth	Bonhome	Mathematics
vchappelle96	Vaughan	Chappelle	Chemical Engineering
kfairey9a	Kelsy	Fairey	Computer Science
sdishman9b	Scotty	Dishman	Mathematics
kfiddler9c	Karalee	Fiddler	Physics
mpharrow9e	Manfred	Pharrow	Physics
ibozward9z	Imogene	Bozward	Nuclear Science and Engineering
hadnea0	Herschel	Adne	Nuclear Science and Engineering
bjaggia1	Bernarr	Jaggi	Aeronautics and Astronautics
egrayera3	Elicia	Grayer	Aeronautics and Astronautics
dspellesya4	Dahlia	Spellesy	Nuclear Science and Engineering
odart9p	Onfroi	Dart	Physics
lreaditt9q	Linnell	Readitt	Nuclear Science and Engineering
ngrishagina5	Neddy	Grishagin	Aeronautics and Astronautics
tgisbyea6	Tadeas	Gisbye	Nuclear Science and Engineering
tdavidofskia8	Tuckie	Davidofski	Computer Science
hbarnard9r	Harlene	Barnard	Computer Science
jrapier9u	Jameson	Rapier	Aeronautics and Astronautics
cnorthfield9x	Cordey	Northfield	Chemical Engineering
fdaleman9y	Federico	Daleman	Aeronautics and Astronautics
rmacgormanaa	Retha	MacGorman	Nuclear Science and Engineering
abrisleyab	Abigail	Brisley	Aeronautics and Astronautics
vstrudwickad	Valaria	Strudwick	Mathematics
egrevilleae	Elke	Greville	Mathematics
mminchindonaf	Meriel	Minchindon	Nuclear Science and Engineering
wmckelvieag	Whittaker	McKelvie	Physics
mitzaksona7	Mab	Itzakson	Computer Science
gsonleyb9	Guy	Sonley	Physics
ithomersonbi	Irwin	Thomerson	Computer Science
bcrosonbr	Barbi	Croson	Nuclear Science and Engineering
bciculloc0	Berkeley	Cicullo	Chemical Engineering
kverdenc1	Karlene	Verden	Physics
mcircuittcn	Marcellus	Circuitt	Physics
efancuttcw	Ezequiel	Fancutt	Aeronautics and Astronautics
mshepcuttbh	Manolo	Shepcutt	Mathematics
ksyrattbk	Ken	Syratt	Physics
zliddenb6	Zebulon	Lidden	Chemical Engineering
wmonetib7	West	Moneti	Physics
wcampsallb5	Wolf	Campsall	Nuclear Science and Engineering
onewarkbl	Osbourne	Newark	Aeronautics and Astronautics
kyeardsleybn	Katina	Yeardsley	Physics
rgodarbp	Rubina	Godar	Physics
dboshersbq	Deborah	Boshers	Mathematics
tgresonbs	Tess	Greson	Physics
ebannerbt	Emmy	Banner	Aeronautics and Astronautics
amapledoorec4	Aura	Mapledoore	Mathematics
jgouldenc5	Joaquin	Goulden	Aeronautics and Astronautics
bborerc6	Britt	Borer	Mathematics
fowbrickcz	Felisha	Owbrick	Nuclear Science and Engineering
rrobesonaz	Renaud	Robeson	Chemical Engineering
kknathbo	Karrah	Knath	Physics
whefferbu	Waylon	Heffer	Nuclear Science and Engineering
tgutteridgecc	Tate	Gutteridge	Aeronautics and Astronautics
rwoakesbv	Rosemonde	Woakes	Aeronautics and Astronautics
mkowalskica	Mohandis	Kowalski	Physics
fmurrellcd	Frederich	Murrell	Chemical Engineering
istiegersce	Inger	Stiegers	Chemical Engineering
nbrooksonbw	Neddie	Brookson	Computer Science
cbalogbx	Cassandra	Balog	Mathematics
cmcgillacoellcf	Casey	McGillacoell	Chemical Engineering
jmoodycg	Jesus	Moody	Computer Science
rmaccorleych	Reginald	MacCorley	Chemical Engineering
bheindrickci	Bucky	Heindrick	Chemical Engineering
cfrodshamcj	Concordia	Frodsham	Mathematics
spraundlck	Shannan	Praundl	Aeronautics and Astronautics
tanderssoncl	Tomlin	Andersson	Physics
aspollencm	Anett	Spollen	Nuclear Science and Engineering
sbroadwoodco	Shandee	Broadwood	Mathematics
pgreyax	Paige	Grey	Physics
bjanczewskiby	Biron	Janczewski	Nuclear Science and Engineering
kwaggec2	Karmen	Wagge	Aeronautics and Astronautics
jdonizeauc8	Juditha	Donizeau	Mathematics
mstoppc9	Mair	Stopp	Nuclear Science and Engineering
tsaddlercp	Theodore	Saddler	Physics
dmirandocq	Derrek	Mirando	Chemical Engineering
bscrivinorcr	Brina	Scrivinor	Computer Science
tmountcs	Teena	Mount	Nuclear Science and Engineering
mleishmanct	Marna	Leishman	Aeronautics and Astronautics
bshelleycu	Barth	Shelley	Computer Science
jriddickcx	Jordan	Riddick	Aeronautics and Astronautics
twanecy	Trumann	Wane	Chemical Engineering
lbotgerd0	Ludovika	Botger	Chemical Engineering
ktamesd1	Karee	Tames	Aeronautics and Astronautics
owoodusd3	Osbert	Woodus	Chemical Engineering
sropkingd4	Spence	Ropking	Chemical Engineering
dtrobed5	Darsey	Trobe	Nuclear Science and Engineering
slowthay	Susette	Lowth	Physics
carpurbg	Candis	Arpur	Nuclear Science and Engineering
lmelvilled8	Lorilee	Melville	Chemical Engineering
lfrickerbz	Lindsay	Fricker	Computer Science
cnoted9	Cecilia	Note	Physics
amowsdaleaw	Annabell	Mowsdale	Physics
cdallander2v	Curr	Dallander	Computer Science
pilyukhovb0	Pauline	Ilyukhov	Mathematics
mpolinib1	Min	Polini	Nuclear Science and Engineering
vpristnorb3	Vidovic	Pristnor	Computer Science
bswaylandd6	Benjamin	Swayland	Aeronautics and Astronautics
egiacobod7	Eveleen	Giacobo	Nuclear Science and Engineering
bburnhamsb4	Becka	Burnhams	Computer Science
bmarkingba	Buddie	Marking	Chemical Engineering
ajozwikbb	Avrom	Jozwik	Mathematics
rhastelowbc	Rosetta	Hastelow	Nuclear Science and Engineering
nsimpkissbd	Nancy	Simpkiss	Physics
cscotlandbe	Camel	Scotland	Computer Science
jminneybf	Jud	Minney	Computer Science
ekenderfh	Even	Kender	Physics
estreatfi	Elysha	Streat	Chemical Engineering
jdashkovfk	Johnath	Dashkov	Nuclear Science and Engineering
dgeerlingfl	Devina	Geerling	Nuclear Science and Engineering
gjurgensonfm	Gare	Jurgenson	Mathematics
mredhousefn	Morganica	Redhouse	Aeronautics and Astronautics
nciciurafo	Norri	Ciciura	Computer Science
bdurhamdi	Bax	Durham	Mathematics
wdolanee	Wood	Dolan	Computer Science
ddockreayeh	Darsie	Dockreay	Nuclear Science and Engineering
tbleddoneo	Timothy	Bleddon	Aeronautics and Astronautics
rstranaghaney	Rochester	Stranaghan	Physics
cpitcockfb	Cleopatra	Pitcock	Aeronautics and Astronautics
jheinlfj	Johny	Heinl	Nuclear Science and Engineering
sblythindc	Sheff	Blythin	Aeronautics and Astronautics
dwatermandj	Dillon	Waterman	Computer Science
coniondk	Cole	O'Nion	Nuclear Science and Engineering
dyakunikovdl	Dorena	Yakunikov	Computer Science
smachostedq	Sena	MacHoste	Aeronautics and Astronautics
slowndsds	Selby	Lownds	Computer Science
chaddrelldt	Charles	Haddrell	Chemical Engineering
dhemmingwaydu	Dominica	Hemmingway	Chemical Engineering
mchallinerdv	Meaghan	Challiner	Computer Science
ldanhere5	Lanae	Danher	Physics
dwarburtondm	Daffi	Warburton	Computer Science
pkillgusdn	Price	Killgus	Computer Science
dcowxdx	Dolly	Cowx	Mathematics
sbriztmandy	Sauncho	Briztman	Physics
ameddemmendz	Araldo	Meddemmen	Physics
bmcnaye0	Betteanne	McNay	Nuclear Science and Engineering
tfishbiee1	Thomasine	Fishbie	Chemical Engineering
ctoulmine2	Cyrill	Toulmin	Computer Science
msawelle3	Marvin	Sawell	Nuclear Science and Engineering
khanningdb	Katleen	Hanning	Mathematics
ebriked	Elwira	Brik	Aeronautics and Astronautics
dtinneref	Don	Tinner	Nuclear Science and Engineering
brikardeg	Burr	Rikard	Computer Science
aheddenev	Alaster	Hedden	Computer Science
ghanscombefc	Giulia	Hanscombe	Nuclear Science and Engineering
bvynehalldp	Bree	Vynehall	Physics
lhawketdw	Lucina	Hawket	Nuclear Science and Engineering
dnobbse4	Diarmid	Nobbs	Nuclear Science and Engineering
esemmencee7	Ethelda	Semmence	Mathematics
dairtone9	Donavon	Airton	Nuclear Science and Engineering
tvaudea	Tris	Vaud	Nuclear Science and Engineering
mwheeldoneb	Marja	Wheeldon	Aeronautics and Astronautics
sthomsonec	Shelly	Thomson	Aeronautics and Astronautics
wepper	Westbrook	Epp	Chemical Engineering
bpeckes	Berti	Peck	Mathematics
hugloweu	Hieronymus	Uglow	Aeronautics and Astronautics
smouanew	Sabrina	Mouan	Chemical Engineering
maldieex	Marcelle	Aldie	Physics
cgeorgeonez	Caresa	Georgeon	Computer Science
daugustinei	Davey	Augustin	Mathematics
vsawneyej	Vergil	Sawney	Nuclear Science and Engineering
mcominiek	Mylo	Comini	Chemical Engineering
agravyel	Alica	Gravy	Chemical Engineering
cmalanem	Cobb	Malan	Computer Science
ewhewayen	Eugenia	Wheway	Chemical Engineering
cmckernonf4	Carrol	McKernon	Computer Science
chadleef5	Curt	Hadlee	Physics
gdiemf7	Gregorio	Diem	Nuclear Science and Engineering
elongfutf9	Elyn	Longfut	Chemical Engineering
lconnollyfa	Luigi	Connolly	Aeronautics and Astronautics
tbolwellfd	Tobit	Bolwell	Nuclear Science and Engineering
fwicherfe	Finley	Wicher	Physics
jchandersdr	Julius	Chanders	Aeronautics and Astronautics
tgetleyep	Toni	Getley	Computer Science
lriddockeq	Livvyy	Riddock	Mathematics
tlenahanf0	Thorsten	Lenahan	Mathematics
cpylkynytonf1	Cybill	Pylkynyton	Chemical Engineering
frosebyf2	Florance	Roseby	Computer Science
skedslief3	Skyler	Kedslie	Nuclear Science and Engineering
jdivesfg	Jackie	Dives	Mathematics
glackemannfp	Godwin	Lackemann	Nuclear Science and Engineering
dtinlinedd	Dru	Tinline	Physics
lilchukde	Lanny	Ilchuk	Mathematics
stukelyf8	Samantha	Tukely	Chemical Engineering
btrousdelldf	Bernita	Trousdell	Physics
dkeggindg	Danica	Keggin	Mathematics
hclaussenh7	Hilton	Claussen	Computer Science
hlealhg	Helli	Leal	Nuclear Science and Engineering
hsutherelhi	Hadrian	Sutherel	Nuclear Science and Engineering
tmunnshj	Tamarra	Munns	Chemical Engineering
kfargherhk	Kelwin	Fargher	Chemical Engineering
dtyndallhr	Dasya	Tyndall	Aeronautics and Astronautics
mcellohu	Minerva	Cello	Nuclear Science and Engineering
csmelliehv	Cass	Smellie	Aeronautics and Astronautics
esouthwardhw	Erv	Southward	Chemical Engineering
pcraftshx	Peg	Crafts	Aeronautics and Astronautics
mlegganhz	Mommy	Leggan	Computer Science
gaustoni0	Gerrie	Auston	Aeronautics and Astronautics
kgainori1	Kilian	Gainor	Mathematics
treesoni2	Tatiana	Reeson	Chemical Engineering
gpallisteri3	Gladi	Pallister	Nuclear Science and Engineering
lgoodrickft	Lars	Goodrick	Nuclear Science and Engineering
cmaymandfu	Chelsie	Maymand	Physics
cdexterfv	Celinda	Dexter	Nuclear Science and Engineering
ilapennafw	Ingar	Lapenna	Chemical Engineering
paylwardfx	Penny	Aylward	Mathematics
ntynanfy	Nestor	Tynan	Aeronautics and Astronautics
blungehh	Brander	Lunge	Chemical Engineering
nravenscroftthm	Nanine	Ravenscroftt	Computer Science
sroizht	Simonne	Roiz	Aeronautics and Astronautics
ccraigiehy	Cher	Craigie	Aeronautics and Astronautics
ptemplefz	Pearla	Temple	Aeronautics and Astronautics
shannang1	Stafani	Hannan	Physics
mbernardog2	Magdalene	Bernardo	Physics
sruskinga	Sammy	Ruskin	Mathematics
pbonasg4	Pen	Bonas	Mathematics
cpetrellig5	Car	Petrelli	Mathematics
mtwinningg6	Micky	Twinning	Physics
mjovicicg7	Magdalene	Jovicic	Mathematics
mkocherg8	Merridie	Kocher	Mathematics
jmowbrayge	Jordan	Mowbray	Aeronautics and Astronautics
hmitkcovgf	Herschel	Mitkcov	Computer Science
kmurrockgz	Kathi	Murrock	Computer Science
fpenninohs	Fenelia	Pennino	Computer Science
ndearthgg	Nolan	Dearth	Chemical Engineering
pkeenegh	Prentiss	Keene	Physics
cknibbsgi	Carlin	Knibbs	Aeronautics and Astronautics
gcloughergk	Gavrielle	Clougher	Nuclear Science and Engineering
rpygottgt	Roth	Pygott	Mathematics
mtolworthieh4	Moe	Tolworthie	Physics
bmowsdillg3	Brander	Mowsdill	Aeronautics and Astronautics
aheareg9	Auberon	Heare	Mathematics
ljanugb	Lindie	Janu	Mathematics
ycunliffegl	Yank	Cunliffe	Chemical Engineering
xpyottgm	Xavier	Pyott	Computer Science
erickwordgn	Erny	Rickword	Mathematics
jmurcuttgo	Jarred	Murcutt	Physics
spickettgp	Shelley	Pickett	Mathematics
atreskegq	Abagael	Treske	Mathematics
rstonesgr	Ross	Stones	Aeronautics and Astronautics
hwalbridgegs	Helsa	Walbridge	Nuclear Science and Engineering
lpipkingu	Lyndsie	Pipkin	Physics
jfrapwellgv	Juliana	Frapwell	Computer Science
ecraythornfs	Edin	Craythorn	Physics
vrobinettegc	Vivi	Robinette	Chemical Engineering
ldronsfieldgd	Letta	Dronsfield	Physics
cshacklegw	Calvin	Shackle	Aeronautics and Astronautics
rsleafordgx	Rufe	Sleaford	Aeronautics and Astronautics
fhakergy	Fan	Haker	Mathematics
dloughanh0	Derward	Loughan	Aeronautics and Astronautics
targileh8	Tedi	Argile	Mathematics
fcatlowh9	Fina	Catlow	Mathematics
jattewha	Jessalin	Attew	Physics
amontgomeryhb	Appolonia	Montgomery	Mathematics
wkirvinhc	Warde	Kirvin	Nuclear Science and Engineering
wschlagtmanshd	Worthington	Schlagtmans	Chemical Engineering
gbinhamhe	Glenn	Binham	Physics
joteagueh1	Jennine	O'Teague	Nuclear Science and Engineering
bcorderoh2	Bern	Cordero	Chemical Engineering
gabbetth3	Gabbie	Abbett	Aeronautics and Astronautics
mbodycombeh5	Mia	Bodycombe	Nuclear Science and Engineering
mouverh6	Munroe	Ouver	Computer Science
hgreensitehl	Hyacinthia	Greensite	Computer Science
tkainehn	Timothea	Kaine	Physics
rforreho	Raven	Forre	Computer Science
ldiklehp	Leda	Dikle	Physics
dbrownellhq	Dyane	Brownell	Chemical Engineering
rmacronaldhf	Royce	MacRonald	Physics
jgilroyjq	Jilleen	Gilroy	Aeronautics and Astronautics
rpergensjs	Rip	Pergens	Aeronautics and Astronautics
knixonjt	Kean	Nixon	Mathematics
cpeapleju	Courtney	Peaple	Chemical Engineering
gdaenjv	Giustina	Daen	Computer Science
vciobutarok8	Valma	Ciobutaro	Physics
deylesk9	Dani	Eyles	Aeronautics and Astronautics
ncholtonka	Nikaniki	Cholton	Computer Science
ktatekb	Konstance	Tate	Mathematics
lvanderwaltkc	Lenna	Van Der Walt	Mathematics
mfosskd	Marya	Foss	Chemical Engineering
crozsake	Corry	Rozsa	Computer Science
rvellacottkf	Robinette	Vellacott	Physics
tjoriokg	Toiboid	Jorio	Chemical Engineering
aflipsenkh	Anthe	Flipsen	Mathematics
pchienekj	Petrina	Chiene	Nuclear Science and Engineering
btrevaskuskk	Bambi	Trevaskus	Aeronautics and Astronautics
lmirrleesi6	Louise	Mirrlees	Computer Science
ptimsoni7	Puff	Timson	Physics
preidia	Perice	Reid	Nuclear Science and Engineering
lleekeib	Lonnie	Leeke	Computer Science
cborellic	Cassi	Borell	Aeronautics and Astronautics
kballaamj7	Krisha	Ballaam	Physics
ehryniewickijr	Errol	Hryniewicki	Aeronautics and Astronautics
fdovingtonk2	Felicity	Dovington	Aeronautics and Astronautics
laptedid	Leeanne	Apted	Aeronautics and Astronautics
osaywellie	Owen	Saywell	Computer Science
ysheridanif	Yard	Sheridan	Physics
dgrushinig	Dougy	Grushin	Physics
drikardiq	Dannel	Rikard	Physics
mlunnj6	Morty	Lunn	Chemical Engineering
naxstonih	Norman	Axston	Chemical Engineering
amirfinij	Adriana	Mirfin	Chemical Engineering
fcobbledickjx	Fay	Cobbledick	Nuclear Science and Engineering
daldinsil	Dina	Aldins	Nuclear Science and Engineering
azottoliio	Aggie	Zottoli	Aeronautics and Astronautics
abenkheip	Archibald	Benkhe	Chemical Engineering
smatveyevir	Sharline	Matveyev	Chemical Engineering
foriginis	Falito	Origin	Chemical Engineering
lburlayit	Layton	Burlay	Computer Science
brubinfajniu	Benny	Rubinfajn	Physics
tastleiv	Thoma	Astle	Nuclear Science and Engineering
aunthankk1	Alfons	Unthank	Mathematics
hdorgonj9	Hollyanne	Dorgon	Nuclear Science and Engineering
bscotsonk7	Barbabas	Scotson	Computer Science
npollitti9	Nedi	Pollitt	Aeronautics and Astronautics
astreaterik	Anett	Streater	Physics
vbrenardim	Verge	Brenard	Physics
atolmanj0	Adella	Tolman	Aeronautics and Astronautics
dparletj2	Danny	Parlet	Nuclear Science and Engineering
jscamalin	Josee	Scamal	Aeronautics and Astronautics
mskipworthiw	Morlee	Skipworth	Computer Science
mmuatj3	Margery	Muat	Aeronautics and Astronautics
ahuittj4	Alexander	Huitt	Chemical Engineering
myonniej5	Moore	Yonnie	Computer Science
lbreartonj8	Lindsey	Brearton	Chemical Engineering
jsimcoxja	Jamie	Simcox	Aeronautics and Astronautics
cdmitrievskijb	Corbet	Dmitrievski	Physics
amerceyix	Arvy	Mercey	Chemical Engineering
mghilksiy	Meyer	Ghilks	Computer Science
abigriggiz	Ashleigh	Bigrigg	Aeronautics and Astronautics
asinnettjh	Angus	Sinnett	Physics
wgoszji	Windy	Gosz	Mathematics
bgraberjj	Buck	Graber	Mathematics
tboswardjk	Taddeusz	Bosward	Computer Science
hrimbaultjl	Hildy	Rimbault	Computer Science
lnardrupjm	Lyman	Nardrup	Physics
ajoanicjn	Augusta	Joanic	Computer Science
spointsjc	Sasha	Points	Physics
abootei5	Ariel	Boote	Physics
amcquorkellk3	Anselma	McQuorkell	Chemical Engineering
eplatfootje	Efrem	Platfoot	Chemical Engineering
ppattersjf	Price	Patters	Nuclear Science and Engineering
hjarmainjg	Halie	Jarmain	Physics
bffoulkesjo	Burgess	Ffoulkes	Aeronautics and Astronautics
cackredjp	Carissa	Ackred	Computer Science
agovenlockjw	Ashlee	Govenlock	Mathematics
lalwenjy	Lexis	Alwen	Physics
ilinderjz	Isidore	Linder	Physics
ajerochk4	Amaleta	Jeroch	Chemical Engineering
jkindredk5	Jenny	Kindred	Mathematics
lshalcrosk6	Laverne	Shalcros	Mathematics
mdecristofalom7	Meredithe	De Cristofalo	Aeronautics and Astronautics
lfenckm8	Lennie	Fenck	Physics
rnisbithmu	Reinhard	Nisbith	Mathematics
abumfreymw	Alysa	Bumfrey	Chemical Engineering
lcherriemx	Lorrin	Cherrie	Computer Science
ggodwinmy	Gideon	Godwin	Chemical Engineering
nbezantsmz	Nada	Bezants	Nuclear Science and Engineering
ksillwoodn0	Karel	Sillwood	Physics
ndysartkm	Nikkie	Dysart	Physics
dgallichankn	Daria	Gallichan	Aeronautics and Astronautics
lhargieko	Lisha	Hargie	Physics
mmcboylekp	Molli	McBoyle	Chemical Engineering
twiskerkq	Tripp	Wisker	Computer Science
efretwellkr	Edouard	Fretwell	Physics
fedsalllh	Felice	Edsall	Physics
bcleminsonlm	Bill	Cleminson	Computer Science
plavrinovlt	Philippa	Lavrinov	Chemical Engineering
ecollingwoodm1	Emelina	Collingwood	Chemical Engineering
bsierms	Brianna	Sier	Nuclear Science and Engineering
hhumblestonemt	Hamilton	Humblestone	Nuclear Science and Engineering
sposvnerku	Sherline	Posvner	Aeronautics and Astronautics
hphilsonkv	Hymie	Philson	Physics
gnoultonkw	Gabriellia	Noulton	Nuclear Science and Engineering
sgronavkx	Sybil	Gronav	Chemical Engineering
avauxl5	Aluin	Vaux	Chemical Engineering
idownsel7	Illa	Downse	Aeronautics and Astronautics
abenitl8	Amabel	Benit	Nuclear Science and Engineering
goatteskz	Georgianna	Oattes	Aeronautics and Astronautics
bsienel1	Bobbie	Siene	Nuclear Science and Engineering
dbleackleymq	Dru	Bleackley	Computer Science
jcottonl2	Justina	Cotton	Nuclear Science and Engineering
sinnocentil3	Sauncho	Innocenti	Chemical Engineering
klanmeidl4	Ky	Lanmeid	Nuclear Science and Engineering
icucksonl9	Iona	Cuckson	Aeronautics and Astronautics
icadmanla	Ina	Cadman	Physics
nscothernlj	Northrup	Scothern	Physics
ddigbylk	Devy	Digby	Physics
pdormanmf	Phylys	Dorman	Chemical Engineering
wpostinmp	Walt	Postin	Chemical Engineering
wwykeme	Wilek	Wyke	Physics
bsaffellky	Benedict	Saffell	Nuclear Science and Engineering
nlorinczlb	Neville	Lorincz	Mathematics
bdowdneyld	Barbara-anne	Dowdney	Mathematics
wlantuffele	Wolfy	Lantuffe	Chemical Engineering
gpuddephattlf	Gaven	Puddephatt	Mathematics
rbrucklg	Rita	Bruck	Chemical Engineering
dkahenli	Dorrie	Kahen	Nuclear Science and Engineering
lelnoughll	Lorry	Elnough	Chemical Engineering
mpragnellln	Marcellus	Pragnell	Nuclear Science and Engineering
jewerlo	Jamil	Ewer	Nuclear Science and Engineering
lboothlp	Lucy	Booth	Aeronautics and Astronautics
edambrosilq	Emlynn	D'Ambrosi	Aeronautics and Astronautics
llerouxlr	Lemuel	Leroux	Computer Science
cpullingermn	Colene	Pullinger	Chemical Engineering
gmatoshinlc	Greg	Matoshin	Chemical Engineering
cbourdells	Colman	Bourdel	Physics
rcasfordlu	Rowland	Casford	Mathematics
adelicatelv	Allistir	Delicate	Computer Science
rmouncherlw	Rube	Mouncher	Computer Science
bcrocketlx	Brandyn	Crocket	Mathematics
gtullochly	Granville	Tulloch	Computer Science
vgenerylz	Virgina	Genery	Mathematics
ofrowm0	Olga	Frow	Computer Science
aconsterdinem2	Amelia	Consterdine	Nuclear Science and Engineering
rhefnerl6	Rosabel	Hefner	Nuclear Science and Engineering
izaczekm4	Ibby	Zaczek	Physics
ecurrmmj	Efrem	Currm	Aeronautics and Astronautics
kohanniganml	Kaela	O'Hannigan	Physics
sfinanm5	Sergio	Finan	Aeronautics and Astronautics
psturneym6	Pietra	Sturney	Nuclear Science and Engineering
bquinanem9	Bob	Quinane	Chemical Engineering
dwattamma	Dwayne	Wattam	Computer Science
dmcclintockmc	Dasha	McClintock	Nuclear Science and Engineering
swiddowsonmd	Sonni	Widdowson	Computer Science
mschuckmg	Marti	Schuck	Aeronautics and Astronautics
brickfordmh	Brandon	Rickford	Mathematics
tdeemanmi	Tobiah	Deeman	Mathematics
alistonemm	Adaline	Listone	Physics
bstlouismo	Boycie	St Louis	Physics
bpretormr	Buddy	Pretor	Chemical Engineering
chawkettks	Corrie	Hawkett	Chemical Engineering
lpregalp3	Louisa	Pregal	Physics
cschottlip4	Cecilla	Schottli	Mathematics
ameffinp6	Annamaria	Meffin	Aeronautics and Astronautics
epurcellp7	Elisabet	Purcell	Chemical Engineering
cbefroyns	Clevie	Befroy	Computer Science
emcvittyny	Earvin	McVitty	Aeronautics and Astronautics
kdowningo8	Karrie	Downing	Nuclear Science and Engineering
ddadswellos	Dallis	Dadswell	Physics
mlibermoreot	Mandi	Libermore	Mathematics
sbalshenp1	Shannon	Balshen	Physics
dlearmountn8	Doreen	Learmount	Mathematics
jkleinerna	Josephine	Kleiner	Nuclear Science and Engineering
fmosebynb	Frances	Moseby	Computer Science
ascibseync	Aurlie	Scibsey	Physics
xchatelainnd	Xaviera	Chatelain	Mathematics
tcoattsnf	Tad	Coatts	Nuclear Science and Engineering
pmelvillenh	Polly	Melville	Physics
uvannni	Ulla	Vann	Computer Science
kmacrannellnj	Karla	MacRannell	Mathematics
gebrallnk	Gustavo	Ebrall	Chemical Engineering
ntomowicznm	Nanete	Tomowicz	Physics
bbrickwoodnn	Bobbee	Brickwood	Chemical Engineering
rmcguckenno	Renato	McGucken	Chemical Engineering
janthiftlenp	James	Anthiftle	Nuclear Science and Engineering
ppidgennq	Purcell	Pidgen	Mathematics
kclorleynr	Kelsey	Clorley	Mathematics
ddayesnt	Darleen	Dayes	Physics
dhutonow	Damian	Huton	Mathematics
skeohaneo2	Sayre	Keohane	Chemical Engineering
glittlejohno3	Gabbi	Littlejohn	Chemical Engineering
wpullmano4	Walliw	Pullman	Mathematics
lpickrillof	Linell	Pickrill	Aeronautics and Astronautics
tolesog	Tammy	Oles	Computer Science
jsoaresov	June	Soares	Chemical Engineering
aaizikovichoh	Adriane	Aizikovich	Computer Science
dovisenl	Delphine	Ovise	Aeronautics and Astronautics
glantrynu	Giulio	Lantry	Computer Science
mmcgrailnw	Meghann	McGrail	Nuclear Science and Engineering
kstollardnx	Krissy	Stollard	Mathematics
aeverlynz	Alvinia	Everly	Physics
akleeno0	Ange	Kleen	Computer Science
bgrimoldbyo1	Bat	Grimoldby	Chemical Engineering
adeeproseo5	Alric	Deeprose	Physics
mchinnoe	Monro	Chinn	Computer Science
mdelavaletteparisotoi	Micheal	de la Valette Parisot	Nuclear Science and Engineering
slodfordoj	Selestina	Lodford	Mathematics
blockleyok	Blondie	Lockley	Nuclear Science and Engineering
pterrenol	Priscella	Terren	Computer Science
rmcgibbonom	Rosmunda	McGibbon	Physics
lkolczynskion	Liam	Kolczynski	Mathematics
rlatekoo	Renae	Latek	Nuclear Science and Engineering
mantuonio6	Marnie	Antuoni	Chemical Engineering
fkalkofero7	Felecia	Kalkofer	Nuclear Science and Engineering
rparkissono9	Roma	Parkisson	Computer Science
dkobesoa	Darbee	Kobes	Physics
ahandrekob	Alvina	Handrek	Chemical Engineering
osantorinioc	Oralla	Santorini	Computer Science
pjeavesod	Paulo	Jeaves	Nuclear Science and Engineering
jfilintsevop	Jojo	Filintsev	Mathematics
kcartneroq	Katti	Cartner	Aeronautics and Astronautics
rpoolor	Rania	Pool	Nuclear Science and Engineering
dbaccusou	Dot	Baccus	Nuclear Science and Engineering
lcastagnetoox	Lorry	Castagneto	Chemical Engineering
lgeeritzpc	Lauri	Geeritz	Aeronautics and Astronautics
jpeacockepd	Joelynn	Peacocke	Chemical Engineering
astoven2	Aleece	Stove	Computer Science
cgierckeoy	Corenda	Giercke	Aeronautics and Astronautics
dcordoz	Del	Cord	Computer Science
nhewlingsp0	Norina	Hewlings	Aeronautics and Astronautics
ccaldowp2	Cathrine	Caldow	Aeronautics and Astronautics
iaustinsp8	Isac	Austins	Nuclear Science and Engineering
cvanleijsp9	Carmen	Van Leijs	Computer Science
bshermarpa	Bibbye	Shermar	Aeronautics and Astronautics
vbursnallpb	Viv	Bursnall	Mathematics
gdagonn3	Gonzalo	Dagon	Physics
jchasneyn4	Jan	Chasney	Computer Science
vbennedsenn6	Violet	Bennedsen	Computer Science
ewithnalln7	Estel	Withnall	Computer Science
cnewalln9	Cullen	Newall	Aeronautics and Astronautics
aragateri	Antonella	Ragate	Nuclear Science and Engineering
dgearerj	Delmar	Geare	Nuclear Science and Engineering
rfurzeyrk	Rosalynd	Furzey	Chemical Engineering
bpriddisrm	Bart	Priddis	Chemical Engineering
wlavignern	Wheeler	Lavigne	Mathematics
cwartonbyrp	Carole	Wartonby	Aeronautics and Astronautics
edurrancerr	Estell	Durrance	Chemical Engineering
lpulleypf	Libby	Pulley	Physics
arenn33	Allissa	Renn	Computer Science
dmeakingpl	Daria	Meaking	Computer Science
btice3e	Britteny	Tice	Chemical Engineering
jjendrichpg	Jewelle	Jendrich	Computer Science
cheatlypm	Cloe	Heatly	Physics
mmacilhargypn	Merill	MacIlhargy	Nuclear Science and Engineering
lespinospr	Lilith	Espinos	Aeronautics and Astronautics
pcarradiceqm	Patrizia	Carradice	Mathematics
aredbornqu	Arielle	Redborn	Nuclear Science and Engineering
idyerr1	Ignace	Dyer	Chemical Engineering
jcarlesr6	Jacinta	Carles	Computer Science
kmilkinsrh	Kirk	Milkins	Computer Science
browleyro	Broddie	Rowley	Chemical Engineering
bpodd3g	Bili	Podd	Chemical Engineering
htuttps	Harman	Tutt	Aeronautics and Astronautics
dbannardq1	Dal	Bannard	Nuclear Science and Engineering
gwyllieq2	Godfree	Wyllie	Aeronautics and Astronautics
apadghamq3	Ainsley	Padgham	Physics
emoreq4	Edgardo	More	Mathematics
fbazogepw	Fax	Bazoge	Physics
hmardypx	Hans	Mardy	Nuclear Science and Engineering
cdibbepy	Clarine	Dibbe	Physics
cdeekesq5	Corrie	Deekes	Computer Science
cblasingpu	Cheryl	Blasing	Aeronautics and Astronautics
shogbenpv	Sandra	Hogben	Nuclear Science and Engineering
gyoulesq7	Gunar	Youles	Nuclear Science and Engineering
hricartq0	Hermann	Ricart	Aeronautics and Astronautics
eotuohyqc	Erin	O'Tuohy	Mathematics
kgreenshielsqd	Katherina	Greenshiels	Mathematics
eoneilq6	Elisha	O'Neil	Physics
lpearseqe	Leona	Pearse	Mathematics
fkeriqf	Flint	Keri	Mathematics
pduxfieldqx	Pierce	Duxfield	Computer Science
kkopkerq	Kayley	Kopke	Aeronautics and Astronautics
hstorrpo	Hoyt	Storr	Nuclear Science and Engineering
pparysiakpt	Padraic	Parysiak	Chemical Engineering
mstoeckq8	Marcella	Stoeck	Physics
rgillesonq9	Randi	Gilleson	Aeronautics and Astronautics
ebondsqa	Erica	Bonds	Nuclear Science and Engineering
gceschiniqb	Gussie	Ceschini	Chemical Engineering
salldreqg	Sande	Alldre	Physics
tgeryqh	Tamra	Gery	Computer Science
edorrqi	Ellwood	Dorr	Physics
fberettaqt	Franciska	Beretta	Physics
eferensqv	Elysha	Ferens	Chemical Engineering
emerrittqw	Enrique	Merritt	Aeronautics and Astronautics
bkingdomqy	Beatriz	Kingdom	Aeronautics and Astronautics
jenstonqz	Jedediah	Enston	Nuclear Science and Engineering
dwaldingqj	Dannye	Walding	Chemical Engineering
edunneqk	Ernest	Dunne	Nuclear Science and Engineering
gshaylerql	Glenine	Shayler	Aeronautics and Astronautics
rscrannyqr	Robbyn	Scranny	Mathematics
ncubbinr0	Nicky	Cubbin	Physics
alacaser2	Alejandra	Lacase	Chemical Engineering
wkubinr3	Wye	Kubin	Mathematics
kblampyr4	Korry	Blampy	Mathematics
jnisotr5	Janean	Nisot	Nuclear Science and Engineering
rbilovusr7	Rosana	Bilovus	Mathematics
gcroppr8	Gawain	Cropp	Aeronautics and Astronautics
jdimentrl	Jayson	Diment	Physics
asantelloqo	Arabelle	Santello	Chemical Engineering
eberdaleqp	Elayne	Berdale	Aeronautics and Astronautics
kgarrudpq	Kristofer	Garrud	Computer Science
amacgibbonqn	Ava	MacGibbon	Chemical Engineering
kboundeyqq	Kirsti	Boundey	Nuclear Science and Engineering
scomellinir9	Somerset	Comellini	Mathematics
lmiddellra	Lelia	Middell	Physics
kzumbuschrb	Kristyn	Zumbusch	Nuclear Science and Engineering
galthorperc	Gerianne	Althorpe	Computer Science
iestickrd	Isadora	Estick	Computer Science
bmcwardre	Beilul	McWard	Mathematics
abourbonrf	Anselma	Bourbon	Aeronautics and Astronautics
awrathallrg	Allyn	Wrathall	Aeronautics and Astronautics
egarken3w	Edik	Garken	Physics
jmcgeraghtygj	Jacynth	McGeraghty	Computer Science
lseniori4	Leonanie	Senior	Chemical Engineering
ymcdaidii	Yolanda	McDaid	Chemical Engineering
kthairsjd	Kerby	Thairs	Chemical Engineering
wcoulthardki	Walker	Coulthard	Aeronautics and Astronautics
mciobutaro6	Morissa	Ciobutaro	Physics
bpersickei	Brittani	Persicke	Computer Science
mwhostonp	Miles	Whoston	Chemical Engineering
hlemmerst	Hanan	Lemmers	Aeronautics and Astronautics
vgallafant12	Vin	Gallafant	Physics
akrishtopaittis8h	Adelina	Krishtopaittis	Physics
mdunnb8	Marin	Dunn	Physics
wmascallg0	Willow	Mascall	Computer Science
gmcisaacm3	Gib	McIsaac	Computer Science
aabramski7	Arleta	Abramski	Aeronautics and Astronautics
rdarlasson8	Richie	Darlasson	Nuclear Science and Engineering
mvenable9	Madelyn	Venable	Chemical Engineering
ableasbya	Anallese	Bleasby	Mathematics
gsimanh	Gerard	Siman	Aeronautics and Astronautics
slinekerj	Stephani	Lineker	Mathematics
lmahaffeyk	Libbey	Mahaffey	Physics
cmcgahernl	Corrianne	McGahern	Aeronautics and Astronautics
cethelstonb	Caressa	Ethelston	Physics
csheardc	Carter	Sheard	Physics
mtarbertd	Merilee	Tarbert	Nuclear Science and Engineering
yflowerdewe	Yoshiko	Flowerdew	Chemical Engineering
wmarshallsayf	Weylin	Marshallsay	Chemical Engineering
bpidduckg	Bibbye	Pidduck	Physics
gbleythingm	Glen	Bleything	Physics
nhaslockev	Nickie	Haslock(e)	Aeronautics and Astronautics
trogisterq	Tarrance	Rogister	Computer Science
bgaitskillr	Bryant	Gaitskill	Chemical Engineering
gcathels	Gaultiero	Cathel	Mathematics
eaxcellu	Emylee	Axcell	Physics
mstrowlgerw	Marylee	Strowlger	Chemical Engineering
lkryskax	Lynnea	Kryska	Aeronautics and Astronautics
mcastan70	Morton	Castan	Aeronautics and Astronautics
sfearnsidel0	Sidney	Fearnside	Aeronautics and Astronautics
pjevesy	Pier	Jeves	Mathematics
ccastelijnz	Collete	Castelijn	Physics
nciraldo10	Nickolai	Ciraldo	Computer Science
lbodycombe8d	Loreen	Bodycombe	Physics
mstockill8f	Maureen	Stockill	Computer Science
lsweating92	Lorry	Sweating	Mathematics
wcorbishley9d	Wilhelmina	Corbishley	Chemical Engineering
abussea2	Ailene	Busse	Computer Science
kiacavonea9	Kristian	Iacavone	Chemical Engineering
kfysh9j	Karlene	Fysh	Chemical Engineering
lgoford11	Leopold	Goford	Computer Science
csimnellf6	Connie	Simnell	Chemical Engineering
sbuckoke13	Shae	Buckoke	Chemical Engineering
mingray15	Melody	Ingray	Mathematics
pkaufman4t	Porter	Kaufman	Nuclear Science and Engineering
ksayse6k	Karlan	Sayse	Aeronautics and Astronautics
gmushettb2	Gusti	Mushett	Computer Science
cledgerbm	Chastity	Ledger	Nuclear Science and Engineering
mlindstromc3	Marta	Lindstrom	Physics
dwallicecb	Delilah	Wallice	Chemical Engineering
mbalecv	Marj	Bale	Aeronautics and Astronautics
nswated2	Nicolais	Swate	Computer Science
smcnabbda	Steward	McNabb	Aeronautics and Astronautics
moveraldh	Margarette	Overal	Nuclear Science and Engineering
isurfleetdo	Imelda	Surfleet	Physics
nthunderse6	Netta	Thunders	Chemical Engineering
cwhitley14	Cherlyn	Whitley	Physics
mghilardiet	Mort	Ghilardi	Aeronautics and Astronautics
kleckenby7x	Konstantine	Leckenby	Mathematics
dpeetff	Danice	Peet	Aeronautics and Astronautics
rgomersallfq	Ramsay	Gomersall	Aeronautics and Astronautics
jbrigstockfr	Jessamyn	Brigstock	Computer Science
swillsheekl	Starlene	Willshee	Aeronautics and Astronautics
sclearekt	Sybil	Cleare	Mathematics
ginger0	Genni	Inger	Mathematics
edayment2	Editha	Dayment	Chemical Engineering
bturri3	Brett	Turri	Computer Science
svolante4	Sheelah	Volante	Chemical Engineering
btidcombn	Bordy	Tidcomb	Physics
hasburyo	Harley	Asbury	Computer Science
edallin5	Elizabeth	Dallin	Aeronautics and Astronautics
rtyttertonmk	Rachel	Tytterton	Mathematics
jabellamv	Jorrie	Abella	Physics
cknibbsn1	Carver	Knibbs	Aeronautics and Astronautics
ltreecen5	Leslie	Treece	Aeronautics and Astronautics
dgrzegorczykng	Dodi	Grzegorczyk	Computer Science
urotherape	Ursulina	Rothera	Mathematics
cdodingpp	Conroy	Doding	Mathematics
sgheorghiepz	Shirline	Gheorghie	Physics
tpridittqs	Thedric	Priditt	Mathematics
ewintonmb	Eartha	Winton	Physics
mike	Michail	Kalliafas	Nuclear Science and Engineering
tantoniate8	Torr	Antoniat	Mathematics
brayerj1	Bjorn	Rayer	Aeronautics and Astronautics
ginsleyk0	Gwenora	Insley	Physics
ngrinstonne	Netty	Grinston	Computer Science
lambrodinv	Louise	Ambrodi	Aeronautics and Astronautics
dmcphersonp5	Dianne	McPherson	Nuclear Science and Engineering
borneblow4u	Barty	Orneblow	Aeronautics and Astronautics
theakins2a	Tanitansy	Heakins	Aeronautics and Astronautics
hdartnall3m	Hallie	Dartnall	Nuclear Science and Engineering
wmickelwright3t	Waldo	Mickelwright	Computer Science
aseelbach7p	Adelle	Seelbach	Chemical Engineering
jmartinet82	Janith	Martinet	Chemical Engineering
jmayworthbj	Jonathan	Mayworth	Aeronautics and Astronautics
lrudigerc7	Lauren	Rudiger	Computer Science
blukash6z	Bryanty	Lukash	Mathematics
gmeale7k	Gibbie	Meale	Computer Science
wchilde8i	Wendi	Childe	Chemical Engineering
tnoonani8	Terrijo	Noonan	Computer Science
rallsopph	Ranee	Allsop	Chemical Engineering
wferrieripi	Winnah	Ferrieri	Chemical Engineering
eclashpj	Elka	Clash	Mathematics
\.


--
-- TOC entry 2709 (class 2606 OID 16821)
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (course_id);


--
-- TOC entry 2703 (class 2606 OID 16441)
-- Name: professors professors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.professors
    ADD CONSTRAINT professors_pkey PRIMARY KEY (username);


--
-- TOC entry 2705 (class 2606 OID 16451)
-- Name: professorscourses professorscourses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.professorscourses
    ADD CONSTRAINT professorscourses_pkey PRIMARY KEY (username, course_id);


--
-- TOC entry 2711 (class 2606 OID 16876)
-- Name: professorsstudents professorsstudents_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.professorsstudents
    ADD CONSTRAINT professorsstudents_pkey PRIMARY KEY (username, student_id);


--
-- TOC entry 2707 (class 2606 OID 16456)
-- Name: secretaries secretaries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.secretaries
    ADD CONSTRAINT secretaries_pkey PRIMARY KEY (username);


--
-- TOC entry 2699 (class 2606 OID 16431)
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (username);


--
-- TOC entry 2701 (class 2606 OID 16436)
-- Name: studentscourses studentscourses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.studentscourses
    ADD CONSTRAINT studentscourses_pkey PRIMARY KEY (username, course_id);


--
-- TOC entry 2697 (class 2606 OID 16426)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (username);


--
-- TOC entry 2715 (class 2606 OID 16467)
-- Name: professors professors_username_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.professors
    ADD CONSTRAINT professors_username_fkey FOREIGN KEY (username) REFERENCES public.users(username);


--
-- TOC entry 2717 (class 2606 OID 16822)
-- Name: professorscourses professorscourses_course_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.professorscourses
    ADD CONSTRAINT professorscourses_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(course_id);


--
-- TOC entry 2716 (class 2606 OID 16477)
-- Name: professorscourses professorscourses_username_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.professorscourses
    ADD CONSTRAINT professorscourses_username_fkey FOREIGN KEY (username) REFERENCES public.professors(username);


--
-- TOC entry 2720 (class 2606 OID 16882)
-- Name: professorsstudents professorsstudents_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.professorsstudents
    ADD CONSTRAINT professorsstudents_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(username);


--
-- TOC entry 2719 (class 2606 OID 16877)
-- Name: professorsstudents professorsstudents_username_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.professorsstudents
    ADD CONSTRAINT professorsstudents_username_fkey FOREIGN KEY (username) REFERENCES public.professors(username);


--
-- TOC entry 2718 (class 2606 OID 16472)
-- Name: secretaries secretaries_username_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.secretaries
    ADD CONSTRAINT secretaries_username_fkey FOREIGN KEY (username) REFERENCES public.users(username);


--
-- TOC entry 2712 (class 2606 OID 16462)
-- Name: students students_username_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_username_fkey FOREIGN KEY (username) REFERENCES public.users(username);


--
-- TOC entry 2714 (class 2606 OID 16827)
-- Name: studentscourses studentscourses_course_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.studentscourses
    ADD CONSTRAINT studentscourses_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(course_id);


--
-- TOC entry 2713 (class 2606 OID 16512)
-- Name: studentscourses studentscourses_username_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.studentscourses
    ADD CONSTRAINT studentscourses_username_fkey FOREIGN KEY (username) REFERENCES public.students(username);


-- Completed on 2018-06-15 04:44:10

--
-- PostgreSQL database dump complete
--

