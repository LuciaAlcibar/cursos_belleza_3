-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-10-2024 a las 20:06:57
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_cursos_belleza`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `ID_alumno` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `dni` int(11) NOT NULL,
  `celular` bigint(20) NOT NULL,
  `domicilio` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`ID_alumno`, `nombre`, `apellido`, `dni`, `celular`, `domicilio`) VALUES
(1, 'Sofía ', 'Perez', 59123456, 2494635822, 'Las Heras 132'),
(2, 'Nancy ', 'Fernandez', 25963852, 2494785212, 'Pinto 714'),
(3, 'Stella', 'Zubiaurre', 35456985, 2494567154, 'Paz 888'),
(4, 'Pía', 'Hernandez', 40566396, 2494512087, 'Montiel 471'),
(5, 'Lucia', 'Garcia', 46444258, 2494635986, 'Av. Colon 1012'),
(8, 'Delfina ', 'Santillan', 25899741, 2494857694, 'Av. Colon 855'),
(9, 'Luciano', 'Lopez', 39555963, 2494788963, 'Las Heras 189'),
(10, 'Matias', 'Muñoz', 29223105, 2494125639, '25 de mayo 87'),
(77, 'Sofía', 'Pérez', 18234567, 2494635821, 'Calle Mitre 123'),
(78, 'Lucas', 'González', 19345678, 2494635878, 'Calle San Martín 456'),
(79, 'Mariana', 'López', 20456789, 2494635902, 'Calle Figueroa 789'),
(80, 'Javier', 'Fernández', 21567890, 2494635983, 'Calle 9 de Julio 321'),
(81, 'Valentina', 'Martínez', 22678901, 2494635998, 'Calle Belgrano 654'),
(82, 'Nicolás', 'Romero', 23789012, 2494635611, 'Calle Ayacucho 222'),
(83, 'Gabriela', 'Díaz', 24890123, 2494635789, 'Calle Lavalle 135'),
(84, 'Tomás', 'Herrera', 25901234, 2494635602, 'Calle Colón 369'),
(85, 'Laura', 'Castro', 26012345, 2494635753, 'Calle San Lorenzo 147'),
(86, 'Santiago', 'Ortega', 27123456, 2494635794, 'Calle Mitre 233'),
(87, 'Paula', 'Ruiz', 28234567, 2494635815, 'Calle Sarmiento 456'),
(88, 'Mateo', 'Silva', 29345678, 2494635866, 'Calle Malabia 111'),
(89, 'Clara', 'Mendez', 30456789, 2494635834, 'Calle 25 de Mayo 222'),
(90, 'Diego', 'Morales', 31567890, 2494635840, 'Calle Saavedra 444'),
(91, 'Ana', 'Jiménez', 32678901, 2494635927, 'Calle Rivadavia 890'),
(92, 'Felipe', 'Romero', 33789012, 2494635720, 'Calle Tucumán 765'),
(93, 'Victoria', 'Castro', 34890123, 2494635938, 'Calle San Juan 543'),
(94, 'Rodrigo', 'Peña', 35901234, 2494635905, 'Calle Moreno 678'),
(95, 'Solange', 'Núñez', 36012345, 2494635719, 'Calle Esquel 345'),
(96, 'Agustín', 'Ríos', 37123456, 2494635741, 'Calle Tandil 890'),
(97, 'Fernando', 'López', 48234567, 2494635770, 'Calle 4 de Febrero 456'),
(98, 'Carla', 'Romero', 49345678, 2494635728, 'Calle Libertad 234');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `ID_curso` int(11) NOT NULL,
  `categoria` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(1500) NOT NULL,
  `duracion` varchar(45) NOT NULL,
  `profesor` varchar(45) NOT NULL,
  `costo` int(11) NOT NULL,
  `imagen` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`ID_curso`, `categoria`, `nombre`, `descripcion`, `duracion`, `profesor`, `costo`, `imagen`) VALUES
(1, 'maquillaje', 'Curso de automaquillaje profesional', 'Curso de automaquillaje profesional: desarrollo de técnicas clave para realzar su belleza natural. Enfoque en la selección de productos, corrección de imperfecciones y creación de looks versátiles, logrando aprender habilidades para un acabado profesional. Al final del curso, los estudiantes podrán dominar técnicas avanzadas de maquillaje, adaptadas a diferentes tipos de piel y ocasiones especiales.', '3 meses', 'Luisa Hernandez', 90000, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvIghW-i6nsCwrAE-S5RmelnI6BCFBmjLAFg&s'),
(3, 'peluqueria', 'Curso de peluquería en general', 'Este curso integral de peluquería, con una duración de 8 meses, capacita a los participantes en técnicas de cortes, peinados y tratamientos capilares. Los estudiantes aprenderán a aplicar diversas técnicas de coloración, como balayage y mechas, y desarrollarán habilidades de estilizado para crear looks versátiles para diferentes ocasiones. Con un enfoque práctico, el curso incluye sesiones con modelos, brindando experiencia en un entorno real. Al finalizar, los participantes estarán listos para ofrecer un servicio de peluquería personalizado y profesional, equipándolos para iniciar su carrera en el sector.', '8 meses', 'María Barbieri', 120000, 'https://e00-elmundo.uecdn.es/assets/multimedia/imagenes/2024/06/28/17195787567286.jpg'),
(4, 'cuidados', 'Curso de cosmetología', 'Curso de cosmetología: adquirirá conocimientos sobre el cuidado de la piel, técnicas de limpieza facial y tratamientos estéticos. Aprenderá sobre productos cosméticos, su aplicación y personalización, desarrollando habilidades para ofrecer asesoría integral a los clientes. El curso incluye formación en tratamientos faciales, diagnóstico de piel, uso de tecnología estética, y cuidados especializados para diferentes tipos de piel, permitiendo a los estudiantes ofrecer servicios profesionales en el ámbito de la belleza y la estética.', '3 meses', 'Analía Etcheberry', 83000, 'https://www.esteticapalermo.com.ar/wp-content/uploads/2021/08/tratamientos-faciales.webp'),
(15, 'uñas', 'Curso de esmaltado semipermanente', 'Este curso de esmaltado semipermanente está diseñado para enseñarte todo lo necesario sobre la aplicación y retirada de este popular tipo de esmalte. Aprenderás técnicas fundamentales que garantizan un acabado profesional, incluyendo la preparación adecuada de la uña, la aplicación de diferentes capas de esmalte, y los métodos para asegurar la durabilidad del esmalte semipermanente. Además, se abordarán los cuidados y mantenimiento de las uñas, lo que incluye consejos para mantener la salud de las uñas naturales durante y después del proceso.', '6 meses', 'Analia Fernandez', 75000, 'https://siberiasalon.com/wp-content/uploads/2022/09/Nail-art-o-decoraciones-de-unas-2-jpg.webp'),
(16, 'maquillaje', 'Curso de maquillaje profesional para eventos', 'Curso de maquillaje profesional para eventos: dirigido a quienes desean especializarse en la creación de looks impactantes para ocasiones especiales. Aprenderás técnicas avanzadas de maquillaje para bodas, eventos formales, sesiones fotográficas y más. El curso abarca desde la preparación de la piel hasta la elección de productos y estilos adecuados para diferentes tipos de eventos, enfatizando la durabilidad, el acabado impecable y la personalización según las características de cada cliente. Al finalizar, estarás capacitado para ofrecer servicios profesionales en maquillaje para cualquier tipo de evento.', '5 meses', 'Marianela Gonzalez', 150000, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrTJfesIBFJ8zKtCjYXK5XlblOFgC33uIP8w&s'),
(17, 'Uñas', 'Curso de aplicacion de uñas artisticas', 'Este curso enseña la técnica profesional de esculpido y extensión de uñas con acrílico. Aprenderás desde la preparación de la uña natural hasta la aplicación de tips o moldes, mezclado y modelado del acrílico, y acabado con limado y pulido. Además, te formarás en técnicas de decoración avanzada como encapsulado y diseños en 3D, así como en el mantenimiento y reparación de uñas acrílicas.\r\nIdeal para quienes buscan dominar o perfeccionar la técnica, este curso te prepara para ofrecer servicios profesionales en salones o de manera independiente.', '2 meses', 'Carla Alvarez', 50000, 'https://bucket.somosohlala.com.ar/s3fs-public/styles/internal_990/public/2024-08/unas_tendencia.png.webp?itok=bxPofbg6'),
(18, 'Cuidados', 'Curso de masajes faciales y relajación', 'Este curso de Masajes Faciales y Relajación enseña técnicas efectivas para mejorar la circulación y promover la relajación en el rostro. Aprenderás métodos como el drenaje linfático y movimientos de alisado, junto con el uso de herramientas como rodillos de jade y gua sha para potenciar los efectos del masaje.\r\nLos participantes realizarán prácticas para personalizar tratamientos según las necesidades de cada cliente, creando un ambiente adecuado para una experiencia relajante. Al finalizar, estarás preparado para ofrecer servicios de masaje facial en spas o como profesional independiente.', '1 mes', 'Analia Sanchez', 40000, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLdRNm6cn62YzX3g18fzLoZQCW5covW9Xt8Q&s'),
(19, 'Cuidados', 'Curso de peeling quimico y exfoliación avanza', 'Este curso de Peeling Químico y Exfoliación Avanzada capacita a los participantes en técnicas para rejuvenecer la piel y tratar problemas como manchas y textura irregular. Durante dos meses, aprenderás sobre diferentes tipos de peelings químicos, incluidos AHA y BHA, y cómo seleccionar el tratamiento adecuado según el tipo de piel.\r\nEl curso incluye teoría sobre la anatomía de la piel y protocolos de aplicación, así como prácticas supervisadas para aplicar técnicas de exfoliación efectiva. Al finalizar, estarás listo para ofrecer tratamientos profesionales en spas o clínicas estéticas.', '2 meses', 'Anabella quiroga', 120000, 'https://static.wixstatic.com/media/03710f_17362967f2d1428693b833e44fa73482~mv2.jpg/v1/fill/w_521,h_472,al_c,lg_1,q_80,enc_auto/Peeling%20qu%C3%ADmico.jpg'),
(20, 'Peluquería', 'Curso de cuidados del cabello y tratamientos ', 'En el curso de Cuidado del Cabello y Tratamientos Capilares, los participantes se adentrarán en las mejores prácticas para mantener un cabello saludable y bien tratado. Durante un mes, aprenderán sobre las diversas técnicas de reparación, hidratación y nutrición capilar, así como sobre la identificación de problemas comunes del cuero cabelludo. Este curso combina teoría y práctica, preparando a los estudiantes para ofrecer soluciones efectivas y personalizadas a sus clientes.', '1 mes', 'Ana Rodriguez', 80000, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSq0vAJ5-vY_N1kKz7kK87-u2yBmxNtSO3DnA&s'),
(21, 'Peluquería', 'Curso de técnicas de coloración', 'Este curso de Técnicas de Coloración ofrece formación integral en métodos avanzados como balayage, mechas y tintes, proporcionando a los participantes un entendimiento profundo de la teoría del color y la elección de productos adecuados. A lo largo de dos meses, los estudiantes aprenderán a personalizar tratamientos de color según las necesidades y deseos de cada cliente, adquiriendo habilidades prácticas que les permitirán lograr resultados profesionales y satisfactorios.', '2 meses', 'Maria Hernandez', 200000, 'https://media.glamour.mx/photos/64a308e33f544cc87d0924e7/16:9/w_2560%2Cc_limit/tecnicas_de_coloracion_basicas.jpg'),
(22, 'Peluquería', 'Curso de tecnicas de alisado y ondulado', 'El curso de Técnicas de Alisado y Ondulado está diseñado para enseñar a los participantes a utilizar correctamente herramientas y productos que faciliten el alisado y el ondulado del cabello. En solo un mes, los estudiantes adquirirán habilidades en técnicas de planchado y rizado, aprendiendo a crear estilos variados y duraderos. Este curso combina la teoría con prácticas en vivo, garantizando que los estudiantes se sientan cómodos y seguros al aplicar lo aprendido en situaciones reales.', '1 mes', 'Maria Hernandez', 50000, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIAgKBEasbfK5O3UHni0KqV_PNJMozK4zlGg&s'),
(23, 'Maquillaje', 'Curso de maquillaje de alta costura y editori', 'Este curso está diseñado para aspirantes a maquilladores que desean trabajar en la industria de la moda y la belleza. Durante dos meses, los participantes aprenderán técnicas avanzadas de maquillaje editorial y de pasarela, creando looks creativos y artísticos que marcan tendencias. Se enfocarán en el desarrollo de un portafolio profesional a través de colaboraciones con fotógrafos y diseñadores, adquiriendo experiencia práctica y entendiendo el proceso creativo detrás de las producciones de moda. Al finalizar, estarán preparados para destacar en el competitivo mundo del maquillaje profesional.', '2 meses', 'Rosa Hernandez', 1160000, 'https://i0.wp.com/institutorobertopiazza.com.ar/wp-content/uploads/2020/10/maquilla-3.jpg?fit=2597%2C1731&ssl=1'),
(24, 'Uñas', 'Curso de nail art creativo', 'En este curso, aprenderás a crear impresionantes diseños artísticos en uñas utilizando una variedad de técnicas innovadoras. Desde stamping hasta pintura a mano alzada, explorarás cómo combinar colores, formas y estilos para hacer que cada diseño sea único. También se abordarán métodos de decoración con accesorios, como strass, purpurina y pegatinas, permitiéndote personalizar las uñas de acuerdo con las preferencias de tus clientes. Este curso es perfecto para quienes desean expresar su creatividad y desarrollar habilidades que los diferencien en el competitivo mundo de las uñas, ya sea para uso personal o profesional.', '3 meses', 'Lucia Urquiza', 178000, 'https://ldsnails.com/cdn/shop/articles/Best_Nail_Designs_to_Try_in_Summer.jpg?v=1712217174'),
(25, 'Uñas', 'Curso de reparación y mantenimiento de uñas', 'Este curso está diseñado para enseñarte las técnicas necesarias para reparar y mantener uñas dañadas de manera efectiva. Aprenderás a identificar los diferentes tipos de problemas que pueden afectar la salud de las uñas y cómo tratarlos adecuadamente. Además, se ofrecerán estrategias para fortalecer las uñas débiles y quebradizas a través de tratamientos específicos y el uso de productos adecuados. Este curso es esencial para quienes buscan brindar un servicio completo y profesional, garantizando que sus clientes no solo luzcan uñas hermosas, sino que también disfruten de una buena salud en sus manos.', '2 semanas', 'Milagros Etcheberry', 20000, 'https://mejorconsalud.as.com/wp-content/uploads/2015/10/tratamientos-caseros-unas-debiles-768x512.jpg?auto=webp&quality=60&width=1920&crop=16:9,smart,safe');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscriptos`
--

CREATE TABLE `inscriptos` (
  `ID_alumno` int(11) NOT NULL,
  `ID_curso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inscriptos`
--

INSERT INTO `inscriptos` (`ID_alumno`, `ID_curso`) VALUES
(89, 4),
(96, 4),
(98, 4),
(88, 4),
(92, 4),
(79, 4),
(5, 4),
(85, 4),
(89, 4),
(96, 4),
(98, 4),
(88, 4),
(92, 4),
(79, 4),
(5, 4),
(85, 4),
(8, 19),
(96, 19),
(80, 19),
(95, 19),
(91, 19),
(89, 19),
(2, 19),
(93, 19),
(1, 19),
(83, 19),
(8, 19),
(96, 19),
(80, 19),
(95, 19),
(91, 19),
(89, 19),
(2, 19),
(93, 19),
(1, 19),
(83, 19),
(96, 18),
(92, 18),
(88, 18),
(97, 18),
(5, 18),
(77, 18),
(91, 18),
(82, 18),
(8, 18),
(96, 18),
(92, 18),
(88, 18),
(97, 18),
(5, 18),
(77, 18),
(91, 18),
(82, 18),
(8, 18),
(91, 23),
(89, 23),
(87, 23),
(4, 23),
(95, 23),
(82, 23),
(89, 1),
(9, 1),
(2, 1),
(10, 1),
(78, 1),
(84, 1),
(97, 1),
(95, 1),
(84, 16),
(3, 16),
(94, 16),
(9, 16),
(5, 16),
(1, 16),
(9, 3),
(10, 3),
(92, 3),
(83, 3),
(90, 3),
(91, 20),
(97, 20),
(78, 20),
(82, 20),
(89, 20),
(98, 20),
(92, 21),
(2, 21),
(78, 21),
(8, 21),
(92, 22),
(79, 22),
(82, 22),
(92, 22),
(81, 22),
(85, 22),
(2, 22),
(97, 22),
(98, 22),
(91, 22),
(93, 17),
(87, 17),
(81, 17),
(78, 17),
(83, 15),
(90, 15),
(8, 15),
(80, 15),
(79, 15),
(85, 24),
(89, 24),
(5, 25),
(85, 25),
(4, 25),
(86, 25),
(1, 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` char(60) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `email`, `password`, `role`) VALUES
(1, 'luciaalcibar@gmail.com', '$2y$10$1/mq1.DjJh/KPVLNpyq7N.ziMx/0T.qGDVVRxfMbcUfjx04Ns9Bs2', 'user'),
(2, 'webadmin', '$2y$10$n9Nzmkn5miBKbGBpcX1hled/OMT3YRGrknde9JOzlt7tVe6KTYCNK', 'admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`ID_alumno`),
  ADD UNIQUE KEY `dni` (`dni`),
  ADD UNIQUE KEY `numero_de_celular` (`celular`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`ID_curso`);

--
-- Indices de la tabla `inscriptos`
--
ALTER TABLE `inscriptos`
  ADD KEY `ID_curso` (`ID_curso`),
  ADD KEY `ID_alumno` (`ID_alumno`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `ID_alumno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `ID_curso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `inscriptos`
--
ALTER TABLE `inscriptos`
  ADD CONSTRAINT `inscriptos_ibfk_1` FOREIGN KEY (`ID_curso`) REFERENCES `cursos` (`ID_curso`),
  ADD CONSTRAINT `inscriptos_ibfk_2` FOREIGN KEY (`ID_alumno`) REFERENCES `alumnos` (`ID_alumno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

