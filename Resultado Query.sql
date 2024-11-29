SELECT Nome, Ano FROM Filmes;

SELECT Nome, Ano FROM Filmes
ORDER BY Ano;

SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome = 'De Volta para o Futuro';

SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano = 1997;

SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano > 2000;

SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao;

SELECT Ano, COUNT(*) AS Quantidade, MAX(Duracao) AS Duracao FROM Filmes
GROUP BY Ano
ORDER BY Duracao DESC;

SELECT PrimeiroNome, UltimoNome, Genero FROM Atores
WHERE Genero = 'M';

SELECT PrimeiroNome, UltimoNome, Genero FROM Atores
WHERE Genero = 'F';

SELECT f.Nome AS Filme, g.Genero AS Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id;

SELECT f.Nome AS Filme, g.Genero AS Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id
WHERE Genero = 'Mistério';

SELECT f.Nome AS Filme, a.PrimeiroNome, a.UltimoNome, ef.Papel
FROM Filmes f
INNER JOIN ElencoFilme ef ON f.Id = ef.IdFilme
INNER JOIN Atores a ON ef.IdAtor = a.Id;