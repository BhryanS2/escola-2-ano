create database if not exists supermercado;

USE supermercado;

-- drop database supermercado;
-- drop table segmento;
create table if not exists segmento (
	idSegmento INT NOT NULL PRIMARY KEY,
	descricaoSegmento VARCHAR(40)
);

create table if not exists unidadeDeMedida (
	idUnidadeDeMedida INT NOT NULL PRIMARY KEY,
	siglaUnidadeDeMedida CHAR(2) NOT NULL,
	descricaoUnidadeDeMedida VARCHAR(20) NOT NULL
);

create table if not exists volume (
	idVolume INT NOT NULL PRIMARY KEY,
	valorVolume DECIMAL(5, 2) NOT NULL
);

create table if not exists produto (
	idProduto INT NOT NULL PRIMARY KEY,
	descricaoProduto VARCHAR(40) NOT NULL,
	valorUnitario DECIMAL(6, 2) NOT NULL,
	segmento INT NOT NULL,
	unidadeDeMedida INT NOT NULL,
	volume INT NOT NULL,
	estoque int not null
);

create table if not exists estoque (
	idEstoque int not null primary key,
	qunatidadeEstoque decimal(6, 2) not null
);

-- DELETE FROM segmento;
INSERT INTO
	segmento
VALUES
	(1, 'Limpeza'),
	(2, 'Mercearia'),
	(3, 'Higiene'),
	(4, 'Carnes'),
	(5, 'Bebidas'),
	(6, 'Leite'),
	(7, 'Hortifruti');

-- DELETE FROM unidmedida;
-- drop table unidadeDeMedida;
INSERT INTO
	unidadeDeMedida
VALUES
	(1, 'Lt', 'Litros'),
	(2, 'Kg', 'Kilos'),
	(3, 'Rl', 'Rolos'),
	(4, 'Un', 'Unidades'),
	(5, 'Ml', 'Mililitros'),
	(6, 'Gr', 'Gramas'),
	(7, 'Cx', 'Caixas'),
	(8, 'Mg', 'Miligramas');

-- DELETE FROM volume;
INSERT INTO
	volume
VALUES
	(1, 1.0),
	(2, 1.5),
	(3, 2.0),
	(4, 2.5),
	(5, 4.0),
	(6, 5.0),
	(7, 8.0),
	(8, 10.0),
	(9, 12.0),
	(10, 20.0),
	(11, 24.0),
	(12, 25.0),
	(13, 50.0),
	(14, 80.0),
	(15, 85.0),
	(16, 90.0),
	(17, 100.0),
	(18, 103.0),
	(19, 200.0),
	(20, 250.0),
	(21, 290.0),
	(22, 300.0),
	(23, 350.0),
	(24, 395.0),
	(25, 400.0),
	(26, 500.0),
	(27, 540.0),
	(28, 600.0),
	(29, 660.0),
	(30, 700.0),
	(31, 720.0),
	(32, 750.0),
	(33, 900.0);

insert into
	estoque
values
	(0, 0),
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5),
	(6, 6),
	(7, 7),
	(8, 8),
	(9, 9),
	(10, 10),
	(11, 11),
	(12, 12),
	(13, 13),
	(14, 14),
	(15, 15),
	(16, 16),
	(17, 17),
	(18, 18),
	(19, 19),
	(20, 20);

-- DELETE FROM produto;
INSERT INTO
	produto
VALUES
	(1, "Agua Sanitaria QBoa", 1.45, 1, 1, 1, 0),
	(2, "Agua Sanitaria Brilhante", 2.39, 1, 1, 1, 18),
	(3, "Agua Sanitaria Eficassy", 0.99, 1, 1, 1, 0),
	(4, "Agua Sanitaria DA Oma", 0.99, 1, 1, 1, 15),
	(5, "Agua Sanitaria Big", 1.33, 1, 1, 1, 0),
	(6, "Agua Sanitaria Candura", 0.99, 1, 1, 1, 8),
	(7, "Agua Sanitaria Candura", 1.79, 1, 1, 3, 7),
	(8, "Agua Sanitaria Brilhante", 4.29, 1, 1, 3, 4),
	(9, "Agua Sanitaria DA Oma", 1.99, 1, 1, 3, 1),
	(10, "Agua Sanitaria QBoa", 2.85, 1, 1, 3, 10),
	(11, "Agua Sanitaria Big", 1.89, 1, 1, 3, 9),
	(12, "Agua Sanitaria Eficassy", 1.89, 1, 1, 3, 14),
	(13, "Amaciante Eficassy", 2.15, 1, 1, 3, 4),
	(14, "Amaciante Baby Soft", 2.79, 1, 1, 3, 16),
	(15, "Amaciante Minuano", 2.99, 1, 1, 3, 19),
	(16, "Amaciante Confort", 4.05, 1, 1, 3, 16),
	(17, "Amaciante Mon Bijou", 3.99, 1, 1, 2, 18),
	(18, "Amaciante Fofo", 5.99, 1, 1, 3, 10),
	(19, "Amaciante Toque", 2.69, 1, 1, 3, 2),
	(20, "Amaciante Santhinner", 2.25, 1, 1, 3, 12),
	(21, "Amaciante Estrela", 2.45, 1, 1, 3, 5),
	(22, "Desengordurador Veja", 2.66, 1, 5, 26, 16),
	(23, "Desengordurador Cif", 3.15, 1, 5, 26, 13),
	(24, "Desengordurador X-14", 2.55, 1, 5, 26, 9),
	(25,"Desengordurador QBoa Multiuso",0.99,1,5,26,5),
	(26,"Desengordurador Ajax Multiuso",2.1,1,5,26,7),
	(27,"Desengordurador Pratice",2.65,1,5,26,19),
	(28, "Desinfetante Pinho Sol", 1.99, 1, 5, 26, 4),
	(29, "Desinfetante Pinho Bril", 1.94, 1, 5, 26, 8),
	(30, "Desinfetante Minuano", 1.39, 1, 5, 26, 18),
	(31,"Desinfetante de Sanitario Veja",3.85,1,5,26,13),
	(32,"Desinfetante de Sanitario Harpic",3.69,1,5,26,4),
	(33,"Desinfetante de Sanitario Pato",3.49,1,5,26,5),
	(34, "Detergente Minuano", 0.83, 1, 5, 26, 3),
	(35, "Detergente Ype", 0.85, 1, 5, 26, 10),
	(36, "Detergente 2000", 0.69, 1, 5, 26, 1),
	(37, "Detergente Eficassy", 0.69, 1, 5, 26, 13),
	(38, "Detergente Limpol", 0.89, 1, 5, 26, 15),
	(39, "Detergente Higie", 0.59, 1, 5, 26, 14),
	(40, "Detergente Font", 0.85, 1, 5, 26, 4),
	(41, "Detergente Qlar", 0.69, 1, 5, 26, 16),
	(42, "Lustra Moveis Poliflor", 2.89, 1, 5, 19, 15),
	(43, "Lustra Moveis Peroba", 1.49, 1, 5, 19, 4),
	(44, "Lustra Moveis Bravo", 2.89, 1, 5, 19, 14),
	(45, "Palha de Aco Bombril", 1.85, 1, 6, 13, 0),
	(46, "Palha de Aco Assolan", 1.55, 1, 6, 13, 14),
	(47, "Sabao Minuano", 3.59, 1, 2, 1, 12),
	(48, "Sabao Rio", 2.98, 1, 2, 1, 19),
	(49, "Sabao Minerva", 3.45, 1, 2, 1, 14),
	(50, "Sabao Brilhante", 4.25, 1, 2, 1, 10),
	(51, "Sabao Cruz Azul", 3.15, 1, 2, 1, 0),
	(52, "Sabao em Po Bold", 4.96, 1, 2, 1, 2),
	(53, "Sabao em Po Omo", 6.89, 1, 2, 1, 1),
	(54, "Sabao em Po Brilhante", 5.63, 1, 2, 1, 7),
	(55, "Sabao em Po Minerva", 5.85, 1, 2, 1, 9),
	(56, "Sabao em Po Eficassy", 2.99, 1, 2, 1, 6),
	(57, "Sabao em Po Ace", 5.48, 1, 2, 1, 14),
	(58, "Toalha de Papel Chifon", 2.87, 2, 3, 3, 13),
	(59, "Toalha de Papel Kitchen", 1.99, 2, 3, 3, 14),
	(60, "Toalha de Papel Snob", 2.42, 2, 3, 3, 16),
	(61, "Toalha de Papel Yuri", 1.99, 2, 3, 3, 18),
	(62,"Toalha de Papel Residense",2.35,2,3,3,2),
	(63, "Toalha de Papel Big", 2.15, 2, 3, 3, 17),
	(64,"Toalha de Papel Toallita",1.55,2,3,3,11),
	(65, "Acucar Alto Alegre", 1, 2, 2, 1, 2),
	(66, "Acucar Dolce", 1.4, 2, 2, 1, 15),
	(67, "Acucar Uniao", 1.38, 2, 2, 1, 5),
	(68, "Acucar Ducula", 1.42, 2, 2, 1, 4),
	(69, "Acucar Ducula", 5.95, 2, 2, 6, 8),
	(70, "Acucar Alto Alegre", 4.98, 2, 2, 6, 12),
	(71, "Acucar Uniao", 7.4, 2, 2, 6, 8),
	(72, "Acucar Da Barra", 4.59, 2, 2, 6, 19),
	(73, "Acucar Dolce", 6.98, 2, 2, 6, 5),
	(74, "Adocante Zero-cal", 1.89, 2, 5, 17, 11),
	(75, "Adocante Adocyl", 1.89, 2, 5, 17, 1),
	(76, "Adocante Stevia", 2.85, 2, 5, 17, 14),
	(77, "Adocante Doce Menor", 1.79, 2, 5, 17, 7),
	(78, "Adocante Magro", 1.59, 2, 5, 17, 18),
	(79, "Adocante Finn", 1.69, 2, 5, 17, 10),
	(80, "Amido de Milho Maisena", 2.89, 2, 6, 26, 3),
	(81, "Amido de Milho Tell", 2.39, 2, 6, 26, 18),
	(82, "Amido de Milho Maxsenna", 1.99, 2, 6, 26, 7),
	(83, "Amido de Milho Big", 2.09, 2, 6, 26, 8),
	(84, "Amido de Milho Sinha", 1.95, 2, 6, 26, 19),
	(85, "Amido de Milho Molinari", 1.45, 2, 6, 26, 9),
	(86, "Amido de Milho Yoki", 1.89, 2, 6, 26, 7),
	(87, "Arroz Tio Urbano", 6.89, 2, 2, 2, 15),
	(88, "Arroz Naco", 3.97, 2, 2, 2, 10),
	(89, "Arroz Branco Kiarroz", 6.09, 2, 2, 2, 7),
	(90, "Arroz Branco Tia Maria", 6.39, 2, 2, 2, 2),
	(91, "Arroz Branco Tio Joao", 7.9, 2, 2, 2, 19),
	(92, "Arroz Branco Chines", 5.59, 2, 2, 2, 13),
	(93, "Arroz Branco Campeiro", 6.3, 2, 2, 2, 10),
	(94, "Arroz Branco Gelao", 5.68, 2, 2, 2, 17),
	(95, "Arroz Branco Super A", 5.98, 2, 2, 2, 12),
	(96, "Azeite Galo", 13.98, 2, 5, 26, 17),
	(97, "Azeite Arisco", 11.99, 2, 5, 26, 11),
	(98,"Azeitona Vale Fertil Verde",7.25,2,6,26,9),
	(99, "Azeitona Rivoli Verde", 7.25, 2, 6, 26, 18),
	(100,"Azeitona La Violetera Verde",4.99,2,6,26,10),
	(101, "Biscoito Tortinhas", 1.55, 2, 6, 19, 3),
	(102, "Biscoito Paraty", 0.89, 2, 6, 17, 11),
	(103, "Biscoito Trakinas", 1.09, 2, 6, 17, 4),
	(104, "Biscoito Bono", 1.85, 2, 6, 19, 16),
	(105, "Biscoito Negresco", 1.85, 2, 6, 19, 1),
	(106, "Biscoito Gulosos", 1.29, 2, 6, 19, 6),
	(107,"Biscoito Isabel Agua e Sal",1.43,2,6,19,16),
	(108,"Biscoito Parati Agua e Sal",1.2,2,6,19,7),
	(109,"Biscoito Club Social Cream Cracker",1.89,2,6,17,9),
	(110,"Biscoito Triunfo Cream Cracker",1.65,2,6,19,3),
	(111,"Biscoito Bauducco Agua e Sal",1.69,2,6,19,4),
	(112, "Cafe em po Damasco", 4.48, 2, 6, 26, 13),
	(113, "Cafe em po Uniao", 3.98, 2, 6, 26, 11),
	(114, "Cafe em po Sasse", 4.19, 2, 6, 26, 1),
	(115, "Cafe em po Melita", 4.98, 2, 6, 26, 19),
	(116, "Cafe em po Caboclo", 3.89, 2, 6, 26, 5),
	(117, "Cafe Soluvel Nescafe", 4.75, 2, 6, 17, 7),
	(118, "Cafe Soluvel Pele", 4.15, 2, 6, 17, 12),
	(119, "Cafe Soluvel Iguacu", 2.99, 2, 6, 17, 6),
	(120, "Cafe Soluvel Melita", 4.19, 2, 6, 17, 12),
	(121, "Cafe Soluvel Colonial", 3.9, 2, 6, 17, 18),
	(122,"Cafe Soluvel - refil Nescafe",1.97,2,6,13,5),
	(123,"Cafe Soluvel - refil Pele",1.93,2,6,13,3),
	(124,"Cafe Soluvel - refil Damasco",1.85,2,6,13,1),
	(125,"Cafe Soluvel - refil Iguacu",1.59,2,6,13,5),
	(126,"Cafe Soluvel - refil Colonial",1.55,2,6,13,10),
	(127, "Catchup Hellmanns", 2.98, 2, 6, 24, 18),
	(128, "Catchup Arisco", 2.39, 2, 6, 24, 11),
	(129, "Catchup Tell", 1.89, 2, 6, 25, 17),
	(130, "Catchup Pic", 2.99, 2, 6, 25, 17),
	(131, "Chocolate em po Nescau", 2.67, 2, 6, 25, 3),
	(132,"Chocolate em po Garotada",2.59,2,6,25,9),
	(133, "Chocolate em po Magico", 1.45, 2, 6, 25, 8),
	(134, "Chocolate em po Toddy", 3.47, 2, 6, 25, 17),
	(135,"Chocolate em po Ovomaltine",4.99,2,6,22,13),
	(136,"Chocolate em po Chocoleite",1.59,2,6,25,14),
	(137, "Ervilha Poupe Mais", 0.78, 2, 6, 25, 14),
	(138, "Ervilha Twist", 0.99, 2, 6, 19, 7),
	(139, "Ervilha Quero", 0.85, 2, 6, 19, 0),
	(140, "Ervilha Etti", 0.79, 2, 6, 19, 9),
	(141, "Ervilha Jussara", 1.15, 2, 6, 19, 1),
	(142, "Ervilha Lar", 0.79, 2, 6, 19, 7),
	(143, "Ervilha Oderich", 0.92, 2, 6, 19, 11),
	(144, "Ervilha Jurema", 1.48, 2, 6, 19, 6),
	(145,"Extrato de Tomate Elefante",1.95,2,6,23,9),
	(146,"Extrato de Tomate Pomarola",1.79,2,6,23,9),
	(147,"Extrato de Tomate Arisco",0.79,2,6,23,6),
	(148,"Extrato de Tomate Cajamar",1.69,2,6,23,16),
	(149,"Extrato de Tomate Quero",1.29,2,6,23,5),
	(150, "Extrato de Tomate Luc", 0.99, 2, 6, 23, 7),
	(151,"Farinha de Mandioca Molinari",2.59,2,6,26,14),
	(152,"Farinha de Mandioca Jaragua",1.97,2,2,1,14),
	(153,"Farinha de Mandioca Zuque",2.39,2,2,1,7),
	(154,"Farinha de Mandioca Gelao",1.19,2,2,1,1),
	(155,"Farinha de Mandioca Rocha",0.89,2,2,1,18),
	(156,"Farinha de trigo Nordeste",1.06,2,2,1,2),
	(157,"Farinha de trigo Dona Benta",1.49,2,2,1,5),
	(158,"Farinha de trigo Boa Sorte",1.15,2,2,1,6),
	(159,"Farinha de trigo Flor de Liz",0.89,2,2,1,6),
	(160,"Farinha de trigo Rosa Branca",0.99,2,2,1,18),
	(161, "Farinha de trigo Guth", 1.09, 2, 2, 1, 10),
	(162, "Farinha de trigo Sol", 1.45, 2, 2, 1, 17),
	(163, "Feijao Preto Biju", 2.59, 2, 2, 1, 10),
	(164, "Feijao Preto Jaragua", 2.59, 2, 2, 1, 10),
	(165, "Feijao Preto Naco", 1.97, 2, 2, 1, 8),
	(166, "Feijao Preto Jureia", 2.35, 2, 2, 1, 7),
	(167, "Feijao Preto Caldao", 2.66, 2, 2, 1, 6),
	(168, "Feijao Preto Azulao", 2.29, 2, 2, 1, 2),
	(169, "Feijao Preto Caldo Bom", 2.98, 2, 2, 1, 9),
	(170, "Feijao Preto Super A", 2.38, 2, 2, 1, 6),
	(171, "Macarrao Renata Semola", 1.59, 2, 6, 26, 0),
	(172, "Macarrao Galo Semola", 1.89, 2, 6, 26, 7),
	(173,"Macarrao Todeschini Semola",1.55,2,6,26,11),
	(174,"Macarrao Isabela Semola",1.99,2,6,26,14),
	(175,"Macarrao Dona Benta Semola",1.69,2,6,26,6),
	(176,"Macarrao Germani Semola",0.99,2,6,26,6),
	(177,"Macarrao Instantaneo Nissin",0.67,2,6,14,1),
	(178,"Macarrao Instantaneo Maggi",0.67,2,6,15,7),
	(179,"Macarrao Instantaneo Renata",0.55,2,6,14,7),
	(180,"Macarrao Instantaneo Arisco",0.58,2,6,15,17),
	(181,"Macarrao Instantaneo Orient",0.45,2,6,15,0),
	(182, "Maionese Hellmanns", 3.69, 2, 6, 26, 16),
	(183, "Maionese Arisco", 1.97, 2, 6, 26, 13),
	(184, "Maionese Primor", 1.99, 2, 6, 26, 11),
	(185, "Maionese Oderich", 2.13, 2, 6, 26, 10),
	(186, "Maionese Delicia", 2.59, 2, 6, 26, 4),
	(187, "Milho Twist", 0.1, 2, 6, 19, 15),
	(188, "Milho Quero", 1.1, 2, 6, 19, 13),
	(189, "Milho Oderich", 1.27, 2, 6, 19, 19),
	(190, "Milho Lar", 0.95, 2, 6, 19, 10),
	(191, "Milho Jurema", 1.89, 2, 6, 19, 15),
	(192, "Oleo de milho Salada", 3.49, 2, 5, 33, 5),
	(193, "Oleo de soja Soya", 2.09, 2, 5, 33, 15),
	(194, "Oleo de soja Sadia", 1.87, 2, 5, 33, 18),
	(195, "Oleo de soja Primor", 1.95, 2, 5, 33, 15),
	(196, "Oleo de soja Big", 1.93, 2, 5, 33, 3),
	(197, "Oleo de soja Liza", 1.99, 2, 5, 33, 4),
	(198, "Sal Diana Fino", 0.75, 2, 2, 1, 2),
	(199, "Sal Cisne", 1.09, 2, 2, 1, 8),
	(200, "Sal Jasmine", 1.55, 2, 2, 1, 4),
	(201, "Sal Big", 0.63, 2, 2, 1, 15),
	(202, "Sal Lebre", 0.65, 2, 2, 1, 11),
	(203, "Sal Zizo", 0.73, 2, 2, 1, 15),
	(204, "Sal Cruzeiro", 0.55, 2, 2, 1, 8),
	(205, "Vinagre Belmont Vinho", 1.35, 2, 5, 32, 14),
	(206, "Vinagre Chemim Branco", 0.89, 2, 5, 33, 1),
	(207, "Vinagre Heining Branco", 0.85, 2, 5, 33, 2),
	(208, "Vinagre Da Ilha Branco", 0.91, 2, 5, 33, 1),
	(209,"Condicionador Seda Selective",6.25,3,5,23,12),
	(210,"Condicionador Palmolive",2.75,3,5,23,0),
	(211, "Condicionador Monange", 4.99, 3, 5, 23, 13),
	(212,"Condicionador Colorama",4.89,3,5,26,15),
	(213,"Desodorante Rexona Spray",2.98,3,5,16,8),
	(214,"Desodorante Dove Aerosol",11.65,3,5,18,1),
	(215, "Desodorante Axe Spray", 3.15, 3, 5, 16, 9),
	(216, "Palito Theoto Cx", 0.59, 2, 4, 17, 0),
	(217, "Palitos Gaboardi Cx", 0.25, 2, 4, 17, 9),
	(218, "Palitos Maua Cx", 0.75, 2, 4, 17, 13),
	(219, "Palitos Gina Cx", 0.35, 2, 4, 17, 8),
	(220, "Papel Higiênico Neve", 3.99, 3, 3, 5, 19),
	(221, "Papel Higiênico Scott", 2.39, 3, 3, 5, 11),
	(222,"Papel Higiênico Personal",2.15,3,3,5,14),
	(223, "Papel Higiênico Mili", 2.39, 3, 3, 5, 5),
	(224, "Papel Higiênico Sirius", 1.19, 3, 3, 5, 15),
	(225, "Papel Higiênico Sublime", 1.67, 3, 3, 5, 1),
	(226,"Papel Higiênico Poupe Mais",1.09,3,3,5,10),
	(227, "Papel Higiênico Paloma", 1.63, 3, 3, 5, 5),
	(228, "Papel Higiênico Sirius", 2.15, 3, 3, 7, 19),
	(229,"Papel Higiênico Personal",2.99,3,3,7,12),
	(230, "Papel Higiênico Paloma", 3.25, 3, 3, 7, 16),
	(231, "Papel Higiênico Scott", 4.89, 3, 3, 7, 8),
	(232,"Pasta de Dente Sorriso",1.48,3,6,16,16),
	(233,"Pasta de Dente Colgate",1.22,3,6,16,11),
	(234, "Pasta de Dente Signal", 1.15, 3, 6, 16, 14),
	(235,"Pasta de Dente Closeup",1.69,3,6,16,14),
	(236, "Sabonete Palmolive", 0.49, 3, 6, 16, 3),
	(237, "Sabonete Phebo", 1.39, 3, 6, 16, 18),
	(238, "Sabonete Lux", 0.69, 3, 6, 16, 7),
	(239, "Sabonete Vinolia", 0.99, 3, 6, 16, 11),
	(240, "Sabonete Dove", 1.65, 3, 6, 17, 1),
	(241, "Sabonete Francis", 0.75, 3, 6, 16, 8),
	(242, "Shampoo Seda Selective", 5.49, 3, 5, 26, 8),
	(243, "Shampoo Seda Lamolina", 5.49, 3, 5, 26, 2),
	(244, "Shampoo Palmolive", 2.75, 3, 5, 26, 13),
	(245, "Shampoo Elseve", 3.49, 3, 5, 20, 0),
	(246, "Shampoo Monange", 4.39, 3, 5, 23, 2),
	(247, "Shampoo Colorama", 4.39, 3, 5, 26, 18),
	(248, "Carne de Boi Alcatra", 9.98, 4, 2, 1, 5),
	(249, "Carne de Boi Costela", 3.99, 4, 2, 1, 13),
	(250, "Carne de Boi Picanha", 17.9, 4, 2, 1, 15),
	(251,"Carne de Boi Coxao Duro",4.99,4,2,1,11),
	(252, "Carne de Boi Coxao Mole", 7.99, 4, 2, 1, 7),
	(253, "Carne de Boi Patinho", 7.58, 4, 2, 1, 16),
	(254, "Frango Macedo Inteiro", 2.49, 4, 2, 1, 4),
	(255,"Frango FrangoBom Inteiro",2.29,4,2,1,6),
	(256,"Frango Agro Veneto Inteiro",2.98,4,2,1,19),
	(257,"Frango (cs) Agro Veneto Coxa/sobrecoxa",4.99,4,2,1,6),
	(258,"Frango (cs) Macedo Coxa/sobrecoxa",4.89,4,2,1,14),
	(259,"Frango (cs) Copacol Coxa/sobrecoxa",3.39,4,2,1,14),
	(260, "Frango (p) Macedo Peito", 5.49, 4, 2, 1, 3),
	(261,"Frango (p) Copacol Peito",3.79,4,2,1,18),
	(262,"Frango (p) TopFrango Peito",3.39,4,2,1,3),
	(263, "Ovos Kasulke Vermelho", 2.35, 7, 4, 9, 12),
	(264, "Ovos Kasulke Branco", 2.25, 7, 4, 9, 0),
	(265, "Ovos Ronchi Vermelho", 1.99, 7, 4, 9, 19),
	(266, "Ovos Barao Vermelho", 2.29, 7, 4, 9, 18),
	(267, "Ovos Friolar Branco", 2.32, 7, 4, 9, 14),
	(268, "Agua Da Guarda Sem Gas", 4.39, 5, 1, 10, 6),
	(269,"Agua Santa Catarina Sem Gas",4.88,5,1,10,7),
	(270,"Agua Imperatriz Sem Gas",4.97,5,1,10,5),
	(271, "Cerveja Antartica", 0.99, 5, 5, 23, 15),
	(272, "Cerveja Schincariol", 0.89, 5, 5, 23, 14),
	(273, "Cerveja Skol", 1.19, 5, 5, 23, 15),
	(274, "Cerveja Brahma", 1.1, 5, 5, 23, 17),
	(275, "Cerveja Kaiser", 0.97, 5, 5, 23, 5),
	(276, "Refrigerante Cocacola", 2.47, 5, 1, 3, 14),
	(277, "Refrigerante Kuat", 1.79, 5, 1, 3, 6),
	(278, "Refrigerante Fanta", 1.89, 5, 1, 3, 16),
	(279,"Refrigerante Guarana Antartica",2.29,5,1,3,0),
	(280, "Refrigerante Thom", 1.49, 5, 1, 3, 15),
	(281, "Refrigerante Thom-Cola", 1.59, 5, 1, 3, 6),
	(282,"Creme de Leite Parmalat",1.87,2,6,21,17),
	(283, "Creme de Leite Nestle", 1.59, 2, 6, 22, 18),
	(284, "Creme de Leite Gloria", 2.08, 2, 6, 22, 8),
	(285, "Creme de Leite Batavo", 1.15, 2, 6, 20, 17),
	(286, "Creme de Leite Itambe", 1.89, 2, 6, 22, 12),
	(287, "Leite Elege Integral", 1.38, 6, 1, 1, 14),
	(288, "Leite Tirol Integral", 1.29, 6, 1, 1, 6),
	(289, "Leite Frimesa Integral", 1.29, 6, 1, 1, 17),
	(290, "Leite Polli Integral", 1.25, 6, 1, 1, 19),
	(291, "Leite Lider Integral", 1.39, 6, 1, 1, 19),
	(292,"Leite Bom Gosto Integral",1.29,6,1,1,2),
	(293, "Leite Aurolat Integral", 1.35, 6, 1, 1, 12),
	(294,"Leite Nutrilat Integral",1.15,6,1,1,16),
	(295,"Leite Cedrense Integral",1.39,6,1,1,15),
	(296, "Leite Condensado Moca", 1.59, 2, 6, 24, 6),
	(297, "Leite Condensado Elege", 1.85, 2, 6, 24, 7),
	(298,"Leite Condensado Parmalat",1.89,2,6,24,0),
	(299,"Leite Condensado Gloria",2.15,2,6,24,10),
	(300,"Leite Condensado Mococa",1.79,2,6,24,11),
	(301,"Leite Condensado Itambe",1.99,2,6,24,16),
	(302,"Leite em po Ninho Integral",4.59,2,6,25,15),
	(303,"Leite em po Itambe Integral",6.18,2,6,25,13),
	(304,"Leite em po Gloria Integral",6.57,2,6,25,8),
	(305,"Leite em po Elege Integral",5.25,2,6,25,2),
	(306,"Leite em po Molico Integral",5.67,2,6,22,18),
	(307, "Margarina Qualy", 2.68, 6, 6, 26, 13),
	(308,"Margarina Becel c/ sal",2.99,6,6,26,14),
	(309, "Margarina Delicata", 1.09, 6, 6, 26, 7),
	(310, "Margarina Delícia", 2.65, 6, 6, 26, 14),
	(311, "Margarina Soya", 0.99, 6, 6, 26, 1),
	(312, "Margarina Primor", 2.48, 6, 6, 26, 8),
	(313, "Margarina Mila", 2.45, 6, 6, 26, 13),
	(314, "Queijo Frimesa Prato", 11.9, 6, 2, 1, 16),
	(315, "Queijo Prove Prato", 11.5, 6, 2, 1, 2),
	(316, "Queijo Cedrense Prato", 13.99, 6, 2, 1, 10),
	(317, "Queijo Tirol Prato", 10.15, 6, 2, 1, 18),
	(318, "Queijo Predileto Prato", 9.85, 6, 2, 1, 14),
	(319, "Queijo Tirolez Prato", 11.4, 6, 2, 1, 13),
	(320,"Queijo Ralado Cedrense Parmesao",0.95,2,6,13,16),
	(321,"Queijo Ralado Parmezao Parmesao",0.99,2,6,13,19),
	(322,"Queijo Ralado Dinamarca",0.79,2,6,13,19),
	(323, "Queijo Ralado Bufalo", 0.85, 2, 6, 13, 13),
	(324,"Queijo Ralado Três Fronteiras",0.59,2,6,13,17),
	(325, "Queijo San Diego Minas", 4.98, 6, 2, 1, 17),
	(326, "Queijo Predileto Minas", 8.89, 6, 2, 1, 3),
	(327,"Queijo Tres Fronteiras Minas",7.65,6,2,1,5),
	(328, "Queijo Cedrense Minas", 9.98, 6, 2, 1, 14),
	(329,"Queijo Tirol Mussarela",10.98,6,2,1,14),
	(330,"Queijo Calcar Mussarela",12.9,6,2,1,18),
	(331,"Queijo Frimesa Mussarela",10.9,6,2,1,7),
	(332,"Queijo Cedrense Mussarela",9.9,6,2,1,18),
	(333, "Requeijao Tirol", 3.49, 6, 6, 20, 19),
	(334, "Requeijao Vigor", 1.79, 6, 6, 19, 0),
	(335, "Requeijao Lider", 2.75, 6, 6, 20, 3),
	(336, "Requeijao Do Vale", 2.62, 6, 6, 20, 19),
	(337, "Requeijao Catupiry", 2.48, 6, 6, 20, 11),
	(338, "Requeijao Frimesa", 1.98, 6, 6, 20, 17),
	(339, "Yogurte Veneza", 2.15, 6, 6, 31, 6),
	(340, "Yogurte Danone", 3.19, 6, 6, 27, 0),
	(341, "Yogurte Parmalat", 2.19, 6, 6, 31, 5),
	(342, "Yogurte Batavo", 2.74, 6, 6, 28, 4),
	(343, "Yogurte Vigor", 2.15, 6, 6, 31, 4),
	(344, "Yogurte DoVale", 2.49, 6, 6, 31, 14),
	(345, "Alho", 1.49, 7, 6, 17, 2),
	(346, "Banana Branca", 2.35, 7, 2, 1, 3),
	(347, "Banana Caturra", 0.79, 7, 2, 1, 13),
	(348, "Batata Escovada Inglesa", 0.79, 7, 2, 1, 3),
	(349, "Batata Lavada Inglesa", 1.27, 7, 2, 1, 11),
	(350, "Beterraba", 1.83, 7, 2, 1, 0),
	(351, "Cebola", 1.79, 7, 2, 1, 1),
	(352, "Cenoura", 0.99, 7, 2, 1, 7),
	(353, "Chuchu", 0.99, 7, 2, 1, 11),
	(354, "Laranja Lima", 1.39, 7, 2, 1, 4),
	(355, "Laranja Pera", 1.09, 7, 2, 1, 3),
	(356, "Limao", 2.25, 7, 2, 1, 5),
	(357, "Maca Gala", 3.42, 7, 2, 1, 16),
	(358, "Mamao Papaya", 1.98, 7, 2, 1, 19),
	(359, "Mamao Papaya", 0.98, 7, 4, 1, 5),
	(360, "Pimentao", 2.69, 7, 2, 1, 12),
	(361, "Repolho", 1.25, 7, 2, 1, 13),
	(362, "Tomate", 2.45, 7, 2, 1, 7);

SELECT
	COUNT(*)
FROM
	segmento;

SELECT
	COUNT(*)
FROM
	volume;

SELECT
	COUNT(*)
FROM
	unidadeDeMedida;

SELECT
	COUNT(*)
FROM
	produto;

-- 1) Quantos produtos pertencem ao segmento de Higiene? 
select
	count(*)
from
	segmento
where
	segmento.descricaoProduto = "Higiene";

-- 2) Quais são os produtos que pertencem ao segmento de Higiene? 
select
	descricaoProduto
from
	produto
	inner join segmento on segmento.idSegmento = produto.idProduto
where
	segmento.descricaoProduto = "Higiene";

-- 3) Quantos produtos são vendidos em Litros? 
select
	count(idProduto)
from
	produto
	inner join unidadeDeMedida on unidadeDeMedida.idUnidadeDeMedida = produto.idProduto
where
	unidadeDeMedida.siglaUnidadeDeMedida = 'lt';

-- 4) Quais os produtos que são vendidos em Litros? 
select
	descricaoProduto
from
	produto
	inner join unidadeDeMedida on unidadeDeMedida.idUnidadeDeMedida = produto.unidadeDeMedida
where
	unidadeDeMedida.siglaUnidadeDeMedida = 'lt'
order by
	produto.descricaoProduto;

-- 5) Quantos produtos existem nos segmentos de Hortifruti e Carnes?
select
	count(produto.idProduto)
from
	produto
	inner join segmento on segmento.idSegmento = produto.segmento
where
	segmento.descricaoProduto = "Hortifruti"
	or segmento.descricaoProduto = "Carnes";

-- 6) Quantos produtos são vendidos em Litros? 
select
	count(produto.idProduto)
from
	produto
	inner join unidadeDeMedida on unidadeDeMedida.idUnidadeDeMedida = produto.unidadeDeMedida
where
	unidadeDeMedida.siglaUnidadeDeMedida = "lt";

-- 7) Quantos produtos são vendidos em Gramas e Kilos? 
select
	count(produto.idProduto)
from
	produto
	inner join unidadeDeMedida on unidadeDeMedida.idUnidadeDeMedida = produto.unidadeDeMedida
where
	unidadeDeMedida.siglaUnidadeDeMedida = "Gr"
	or unidadeDeMedida.siglaUnidadeDeMedida = "Kg";

-- 8) Quais são os produtos vendidos em Gramas e Kilos? 
select
	descricaoProduto
from
	produto
	inner join unidadeDeMedida on unidadeDeMedida.idUnidadeDeMedida = produto.unidadeDeMedida
where
	unidadeDeMedida.siglaUnidadeDeMedida = "Gr"
	or unidadeDeMedida.siglaUnidadeDeMedida = "Kg";

-- 9) Quantos produtos existem no segmento de Mercearia vendidos em gramas? 
select
	count(produto.idProduto)
from
	produto
	inner join segmento on segmento.idSegmento = produto.segmento
	inner join unidadeDeMedida on unidadeDeMedida.idUnidadeDeMedida = produto.unidadeDeMedida
where
	segmento.descricaoSegmento = "Mercearia"
	and unidadeDeMedida.siglaUnidadeDeMedida = "Gr";

-- 10) Quantos produtos existem nos segmentos de Mercearia e Bebidas vendidos em litros? 
select
	count(produto.idProduto)
from
	produto
	inner join segmento on segmento.idSegmento = produto.segmento
	inner join unidadeDeMedida on unidadeDeMedida.idUnidadeDeMedida = produto.unidadeDeMedida
where
	(
		segmento.descricaoSegmento = "Mercearia"
		or segmento.descricaoSegmento = "Bebidas"
	)
	and unidadeDeMedida.siglaUnidadeDeMedida = "Lt";

-- 11) Quais são os produtos existentes nos segmentos de Higiene e Limpeza, vendidos em Rolos e Unidades? 
select
	descricaoSegmento,
	descricaoProduto,
	descricaoUnidadeDeMedida
from
	produto
	inner join segmento on segmento.idSegmento = produto.segmento
	inner join unidadeDeMedida on unidadeDeMedida.idUnidadeDeMedida = produto.unidadeDeMedida
where
	(
		segmento.descricaoSegmento = "Higiene"
		or segmento.descricaoSegmento = "Limpeza"
	)
	and (
		unidadeDeMedida.descricaoUnidadeDeMedida = "Rolos"
		or unidadeDeMedida.descricaoUnidadeDeMedida = "Unidades"
	)
order by
	descricaoUnidadeDeMedida;

-- 12) Quais são os segmentos que possuem produtos vendidos em Gramas? 
select
	descricaoProduto
from
	produto
	inner join segmento on segmento.idSegmento = produto.segmento
	inner join unidadeDeMedida on unidadeDeMedida.idUnidadeDeMedida = produto.unidadeDeMedida
where
	unidadeDeMedida.descricaoUnidadeDeMedida = "Gramas"
order by
	descricaoProduto;

-- 13) Quais são os segmentos que possuem produtos vendidos em 300 Gramas? 
select
	descricaoProduto,
	descricaoSegmento
from
	produto
	inner join segmento on segmento.idSegmento = produto.segmento
	inner join unidadeDeMedida on unidadeDeMedida.idUnidadeDeMedida = produto.unidadeDeMedida
	inner join volume on volume.idVolume = produto.volume
where
	unidadeDeMedida.descricaoUnidadeDeMedida = "Gramas"
	and volume.valorVolume = 300
order by
	descricaoProduto;

-- 14) Quais são os segmentos que possuem produtos vendidos em Gramas? 
select
	descricaoProduto,
	descricaoSegmento
from
	produto
	inner join segmento on segmento.idSegmento = produto.segmento
	inner join unidadeDeMedida on unidadeDeMedida.idUnidadeDeMedida = produto.unidadeDeMedida
where
	unidadeDeMedida.descricaoUnidadeDeMedida = "Gramas"
order by
	unidadeDeMedida.idUnidadeDeMedida;

-- 15) Quantos produtos existem nos segmentos de Limpeza e Higiene juntos? 
select
	count(produto.idProduto)
from
	produto
	inner join segmento on segmento.idSegmento = produto.segmento
where
	segmento.descricaoSegmento = "Limpeza"
	and segmento.descricaoSegmento = "Higiene";

-- 16) Qual a quantidade total de produtos nos segmentos de Higiene, Leite e Carnes? 
select
	count(produto.idProduto)
from
	produto
	inner join segmento on segmento.idSegmento = produto.segmento
where
	segmento.descricaoSegmento = "Higiene"
	or segmento.descricaoSegmento = "Leite"
	or segmento.descricaoSegmento = "Carnes";

-- 17) Exiba o nome, o preço do produto e o segmento de todos os produtos pertencentes ao segmento de Mercearia; 
select
	descricaoProduto,
	valorUnitario,
	descricaoSegmento
from
	produto
	inner join segmento on segmento.idSegmento = produto.segmento
where
	segmento.descricaoSegmento = "Mercearia"
order by
	valorUnitario;

-- 18)  Exiba o nome, o preço do produto e o segmento de todos os produtos pertencentes ao segmento de Mercearia e Limpeza; 
select
	descricaoProduto,
	valorUnitario,
	descricaoSegmento
from
	produto
	inner join segmento on segmento.idSegmento = produto.segmento
where
	segmento.descricaoSegmento = "Mercearia"
	or segmento.descricaoSegmento = "Limpeza"
order by
	valorUnitario;

-- 19) Qual o preço médio dos produtos do segmento de Bebidas vendidos em Litros? Exiba somente o preço médio do produto. 
select
	avg(valorUnitario)
from
	produto
	inner join segmento on segmento.idSegmento = produto.segmento
where
	segmento.descricaoSegmento = "Bebidas";

-- 20) Qual o preço do produto mais caro do segmento de Limpeza? Exiba somente o preço do produto. 
select
	max(valorUnitario)
from
	produto
	inner join segmento on segmento.idSegmento = produto.segmento
where
	segmento.descricaoSegmento = "Limpeza";

-- 21) Exiba o nome do produto, o preço e o segmento do produto mais caro do segmento de Higiene vendido em Mililitros. 
select
	descricaoProduto,
	valorUnitario,
	descricaoSegmento
from
	produto
	inner join segmento on idSegmento = segmento
	inner join unidadeDeMedida on idUnidadeDeMedida = unidadeDeMedida
where
	valorUnitario = (
		select
			max(valorUnitario)
		from
			produto
			inner join segmento on idSegmento = segmento
			inner join unidadeDeMedida on idUnidadeDeMedida = unidadeDeMedida
		where
			segmento.descricaoSegmento = "Higiene"
			and descricaoUnidadeDeMedida = "Mililitros"
	)
	and segmento.descricaoSegmento = "Higiene"
	and descricaoUnidadeDeMedida = "Mililitros";

-- 22) Quais os produtos do segmento de Higiene que precisam ser comprados? Ou seja, quais os produtos do segmento de Higiene apenas, 
-- cuja quantidade seja inferior a 15; 
-- Quais os produtos que a qunatidade é inferior a 15 oq? 
select
	descricaoProduto,
	valorVolume
from
	produto
	inner join segmento on segmento.idSegmento = produto.segmento
	inner join volume on volume.idVolume = produto.volume
where
	valorVolume < 15
	and segmento.descricaoSegmento = "Higiene";

-- 23) Qual o preço do produto mais caro do segmento de Limpeza? 
select
	descricaoProduto,
	valorUnitario
from
	produto
	inner join segmento on idSegmento = segmento
where
	valorUnitario = (
		select
			max(valorUnitario)
		from
			produto
			inner join segmento on idSegmento = segmento
			inner join unidadeDeMedida on idUnidadeDeMedida = unidadeDeMedida
		where
			segmento.descricaoSegmento = "Limpeza"
	)
	and segmento.descricaoSegmento = "Limpeza";

-- 24) Qual o preço do produto mais barato do segmento de Higiene? 
select
	descricaoProduto,
	valorUnitario
from
	produto
	inner join segmento on idSegmento = segmento
where
	valorUnitario = (
		select
			min(valorUnitario)
		from
			produto
			inner join segmento on idSegmento = segmento
			inner join unidadeDeMedida on idUnidadeDeMedida = unidadeDeMedida
		where
			segmento.descricaoSegmento = "Higiene"
	)
	and segmento.descricaoSegmento = "Higiene";

-- 25) Qual o preço do produto mais caro do segmento de Limpeza vendido em 
-- Litros? 
select
	descricaoProduto,
	valorUnitario,
	descricaoSegmento
from
	produto
	inner join segmento on idSegmento = segmento
	inner join unidadeDeMedida on idUnidadeDeMedida = unidadeDeMedida
where
	valorUnitario = (
		select
			max(valorUnitario)
		from
			produto
			inner join segmento on idSegmento = segmento
			inner join unidadeDeMedida on idUnidadeDeMedida = unidadeDeMedida
		where
			segmento.descricaoSegmento = "Limpeza"
			and descricaoUnidadeDeMedida = "Litros"
	)
	and segmento.descricaoSegmento = "Limpeza"
	and descricaoUnidadeDeMedida = "Litros";

-- 26) Qual o preço do produto mais caro vendido em Gramas? 
select
	descricaoProduto,
	valorUnitario
from
	produto
	inner join unidadeDeMedida on idUnidadeDeMedida = unidadeDeMedida
where
	descricaoUnidadeDeMedida = "Gramas"
	and valorUnitario = (
		select
			max(valorUnitario)
		from
			produto
			inner join unidadeDeMedida on idUnidadeDeMedida = unidadeDeMedida
		where
			descricaoUnidadeDeMedida = "Gramas"
	);

-- 27) Qual o preço do produto mais barato vendido em 2 litros? 
select
	descricaoProduto,
	valorUnitario
from
	produto
	inner join unidadeDeMedida on idUnidadeDeMedida = produto.unidadeDeMedida
	inner join volume on volume.idVolume = produto.volume
where
	descricaoUnidadeDeMedida = "litros"
	and valorVolume = 2
	and valorUnitario = (
		select
			min(valorUnitario)
		from
			produto
			inner join unidadeDeMedida on idUnidadeDeMedida = unidadeDeMedida
			inner join volume on volume.idVolume = produto.volume
		where
			descricaoUnidadeDeMedida = "litros"
			and valorVolume = 2
	);

-- 28) Qual a média de preços dos produtos do segmento de Limpeza vendido 
-- em Litros? 
select
	avg(valorUnitario)
from
	produto
	inner join segmento on idSegmento = segmento
	inner join unidadeDeMedida on idUnidadeDeMedida = unidadeDeMedida
where
	descricaoSegmento = "Limpeza"
	and descricaoUnidadeDeMedida = "Litros";

-- 29) Qual a média de preços dos produtos do segmento de Limpeza e Higiene 
-- e Mercearia, vendido em Litros? 
select
	avg(valorUnitario)
from
	produto
	inner join segmento on idSegmento = segmento
	inner join unidadeDeMedida on idUnidadeDeMedida = unidadeDeMedida
where
	(
		descricaoSegmento = "Limpeza"
		or descricaoSegmento = "Higiene"
		or descricaoSegmento = "Mercearia"
	)
	and descricaoUnidadeDeMedida = "Litros";

-- 30) Qual a quantidade de produtos existentes no segmento de Hortifruti? 
select
	count(idProduto)
from
	produto
	inner join segmento on idSegmento = segmento
where
	descricaoSegmento = "Hortifruti";

-- 31) Qual a quantidade de produtos vendidos em Gramas, Kilos, Litros e 
-- Unidades? 
select
	count(idProduto)
from
	produto
	inner join unidadeDeMedida on idUnidadeDeMedida = unidadeDeMedida
where
	descricaoUnidadeDeMedida = "Gramas"
	or descricaoUnidadeDeMedida = "Kilos"
	or descricaoUnidadeDeMedida = "Litros"
	or descricaoUnidadeDeMedida = "Unidades";

-- 32) Qual a quantidade de produtos vendidos em 100, 200, 300 e 400 Gramas? 
select
	count(idProduto)
from
	produto
	inner join unidadeDeMedida on idUnidadeDeMedida = unidadeDeMedida
	inner join volume on idVolume = volume
where
	descricaoUnidadeDeMedida = "Gramas"
	and (
		valorVolume = 100
		or valorVolume = 200
		or valorVolume = 300
		or valorVolume = 400
	);

-- 33) Qual o preço médio dos produtos do segmento de Higiene, Limpeza e 
-- Bebidas, vendidos em 1 Litro? 
select
	avg(valorUnitario)
from
	produto
	inner join segmento on idSegmento = segmento
	inner join unidadeDeMedida on idUnidadeDeMedida = unidadeDeMedida
	inner join volume on idVolume = volume
where
	(
		descricaoSegmento = "Limpeza"
		or descricaoSegmento = "Higiene"
		or descricaoSegmento = "Bebidas"
	)
	and descricaoUnidadeDeMedida = "Litros"
	and valorVolume = 1;

-- 34) Qual o preço do produtos mais caro do segmento de Limpeza vendido 
-- em Litros? 
select
	max(valorUnitario)
from
	produto
	inner join segmento on idSegmento = segmento
	inner join unidadeDeMedida on idUnidadeDeMedida = unidadeDeMedida
where
	descricaoSegmento = "Limpeza"
	and descricaoUnidadeDeMedida = "Litros";

-- 35) Qual o preço do produto mais barato do segmento de Higiene vendido 
-- em rolos? 
select
	min(valorUnitario)
from
	produto
	inner join segmento on idSegmento = segmento
	inner join unidadeDeMedida on idUnidadeDeMedida = unidadeDeMedida
where
	descricaoSegmento = "Higiene"
	and descricaoUnidadeDeMedida = "rolos";

-- 36) Quais são os produtos vendidos em Litros e Mililitros? 
select
	descricaoProduto,
	descricaoUnidadeDeMedida
from
	produto
	inner join unidadeDeMedida on idUnidadeDeMedida = unidadeDeMedida
where
	descricaoUnidadeDeMedida = "litros"
	or descricaoUnidadeDeMedida = "Mililitros"
order by
	descricaoUnidadeDeMedida;

-- 37) Quantos são os produtos vendidos em Litros e Mililitros pertencentes ao 
-- segmento de Limpeza? 
select
	count(idProduto)
from
	produto
	inner join unidadeDeMedida on idUnidadeDeMedida = unidadeDeMedida
	inner join segmento on idSegmento = segmento
where
	(
		descricaoUnidadeDeMedida = "litros"
		or descricaoUnidadeDeMedida = "Mililitros"
	)
	and descricaoSegmento = "Limpeza"
order by
	descricaoUnidadeDeMedida;

-- 38) Quais são os produtos vendidos em 1, 2, 3, e 5 Litros e 200, 300 e 500 
-- Mililitros? 
select
	descricaoProduto,
	descricaoUnidadeDeMedida,
	valorVolume
from
	produto
	inner join unidadeDeMedida on idUnidadeDeMedida = unidadeDeMedida
	inner join volume on idVolume = volume
where
	(
		(
			valorVolume = 1
			or valorVolume = 2
			or valorVolume = 3
			or valorVolume = 5
		)
		and descricaoUnidadeDeMedida = "Litros"
	)
	or (
		(
			valorVolume = 200
			or valorVolume = 300
			or valorVolume = 500
		)
		and descricaoUnidadeDeMedida = "Mililitros"
	)
order by
	valorVolume;

-- 39) Exiba o preço do produto mais caro e do mais barato pertencente do 
-- segmento de Limpeza? 
select
	max(valorUnitario) as "Maior Valor",
	min(valorUnitario) as "Menor valor"
from
	produto
	inner join segmento on idSegmento = segmento
where
	descricaoSegmento = "Limpeza";

-- 40) Quantos produtos existem no segmento de Hortifruti e Carnes?
select
	count(idProduto)
from
	produto
	inner join segmento on idSegmento = segmento
where
	descricaoSegmento = "Hortifruti"
	or descricaoSegmento = "Carnes";