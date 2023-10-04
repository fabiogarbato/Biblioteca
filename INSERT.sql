USE Biblioteca
GO

--F�bio Garbato e Gabriel Pellozi 
--Esse SCRIPT tem como objetivo inserir todos os dados das tabelas do banco, com seus respectivos atributos

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
    (1, 'O Sistema dos An�is', 1954, 20),
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
    (4, 'O Sistema', 1988, 9),
    (5, 'Ulisses', 1922, 13),
    (6, 'O Hobbit', 1937, 16),
    (7, 'Harry Potter e o Prisioneiro de Azkaban', 1999, 20),
    (8, 'O Sistema Pr�ncipe', 1943, 19),
    (1, 'Mem�rias P�stumas de Br�s Cubas', 1881, 10),
    (2, 'A Divina Com�dia', 1308, 8),
    (3, 'Guerra e Paz', 1869, 12),
    (4, 'O Apanhador no Campo de Centeio', 1951, 14),
    (5, 'Em Busca do Tempo Perdido', 1913, 17),
    (6, 'O Sol � para Todos', 1960, 10),
    (7, 'O Nome do Sistema', 2007, 21),
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

INSERT INTO Membros (IdEndereco, NomeMembro, NumIdentificacao)
VALUES
    (1, 'Maria Silva', 4587),
    (2, 'Jos� Santos', 4589),
    (3, 'Ana Oliveira', 4590),
    (4, 'Pedro Pereira', 4591),
    (5, 'Lu�sa Ferreira', 4592),
    (6, 'Ricardo Gomes', 4593),
    (7, 'Carla Almeida', 4594),
    (8, 'Fernando Rodrigues', 4595),
    (9, 'Sofia Sousa', 4596),
    (10, 'Marta Mendes', 4597),
    (11, 'Ant�nio Lima', 4598),
    (12, 'Luciana Ribeiro', 4599),
    (13, 'Carlos Santos', 4600),
    (14, 'Patr�cia Oliveira', 4601),
    (15, 'Andr� Ferreira', 4602),
    (16, 'Isabel Silva', 4603),
    (17, 'Paulo S�', 4604),
    (18, 'Catarina Alves', 4605),
    (19, 'Manuel Pereira', 4606),
    (20, 'Beatriz Costa', 4607),
    (21, 'Rui Gomes', 4608),
    (22, 'Cristina Fernandes', 4609),
    (23, 'Jo�o Rodrigues', 4610),
    (24, 'Helena Ribeiro', 4611),
    (25, 'Gustavo Santos', 4612),
    (26, 'Teresa Silva', 4613),
    (27, 'Hugo Almeida', 4614);

INSERT INTO Emprestimo (IdMembro, IdLivro, DataEmprestimo, DataDevPrevista, DataDevReal)
VALUES
    (1, 1, '15/10/2023', '30/10/2023', NULL),
    (2, 2, '20/10/2023', '05/11/2023', NULL),
    (3, 3, '25/10/2023', '10/11/2023', NULL),
    (4, 4, '30/10/2023', '15/11/2023', NULL),
    (5, 5, '05/11/2023', '20/11/2023', NULL),
    (6, 6, '10/11/2023', '25/11/2023', NULL),
    (7, 7, '15/11/2023', '30/11/2023', NULL),
    (8, 8, '20/11/2023', '05/12/2023', NULL),
    (9, 9, '25/11/2023', '10/12/2023', NULL),
    (10, 10, '30/11/2023', '15/12/2023', NULL),
    (11, 1, '05/12/2023', '20/12/2023', NULL),
    (12, 2, '10/12/2023', '25/12/2023', NULL),
    (13, 3, '15/12/2023', '30/12/2023', NULL),
    (14, 4, '20/12/2023', '05/01/2024', NULL),
    (15, 5, '25/12/2023', '10/01/2024', NULL),
    (16, 6, '30/12/2023', '15/01/2024', NULL),
    (17, 7, '05/01/2024', '20/01/2024', NULL),
    (18, 8, '10/01/2024', '25/01/2024', NULL),
    (19, 9, '15/01/2024', '30/01/2024', NULL),
    (20, 10, '20/01/2024', '04/02/2024', NULL);

INSERT INTO EmprestimoLivro (IdEmprestimo, IdLivro)
VALUES
    (1, 1),  
    (1, 2),  
    (2, 3),  
    (2, 4),
	(3, 5),  
    (3, 6),  
    (4, 7),  
    (4, 8),  
    (5, 9),  
    (5, 10)









 
