INSERT INTO Paises (NomePais) VALUES  
('Brasil'), ('Argentina'), ('Espanha'), ('França'), ('Estados Unidos'),
('Alemanha'), ('Itália'), ('Portugal'), ('Reino Unido'),
('Chile'), ('Uruguai'), ('Canadá'), ('Japão'), ('China'), ('Austrália');

INSERT INTO Cidade (NomeCidade, CodPais) VALUES
('São Paulo', 1), ('Rio de Janeiro', 1), ('Buenos Aires', 2),
('Barcelona', 3), ('Paris', 4), ('Nova York', 5), ('Berlim', 6),
('Roma', 7), ('Lisboa', 8), ('Londres', 9), ('Santiago', 10),
('Montevidéu', 11), ('Toronto', 12), ('Tóquio', 13), ('Pequim', 14);

INSERT INTO Torneio (NomeTorneio, CodCidade) VALUES 
('Aberto de São Paulo', 1), ('Rio Open', 2), ('ATP Buenos Aires', 3),
('Barcelona Open', 4), ('Roland Garros', 5), ('US Open', 6),
('ATP Berlim', 7), ('Masters de Roma', 8), ('Lisboa Cup', 9),
('Wimbledon', 10), ('Chile Open', 11), ('Uruguai Open', 12),
('Canada Masters', 13), ('Tokyo Open', 14), ('China Masters', 15);

INSERT INTO Tenista (NomeTenista, DataNascimento, CodPais) VALUES 
('Rafael Silva', '1995-04-12', 1), ('Lucas Andrade', '1998-01-28', 1),
('Diego Peralta', '1994-10-03', 2), ('Carlos Mendez', '2000-06-18', 2),
('Javier Nadal', '1997-02-09', 3), ('Pierre Dubois', '1993-11-21', 4),
('John Miller', '1996-07-15', 5), ('Hans Schmidt', '1992-05-30', 6),
('Marco Russo', '1999-08-17', 7), ('Tiago Moreira', '1994-03-02', 8),
('Oliver Smith', '2001-12-12', 9), ('Matias Soto', '1998-09-09', 10),
('Federico Lopez', '2000-04-25', 11), ('Kenji Tanaka', '1995-01-01', 13),
('Li Wei', '1997-05-05', 14);

INSERT INTO Edicao (AnoEdicao, Classificacao, CodTorneio, CodTenista) VALUES
(2020, 1, 1, 1), (2022, 3, 2, 1), (2023, 3, 3, 1), (2024, 3, 3, 1),
(2021, 2, 1, 2), (2019, 3, 2, 3), (2022, 1, 3, 4), (2023, 2, 4, 5),
(2020, 4, 5, 6), (2021, 5, 6, 7), (2022, 3, 7, 8), (2023, 1, 8, 9),
(2020, 2, 9, 10), (2021, 1, 10, 11), (2022, 4, 11, 12),
(2023, 3, 12, 13), (2020, 5, 13, 14), (2021, 2, 14, 15);

INSERT INTO Patrocinador (NomePatrocinador) VALUES 
('Nike'), ('Adidas'), ('Puma'), ('Fila'), ('Asics'), ('Lacoste'),
('Yonex'), ('Wilson'), ('Head'), ('Babolat'), ('Red Bull'),
('Rolex'), ('Mercedes-Benz'), ('Peugeot'), ('Emirates');

INSERT INTO Contrato (CodTenista, CodPatrocinador) VALUES 
(2,2), (2,3), (3,3), (4,4), (5,5), (6,6), (7,7), (8,8),
(9,9), (10,10), (11,11), (12,12), (13,13), (14,14), (15,15);
