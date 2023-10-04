USE Biblioteca
GO

INSERT INTO Estado (SiglaEstado, DescricaoEstado)
VALUES
    ('AC', 'Acre'),
    ('AL', 'Alagoas'),
    ('AP', 'Amapá'),
    ('AM', 'Amazonas'),
    ('BA', 'Bahia'),
    ('CE', 'Ceará'),
    ('DF', 'Distrito Federal'),
    ('ES', 'Espírito Santo'),
    ('GO', 'Goiás'),
    ('MA', 'Maranhão'),
    ('MT', 'Mato Grosso'),
    ('MS', 'Mato Grosso do Sul'),
    ('MG', 'Minas Gerais'),
    ('PA', 'Pará'),
    ('PB', 'Paraíba'),
    ('PR', 'Paraná'),
    ('PE', 'Pernambuco'),
    ('PI', 'Piauí'),
    ('RJ', 'Rio de Janeiro'),
    ('RN', 'Rio Grande do Norte'),
    ('RS', 'Rio Grande do Sul'),
    ('RO', 'Rondônia'),
    ('RR', 'Roraima'),
    ('SC', 'Santa Catarina'),
    ('SP', 'São Paulo'),
    ('SE', 'Sergipe'),
    ('TO', 'Tocantins');

INSERT INTO Cidade (IdEstado, NomeCidade, CodIbge)
VALUES
    (1, 'Rio Branco', '1200401'),
    (2, 'Maceió', '2704302'),
    (3, 'Macapá', '1600303'),
    (4, 'Manaus', '1302603'),
    (5, 'Salvador', '2927408'),
    (6, 'Fortaleza', '2304400'),
    (7, 'Brasília', '5300108'),
    (8, 'Vitória', '3205309'),
    (9, 'Goiânia', '5208707'),
    (10, 'São Luís', '2111300'),
    (11, 'Cuiabá', '5103403'),
    (12, 'Campo Grande', '5002704'),
    (13, 'Belo Horizonte', '3106200'),
    (14, 'Belém', '1501402'),
    (15, 'João Pessoa', '2507507'),
    (16, 'Curitiba', '4106902'),
    (17, 'Recife', '2611606'),
    (18, 'Teresina', '2211001'),
    (19, 'Niterói', '3303302'),
    (20, 'Natal', '2408102'),
    (21, 'Porto Alegre', '4314902'),
    (22, 'Porto Velho', '1100205'),
    (23, 'Boa Vista', '1400100'),
    (24, 'Florianópolis', '4205407'),
    (25, 'São Paulo', '3550308'),
    (26, 'Aracaju', '2800308'),
    (27, 'Palmas', '1721000');

INSERT INTO Endereco (IdCidade, Logradouro, Numero, Complemento, Cep, Bairro)
VALUES
    (1, 'Rua Acre', 123, 'Apartamento 101', 69900000, 'Centro'),
    (2, 'Rua Alagoas', 456, 'Casa 2', 57000000, 'Jardim'),
    (3, 'Avenida Amapá', 789, NULL, 68900000, 'Praia'),
    (4, 'Rua Amazonas', 321, 'Casa 3', 69000000, 'Centro'),
    (5, 'Avenida Bahia', 987, 'Apartamento 201', 40000000, 'Liberdade'),
    (6, 'Rua Ceará', 654, NULL, 60000000, 'Praia'),
    (7, 'Avenida Brasília', 321, 'Casa 1', 70000000, 'Centro'),
    (8, 'Rua Espírito Santo', 654, 'Sala 301', 29000000, 'Bairro Novo'),
    (9, 'Avenida Goiás', 123, NULL, 74000000, 'Centro'),
    (10, 'Rua Maranhão', 789, 'Casa 4', 65000000, 'Lagoa'),
    (11, 'Avenida Mato Grosso', 456, 'Apartamento 401', 79000000, 'Jardim'),
    (12, 'Rua Mato Grosso do Sul', 123, NULL, 79000000, 'Centro'),
    (13, 'Avenida Minas Gerais', 789, 'Casa 5', 66000000, 'Jardim'),
    (14, 'Rua Pará', 654, NULL, 66000000, 'Praia'),
    (15, 'Avenida Paraíba', 321, 'Apartamento 501', 58000000, 'Centro'),
    (16, 'Rua Paraná', 123, 'Casa 6', 80000000, 'Liberdade'),
    (17, 'Avenida Piauí', 789, NULL, 86000000, 'Bairro Novo'),
    (18, 'Rua Rio de Janeiro', 654, 'Sala 601', 24000000, 'Centro'),
    (19, 'Avenida Rio Grande do Norte', 321, 'Casa 7', 59000000, 'Lagoa'),
    (20, 'Rua Rio Grande do Sul', 123, NULL, 90000000, 'Jardim'),
    (21, 'Avenida Rondônia', 789, 'Apartamento 701', 78900000, 'Praia'),
    (22, 'Rua Roraima', 456, 'Casa 8', 69300000, 'Centro'),
    (23, 'Avenida Santa Catarina', 123, NULL, 88000000, 'Centro'),
    (24, 'Rua São Paulo', 789, 'Sala 801', 1000000, 'Bairro Novo'),
    (25, 'Avenida Sergipe', 321, 'Casa 9', 49000000, 'Liberdade'),
    (26, 'Rua Tocantins', 123, NULL, 77000000, 'Jardim'),
    (27, 'Avenida Distrito Federal', 789, 'Apartamento 901', 70000000, 'Praia');

INSERT INTO Membros(IdEndereco, NomeMembro, NumIdentificacao)
VALUES
    (1, 'João Silva', 12345),
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
    (16, 'Patrícia Silva', 987654),
    (17, 'Alexandre Santos', 567890),
    (18, 'Carla Lima', 543210),
    (19, 'Roberto Costa', 112233),
    (20, 'Juliana Almeida', 445566),
    (21, 'Luciano Ferreira', 998877),
    (22, 'Eduarda Martins', 887766),
    (23, 'Márcio Pereira', 223344),
    (24, 'Andressa Oliveira', 554433),
    (25, 'Ricardo Souza', 123456),
    (26, 'Tatiana Lima', 987654),
    (27, 'Felipe Costa', 567890);

INSERT INTO CategoriaLivro (NomeCategoria)
VALUES
    ('Ação'),
    ('Aventura'),
    ('Romance'),
    ('Ficção Científica'),
    ('Fantasia'),
    ('Mistério'),
    ('Terror'),
    ('Não Ficção');

INSERT INTO Livros (IdCategoria, Titulo, AnoPub, QtdeExemplaresDisp)
VALUES
    (1, 'O Senhor dos Anéis', 1954, 20),
    (2, 'Dom Quixote', 1605, 15),
    (3, 'Orgulho e Preconceito', 1813, 12),
    (4, '1984', 1949, 18),
    (5, 'Cem Anos de Solidão', 1967, 25),
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
    (8, 'O Pequeno Príncipe', 1943, 19),
    (1, 'Memórias Póstumas de Brás Cubas', 1881, 10),
    (2, 'A Divina Comédia', 1308, 8),
    (3, 'Guerra e Paz', 1869, 12),
    (4, 'O Apanhador no Campo de Centeio', 1951, 14),
    (5, 'Em Busca do Tempo Perdido', 1913, 17),
    (6, 'O Sol é para Todos', 1960, 10),
    (7, 'O Nome do Vento', 2007, 21),
    (8, 'A Revolução dos Bichos', 1945, 11);

INSERT INTO Autores (NomeAutor, DataNascimento)
VALUES
    ('João Silva', '15/05/1980'),
    ('Maria Santos', '22/09/1975'),
    ('Pedro Oliveira', '10/03/1990'),
    ('Ana Pereira', '05/12/1988'),
    ('Luís Ferreira', '18/06/1972'),
    ('Marta Gomes', '28/02/1985'),
    ('José Almeida', '14/07/1995'),
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







 
