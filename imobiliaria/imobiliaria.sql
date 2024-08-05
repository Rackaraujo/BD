-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Proprietario (
    idproprietario INT PRIMARY KEY AUTO_INCREMENT,
    datanasc DATE,
    cpf CHAR(11),
    rg VARCHAR(20),
    telefone VARCHAR(20),
    nome VARCHAR(155),
    email VARCHAR(155),
    endereco VARCHAR(155),
    agencia VARCHAR(100),
    numconta VARCHAR(100),
    pix VARCHAR(100),
    idimovel INT,
    FOREIGN KEY (idimovel) REFERENCES Imovel (idimovel)
);

CREATE TABLE Corretor (
    idcorretor INT PRIMARY KEY AUTO_INCREMENT,
    datanasc DATE,
    tel VARCHAR(20),
    rg VARCHAR(20),
    cpf CHAR(11),
    nome VARCHAR(155),
    cidade VARCHAR(155),
    bairro VARCHAR(155),
    rua VARCHAR(155),
    contrato VARCHAR(255),
    codaluguel INT,
    FOREIGN KEY (codaluguel) REFERENCES Aluguel (codaluguel)
);

CREATE TABLE Fiador (
    idfiador INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(155),
    datanasc DATE,
    cpf CHAR(11),
    rg VARCHAR(20),
    rua VARCHAR(155),
    cidade VARCHAR(155),
    estado VARCHAR(155),
    telefone VARCHAR(20)
);

CREATE TABLE Inquilino (
    idinquilino INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(155),
    datanasc DATE,
    rg VARCHAR(20),
    cpf CHAR(11),
    estado VARCHAR(155),
    cidade VARCHAR(155),
    rua VARCHAR(155),
    telefone VARCHAR(20),
    agencia VARCHAR(155),
    numconta VARCHAR(155),
    pix VARCHAR(155),
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
    datafim DATE,
    valor DECIMAL(15,2),
    datainicio DATE,
    datapagamento DATE,
    condicoes VARCHAR(155),
    datacadastro TIMESTAMP,
    datavencimento DATE
);

CREATE TABLE Imovel (
    idimovel INT PRIMARY KEY AUTO_INCREMENT,
    estado VARCHAR(155),
    num VARCHAR(10),
    país VARCHAR(155),
    cidade VARCHAR(155),
    bairro VARCHAR(155),
    rua VARCHAR(155),
    complemento VARCHAR(155),
    cep VARCHAR(10),
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
    areaconstruida DECIMAL(10,2),
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

ALTER TABLE Info ADD FOREIGN KEY(idimovel) REFERENCES Imóvel (idimovel)
ALTER TABLE Imóvel ADD FOREIGN KEY(codaluguel) REFERENCES aluguel (codaluguel)
ALTER TABLE Corretor ADD FOREIGN KEY(codaluguel) REFERENCES aluguel (codaluguel)
ALTER TABLE Inquilino ADD FOREIGN KEY(idfiador) REFERENCES Fiador (idfiador)