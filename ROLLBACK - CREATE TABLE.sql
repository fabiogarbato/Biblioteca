USE Biblioteca;
GO

--Fábio Garbato e Gabriel Pellozi 
--Esse SCRIPT tem como objetivo dropar todas as tabelas do banco, com seus respectivos atributos

IF (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'dbo.EmprestimoLivro') AND type = 'U') IS NOT NULL
BEGIN
    IF EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_EmprestimoLivro_Emprestimo')
    BEGIN
        ALTER TABLE EmprestimoLivro
        DROP CONSTRAINT FK_EmprestimoLivro_Emprestimo;
    END;

    IF EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_EmprestimoLivro_Livro')
    BEGIN
        ALTER TABLE EmprestimoLivro
        DROP CONSTRAINT FK_EmprestimoLivro_Livro;
    END;

    DROP TABLE EmprestimoLivro;
END

IF (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'dbo.Emprestimo') AND type = 'U') IS NOT NULL
BEGIN
    IF EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_Emprestimo_Categoria')
    BEGIN
        ALTER TABLE Emprestimo
        DROP CONSTRAINT FK_Emprestimo_Categoria;
    END;

    IF EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_Emprestimo_Livro')
    BEGIN
        ALTER TABLE Emprestimo
        DROP CONSTRAINT FK_Emprestimo_Livro;
    END;

    DROP TABLE Emprestimo;
END

IF (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'dbo.Membros') AND type = 'U') IS NOT NULL
BEGIN
    IF EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_Membros_Endereco')
    BEGIN
        ALTER TABLE Membros
        DROP CONSTRAINT FK_Membros_Endereco;
    END;

    DROP TABLE Membros;
END

IF (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'dbo.Endereco') AND type = 'U') IS NOT NULL
BEGIN
    IF EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_Endereco_Cidade')
    BEGIN
        ALTER TABLE Endereco
        DROP CONSTRAINT FK_Endereco_Cidade;
    END;

    DROP TABLE Endereco;
END

USE Biblioteca;
GO

IF (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'dbo.Cidade') AND type = 'U') IS NOT NULL
BEGIN
    IF EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_Cidade_Estado')
    BEGIN
        ALTER TABLE Cidade
        DROP CONSTRAINT FK_Cidade_Estado;
    END;

    DROP TABLE Cidade;
END


IF (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'dbo.LivroAutor') AND type = 'U') IS NOT NULL
BEGIN
    IF EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_LivroAutor_Livro')
    BEGIN
        ALTER TABLE LivroAutor
        DROP CONSTRAINT FK_LivroAutor_Livro;
    END;

    IF EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_LivroAutor_Autor')
    BEGIN
        ALTER TABLE LivroAutor
        DROP CONSTRAINT FK_LivroAutor_Autor;
    END;

    DROP TABLE LivroAutor;
END

IF (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'dbo.Livros') AND type = 'U') IS NOT NULL
BEGIN
    IF EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_Livros_Categoria')
    BEGIN
        ALTER TABLE Livros
        DROP CONSTRAINT FK_Livros_Categoria;
    END;

    DROP TABLE Livros;
END

IF (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'dbo.Estado') AND type = 'U') IS NOT NULL
BEGIN
    DROP TABLE Estado;
END

IF (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'dbo.CategoriaLivro') AND type = 'U') IS NOT NULL
BEGIN
    DROP TABLE CategoriaLivro;
END

IF (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'dbo.Autores') AND type = 'U') IS NOT NULL
BEGIN
    DROP TABLE Autores;
END
