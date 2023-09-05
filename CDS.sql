-- CRIAÇÃO DE DATABASE
CREATE DATABASE MUSIC_CDS

USE MUSIC_CDS

DROP DATABASE MUSIC_CDS

-- CRIAÇÃO DA TABELA CDS
CREATE TABLE CDS
(
Cod_CD int identity NOT NULL,
Nome_CD varchar(100) NOT NULL,
DataCompra datetime NOT NULL DEFAULT (getdate()), 
ValorPago float NOT NULL,
LocalCompra varchar(20) NOT NULL,
Album varchar(3) NOT NULL,
primary key (COD_CD) 
)

-- INSERT CDS
INSERT INTO CDS (Nome_CD, ValorPago, LocalCompra, Album)
VALUES	('Thriller', 25.0, 'Amazon', 'SIM'),
		('Back in Black', 20.0, 'eBay', 'SIM'),
		('Nevermind', 15.0, 'Walmart', 'SIM'),
		('The Dark Side of the Moon', 18.0, 'Target', 'SIM'),
		('Rumours', 12.0, 'Best Buy', 'SIM'),
		('Single de José Pedro', 2.50, 'iTunes', 'NÃO');

-- SELECT CDS
SELECT * FROM CDS
Select Nome_CD,DataCompra from CDS ORDER BY Nome_CD
Select Nome_CD,DataCompra from CDS ORDER BY DataCompra desc
Select Nome_CD,DataCompra,ValorPago from CDS ORDER BY ValorPago desc
Select SUM(ValorPago) AS total_gasto FROM CDS
Select Nome_CD FROM CDS WHERE LocalCompra = 'iTunes' --Não coloquei a loja submarino
SELECT * FROM CDS WHERE Album = 'SIM';
select avg(ValorPago) as média_de_preços from CDS	


-- CRIAÇÃO DA TABELA MUSICAS
CREATE TABLE Musicas (
Cod_CD int NOT NULL,
Numero_musica INT NOT NULL,
Nome_musica VARCHAR(100),
Artista VARCHAR(100),
Tempo TIME,
FOREIGN KEY (Cod_CD) REFERENCES CDS(Cod_CD)
)

-- INSERT MUSICAS
INSERT INTO Musicas (Cod_CD, Numero_musica, Nome_musica, Artista, Tempo)
VALUES (1, 1, 'Wanna Be Startin'' Somethin''', 'Michael Jackson', '06:03'),
(1, 2, 'Baby Be Mine', 'Michael Jackson', '04:20'),
(1, 3, 'The Girl Is Mine', 'Michael Jackson', '03:41'),
(1, 4, 'Thriller', 'Michael Jackson', '05:57'),
(1, 5, 'Beat It', 'Michael Jackson', '04:18'),
(1, 6, 'Billie Jean', 'Michael Jackson', '04:53'),
(1, 7, 'Human Nature', 'Michael Jackson', '04:06'),
(1, 8, 'P.Y.T. (Pretty Young Thing)', 'Michael Jackson', '03:58'),
(1, 9, 'The Lady in My Life', 'Michael Jackson', '04:59'),
(2, 1, 'Hells Bells', 'AC/DC', '05:12'),
(2, 2, 'Shoot to Thrill', 'AC/DC', '05:17'),
(2, 3, 'What Do You Do for Money Honey', 'AC/DC', '03:36'),
(2, 4, 'Givin the Dog a Bone', 'AC/DC', '03:32'),
(2, 5, 'Let Me Put My Love into You', 'AC/DC', '04:16'),
(2, 6, 'Back in Black', 'AC/DC', '04:15'),
(2, 7, 'You Shook Me All Night Long', 'AC/DC', '03:30'),
(2, 8, 'Have a Drink on Me', 'AC/DC', '03:57'),
(2, 9, 'Shake a Leg', 'AC/DC', '04:05'),
(2, 10, 'Rock and Roll Ain''t Noise Pollution', 'AC/DC', '04:16'),
(3, 1, 'Smells Like Teen Spirit', 'Nirvana', '05:01'),
(3, 2, 'In Bloom', 'Nirvana', '04:14'),
(3, 3, 'Come as You Are', 'Nirvana', '03:39'),
(3, 4, 'Breed', 'Nirvana', '03:03'),
(3, 5, 'Lithium', 'Nirvana', '04:17'),
(3, 6, 'Polly', 'Nirvana', '02:56'),
(3, 7, 'Territorial Pissings', 'Nirvana', '02:23'),
(3, 8, 'Drain You', 'Nirvana', '03:44'),
(3, 9, 'Lounge Act', 'Nirvana', '02:37'),
(3, 10, 'Stay Away', 'Nirvana', '03:32'),
(3, 11, 'On a Plain', 'Nirvana', '03:17'),
(3, 12, 'Something in the Way', 'Nirvana', '03:52'),
(4, 1, 'Bohemian Rhapsody', 'Queen', '05:55'),
(4, 2, 'Another One Bites the Dust', 'Queen', '03:36'),
(4, 3, 'Killer Queen', 'Queen', '03:01'),
(4, 4, 'Fat Bottomed Girls', 'Queen', '04:16'),
(4, 5, 'Bicycle Race', 'Queen', '03:01'),
(4, 6, 'You''re My Best Friend', 'Queen', '02:50'),
(4, 7, 'Don''t Stop Me Now', 'Queen', '03:30'),
(4, 8, 'Save Me', 'Queen', '03:48'),
(4, 9, 'Crazy Little Thing Called Love', 'Queen', '02:43'),
(4, 10, 'Somebody to Love', 'Queen', '04:58'),
(4, 11, 'Now I''m Here', 'Queen', '04:10'),
(4, 12, 'Good Old-Fashioned Lover Boy', 'Queen', '02:53'),
(4, 13, 'Play the Game', 'Queen', '03:33'),
(4, 14, 'Flash', 'Queen', '02:48'),
(4, 15, 'Seven Seas of Rhye', 'Queen', '02:47'),
(5, 1, 'Stairway to Heaven', 'Led Zeppelin', '08:02'),
(5, 2, 'Black Dog', 'Led Zeppelin', '04:54'),
(5, 3, 'Rock and Roll', 'Led Zeppelin', '03:41'),
(5, 4, 'The Battle of Evermore', 'Led Zeppelin', '05:52'),
(5, 5, 'Misty Mountain Hop', 'Led Zeppelin', '04:38'),
(5, 6, 'Four Sticks', 'Led Zeppelin', '04:45'),
(5, 7, 'Going to California', 'Led Zeppelin', '03:31'),
(5, 8, 'When the Levee Breaks', 'Led Zeppelin', '07:08'),
(5, 9, 'The Song Remains the Same', 'Led Zeppelin', '05:30'),
(5, 10, 'No Quarter', 'Led Zeppelin', '07:00'),
(5, 11, 'The Rain Song', 'Led Zeppelin', '07:39'),
(5, 12, 'Stairway to Heaven (Live at the Earls Court May 25, 1975)', 'Led Zeppelin', '10:52'),
(6, 1, 'Começo', 'José Pedro', '03:25');

-- SELECT MUSICAS
SELECT * FROM Musicas
Select * FROM Musicas WHERE Cod_CD = 1
Select Nome_musica,Artista from Musicas
Select Numero_musica,Nome_musica,Tempo FROM Musicas WHERE Cod_CD = 5 ORDER BY Numero_musica
Select COUNT(*) AS quantidade_de_musicas FROM musicas
Select Nome_musica,Artista from Musicas WHERE Artista = 'José Pedro'
Select Nome_musica, Artista FROM Musicas ORDER BY Nome_musica ASC;


-- INNER JOIN
-- 1 Mostrar o nome do Cd e o nome das músicas de todos Cds
SELECT CDS.Nome_CD, Musicas.Nome_musica
FROM CDS INNER JOIN Musicas 
ON CDS.Cod_CD = Musicas.Cod_CD;


-- 2 Mostre o nome do cd e o nome da primeira música de cada cd
SELECT CDS.Nome_CD, Musicas.Nome_musica
FROM CDS INNER JOIN Musicas 
ON CDS.Cod_CD = Musicas.Cod_CD
WHERE Musicas.Numero_musica = 1;


-- SUBS-QUERYS
-- 1. (Subquery) Mostre o cd que custou mais caro
SELECT CDS.Nome_CD,CDS.ValorPago
FROM CDS
WHERE CDS.ValorPago=(SELECT max (CDS.ValorPago) from CDS)


-- GROUP BY
-- 1. (Group by) Mostre o tempo total de músicas por cd
-- Anotação: SELECT CDS.Nome_CD, CAST(SUM(CAST(Musicas.Tempo AS datetime)) AS time) AS TEMPO -> Não funciona 
-- Anotação: Usar convert o resto do codigo está certo só Converter o Time para funcionar em SUM
-- CONVERT -> CONVERTE OS DADOS EM OUTRO
-- CAST -> MESMA COISA DO CONVERT
-- TIME -> ARMAZENA HORÁRIOS
-- DATEADD -> ADICIONAR INTERVALO DE TEMPO ESPECÍFICO
-- SECOND -> UNIDADE DE MEDIDA DE TEMPO QUE REPRESENTA 1S
-- SUM -> SOMAR
-- DATEDIFF -> CALCULA A DIFERENÇA
-- DATETIME -> ARMAZENA DATAS E HORÁRIOS 
-- 108 -> ESTILO DE RETORNO TEM UMA TABELA
SELECT CDS.Nome_CD, CONVERT(TIME, DATEADD(SECOND, SUM(DATEDIFF(SECOND, '00:00:00', CAST(Musicas.Tempo AS DATETIME))),'00:00:00'), 108) AS Tempo
FROM CDS INNER JOIN Musicas
ON CDS.Cod_CD=Musicas.Cod_CD
GROUP BY CDS.Nome_CD

-- 2. (Group by) Mostre a quantidade de Cds
SELECT Nome_CD, COUNT(*) AS Qtde_CDS
FROM CDS
GROUP BY Nome_CD


-- 3.  (Group by) Mostre a quantidade de músicas por cds
SELECT CDS.Nome_CD, COUNT(*) AS Qtde_Musicas
FROM CDS INNER JOIN Musicas 
ON CDS.Cod_CD = Musicas.Cod_CD
GROUP BY CDS.Nome_CD

