-- Criando o banco de dados 
CREATE DATABASE sistema; 
USE sistema; 

-- Tabela de países 
CREATE TABLE Paises (
    NomePais VARCHAR(50) NOT NULL,
    CodPais INT NOT NULL AUTO_INCREMENT PRIMARY KEY
); 

-- Tabela de cidades
CREATE TABLE Cidade (
    NomeCidade VARCHAR(50) NOT NULL,
    CodCidade INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    CodPais INT,
    FOREIGN KEY (CodPais) REFERENCES Paises(CodPais)
);

-- Tabela de torneios
CREATE TABLE Torneio (
    NomeTorneio VARCHAR(50) NOT NULL,
    CodTorneio INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    CodCidade INT,
    FOREIGN KEY (CodCidade) REFERENCES Cidade(CodCidade)
);

-- Tabela de tenistas
CREATE TABLE Tenista (
    NomeTenista VARCHAR(50) NOT NULL,
    DataNascimento DATE NOT NULL,
    CodTenista INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    CodPais INT,
    FOREIGN KEY (CodPais) REFERENCES Paises(CodPais)
);

-- Tabela de edições de torneio
CREATE TABLE Edicao (
    AnoEdicao YEAR NOT NULL,
    Classificacao INT NOT NULL,
    CodTorneio INT NOT NULL,
    CodTenista INT NOT NULL,
    PRIMARY KEY (AnoEdicao, CodTorneio, CodTenista),
    FOREIGN KEY (CodTorneio) REFERENCES Torneio(CodTorneio),
    FOREIGN KEY (CodTenista) REFERENCES Tenista(CodTenista)
);

-- Tabela de patrocinadores
CREATE TABLE Patrocinador (
    NomePatrocinador VARCHAR(50) NOT NULL,
    CodPatrocinador INT NOT NULL AUTO_INCREMENT PRIMARY KEY
);

-- Tabela de contratos entre tenistas e patrocinadores
CREATE TABLE Contrato (
    CodTenista INT,
    CodPatrocinador INT,
    PRIMARY KEY (CodTenista, CodPatrocinador),
    FOREIGN KEY (CodTenista) REFERENCES Tenista(CodTenista),
    FOREIGN KEY (CodPatrocinador) REFERENCES Patrocinador(CodPatrocinador)
);
