SELECT Nome, Ano FROM Filmes

SELECT Nome, Ano, Duracao FROM Filmes ORDER BY Ano

SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro'

SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997

SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000 

SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao 

SELECT Ano, COUNT(*) AS quantidade_filmes, MAX(duracao) AS duracao_maxima
FROM Filmes
GROUP BY Ano
ORDER BY duracao_maxima DESC;

SELECT PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

SELECT 
    F.Nome AS NomeFilme,
    G.Genero
FROM 
    Filmes F
JOIN 
    FilmesGenero FG ON F.Id = FG.IdFilme
JOIN 
    Generos G ON FG.IdGenero = G.Id;

SELECT 
    F.Nome AS NomeFilme,
    G.Genero
FROM 
    Filmes F
JOIN 
    FilmesGenero FG ON F.Id = FG.IdFilme
JOIN 
    Generos G ON FG.IdGenero = G.Id
WHERE 
    G.Genero = 'Mistério';

SELECT 
    F.Nome AS NomeFilme,
    A.PrimeiroNome,
    A.UltimoNome,
    EF.Papel
FROM 
    Filmes F
JOIN 
    ElencoFilme EF ON F.Id = EF.IdFilme
JOIN 
    Atores A ON EF.IdAtor = A.Id;

