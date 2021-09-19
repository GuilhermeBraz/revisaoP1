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
    idPessoa INT(10) NOT NULL,
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
--
CREATE TABLE SINTOMA (
    idSintoma INT(10) NOT NULL,
    dataHora TIMESTAMP NOT NULL,
    descricaoSintoma VARCHAR(500) NOT NULL,
    CONSTRAINT SINTOMA_FK PRIMARY KEY(idSintoma)
) Engine = InnoDB AUTO_INCREMENT = 1,
DEFAULT CHARSET utf8;
--
CREATE TABLE tem (
    idPessoa INT(10) NOT NULL,
    idSintoma INT(10) NOT NULL,
    CONSTRAINT tem_PESSOA_FK FOREIGN KEY (idPessoa),
    CONSTRAINT tem_SINTOMA_FK FOREIGN KEY (idSintoma)
) Engine = InnoDB,
DEFAULT CHARSET utf8;