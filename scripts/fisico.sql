/*--- - << Revisão P1 >> ------------------
 -- 
 --                    SCRIPT DE CRIACAO (DDL)
 -- 
 -- Data Criacao ...........: 18/09/2021
 -- Autor(es) ..............: Guilherme Verissimo Cerveira Braz
 -- Banco de Dados .........: MySQL
 -- Banco de Dados(nome) ...: revisaoP1
 -- 
 -- 
 -- - - PROJETO = > 01 Base de Dados - - = > 03 Tabelas -- -----------------------------------------------------------------
 */
CREATE DATABASE IF NOT EXISTS revisaoP1 DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;
USE revisaoP1;
--
CREATE TABLE PESSOA (
    idPessoa INT PRIMARY KEY,
    nomeCompleto VARCHAR (100),
    sexo VARCHAR(1),
    dataNascimento DATA,
    idade INT,
    responsavel VARCHAR(100),
    situacaoSaude VARCHAR(1),
    tipoSanguineo VARCHAR(3),
    situacaoGestacao VARCHAR(1),
    estado VARCHAR(2),
    CONSTRAINT PESSOA_FK PRIMARY KEY(idPessoa)
) ENGINE = InnoDB AUTO_INCREMENT = 1,
DEFAULT CHARSET utf8;
CREATE TABLE SINTOMA (
    idSintoma INT PRIMARY KEY,
    dataHora TIMESTAMP,
    descricaoSintoma VARCHAR(500),
    CONSTRAINT SINTOMA_FK PRIMARY KEY(idSintoma)
) ENGINE = InnoDB AUTO_INCREMENT = 1,
DEFAULT CHARSET utf8;
CREATE TABLE TEM (
    idPessoa INT,
    idSintoma INT,
    CONSTRAINT tem_PESSOA_FK FOREIGN KEY (idPessoa),
    CONSTRAINT tem_SINTOMA_FK FOREIGN KEY (idSintoma)
) ENGINE = InnoDB,
DEFAULT CHARSET utf8;