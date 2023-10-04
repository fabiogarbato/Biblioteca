USE Biblioteca
GO

INSERT INTO Estado (SiglaEstado, DescricaoEstado)
VALUES
    ('AC', 'Acre'),
    ('AL', 'Alagoas'),
    ('AP', 'Amap�'),
    ('AM', 'Amazonas'),
    ('BA', 'Bahia'),
    ('CE', 'Cear�'),
    ('DF', 'Distrito Federal'),
    ('ES', 'Esp�rito Santo'),
    ('GO', 'Goi�s'),
    ('MA', 'Maranh�o'),
    ('MT', 'Mato Grosso'),
    ('MS', 'Mato Grosso do Sul'),
    ('MG', 'Minas Gerais'),
    ('PA', 'Par�'),
    ('PB', 'Para�ba'),
    ('PR', 'Paran�'),
    ('PE', 'Pernambuco'),
    ('PI', 'Piau�'),
    ('RJ', 'Rio de Janeiro'),
    ('RN', 'Rio Grande do Norte'),
    ('RS', 'Rio Grande do Sul'),
    ('RO', 'Rond�nia'),
    ('RR', 'Roraima'),
    ('SC', 'Santa Catarina'),
    ('SP', 'S�o Paulo'),
    ('SE', 'Sergipe'),
    ('TO', 'Tocantins');

INSERT INTO Cidade (IdEstado, NomeCidade, CodIbge)
VALUES
    (1, 'Rio Branco', '1200401'),
    (2, 'Macei�', '2704302'),
    (3, 'Macap�', '1600303'),
    (4, 'Manaus', '1302603'),
    (5, 'Salvador', '2927408'),
    (6, 'Fortaleza', '2304400'),
    (7, 'Bras�lia', '5300108'),
    (8, 'Vit�ria', '3205309'),
    (9, 'Goi�nia', '5208707'),
    (10, 'S�o Lu�s', '2111300'),
    (11, 'Cuiab�', '5103403'),
    (12, 'Campo Grande', '5002704'),
    (13, 'Belo Horizonte', '3106200'),
    (14, 'Bel�m', '1501402'),
    (15, 'Jo�o Pessoa', '2507507'),
    (16, 'Curitiba', '4106902'),
    (17, 'Recife', '2611606'),
    (18, 'Teresina', '2211001'),
    (19, 'Niter�i', '3303302'),
    (20, 'Natal', '2408102'),
    (21, 'Porto Alegre', '4314902'),
    (22, 'Porto Velho', '1100205'),
    (23, 'Boa Vista', '1400100'),
    (24, 'Florian�polis', '4205407'),
    (25, 'S�o Paulo', '3550308'),
    (26, 'Aracaju', '2800308'),
    (27, 'Palmas', '1721000');

INSERT INTO Endereco (IdCidade, Logradouro, Numero, Complemento, Cep, Bairro)
VALUES
    (1, 'Rua Acre', 123, 'Apartamento 101', 69900000, 'Centro'),
    (2, 'Rua Alagoas', 456, 'Casa 2', 57000000, 'Jardim'),
    (3, 'Avenida Amap�', 789, NULL, 68900000, 'Praia'),
    (4, 'Rua Amazonas', 321, 'Casa 3', 69000000, 'Centro'),
    (5, 'Avenida Bahia', 987, 'Apartamento 201', 40000000, 'Liberdade'),
    (6, 'Rua Cear�', 654, NULL, 60000000, 'Praia'),
    (7, 'Avenida Bras�lia', 321, 'Casa 1', 70000000, 'Centro'),
    (8, 'Rua Esp�rito Santo', 654, 'Sala 301', 29000000, 'Bairro Novo'),
    (9, 'Avenida Goi�s', 123, NULL, 74000000, 'Centro'),
    (10, 'Rua Maranh�o', 789, 'Casa 4', 65000000, 'Lagoa'),
    (11, 'Avenida Mato Grosso', 456, 'Apartamento 401', 79000000, 'Jardim'),
    (12, 'Rua Mato Grosso do Sul', 123, NULL, 79000000, 'Centro'),
    (13, 'Avenida Minas Gerais', 789, 'Casa 5', 66000000, 'Jardim'),
    (14, 'Rua Par�', 654, NULL, 66000000, 'Praia'),
    (15, 'Avenida Para�ba', 321, 'Apartamento 501', 58000000, 'Centro'),
    (16, 'Rua Paran�', 123, 'Casa 6', 80000000, 'Liberdade'),
    (17, 'Avenida Piau�', 789, NULL, 86000000, 'Bairro Novo'),
    (18, 'Rua Rio de Janeiro', 654, 'Sala 601', 24000000, 'Centro'),
    (19, 'Avenida Rio Grande do Norte', 321, 'Casa 7', 59000000, 'Lagoa'),
    (20, 'Rua Rio Grande do Sul', 123, NULL, 90000000, 'Jardim'),
    (21, 'Avenida Rond�nia', 789, 'Apartamento 701', 78900000, 'Praia'),
    (22, 'Rua Roraima', 456, 'Casa 8', 69300000, 'Centro'),
    (23, 'Avenida Santa Catarina', 123, NULL, 88000000, 'Centro'),
    (24, 'Rua S�o Paulo', 789, 'Sala 801', 1000000, 'Bairro Novo'),
    (25, 'Avenida Sergipe', 321, 'Casa 9', 49000000, 'Liberdade'),
    (26, 'Rua Tocantins', 123, NULL, 77000000, 'Jardim'),
    (27, 'Avenida Distrito Federal', 789, 'Apartamento 901', 70000000, 'Praia');

INSERT INTO Membros(IdEndereco, NomeMembro, NumIdentificacao)
VALUES
    (1, 'Jo�o Silva', 12345),
    (2, 'Maria Santos', 67890),
    (3, 'Pedro Oliveira', 24680),
    (4, 'Ana Souza', 13579),
    (5, 'Lucas Pereira', 97531),
    (6, 'Isabela Rodrigues', 86420),
    (7, 'Rafael Almeida', 98765),
    (8, 'Carolina Lima', 54321),
    (9, 'Bruno Costa', 11223),
    (10, 'Fernanda Santos', 44556),
    (11, 'Gustavo Ferreira', 998877),
    (12, 'Camila Martins', 887766),
    (13, 'Rodrigo Pereira', 223344),
    (14, 'Larissa Oliveira', 554433),
    (15, 'Daniel Sousa', 123456),
    (16, 'Patr�cia Silva', 987654),
    (17, 'Alexandre Santos', 567890),
    (18, 'Carla Lima', 543210),
    (19, 'Roberto Costa', 112233),
    (20, 'Juliana Almeida', 445566),
    (21, 'Luciano Ferreira', 998877),
    (22, 'Eduarda Martins', 887766),
    (23, 'M�rcio Pereira', 223344),
    (24, 'Andressa Oliveira', 554433),
    (25, 'Ricardo Souza', 123456),
    (26, 'Tatiana Lima', 987654),
    (27, 'Felipe Costa', 567890);

INSERT INTO CategoriaLivro (NomeCategoria)
VALUES
    ('A��o'),
    ('Aventura'),
    ('Romance'),
    ('Fic��o Cient�fica'),
    ('Fantasia'),
    ('Mist�rio'),
    ('Terror'),
    ('N�o Fic��o');

INSERT INTO Livros (IdCategoria, Titulo, AnoPub, QtdeExemplaresDisp)
VALUES
    (1, 'O Senhor dos An�is', 1954, 20),
    (2, 'Dom Quixote', 1605, 15),
    (3, 'Orgulho e Preconceito', 1813, 12),
    (4, '1984', 1949, 18),
    (5, 'Cem Anos de Solid�o', 1967, 25),
    (6, 'Moby Dick', 1851, 10),
    (7, 'Harry Potter e a Pedra Filosofal', 1997, 22),
    (8, 'A Metamorfose', 1915, 8),
    (1, 'Crime e Castigo', 1866, 14),
    (2, 'Odisseia', 800, 7),
    (3, 'O Grande Gatsby', 1925, 11),
    (4, 'O Alquimista', 1988, 9),
    (5, 'Ulisses', 1922, 13),
    (6, 'O Hobbit', 1937, 16),
    (7, 'Harry Potter e o Prisioneiro de Azkaban', 1999, 20),
    (8, 'O Pequeno Pr�ncipe', 1943, 19),
    (1, 'Mem�rias P�stumas de Br�s Cubas', 1881, 10),
    (2, 'A Divina Com�dia', 1308, 8),
    (3, 'Guerra e Paz', 1869, 12),
    (4, 'O Apanhador no Campo de Centeio', 1951, 14),
    (5, 'Em Busca do Tempo Perdido', 1913, 17),
    (6, 'O Sol � para Todos', 1960, 10),
    (7, 'O Nome do Vento', 2007, 21),
    (8, 'A Revolu��o dos Bichos', 1945, 11);

INSERT INTO Autores (NomeAutor, DataNascimento)
VALUES
    ('Jo�o Silva', '15/05/1980'),
    ('Maria Santos', '22/09/1975'),
    ('Pedro Oliveira', '10/03/1990'),
    ('Ana Pereira', '05/12/1988'),
    ('Lu�s Ferreira', '18/06/1972'),
    ('Marta Gomes', '28/02/1985'),
    ('Jos� Almeida', '14/07/1995'),
    ('Carla Rodrigues', '30/11/1978'),
    ('Fernando Sousa', '20/04/1983'),
    ('Sofia Mendes', '09/08/1992');

INSERT INTO LivroAutor (IdLivro, IdAutor)
VALUES
    (1, 1),  
    (1, 2),  
    (2, 3),  
    (2, 4),  
    (3, 5),  
    (4, 6),  
    (5, 7),  
    (6, 7),  
    (7, 7);  







 
