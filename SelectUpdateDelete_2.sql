USE Biblioteca
GO

--Fábio Garbato e Gabriel Pellozi 
--Esse SCRIPT tem como objetivo mostrar a resolução dos exercicios 1 a 10

--1 Listar o título do livro e o nome do autor para todos os livros cadastrados na base
SELECT
	l.Titulo,
	ISNULL(a.NomeAutor, 'Autor Desconhecido') as NomeAutor
FROM
	Livros l
LEFT JOIN LivroAutor la ON la.IdLivro = l.IdLivro
LEFT JOIN Autores a ON a.IdAutor = la.idAutor

--2 Listar a data de empréstimo, o nome do membro que emprestou, e o título do livro de todos os empréstimos feitos neste ano
SELECT
	e.DataEmprestimo,
	m.NomeMembro,
	l.Titulo
FROM
	Emprestimo e
INNER JOIN Membros m ON e.IdMembro = m.IdMembro
INNER JOIN Livros l ON e.IdLivro = l.IdLivro
WHERE
	YEAR(e.DataEmprestimo) = YEAR(GETDATE())

--3 Listar o nome da categoria e o título do livro de todos os livros cadastrados na base
SELECT
	cl.NomeCategoria,
	l.Titulo
FROM
	CategoriaLivro cl
INNER JOIN Livros l 
ON cl.IdCategoria = l.IdCategoria

--4 Listar o título do livro, a data de empréstimo e a data da devolução real de todos os livros da base
BEGIN TRAN

SELECT
	l.Titulo,
	e.DataEmprestimo,
	COALESCE(CONVERT(varchar, e.DataDevReal, 103), 'Livro ainda não devolvido') AS DataDevReal
FROM
	Livros l
INNER JOIN Emprestimo e 
ON e.IdLivro = l.IdLivro

UPDATE Emprestimo SET DataDevReal = GETDATE() WHERE IdEmprestimo IN (1,2,3)

SELECT
	l.Titulo,
	e.DataEmprestimo,
	COALESCE(CONVERT(varchar, e.DataDevReal, 103), 'Livro ainda não devolvido') AS DataDevReal
FROM
	Livros l
INNER JOIN Emprestimo e 
ON e.IdLivro = l.IdLivro

ROLLBACK TRAN

--5 Listar a data de empréstimo, data da devolução real, nome do membro que emprestou, título do livro, nome da categoria e nome do autor (ou autores) de todos os empréstimos realizados
BEGIN TRAN 

SELECT
	e.DataEmprestimo,
	COALESCE(CONVERT(varchar, e.DataDevReal, 103), 'Livro ainda não devolvido') AS DataDevReal,
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

UPDATE Emprestimo SET DataDevReal = GETDATE() WHERE IdEmprestimo IN (1,2,3)

SELECT
	e.DataEmprestimo,
	COALESCE(CONVERT(varchar, e.DataDevReal, 103), 'Livro ainda não devolvido') AS DataDevReal,
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

ROLLBACK TRAN 

--6 Contar quantos livros estão cadastrados na base
SELECT 
	Count(*) AS TotalLivros 
FROM 
	Livros

--7 Contar quantos empréstimos foram feitos no ano passado
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
INNER JOIN Livros l ON l.IdCategoria = c.IdCategoria
GROUP BY 
	c.NomeCategoria

--9 Listar o título do livro e o nome do membro de todos os livros emprestados na semana corrente, agrupados e ordenados por data de empréstimo
SELECT
	l.Titulo,
	m.NomeMembro
FROM
	Emprestimo e
INNER JOIN Livros l ON l.IdLivro = e.IdLivro
INNER JOIN Membros m ON m.IdMembro = e.IdMembro
WHERE 
	e.DataEmprestimo >= DATEADD(WEEK, DATEDIFF(WEEK, 0, GETDATE()), 0)  
AND 
	e.DataEmprestimo < DATEADD(WEEK, DATEDIFF(WEEK, 0, GETDATE()) + 1, 0)
GROUP BY 
	l.Titulo,
	m.NomeMembro,
	e.DataEmprestimo
ORDER BY
	e.DataEmprestimo

--10 Listar o total de livros emprestados no ano atual, agrupados e ordenados cronologicamente por mês, sendo que o nome do mês deve ser apresentado por extenso
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
	Mes DESC;