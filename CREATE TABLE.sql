USE Biblioteca
GO 

--Fábio Garbato e Gabriel Pellozi 
--Esse SCRIPT tem como objetivo a criação de todas as tabelas do banco, com seus respectivos atributos
--2 - Criar as tabelas de acordo com o modelo lógico relacional idealizado na avaliação anterior, considerando as restrições de integridade; a base de dados deve conter pelo menos cinco tabelas, análogas a: livro,
--autor, membro, categoria, empréstimo.

IF NOT EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'dbo.Autores') AND type = 'U')
BEGIN
    CREATE TABLE Autores (
    IdAutor INT PRIMARY KEY IDENTITY,
    NomeAutor VARCHAR(100),
    DataNascimento DATETIME
);
END

IF NOT EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'dbo.CategoriaLivro') AND type = 'U')
BEGIN
    CREATE TABLE CategoriaLivro (
    IdCategoria INT PRIMARY KEY IDENTITY,
    NomeCategoria VARCHAR(100)
);
END


IF NOT EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'dbo.Estado') AND type = 'U')
BEGIN
    CREATE TABLE Estado (
    IdEstado INT PRIMARY KEY IDENTITY,
    SiglaEstado CHAR(2),
	DescricaoEstado VARCHAR(25)
);
END

IF NOT EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'dbo.Livros') AND type = 'U')
BEGIN
    CREATE TABLE Livros (
    IdLivro INT PRIMARY KEY IDENTITY,
    IdCategoria INT NOT NULL,
	Titulo VARCHAR(100),
	AnoPub INT,
	QtdeExemplaresDisp INT NOT NULL
);

	ALTER TABLE Livros
    ADD CONSTRAINT FK_Livros_Categoria
    FOREIGN KEY (IdCategoria) REFERENCES CategoriaLivro(IdCategoria);
END

IF NOT EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'dbo.LivroAutor') AND type = 'U')
BEGIN
    CREATE TABLE LivroAutor (
    Id INT PRIMARY KEY IDENTITY,
	IdLivro INT UNIQUE NOT NULL,
	IdAutor INT NOT NULL
);
	
	ALTER TABLE LivroAutor
    ADD CONSTRAINT FK_LivroAutor_Livro
    FOREIGN KEY (IdLivro) REFERENCES Livros(IdLivro);

	ALTER TABLE LivroAutor
    ADD CONSTRAINT FK_LivroAutor_Autor
    FOREIGN KEY (IdAutor) REFERENCES Autores(IdAutor);
END

IF NOT EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'dbo.Cidade') AND type = 'U')
BEGIN
    CREATE TABLE Cidade (
    IdCidade INT PRIMARY KEY IDENTITY,
    IdEstado INT NOT NULL,
	NomeCidade VARCHAR(100),
	CodIbge INT 
);

	ALTER TABLE Cidade
    ADD CONSTRAINT FK_Cidade_Estado
    FOREIGN KEY (IdEstado) REFERENCES Estado(IdEstado);
END

IF NOT EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'dbo.Endereco') AND type = 'U')
BEGIN
    CREATE TABLE Endereco (
    IdEndereco INT PRIMARY KEY IDENTITY,
    IdCidade INT NOT NULL,
	Logradouro VARCHAR(100),
	Numero INT,
	Complemento VARCHAR(100),
	Cep INT,
	Bairro VARCHAR(100)
);

	ALTER TABLE Endereco
    ADD CONSTRAINT FK_Endereco_Cidade
    FOREIGN KEY (IdCidade) REFERENCES Cidade(IdCidade);
END

IF NOT EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'dbo.Cidade') AND type = 'U')
BEGIN
    CREATE TABLE Cidade (
    IdCidade INT PRIMARY KEY IDENTITY,
    IdEstado INT NOT NULL,
	NomeCidade VARCHAR(100),
	CodIbge INT 
);

	ALTER TABLE Cidade
    ADD CONSTRAINT FK_Cidade_Estado
    FOREIGN KEY (IdEstado) REFERENCES Estado(IdEstado);
END

IF NOT EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'dbo.Membros') AND type = 'U')
BEGIN
    CREATE TABLE Membros (
    IdMembro INT PRIMARY KEY IDENTITY,
    IdEndereco INT NOT NULL,
	NomeMembro VARCHAR(100),
	NumIdentificacao INT NOT NULL
);

	ALTER TABLE Membros
    ADD CONSTRAINT FK_Membros_Endereco
    FOREIGN KEY (IdEndereco) REFERENCES Endereco(IdEndereco);
END

IF NOT EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'dbo.Emprestimo') AND type = 'U')
BEGIN
    CREATE TABLE Emprestimo (
    IdEmprestimo INT PRIMARY KEY IDENTITY,
	IdMembro INT NOT NULL,
	IdLivro INT NOT NULL,
	DataEmprestimo DATETIME NOT NULL,
	DataDevPrevista DATETIME NOT NULL,
	DataDevReal DATETIME
);

	ALTER TABLE Emprestimo
    ADD CONSTRAINT FK_Emprestimo_Categoria
    FOREIGN KEY (IdMembro) REFERENCES Membros(IdMembro);

	ALTER TABLE Emprestimo
    ADD CONSTRAINT FK_Emprestimo_Livro
    FOREIGN KEY (IdLivro) REFERENCES Livros(IdLivro);
END


IF NOT EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'dbo.EmprestimoLivro') AND type = 'U')
BEGIN
    CREATE TABLE EmprestimoLivro (
    Id INT PRIMARY KEY IDENTITY,
	IdEmprestimo INT NOT NULL,
	IdLivro INT NOT NULL
);
	
	ALTER TABLE EmprestimoLivro
    ADD CONSTRAINT FK_EmprestimoLivro_Emprestimo
    FOREIGN KEY (IdEmprestimo) REFERENCES Emprestimo(IdEmprestimo);

	ALTER TABLE EmprestimoLivro
    ADD CONSTRAINT FK_EmprestimoLivro_Livro
    FOREIGN KEY (IdLivro) REFERENCES Livros(IdLivro);
END




