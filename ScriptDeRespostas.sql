--1
SELECT 
	Nome,
	Ano 
FROM Filmes;

--2
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes ORDER BY Ano;

--3
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes 
WHERE Nome = 'De volta para o Futuro';

--4
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano = 1997;

--5
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes 
WHERE Ano > 2000;

--6
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes 
WHERE Duracao > 100 AND Duracao < 150;

--7
SELECT Ano, COUNT(1) AS Quantidade	
FROM Filmes 
GROUP BY Ano
ORDER BY Quantidade DESC;

--8
SELECT 	
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'M';

--9
SELECT 	
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;

--10
SELECT
	f.Nome,
	g.Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id;

--11
SELECT
	f.Nome,
	g.Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id
WHERE g.Genero = 'Mistério';

--12
SELECT
	f.Nome,
	a.PrimeiroNome,
	a.UltimoNome,
	el.Papel 
FROM Filmes f
INNER JOIN ElencoFilme el ON f.Id = el.Id
INNER JOIN Atores a ON el.Id = a.Id;

