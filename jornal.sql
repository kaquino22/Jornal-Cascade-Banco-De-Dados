CREATE DATABASE jornal;
USE jornal;

CREATE TABLE categoria (
IdCategoria int PRIMARY KEY auto_increment,
Categoria varchar(255)
);

CREATE TABLE turma (
IdTurma int PRIMARY KEY auto_increment,
Turma varchar(5)
);

CREATE TABLE dia (
Dia int PRIMARY KEY
);

CREATE TABLE mes (
Mes int PRIMARY KEY
);

CREATE TABLE ano (
Ano int PRIMARY KEY
);

CREATE TABLE redator (
IdRedator int PRIMARY KEY auto_increment,
Nome varchar(255),
Sobrenome varchar(255),
Email varchar(50),
ddd int,
Telefone varchar(15),
Cidade varchar(255),
IdTurma int,
Dia int,
Mes int,
Ano int,

FOREIGN KEY(IdTurma) REFERENCES turma (IdTurma) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY(Dia) REFERENCES dia (Dia) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY(Mes) REFERENCES mes (Mes) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY(Ano) REFERENCES ano (Ano) ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE noticia (
IdNoticia int PRIMARY KEY auto_increment,
Noticia text(10000),
Titulo varchar(255),
IdRedator int,
Idcategoria int,
Dia int,
Mes int,
Ano int,

FOREIGN KEY(IdRedator) REFERENCES redator (IdRedator) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY(Idcategoria) REFERENCES categoria (IdCategoria) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY(Dia) REFERENCES dia (Dia) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY(Mes) REFERENCES mes (Mes) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY(Ano) REFERENCES ano (Ano) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO `categoria`(`Categoria`) VALUES 
('Ciências'),
('Educação'),
('Ecônomia'),
('Saúde'),
('Tecnologia'),
('Sociologia'),
('Filosofia'),
('História'),
('Politica');

INSERT INTO `dia` VALUES 
(1), (2), (3), (4), (5), (6), (7), (8), (9), (10),
(11), (12), (13), (14), (15), (16), (17), (18), (19), (20),
(21), (22), (23), (24), (25), (26), (27), (28), (29), (30),
(31);

INSERT INTO `mes` VALUES 
(1), (2), (3), (4), (5), (6), (7), (8), (9), (10), (11), (12);

INSERT INTO `ano` VALUES 
(1950), (1951), (1952), (1953), (1954), (1955), (1956), (1957), (1958), (1959),
(1960), (1961), (1962), (1963), (1964), (1965), (1966), (1967), (1968), (1969),
(1970), (1971), (1972), (1973), (1974), (1975), (1976), (1977), (1978), (1979),
(1980), (1981), (1982), (1983), (1984), (1985), (1986), (1987), (1988), (1989),
(1990), (1991), (1992), (1993), (1994), (1995), (1996), (1997), (1998), (1999),
(2000), (2001), (2002), (2003), (2004), (2005), (2006), (2007), (2008), (2009),
(2010), (2011), (2012), (2013), (2014), (2015), (2016), (2017), (2018), (2019),
(2020), (2021), (2022), (2023), (2024), (2025), (2026), (2027), (2028), (2029),
(2030);

INSERT INTO `turma`(`Turma`) VALUES 
('1C'),
('2C'),
('3C'),
('1A'),
('2A'),
('3A'),
('1B'),
('2B'),
('3B'),
('1F'),
('2F'),
('3F');

INSERT INTO `redator`(`Nome`,`Sobrenome`,`Email`,`ddd`,`Telefone`,`Cidade`,`IdTurma`,`Dia`,`Mes`,`Ano`) VALUES
('Jorge', 'Santana', 'jorge@gmail.com', '11', '999992222','São Paulo', '2','30','10','1990'),
('Irineu', 'Evangelista', 'irineu@gmail.com', '44', '999992222','Ribeirão Preto', '2','04','03','2010'),
('Maicon', 'Goouge', 'maicon@gmail.com', '32', '999412222','Ribeirão Pires', '3','23','10','2020'),
('Douglas', 'Hunter', 'douglas@gmail.com', '64', '9321992222','Berrini', '3','14','06','1993'),
('Vagner', 'Com V', 'vagner@gmail.com', '11', '9992452222','São Paulo', '4','20','10','2015'),
('Jennifer', 'Lopes', 'jennifer@gmail.com', '11', '9999422222','São Paulo', '4','15','03','2001'),
('Marta', 'Anor', 'marta@gmail.com', '11', '999992222','São Paulo', '5','10','03','1990'),
('Maria', 'José', 'maria@gmail.com', '11', '999992222','São Paulo', '6','18','04','1990'),
('Joaquina', 'Felix', 'joaquina@gmail.com', '11', '999992222','São Paulo', '7','01','02','2018');
