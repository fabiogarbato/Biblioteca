Use Biblioteca
GO

--4 Listar todos os autores cujo nome inicia com a letra �A�.
Select NomeAutor as "Autores come�ando com a letra A" from Autores 
	where NomeAutor like 'A%';

--5 Listar todos os livros cujo t�tulo contenha a palavra �sistema�.
Select Titulo as "Livros contendo palavra Sistema" from Livros 
	where Titulo like '%sistema%';

--6 Listar a chave prim�ria e o t�tulo dos livros que foram publicados h� mais de 5 anos.
--N�o Completo
Select * from Livros;

Select IdLivro, Titulo as "Livros que foram publicados a mais de 5 anos", AnoPub from Livros
	where DATEDIFF(YEAR, AnoPub, GETDATE()) > 5;

--7 Listar, em ordem alfab�tica por t�tulo, os livros que possuem menos de 5 exemplares dispon�veis.
Select Titulo as "Livros com menos de 5 exemplares dispon�veis" from Livros 
	where QtdeExemplaresDisp < 5 order by Titulo;

--8 Listar todos os livros que nunca foram emprestados.
Select Livros.IdLivro, Titulo as "Livros que nunca foram emprestados" from Livros 
	Left Join Emprestimo on Emprestimo.IdLivro = Livros.IdLivro
	where Emprestimo.IdLivro is NULL;

--9 Mudar a data de devolu��o real de todos os empr�stimos para a data atual.
Select * from Emprestimo;

Update Emprestimo set DataDevReal = GETDATE();

Select * from Emprestimo;

--10 Postergar em um m�s a data de devolu��o prevista de todos os empr�stimos.
Select * from Emprestimo;

Update Emprestimo set DataDevPrevista = DATEADD(MONTH, 1, DataDevPrevista);

Select * from Emprestimo;

--11 Excluir todos os membros que nunca fizeram empr�stimo.
Select * from Membros;

Select Membros.IdMembro, NomeMembro from Membros
	Left Join Emprestimo on Emprestimo.IdMembro = Membros.IdMembro
	where Emprestimo.IdMembro is NULL; 

Delete Membros from Membros T1
	Left Join Emprestimo T2 on T1.IdMembro = T2.IdMembro
	where T2.IdMembro is NULL; 

Select * from Membros;

--12 Excluir todas as categorias que n�o aparecem em nenhum livro.
Select * from CategoriaLivro;

Select CategoriaLivro.IdCategoria, NomeCategoria from CategoriaLivro
	Left Join Livros on CategoriaLivro.IdCategoria = Livros.IdCategoria
	where Livros.IdCategoria is NULL;

Delete CategoriaLivro from CategoriaLivro T1
	Left Join Livros T2 on T1.IdCategoria = T2.IdCategoria
	where T2.IdCategoria is NULL;

Select * from CategoriaLivro;