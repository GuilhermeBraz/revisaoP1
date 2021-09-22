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
--             = > 03 Tabelas 
*/ 
CREATE DATABASE IF NOT EXISTS revisaoP1 DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;
USE revisaoP1;

CREATE TABLE PESSOA (
    idPessoa INT NOT NULL AUTO_INCREMENT,
    nomeCompleto VARCHAR (100) NOT NULL,
    sexo VARCHAR(1) NOT NULL,
    dataNascimento DATE NOT NULL,
    idade INT(2) NOT NULL,
    responsavel VARCHAR(100) NOT NULL,
    situacaoSaude VARCHAR(1) NOT NULL,
    tipoSanguineo VARCHAR(3),
    situacaoGestacao VARCHAR(1),
    estado VARCHAR(2),
    CONSTRAINT PESSOA_FK PRIMARY KEY(idPessoa)
) Engine = InnoDB AUTO_INCREMENT = 1,
DEFAULT CHARSET utf8;

CREATE TABLE SINTOMA (
    idSintoma INT NOT NULL AUTO_INCREMENT,
    dataHora TIMESTAMP NOT NULL,
    descricaoSintoma VARCHAR(500) NOT NULL,
    CONSTRAINT SINTOMA_FK PRIMARY KEY(idSintoma)
) Engine = InnoDB AUTO_INCREMENT = 1,
DEFAULT CHARSET utf8;

CREATE TABLE possui (
    idPessoa INT NOT NULL,
    idSintoma INT NOT NULL,
    CONSTRAINT possui_PESSOA_FK FOREIGN KEY(idPessoa) REFERENCES PESSOA(idPessoa),
    CONSTRAINT possui_SINTOMA_FK FOREIGN KEY(idSintoma) REFERENCES SINTOMA(idSintoma)
) Engine = InnoDB,
DEFAULT CHARSET = utf8;