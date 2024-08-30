--1
SELECT Nome, Ano FROM Filmes

--2
SELECT Nome, Ano, Duracao FROM Filmes
ORDER BY Ano

--3
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome LIKE 'De volta para o futuro'

--4
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano = 1997

--5
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano > 2000

--6
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

--7
SELECT Ano, COUNT(*) Quantidade FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

--8
SELECT * FROM Atores
WHERE Genero = 'M'

--9
SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--10
SELECT F.Nome, G.Genero FROM FilmesGenero
INNER JOIN Filmes F ON IdFilme = F.Id
INNER JOIN Generos G ON IdGenero = G.Id

--11
SELECT F.Nome, G.Genero FROM FilmesGenero
INNER JOIN Filmes F ON IdFilme = F.Id
INNER JOIN Generos G ON IdGenero = G.Id
WHERE G.Genero LIKE 'Mistério'

--12
SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, Papel FROM ElencoFilme
INNER JOIN Filmes F ON IdFilme = F.Id
INNER JOIN Atores A ON IdAtor= A.Id
