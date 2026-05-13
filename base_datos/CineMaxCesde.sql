CREATE DATABASE CineMaxCesde;
USE CineMaxCesde;

SELECT table_name 
FROM information_schema.tables;

TRUNCATE TABLE Categorias; 
TRUNCATE TABLE Peliculas; 
TRUNCATE TABLE sysdiagrams; 

DROP TABLE Categorias; 
DROP TABLE Peliculas; 
DROP TABLE sysdiagrams; 

CREATE TABLE Categorias (
	Id INT IDENTITY(1,1) PRIMARY KEY,
	Nombre VARCHAR(20) NOT NULL,
	Descripcion VARCHAR(250) NOT NULL
);

INSERT INTO Categorias (Nombre, Descripcion) 
VALUES 
('Terror', 'Contiene escenas de violencia'),
('Acción', 'Secuencias de lucha, persecuciones y ritmo frenético'),
('Comedia', 'Contenido diseñado para el humor y la risa'),
('Drama', 'Historias centradas en el desarrollo emocional y conflictos serios'),
('Ciencia', 'Relatos sobre tecnología futura, espacio o conceptos científicos'),
('Fantasía', 'Mundos imaginarios con magia y elementos mitológicos'),
('Documental', 'Hechos reales con fines informativos o educativos'),
('Suspenso', 'Tensión constante y giros inesperados en la trama'),
('Animación', 'Contenido creado mediante técnicas de dibujo o CGI'),
('Romance', 'Historias enfocadas en relaciones amorosas y sentimientos'),
('Musical', 'La narrativa se apoya significativamente en canciones y baile'),
('Aventura', 'Viajes heroicos y exploración de nuevos entornos'),
('Misterio', 'Tramas que giran en torno a la resolución de un enigma o crimen'),
('Histórico', 'Basado en eventos, épocas o personajes de la vida real'),
('Bélico', 'Centrado en conflictos armados y contextos de guerra'),
('Western', 'Historias ambientadas en el viejo oeste estadounidense'),
('Deportes', 'Relatos sobre competiciones atléticas y espíritu deportivo'),
('Infantil', 'Contenido apto y diseñado para todas las edades'),
('Biográfico', 'Narra la vida de una persona real relevante'),
('Crimen', 'Historias sobre actividades delictivas y el sistema judicial');

SELECT *
FROM Categorias;

CREATE TABLE Peliculas (
	Id INT IDENTITY(1,1) PRIMARY KEY,
	Nombre VARCHAR(100) NOT NULL,
	TiempoMinutos INT,
	Precio DECIMAL (6, 2),
	UltimaFuncion DATE,
	CategoriasId INT,
	CONSTRAINT FK_Peliculas_Categorias FOREIGN KEY (CategoriasId)
		REFERENCES Categorias(Id)
);

ALTER TABLE Peliculas
ALTER COLUMN Precio DECIMAL(10, 2);

INSERT INTO Peliculas (Nombre, TiempoMinutos, Precio, UltimaFuncion, CategoriasId)
VALUES 
('El Conjuro', 120, 12500.00, '2026-04-29', 1),
('Rápidos y Furiosos 10', 141, 15000.00, '2026-05-01', 2),
('Interestelar', 169, 18000.00, '2026-03-15', 4),
('Toy Story 4', 100, 11000.00, '2026-05-10', 8),
('John Wick 4', 169, 16500.00, '2026-04-20', 2),
('Parasite', 132, 14000.00, '2026-02-10', 3),
('Batman: El Caballero de la Noche', 152, 17000.00, '2026-01-25', 2),
('Avatar: El Camino del Agua', 192, 20000.00, '2026-05-05', 4),
('Spider-Man: Across the Spider-Verse', 140, 15500.00, '2026-05-08', 8),
('El Padrino', 175, 19000.00, '2026-04-12', 3),
('Super Mario Bros. La Película', 92, 12000.00, '2026-05-11', 8),
('Inception', 148, 16000.00, '2026-03-22', 4),
('Pulp Fiction', 154, 13500.00, '2026-04-05', 19),
('Gladiador', 155, 14500.00, '2026-02-28', 13),
('La La Land', 128, 12500.00, '2026-05-02', 10),
('El Resplandor', 146, 13000.00, '2026-04-30', 1),
('Duna: Parte 2', 166, 19500.00, '2026-05-12', 4),
('Shrek 2', 93, 10500.00, '2026-04-18', 8),
('Matrix', 136, 14000.00, '2026-03-01', 4),
('El Rey León', 88, 11000.00, '2026-05-09', 8),
('Bastardos Sin Gloria', 153, 15000.00, '2026-04-14', 14),
('Joker', 122, 14500.00, '2026-03-30', 3),
('Coco', 105, 12000.00, '2026-05-07', 8),
('Whiplash', 106, 13500.00, '2026-04-22', 3),
('El Lobo de Wall Street', 180, 16000.00, '2026-02-15', 18),
('Up', 96, 11500.00, '2026-04-10', 8),
('Se7en', 127, 13000.00, '2026-03-05', 12),
('Titanic', 194, 15500.00, '2026-02-14', 9),
('Terminator 2', 137, 12000.00, '2026-01-20', 4),
('Ratatouille', 111, 11000.00, '2026-05-06', 8),
('La Lista de Schindler', 195, 18500.00, '2026-01-10', 13),
('Fragmentado', 117, 12500.00, '2026-04-11', 7),
('El Gran Truco', 130, 14000.00, '2026-03-12', 12),
('Misión Imposible: Sentencia Mortal', 163, 17500.00, '2026-05-03', 2),
('Buscando a Nemo', 100, 10500.00, '2026-04-25', 8),
('Hereditary', 127, 14000.00, '2026-04-28', 1),
('Top Gun: Maverick', 130, 16000.00, '2026-05-04', 2),
('Green Book', 130, 13500.00, '2026-03-20', 18),
('Mad Max: Furia en el Camino', 120, 15000.00, '2026-02-18', 2),
('El Pianista', 150, 14000.00, '2026-01-05', 13),
('Soul', 100, 13000.00, '2026-05-01', 8),
('Sing 2', 110, 11500.00, '2026-04-15', 8),
('Sin Novedad en el Frente', 147, 14500.00, '2026-03-10', 14),
('Everything Everywhere All at Once', 139, 16000.00, '2026-04-01', 4),
('Dunkerque', 106, 15500.00, '2026-02-05', 14),
('Your Name', 106, 12000.00, '2026-03-25', 8),
('Alien, el octavo pasajero', 117, 13000.00, '2026-04-19', 4),
('Blade Runner 2049', 164, 17000.00, '2026-01-30', 4),
('Logan', 137, 14500.00, '2026-02-25', 2),
('Django Sin Cadenas', 165, 15500.00, '2026-03-18', 15),
('Un Lugar en Silencio', 90, 12500.00, '2026-05-02', 7),
('El Exorcista', 122, 11000.00, '2026-04-30', 1),
('Minions: El Origen de Gru', 87, 10000.00, '2026-05-12', 8),
('Bohemian Rhapsody', 134, 15000.00, '2026-03-14', 10),
('A Quiet Place Part II', 97, 13000.00, '2026-05-03', 7),
('Midsommar', 148, 14000.00, '2026-04-20', 1),
('Knives Out', 130, 13500.00, '2026-03-10', 12),
('The Irishman', 209, 18000.00, '2026-01-15', 19),
('Black Panther: Wakanda Forever', 161, 16500.00, '2026-04-05', 2),
('1917', 119, 15500.00, '2026-02-12', 14),
('JoJo Rabbit', 108, 12000.00, '2026-03-08', 2),
('The Whale', 117, 14500.00, '2026-04-12', 3),
('Babylon', 189, 16000.00, '2026-02-20', 3),
('The Batman', 176, 17500.00, '2026-03-15', 2),
('Bullet Train', 127, 14000.00, '2026-04-25', 2),
('Glass Onion', 140, 15000.00, '2026-03-05', 12),
('Enola Holmes', 123, 11500.00, '2026-04-10', 11),
('Ford v Ferrari', 152, 14500.00, '2026-01-28', 16),
('Sonic 2', 122, 11000.00, '2026-05-11', 8),
('Gran Turismo', 134, 14000.00, '2026-05-09', 16),
('Oppenheimer', 180, 21000.00, '2026-05-13', 13),
('Barbie', 114, 15500.00, '2026-05-13', 2),
('Killers of the Flower Moon', 206, 19000.00, '2026-03-01', 19),
('Napoleon', 158, 17000.00, '2026-02-14', 13),
('Wonka', 116, 13500.00, '2026-04-15', 5),
('Pobres Criaturas', 141, 16500.00, '2026-04-08', 5),
('Society of the Snow', 144, 14000.00, '2026-01-20', 3),
('The Creator', 133, 15500.00, '2026-02-28', 4),
('Elemental', 101, 12500.00, '2026-05-04', 8),
('The Marvels', 105, 14000.00, '2026-04-02', 2),
('Aquaman and the Lost Kingdom', 124, 15000.00, '2026-04-22', 2),
('Indiana Jones 5', 154, 16500.00, '2026-03-12', 11),
('Blue Beetle', 127, 13500.00, '2026-04-05', 2),
('Migration', 83, 10500.00, '2026-05-10', 8),
('Wish', 95, 11000.00, '2026-05-01', 8),
('Ferrari', 130, 14500.00, '2026-02-10', 18),
('Priscilla', 113, 13000.00, '2026-03-22', 18),
('The Holdovers', 133, 14000.00, '2026-04-14', 3),
('Anyone But You', 103, 12500.00, '2026-05-06', 9),
('Argylle', 139, 15000.00, '2026-04-28', 2),
('Kung Fu Panda 4', 94, 12000.00, '2026-05-12', 8),
('Dune', 155, 17000.00, '2026-01-05', 4),
('Godzilla x Kong', 115, 15500.00, '2026-05-07', 2),
('Civil War', 109, 14500.00, '2026-05-02', 2),
('Back to Black', 122, 13500.00, '2026-04-18', 18),
('Challengers', 131, 14000.00, '2026-05-09', 3),
('The Fall Guy', 126, 15000.00, '2026-05-11', 2),
('Kingdom of the Planet of the Apes', 145, 16500.00, '2026-05-13', 4),
('Inside Out 2', 100, 13000.00, '2026-05-13', 8),
('Deadpool & Wolverine', 127, 17500.00, '2026-05-13', 2);

SELECT *
FROM Peliculas;

-- QUE PELICULAS DE TERROR SE PRESENTAN EL 30 DE ABRIL UNA ULTIMA VEZ
SELECT 
	pe.Nombre, 
	pe.TiempoMinutos, 
	pe.Precio, 
	pe.UltimaFuncion, 
	ca.Nombre, 
	ca.Descripcion
FROM Peliculas AS pe
LEFT JOIN Categorias AS ca
	ON pe.CategoriasId = ca.id
WHERE ca.Nombre = 'Terror' AND ( MONTH(UltimaFuncion) = 4 AND  DAY(UltimaFuncion) = 30  ); 

SELECT 
	COUNT(*) AS TotalPeliculas 
FROM Peliculas;

SELECT 
	AVG(Precio) AS PrecioPromedio 
FROM Peliculas;

SELECT 
	MAX(TiempoMinutos) AS DuracionMaxima 
FROM Peliculas;

SELECT 
	SUM(Precio) AS ValorTotalCatalogo 
FROM Peliculas;

SELECT 
	ca.Nombre, 
	COUNT(*) AS Cantidad
FROM Peliculas as pe
INNER JOIN Categorias as ca
	ON pe.CategoriasId = ca.id
GROUP BY ca.Nombre
ORDER BY Cantidad DESC;


SELECT 
	ca.Nombre,
	COUNT(*) AS Total
FROM Peliculas AS pe
INNER JOIN Categorias as ca
	ON pe.CategoriasId = ca.id
GROUP BY ca.Nombre
HAVING COUNT(*) > 5
ORDER BY Total DESC;

SELECT 
    ct.Nombre AS Categoria, 
    AVG(pl.Precio) AS PrecioPromedio,
    COUNT(pl.Id) AS NumeroDePeliculas
FROM Peliculas AS pl
INNER JOIN Categorias AS ct 
	ON pl.CategoriasId = ct.Id
GROUP BY ct.Nombre
HAVING AVG(pl.TiempoMinutos) > 100;


--DDL (Data Definition Language) [CREATE, ALTER, DROP, TRUNCATE]
--DML (Data Manipulation Language) [SELECT, INSERT, UPDATE, DELETE]
--DCL (Data Control Language) [GRANT, REVOKE]

DECLARE @I INT
SET @I = 1;

WHILE @I <= 10
BEGIN
	IF @I % 2 <> 0
	BEGIN
		PRINT @I
	END

	SET @I += 1
END


DECLARE @I INT
SET @I = 1;

WHILE @I <= 10
BEGIN
	IF @I % 2 = 0
	BEGIN
		PRINT @I
	END

	SET @I += 1
END

ALTER TABLE Peliculas
ADD TiempoMinutos INT;

ALTER TABLE Peliculas
ADD
Nombre VARCHAR(100);

ALTER TABLE Peliculas
ADD 
Precio DECIMAL,
UltimaFuncion DATE;

ALTER TABLE nombre_tabla
ALTER COLUMN Precio DECIMAL(6, 2);

ALTER TABLE nombre_tabla
DROP COLUMN columna_a_eliminar;

ALTER TABLE nombre_tabla
ADD CONSTRAINT nombre_restriccion UNIQUE (columna);

ALTER TABLE Pedidos
ADD CONSTRAINT FK_ClientePedido
FOREIGN KEY (ClienteID) REFERENCES Clientes(ID);