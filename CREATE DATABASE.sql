IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = 'Biblioteca')
BEGIN
    CREATE DATABASE Biblioteca;
    PRINT 'Banco de dados "Biblioteca" criado com sucesso.';
END
ELSE
BEGIN
    PRINT 'O banco de dados "Biblioteca" já existe.';
END


