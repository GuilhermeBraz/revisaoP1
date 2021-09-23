/*
 ------------------ << Revisão P1 >> ------------------
 -- 
 --                    SCRIPT DE CRIACAO (DDL)
 -- 
 -- Data Criacao ...........: 18/09/2021
 -- Autor(es) ..............: Guilherme Verissimo Cerveira Braz
 -- Banco de Dados .........: MySQL
 -- Banco de Dados(nome) ...: revisaoP1
 -- 
 -- 
 -- - - PROJETO = > 01 Base de Dados 
 --             = > 05 Tabelas 
 */
CREATE DATABASE IF NOT EXISTS revisaoP1 DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;

USE revisaoP1;

CREATE TABLE MASCULINO (
    idMasculino BIGINT NOT NULL AUTO_INCREMENT,
    tipo ENUM('A', 'B', 'AB', 'O') NOT NULL,
    rh ENUM('-', '+') NOT NULL,
    CONSTRAINT MASCULINO_PK PRIMARY KEY (idMasculino)
) Engine = InnoDB AUTO_INCREMENT = 1,
DEFAULT CHARSET utf8;

CREATE TABLE ESTADO (
    idEstado VARCHAR(2) NOT NULL,
    nomeEstado VARCHAR(100) NOT NULL,
    CONSTRAINT ESTADO_PK PRIMARY KEY (idEstado) 
) Engine = InnoDB,
DEFAULT CHARSET utf8;

CREATE TABLE FEMININO (
    idFeminino BIGINT NOT NULL AUTO_INCREMENT,
    situacaoGestacao ENUM('S', 'N', 'C'),
    idEstado VARCHAR(2),
    CONSTRAINT FEMININO_PK PRIMARY KEY (idFeminino),
    CONSTRAINT FEMININO_ESTADO_FK FOREIGN KEY(idEstado) REFERENCES ESTADO(idEstado)  
) Engine = InnoDB AUTO_INCREMENT = 1 ,
DEFAULT CHARSET utf8;

CREATE TABLE PESSOA (
    idPessoa BIGINT NOT NULL AUTO_INCREMENT,
    nomeCompleto VARCHAR (100) NOT NULL,
    sexo ENUM('M', 'F') NOT NULL,
    dataNascimento DATE NOT NULL,
    responsavel VARCHAR(100) NOT NULL,
    situacaoSaude ENUM('S', 'T', 'C', 'F') NOT NULL,
    idFeminino BIGINT,
    idMasculino BIGINT,
    CONSTRAINT PESSOA_PK PRIMARY KEY(idPessoa),
    CONSTRAINT PESSOA_MASCULINO_FK FOREIGN KEY (idMasculino) REFERENCES MASCULINO(idMasculino),
    CONSTRAINT PESSOA_FEMININO_FK FOREIGN KEY (idFeminino) REFERENCES FEMININO(idFeminino)
) Engine = InnoDB AUTO_INCREMENT = 1,
DEFAULT CHARSET utf8;

CREATE TABLE SINTOMA (
    idSintoma BIGINT NOT NULL AUTO_INCREMENT,
    descricaoSintoma VARCHAR(100) NOT NULL,
    CONSTRAINT SINTOMA_PK PRIMARY KEY(idSintoma)
) Engine = InnoDB AUTO_INCREMENT = 1,
DEFAULT CHARSET utf8;

CREATE TABLE possui (
    idPessoa BIGINT NOT NULL,
    idSintoma BIGINT NOT NULL,
    CONSTRAINT possui_PESSOA_FK FOREIGN KEY(idPessoa) REFERENCES PESSOA(idPessoa),
    CONSTRAINT possui_SINTOMA_FK FOREIGN KEY(idSintoma) REFERENCES SINTOMA(idSintoma)
) Engine = InnoDB,
DEFAULT CHARSET = utf8;
