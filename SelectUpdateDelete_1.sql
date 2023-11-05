USE Biblioteca
GO

--Fábio Garbato e Gabriel Pellozi 
--Esse SCRIPT tem como objetivo mostrar a resolução dos execicios 4 a 12

--4 Listar todos os autores cujo nome inicia com a letra ‘A’.
SELECT 
	NomeAutor AS "Autores começando com a letra A" 
FROM 
	Autores 
WHERE 
	NomeAutor LIKE 'A%'

--5 Listar todos os livros cujo título contenha a palavra ‘sistema’.
SELECT 
	Titulo AS "Livros contendo palavra Sistema" 
FROM 
	Livros 
WHERE 
	Titulo LIKE '%sistema%';

--6 Listar a chave primária e o título dos livros que foram publicados há mais de 5 anos.
SELECT 
	IdLivro, 
	Titulo,
	AnoPub
FROM 
	Livros
WHERE 
	YEAR(GETDATE()) - AnoPub > 5
ORDER BY AnoPub DESC

--7 Listar, em ordem alfabética por título, os livros que possuem menos de 5 exemplares disponíveis.
SELECT 
	Titulo AS "Livros com menos de 5 exemplares disponíveis"
FROM 
	Livros 
WHERE 
	QtdeExemplaresDisp < 5 
ORDER BY Titulo;

--8 Listar todos os livros que nunca foram emprestados.
SELECT 
	l.IdLivro, 
	Titulo as "Livros que nunca foram emprestados"
FROM 
	Livros l  
LEFT JOIN Emprestimo e 
ON e.IdLivro = l.IdLivro
WHERE 
	e.IdLivro IS NULL;

--9 Mudar a data de devolução real de todos os empréstimos para a data atual.
BEGIN TRAN 
	SELECT DataDevReal, * FROM Emprestimo;

	UPDATE Emprestimo SET DataDevReal = GETDATE();

	SELECT DataDevReal, * FROM Emprestimo;
ROLLBACK TRAN 

--10 Postergar em um mês a data de devolução prevista de todos os empréstimos.
BEGIN TRAN 
	SELECT DataDevPrevista, * FROM Emprestimo;

	UPDATE Emprestimo SET DataDevPrevista = DATEADD(MONTH, 1, DataDevPrevista);

	SELECT DataDevPrevista, * FROM Emprestimo;
ROLLBACK TRAN 

--11 Excluir todos os membros que nunca fizeram empréstimo.
BEGIN TRAN

SELECT -- SELECT DOS MEMBROS QUE NUNCA FIZERAM EMPRESTIMO ANTES DO DELETE
	m.IdMembro, 
	m.NomeMembro 
FROM 
	Membros m
LEFT JOIN Emprestimo e ON e.IdMembro = m.IdMembro
WHERE e.IdMembro IS NULL; 

DELETE 
	Membros 
FROM 
	Membros m
LEFT JOIN Emprestimo e 
ON m.IdMembro = e.IdMembro
WHERE 
	e.IdMembro IS NULL; 

SELECT -- SELECT DOS MEMBROS QUE NUNCA FIZERAM EMPRESTIMO DEPOIS DO DELETE
	m.IdMembro, 
	m.NomeMembro 
FROM 
	Membros m
LEFT JOIN Emprestimo e ON e.IdMembro = m.IdMembro
WHERE e.IdMembro IS NULL; 

ROLLBACK TRAN 

--12 Excluir todas as categorias que não aparecem em nenhum livro.
BEGIN TRAN 

SELECT -- SELECT DAS CATEGORIAS QUE NÃO APARECEM EM NENHUM LIVRO ANTES DO DELETE
	cl.IdCategoria, 
	NomeCategoria 
FROM 
	CategoriaLivro cl
LEFT JOIN Livros l 
ON cl.IdCategoria = l.IdCategoria
WHERE 
	l.IdCategoria IS NULL;

DELETE 
	CategoriaLivro 
FROM 
	CategoriaLivro cl
LEFT JOIN Livros l on cl.IdCategoria = l.IdCategoria
WHERE l.IdCategoria is NULL;

SELECT -- SELECT DAS CATEGORIAS QUE NÃO APARECEM EM NENHUM LIVRO DEPOIS DO DELETE
	cl.IdCategoria, 
	NomeCategoria 
FROM 
	CategoriaLivro cl
LEFT JOIN Livros l 
ON cl.IdCategoria = l.IdCategoria
WHERE 
	l.IdCategoria IS NULL;

ROLLBACK TRAN