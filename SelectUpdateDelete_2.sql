USE Biblioteca
GO

--F�bio Garbato e Gabriel Pellozi 
--Esse SCRIPT tem como objetivo mostrar a resolu��o dos exercicios 1 a 10

--1 Listar o t�tulo do livro e o nome do autor para todos os livros cadastrados na base
SELECT
	l.Titulo,
	a.NomeAutor
FROM
	Livros l
JOIN LivroAutor la ON la.IdLivro = l.IdLivro
JOIN Autores a ON a.IdAutor = la.idAutor

--2 Listar a data de empr�stimo, o nome do membro que emprestou, e o t�tulo do livro de todos os empr�stimos feitos neste ano
SELECT
	e.DataEmprestimo,
	m.NomeMembro,
	l.Titulo
FROM
	Emprestimo e
JOIN Membros m ON e.IdMembro = m.IdMembro
JOIN Livros l ON e.IdLivro = l.IdLivro
WHERE
	YEAR(e.DataEmprestimo) = YEAR(GETDATE())

--3 Listar o nome da categoria e o t�tulo do livro de todos os livros cadastrados na base
SELECT
	cl.NomeCategoria,
	l.Titulo
FROM
	CategoriaLivro cl
JOIN Livros l 
ON cl.IdCategoria = l.IdCategoria

--4 Listar o t�tulo do livro, a data de empr�stimo e a data da devolu��o real de todos os livros da base
SELECT
	l.Titulo,
	e.DataEmprestimo,
	e.DataDevReal
FROM
	Livros l
JOIN Emprestimo e 
ON e.IdLivro = l.IdLivro

--5 Listar a data de empr�stimo, data da devolu��o real, nome do membro que emprestou, t�tulo do livro, nome da categoria e nome do autor (ou autores) de todos os empr�stimos realizados
SELECT
	e.IdEmprestimo,
	e.DataEmprestimo,
	e.DataDevReal,
	m.NomeMembro,
	l.Titulo,
	c.NomeCategoria,
	ISNULL(a.NomeAutor, 'Sem Registro') AS NomeAutor
FROM
	Emprestimo e
LEFT JOIN Membros m ON m.IdMembro = e.IdMembro
LEFT JOIN Livros l ON l.IdLivro = e.IdLivro
LEFT JOIN CategoriaLivro c ON c.IdCategoria = l.IdCategoria
LEFT JOIN LivroAutor la ON la.IdLivro = l.IdLivro
LEFT JOIN Autores a ON a.IdAutor = la.idAutor

--6 Contar quantos livros est�o cadastrados na base
SELECT 
	Count(*) TotalLivros 
FROM 
	Livros

--7 Contar quantos empr�stimos foram feitos no ano passado
SELECT
	Count(DataEmprestimo) TotalEmprestimoAnoPassado
FROM
	Emprestimo
WHERE
	YEAR(DataEmprestimo) = YEAR(GETDATE()) - 1

--8 Listar o nome da categoria e a quantidade de livros por categoria
SELECT
	c.NomeCategoria,
	COUNT(*) AS QuantidadeLivros
FROM
	CategoriaLivro c
JOIN Livros l ON l.IdCategoria = c.IdCategoria
GROUP BY 
	c.NomeCategoria

--9 Listar o t�tulo do livro e o nome do membro de todos os livros emprestados na semana corrente, agrupados e ordenados por data de empr�stimo
SELECT
	l.Titulo,
	m.NomeMembro
FROM
	Emprestimo e
JOIN Livros l ON l.IdLivro = e.IdLivro
JOIN Membros m ON m.IdMembro = e.IdMembro
WHERE 
	e.DataEmprestimo >= DATEADD(WEEK, DATEDIFF(WEEK, 0, GETDATE()), 0)  
	AND 
	e.DataEmprestimo < DATEADD(WEEK, DATEDIFF(WEEK, 0, GETDATE()) + 1, 0)
ORDER BY
	e.DataEmprestimo

--10 Listar o total de livros emprestados no ano atual, agrupados e ordenados cronologicamente por m�s, sendo que o nome do m�s deve ser apresentado por extenso
SELECT
	DATEPART(YEAR, e.DataEmprestimo) AS Ano,
	DATENAME(MONTH, e.DataEmprestimo) AS Mes,
	COUNT(*) AS TotalLivros
FROM
	Emprestimo e
WHERE 
	DATEPART(YEAR, e.DataEmprestimo) = YEAR(GETDATE())
GROUP BY 
	DATEPART(YEAR, e.DataEmprestimo), DATENAME(MONTH, e.DataEmprestimo)
ORDER BY 
	Ano, Mes DESC;