IF EXISTS (SELECT name FROM sys.databases WHERE name = 'Biblioteca')
BEGIN
    DROP DATABASE Biblioteca;
    PRINT 'Banco de dados "Biblioteca" dropado com sucesso.';
END
ELSE
BEGIN
    PRINT 'O banco de dados "Biblioteca" não existe.';
END
