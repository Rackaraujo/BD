-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Proprietario (
    idproprietario INT PRIMARY KEY AUTO_INCREMENT,
    datanasc DATE,
    cpf VARCHAR(11) UNIQUE NOT NULL,
    rg VARCHAR(20) UNIQUE NOT NULL,
    telefone VARCHAR(20),
    nome VARCHAR(155) NOT NULL,
    email VARCHAR(155) UNIQUE NOT NULL,
    endereco VARCHAR(155),
    agencia VARCHAR(100) NOT NULL,
    numconta VARCHAR(100) NOT NULL,
    banco varchar(50) NOT NULL,
    pix VARCHAR(100) NOT NULL,
    qimovel INT,
    FOREIGN KEY (qimovel) REFERENCES Imovel (idimovel)
);

CREATE TABLE Imovel (
    idimovel INT PRIMARY KEY AUTO_INCREMENT,
    estado VARCHAR(155) NOT NULL,
    num VARCHAR(10) NOT NULL,
    cidade VARCHAR(155) NOT NULL,
    bairro VARCHAR(155) NOT NULL,
    rua VARCHAR(155) NOT NULL,
    complemento VARCHAR(155),
    cep VARCHAR(10) NOT NULL,
    codaluguel INT,
    FOREIGN KEY (codaluguel) REFERENCES Aluguel (codaluguel)
);

CREATE TABLE Info (
    idinfo INT PRIMARY KEY AUTO_INCREMENT,
    quintal BIT,
    banheiro BIT,
    quarto BIT,
    cozinha BIT,
    saladejantar BIT,
    saladeestar BIT,
    lavanderia BIT,
    garagem BIT,
    suite BIT,
    areaconstruida DECIMAL(4,2) NOT NULL,
    condicoes VARCHAR(155),
    adicionais VARCHAR(155),
    piscina BIT,
    idimovel INT,
    FOREIGN KEY (idimovel) REFERENCES Imovel (idimovel)
);

CREATE TABLE Midia (
    idmidia INT PRIMARY KEY AUTO_INCREMENT,
    videos VARCHAR(255),
    fotos VARCHAR(255),
    idimovel INT,
    FOREIGN KEY (idimovel) REFERENCES Imovel (idimovel)
);

CREATE TABLE Corretor (
    idcorretor INT PRIMARY KEY AUTO_INCREMENT,
    datanasc DATE NOT NULL,
    tel VARCHAR(20),
    email VARCHAR(155) UNIQUE NOT NULL,
    rg VARCHAR(20)  UNIQUE NOT NULL,
    cpf VARCHAR(11)  UNIQUE NOT NULL,
    nome VARCHAR(155) NOT NULL,
    cidade VARCHAR(155) NOT NULL,
    bairro VARCHAR(155) NOT NULL,
    rua VARCHAR(155) NOT NULL,
    complemento VARCHAR(155) NOT NULL,
    contrato VARCHAR(255) NOT NULL,
    codaluguel INT,
    FOREIGN KEY (codaluguel) REFERENCES Aluguel (codaluguel)
);

CREATE TABLE Fiador (
    idfiador INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(155) NOT NULL,
    datanasc DATE,
    cpf VARCHAR(11) UNIQUE NOT NULL,
    rg VARCHAR(20) UNIQUE NOT NULL,
    email VARCHAR(155) UNIQUE NOT NULL,
    rua VARCHAR(155) NOT NULL,
    cidade VARCHAR(155) NOT NULL,
    estado VARCHAR(155) NOT NULL,
    telefone VARCHAR(20)
);

CREATE TABLE Inquilino (
    idinquilino INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(155) NOT NULL,
    datanasc DATE,
    rg VARCHAR(20) UNIQUE NOT NULL,
    cpf VARCHAR(11) UNIQUE NOT NULL,
    email VARCHAR(155) UNIQUE NOT NULL,
    estado VARCHAR(155) NOT NULL,
    cidade VARCHAR(155) NOT NULL,
    rua VARCHAR(155) NOT NULL,
    telefone VARCHAR(20),
    agencia VARCHAR(155) NOT NULL,
    numconta VARCHAR(155) NOT NULL,
    pix VARCHAR(155) NOT NULL,
    idfiador INT,
    FOREIGN KEY (idfiador) REFERENCES Fiador (idfiador)
);

CREATE TABLE Contrata (
    idinquilino INT,
    idcorretor INT,
    FOREIGN KEY (idinquilino) REFERENCES Inquilino (idinquilino),
    FOREIGN KEY (idcorretor) REFERENCES Corretor (idcorretor)
);

CREATE TABLE Aluguel (
    codaluguel INT PRIMARY KEY AUTO_INCREMENT,
    datafim DATE NOT NULL,
    valor DECIMAL(15,2),
    datainicio DATE NOT NULL,
    datapagamento DATE,
    condicoes VARCHAR(155),
    datacadastro TIMESTAMP,
    datavencimento DATE
);

ALTER TABLE Info ADD FOREIGN KEY(idimovel) REFERENCES Imóvel (idimovel)
ALTER TABLE Imóvel ADD FOREIGN KEY(codaluguel) REFERENCES aluguel (codaluguel)
ALTER TABLE Corretor ADD FOREIGN KEY(codaluguel) REFERENCES aluguel (codaluguel)
ALTER TABLE Inquilino ADD FOREIGN KEY(idfiador) REFERENCES Fiador (idfiador)
