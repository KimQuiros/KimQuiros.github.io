-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-09-2015 a las 07:40:15
-- Versión del servidor: 5.6.25
-- Versión de PHP: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `recipes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE IF NOT EXISTS `categoria` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `name`) VALUES
(1, 'Postres'),
(2, 'Pasteleria'),
(3, 'Vegetariano '),
(4, 'Carnes'),
(5, 'Batidos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingredients`
--

CREATE TABLE IF NOT EXISTS `ingredients` (
  `id` int(11) NOT NULL,
  `ingredients` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ingredients`
--

INSERT INTO `ingredients` (`id`, `ingredients`) VALUES
(1, '½ taza de agua<br>\r\n1 taza de azúcar<br>\r\n1 taza de zanahoria rallada fina<br>\r\n115 g de mantequilla<br>\r\n2 ½ tazas de leche en polvo cernida<br>\r\n1 taza de nueces picadas finas<br>\r\n1 taza de coco deshidratado<br>'),
(2, '3 1/2 tazas de leche<br>\r\n1 caja de flan<br>\r\n1 manzana picada finamente<br>\r\n1/3 taza de albaricoques picados finos<br>\r\n1/2 taza de macadamias tostadas picadas<br>'),
(3, '1 lata pequeña de leche evaporada<br>\r\n1 lata de leche condensada<br>\r\njugo de 4 limones mesinos<br>\r\n10 conos azucarados<br>\r\n200 g de fresas partidas en cuartos<br>\r\n300 g de uvas verdes partidas a la mitad<br>\r\n3 manzanas Granny Smith partidas en trozos<br>'),
(4, 'Para la gelatina:<br>\r\n1 sobre de gelatina de fresa<br>\r\n300 ml de agua caliente<br>\r\n300 ml de agua fría<br>\r\n12 vasos plásticos pequeños transparentes<br>\r\n12 fresas cortadas a la mitad<br>\r\n\r\nPara el cremoso de queso crema:<br>\r\n1 caja de queso crema<br>\r\n¾ taza de leche condensada<br>\r\n300 g de Whip topping<br>\r\n\r\nPara decorar:<br>\r\n12 fresas enteras<br>\r\n'),
(5, '4 barras de mantequilla a temperatura ambiente<br>\r\n½ k de azúcar morena<br>\r\n12 huevos a temperatura ambiente<br>\r\n3 tazas de harina y 1 taza adicional para enharinar las frutas<br>\r\n2 cditas. de polvo de hornear<br>\r\n1 cdita. Bicarbonato<br>\r\n1 cdita. Mace (se consigue en los supermercados; si no, puede usar media cucharadita de nuez moscada en polvo)<br/>\r\n½ cdita. clavo de olor en polvo<br>\r\n¼ taza Café espresso<br>\r\n4 oz Chocolate semidulce derretido en baño de María o en el microondas<br>\r\n½ k de pasas<br>\r\n½ k de cerezas cristalizadas<br>\r\n½ k de almendras peladas y picadas<br>\r\n½ k de nueces picadas<br>\r\n2 tazas de fruta cristalizada<br>\r\n4 frascos de Gerber de ciruela<br>\r\n1 frasco de jalea de piña (300g)<br>\r\n1 taza de jugo de piña<br>\r\n'),
(6, '4 ½ tazas de harina de trigo (reservar ½ taza)<br>\r\n4 cditas. de polvo de hornear<br>\r\n2 ½ barras de mantequilla<br>\r\n¾ taza de azúcar<br>\r\n1 lata de leche condensada<br>\r\n5 huevos<br>\r\n3 tazas de puré de ayote sazón cocido<br>\r\n½ cdita de esencia de vainilla<br>\r\n½ cdita. de sal<br>\r\n⅔ taza de leche descremada<br>'),
(7, '4 Barritas Mantequilla a temperatura ambiente<br>\r\n½ kilo Azúcar Morena<br>\r\n12 Unidades huevos a temperatura ambiente<br>\r\n3 tazas Harina y 1 taza adicional para enharinar las frutas<br>\r\n2 Cucharaditas Polvo de Hornear<br>\r\n1 Cucharadita Bicarbonato<br>\r\n1 Cucharadita Mace (se consigue en los supermercados; si no, puede usar media cucharadita de nuez moscada en polvo)<br>\r\n0.25 Taza Café espresso<br>\r\n4 Onzas Chocolate semidulce derretido en baño de María o en el microondas<br>\r\n½ Taza Melaza<br>\r\n½ kilo Pasas<br>\r\n½ kilo Cerezas cristalizadas<br>\r\n½ kilo Almendras peladas y picadas<br>\r\n½ kilo Nueces picadas<br>\r\n2 tazas Fruta cristalizada<br>\r\n4 Tarritos Gerber de ciruela<br>\r\n1 Paquete o frasco Jalea de piña de 300g<br>\r\n1 Taza Jugo de Piña<br>\r\n1 Molde grande de chimenea o varios rectangulares pequeños<br>'),
(8, '5 Bananos grandes<br>\r\n2 cdas. de azúcar<br>\r\nAzúcar moreno para caramelizar<br>\r\n3 cdas. de mantequilla<br>\r\n½ cdita. de canela<br>\r\n1 paquete grande de galletas maria<br>\r\n½ taza de chocolate amargo<br>\r\n1 taza de crema dulce<br>\r\nHelado de chocolate al gusto<br>\r\nWhip topping-Crema batida-(Hoplá)<br>\r\n'),
(9, 'Para la masa base del bombón:<br>\r\n¾ taza de harina<br>\r\n½ taza de azúcar<br>\r\n½ taza de cacao o cocoa en polvo<br>\r\n1 cdita. de royal<br>\r\n½ cdita. de bicarbonato de sodio<br>\r\n½ taza de leche<br>\r\n1 huevo<br>\r\n¼ taza de mantequilla derretida<br>\r\nPara el mousse de menta:<br>\r\n6 yemas + ¾ de tazas de azúcar<br>\r\n6 claras + ¾ de tazas de azúcar<br>\r\n3 sobres de gelatina sin sabor (24 g)<br>\r\nAgua caliente para la gelatina<br>\r\n½ ltr de crema dulce + ¾ de taza de azúcar<br>\r\nEsencia de menta al gusto<br>\r\ncolorante vegetal verde<br>\r\nChocolate para decorar<br>\r\n'),
(10, '150 grs. de rabanitos tiernos<br>\r\n150grs de zanahorias<br>\r\n150grs de cogollos de apio<br>\r\n    \r\nSalsa:<br>\r\n1 yogurt descremado<br>\r\n1 cucharada de alcaparras picadas<br>\r\n½ cucharadas de mostaza <br>\r\nHierbas aromaticas, sal y pimienta negra<br>\r\n'),
(11, '½  kilo de puerros, cocidos y escurridos<br>\r\n200grs de palmitos de lata<br>\r\n    \r\nvinagreta:\r\n1 tomate grande, muy picado <br>\r\n1 pimiento verde, muy picado<br>\r\n1 rodaja de cebolla, muy picada<br>\r\n1 cucharadas de aceite de oliva<br>\r\n1 cucharada de vinagre de vino<br>\r\nsal <br>\r\n'),
(12, '2 tazas de garbanzos precocidos<br>\r\n1 limón en jugo (colado)<br>\r\n1 aguacate maduro<br>\r\n½ taza de culantro cortado fino<br>\r\n¼ taza de cebolla morada picada fino<br>\r\n2 Dientes de ajo<br>\r\n1 cda. de aceite de oliva<br>\r\n1 cdita. de comino<br>\r\n¼ cdita. de sal<br>\r\n'),
(13, '½ kg de pejibayes<br>\r\n½ taza de cebolla morada picada en cuadritos<br>\r\n½ taza de chile dulce picado en cuadritos<br>\r\n½ taza de apio picado<br>\r\n2 tomates rallados<br>\r\n3 cdas. de jugo de limón<br>\r\n1 cda. de vinagre<br>\r\n1 chile jalapeño cortado en cuadritos<br>\r\n¼ taza de culantro picado<br>\r\nsal y pimienta al gusto<br>\r\n'),
(14, '1 costillar de cerdo sin cartílagos, sin grasa y sin falda<br>\r\n500 ml de salsa barbacoa<br>\r\nagua, la necesaria<br>\r\nsal y pimienta al gusto<br>\r\nEsencia de humo líquido ( Tips)<br>\r\n'),
(15, '5 bifes (bistecs) ahumados, grueso de punta de solomo<br>\r\n3 cdas. de aceite<br>\r\n½ kg de cebolla morada partida en aros finos<br>\r\n3 chiles dulces rojos partidos en rodajas finas<br>\r\n4 tazas de caldo de res<br>\r\nsal y tomillo al gusto<br>\r\n1 cabeza de ajo picada<br>\r\nhojas de laurel al gusto<br>\r\nPara la guarnición:<br>\r\n½ kg de tomates cherry (1 bandeja)<br>\r\n1 kg papa miniatura (cocinada)<br>\r\ntomillo y mantequilla al gusto<br>\r\n'),
(16, 'Para el batido "colada fresca":<br>\r\n2 rebanadas de piña<br>\r\n2 tazas de agua de pipa<br>\r\n1 taza de coco natural<br>\r\n1 cdita. de miel de abeja cruda<br>\r\n2 tazas de agua<br>\r\n1 taza de hierbabuena fresca<br>\r\nPara el batido verde mañanero:<br>\r\n2 tazas de jugo de naranja recién exprimido<br>\r\n½ de pepino<br>\r\nkale fresco\r\n2 tazas de agua<br>\r\njengibre al gusto<br>\r\nPara el batido poderoso:<br>\r\n2 tazas de leche de almendra<br>\r\n1 banano mediano<br>\r\n4 cditas. de cacao puro en polvo<br>\r\n2 cditas. de mantequilla de almendra o maní<br>\r\n1 taza de agua<br>\r\n½ cdita. de canela en polvo<br>\r\nesencia de vainilla o vainilla en astilla<br>\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recipes`
--

CREATE TABLE IF NOT EXISTS `recipes` (
  `id` int(10) unsigned NOT NULL,
  `category` varchar(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(200) NOT NULL,
  `description` varchar(500) NOT NULL,
  `ingredients` int(11) NOT NULL,
  `steps` text NOT NULL,
  `portions` int(11) NOT NULL,
  `favorite` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `recipes`
--

INSERT INTO `recipes` (`id`, `category`, `name`, `image`, `description`, `ingredients`, `steps`, `portions`, `favorite`) VALUES
(1, 'Postres', 'Cajetas de nueces', 'img/recipe1.jpg', 'Cajetas de nueces', 1, '1. En una olla a fuego medio, coloque agua, azúcar y zanahoria. Deje que se cocine la mezcla hasta que tome punto de jalea.<br>\r\n2. Agregue la mantequilla y mezcle bien.<br>\r\n3. Retire del calor y añada la leche en polvo y las nueces.<br>\r\n4. Revuelva bien y extienda la mezcla en una bandeja engrasada.<br>\r\n5. Divida la mezcla en bolitas, páselas por coco, sirva y disfrute.<br>', 12, 0),
(2, 'Postres', 'Flan de macadamias', 'img/recipe2.jpg', 'Flan de macadamias', 2, '1. Caliente la  leche con la premezcla del flan y deje hervir.<br>\r\n2. Agregue la manzana picada finamente con los albaricoques picados fino.<br>\r\n3. Coloque en un molde y refrigere hasta que se ponga firme.<br>', 6, 0),
(3, 'Postres', 'Conos nochebuena', 'img/recipe3.jpg', 'Conos nochebuena', 3, '1. Coloque en la licuadora la leche evaporada y la leche condensada. Licue bien y agregue poco a poco el limón, hasta que la mezcla cambie de textura.<br>\r\n2. Rellene los conos primero con la crema y luego con las frutas.<br/>\r\n3. Repita el proceso hasta llenar los conitos.<br>\r\n4. Refrigere por 15 minutos.<br>\r\n5. Sirva y disfrute.<br>', 10, 0),
(4, 'Postres', 'Postre bicolor navideño', 'img/recipe4.jpg', 'Postre bicolor navideño', 4, 'La gelatina:<br>\r\n1. Mezcle la gelatina primero con agua caliente y luego con agua fría.<br>\r\n2. En cada uno de los vasitos, coloque una fresa y luego rellene con la gelatina.<br>\r\n3. Coloque los vasitos de manera inclinada en un molde para muffin, para que la gelatina corte en ángulo de 45°. Lleve a la refrigeradora por unas  2 horas.<br>\r\n\r\nEl cremoso de queso crema:<br>\r\n1. En un tazón, mezcle el queso crema y la leche condensada para que emulsionen.<br>\r\n2. Aparte, bata el whip topping o crema dulce hasta obtener punto pico y una vez listo, agregue la mezcla de queso crema en movimientos envolventes.<br>\r\n3. Coloque la mezcla en una manga con boquilla redonda y rellene los vasitos.<br>\r\n4. Decore con una fresa entera y disfrute.<br>', 12, 0),
(5, 'Pasteleria', 'Queque Selva negra', 'img/recipe5.jpg', 'Queque Selva negra', 5, '1. Ponga las pasas, las cerezas cristalizadas, las almendras picadas, las nueces picadas y la fruta cristalizada en un recipiente, y enharínelas con la taza de harina adicional. Reserve.<br>\r\n2. Cierna en un recipiente grande las 3 tazas de harina, el polvo de hornear, el bicarbonato, el mace o la nuez moscada y el clavo. Reserve.<br>\r\n3. Al chocolate derretido agregue el café espresso, la melaza, los "gerbers" de ciruela y el jugo de piña. Reserve.<br>\r\n4. Creme la mantequilla con el azúcar moreno. Añada los huevos uno a uno, batiendo bien después de cada adición. Añada la harina cernida, alternando con los líquidos, comenzando y terminando con harina. Añada a esta mezcla las frutas enharinadas y mezcle a mano.<br>\r\n5. Vierta la mezcla en los moldes y hornéela. Si usa el molde de chimenea, hornee a 325°F, durante 1 hora o hasta que al insertarle un palillo, este salga limpio.<br>\r\n6. Si emplea los moldes pequeños, el tiempo es de 30 a 45 minutos, a 325°F o hasta que al insertar en los quequitos un palillo, este salga limpio.<br>\r\n', 8, 0),
(6, 'Pasteleria', 'Queque de ayotes sazones', 'img/recipe6.png', 'El ayote sazón es una excelente fuente de vitamina A y fibra. Para la elaboración de esta receta, prefiera aquellos ayotes de pulpa carnosa, no tan acuosa y muy amarilla, dado que esta variedad de frutos favorece el resultado final de la preparación y aporta más nutrientes.', 6, '1. En una tazón, mezcle ½ taza de harina con el polvo de hornear y reserve.<br>\r\n2. Con ayuda de una batidora, creme la mantequilla con el azúcar.<br>\r\n3. Adicione la leche condensada.<br>\r\n4. Incorpore a la mezcla uno a uno los huevos.<br>\r\n5. Agregue el puré de ayote sazón y la esencia de vainilla.<br>\r\n6. Adicione poco a poco las 4 tazas de harina alternando con la leche descremada y la sal.<br>\r\n7. Con el uso de una paleta y con movimientos envolventes, adicione la ½ taza de harina que se reservó mezclada con el polvo de hornear.<br>\r\n8. Coloque la mezcla en un molde previamente engrasado.<br>\r\n9. Precaliente el horno a 360ºF (180°C).<br>\r\n10. Hornee el queque por una hora.<br>', 12, 0),
(7, 'Pasteleria', 'Queque de Frutas', 'img/recipe7.jpg', 'Queque de Frutas', 7, '1. Ponga las pasas, las cerezas cristalizadas, las almendras picadas, las nueces picadas y la fruta cristalizada en un recipiente, y enharínelas con la taza de harina adicional.<br>\r\n\r\n2. Reserve. Cierna en un recipiente grande las 3 tazas de harina, el polvo de hornear, el bicarbonato, el mace o la nuez moscada y el clavo.<br>\r\n\r\n3. Reserve. Al chocolate derretido agregue el café espresso, la melaza, los gerbers; de ciruela y el jugo de piña. Reserve. Creme la mantequilla con el azúcar moreno.<br>\r\n\r\n4. Añada los huevos uno a uno, batiendo bien después de cada adición. Añada la harina cernida, alternando con los líquidos, comenzando y terminando con harina. Añada a esta mezcla las frutas enharinadas y mezcle a mano.<br>\r\n\r\n5. Vierta la mezcla en los moldes y hornéela. Si usa el molde de chimenea, hornee a 325°F, durante 1 hora o hasta que al insertarle un palillo, este salga limpio. Si emplea los moldes pequeños, el tiempo es de 30 a 45 minutos, a 325°F o hasta que al insertar en los quequitos un palillo, este salga limpio.<br>\r\n\r\n6. Rinde dos queques grandes de chimenea, o bien ocho pequeños rectangulares.<br>\r\n', 8, 0),
(8, 'Pasteleria', 'Queque de banano y chocolate', 'img/recipe8.jpg', 'Queque de banano y chocolate', 8, '1. Procese la galleta junto con la mantequilla hasta lograr una textura manejable. Engrase 4 tazas de cerámica por la parte de adentro y presione la galleta hasta forrar bien la parte interior de la taza. Hornee por 5 minutos.<br>\r\n2. Saltee en un sartén caliente el banano con el azúcar y la canela, y rellene hasta la mitad de las tazas.<br>\r\n3. Caliente la crema dulce hasta ebullición, retire del fuego y agregue el chocolate. Enfríe y rellene la otra mitad de las tazas.<br>\r\n4. Congele las tazas por 2 horas como mínimo, decore con el whip topping.<br>\r\n5. Sirva con helado de chocolate y ½  banano caramelizado con azúcar moreno.<br>', 4, 0),
(9, 'Pasteleria', 'Bombón de menta', 'img/recipe9.jpg', 'Bombón de menta', 9, 'El bombón:<br>\r\n1. Cierna todos los ingredientes secos, luego agregue la leche, el huevo y la mantequilla. Mezcle muy bien. Forre con papel encerado un molde redondo de 30 cm  y vierta esta mezcla.<br>\r\n2. Hornee a 400°F (200°C) por 20  minutos aproximadamente.<br>\r\nEl mousse de menta:<br>\r\n1. Bata las yemas con el azúcar hasta punto letra (esto es cuando levantamos con una cuchara el batido y queda el relieve).<br>\r\n2. Disuelva la gelatina en agua caliente. Agregue al batido de las yemas, mezcle bien.<br>\r\n3. Bata las claras con el azúcar a punto de nieve.<br>\r\n4. Incorpore las claras a las yemas con movimientos suaves y envolventes.<br>\r\n5. Bata la crema con el azúcar y agregue a la preparación anterior.<br>\r\n6. Saborice con la esencia de menta a su gusto.<br>\r\n7. Se puede colorear muy sutilmente con colorante verde, apenas para darle un tono.<br>\r\nMontaje:<br>\r\n1. Forre, con papel aluminio, el fondo y los lados de un molde redondo desmontable de 30 cm.<br>\r\n2. Ponga la base de chocolate (del bombón) y sobre esta el mousse de menta.<br>\r\n3. Lleve al congelador o al freezer hasta que tome consistencia bien firme.<br>\r\n4. Cuando esté listo, saque y desmolde sobre una bandeja, retire el papel de aluminio.<br>\r\n', 12, 0),
(10, 'Vegetariano', 'Fondue de crudités', 'img/recipe10.jpg', 'Fondue de crudités', 10, '1. Se pelan, se lavan y se cortan a tiritas todas las verduras. Se ponen en un plato grande redondo, dejando un hueco en medio para el bol de la salsa.<br>\r\n2. Para hacer la salsa se mezclan todos los ingredientes en un bol y se mete en el frigorífico.<br>\r\n3. Cuando se va a servir se saca el bol del frigorífico y se coloca en el centro del plato de las verduras, que se mojan en la salsa segun se van consumiendo.<br>\r\n', 4, 0),
(11, 'Vegetariano', 'Puerros y palmitos con vinagreta', 'img/recipe11.jpg', 'Puerros y palmitos con vinagreta', 11, '1. Se ponen los puerros en una fuente. Se parten los palmitos en rodajas de 1cm, aproximadamente y se reservan.<br>\r\n \r\nVinagreta:<br>\r\n1. Se aderezan el tomate, el pimiento y la cebolla encima de los puerros y se adorna la fuente con las rodajas de palmitos.<br>', 4, 0),
(12, 'Vegetariano', 'Hummus de aguacate', 'img/recipe12.png', 'Si no tiene procesadora en casa, puede hacer el hummus en la licuadora. Si una vez molido le quedó muy líquido por el agua, licue migajas de pan blanco hasta obtener la consistencia deseada. Puede agregarle un chorrito de aceite de ajonjolí.', 12, '1. Lave y limpie todos los vegetales. Luego córtelos en trozos pequeños, para procesarlos más fácilmente.<br>\r\n2. Coloque, en la procesadora, los garbanzos con el jugo de limón y procese hasta que tenga una textura homogénea y suave. Si es necesario, agréguele agua para ayudar al proceso.<br>\r\n3. Adicione el resto de los vegetales y procese otra vez, hasta que la textura sea homogénea.<br>\r\n4. Añada el aceite de oliva y el resto de los ingredientes. Procese una vez más hasta obtener una crema de consistencia suave, pero firme.<br>\r\n5. Si lo desea, puede darle un toque personal con otros condimentos como cayena, cúrcuma, cardamomo, etc.<br>\r\n6. Reserve en la refrigeradora antes de servir.<br>\r\n', 6, 0),
(13, 'Vegetariano', 'Ceviche de pejibaye especial', 'img/recipe13.jpg', 'Ceviche de pejibaye especial', 13, '1. Pique los pejibayes en cubitos, coloque en un tazón y agregue el resto de los ingredientes, mezcle y salpimiente al gusto.<br>\r\n2. Refrigere por una hora y sirva sobre una hojita de lechuga.<br>', 6, 0),
(14, 'Carnes', 'Costillar en salsa BBQ', 'img/recipe14.jpg', 'Costillar en salsa BBQ', 14, '1. Salpimente el costillar.<br>\r\n2. Precocine el costillar en una olla con agua y esencia de humo líquido hasta que se suavice. Precaliente la parrilla y coloque el costillar cuando esté caliente.<br>\r\n3. Barnice el costillar con salsa barbacoa usando una brocha.<br>\r\n4. Deje cocinar en la parrilla; sirva y disfrute.<br>', 3, 0),
(15, 'Carnes', 'Bifes ahumados a la criolla', 'img/recipe15.jpg', 'Bifes ahumados a la criolla', 15, '1. Corte los bifes ya ahumados<br>\r\n2. Ponga el aceite en una olla grande, preferiblemente con el fondo grueso. Corte la carne en bistecs gruesos.<br>\r\n3. Coloque capas alternadas de la carne previamente ahumada y de vegetales, en el siguiente orden: carne, cebolla, chile dulce, ajos en lonjas finas, sal y laurel.<br>\r\n4. Condimente cada capa, y al final, agregue el caldo de res.<br>\r\n5. Tape la olla y cocine sobre fuego moderado por 45 minutos. Destape y deje consumir el excedente de líquido.<br>\r\nLa guarnición:<br>\r\n1. En un sartén, saltee las papas cocinadas con la mantequilla, la sal, el tomillo y los tomates.<br>\r\nPara servir: Acompañe esta carne con la guarnición.<br>\r\n', 6, 0),
(16, 'Batidos', 'Batidos funcionales', 'img/recipe16.jpg', 'Batidos funcionales', 16, '1. Para cada uno de los batidos, licue todos los ingredientes.', 4, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
