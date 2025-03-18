SELECT Nome, Ano
From Filmes

SELECT Nome, Ano
From Filmes
ORDER BY Ano ASC

SELECT Nome, Ano, Duracao
From Filmes
WHERE Nome = 'De Volta para o Futuro'

SELECT Nome, Ano, Duracao
From Filmes
WHERE Ano = 1997

SELECT Nome, Ano, Duracao
From Filmes
WHERE Ano > 2000

SELECT Nome, Ano, Duracao
From Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC

SELECT Ano,
COUNT(*)AS Quantidade, MAX(Duracao) AS MaiorDuracao
From Filmes
GROUP BY Ano
ORDER BY MaiorDuracao DESC

SELECT Id,PrimeiroNome, UltimoNome, Genero
From Atores
WHERE Genero = 'M'

SELECT Id,Atores.PrimeiroNome, UltimoNome, Genero
From Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC

SELECT Filmes.Nome AS Filme, Generos.Genero
From Filmes
JOIN Generos ON Filmes.Id = Generos.Id



SELECT Filmes.Nome AS Filme, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
From Filmes
JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
JOIN Atores ON ElencoFilme.IdAtor = Atores.Id
