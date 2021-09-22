INSERT INTO ESTADO (
        idEstado, 
        nomeEstado
)
VALUES 
('DF', 'Distrito Federal'),
('MG', 'MINAS GERAIS'), 
('GO', 'GOIAS');        

INSERT INTO MASCULINO (
        tipo,
        rh
)
VALUES
('A', '+'), 
('AB', '+'), 
('O', '-'); 

INSERT INTO FEMININO (
        situacaoGestacao,
        idEstado
) 
VALUES 
('S', 'DF'), 
('N', 'GO'), 
('C', 'MG'); 

INSERT INTO PESSOA (
        nomeCompleto,
        sexo,
        dataNascimento,
        responsavel, 
        situacaoSaude,
        idFeminino, 
        idMasculino 
)
VALUES
('Pedrin', 'M', '2000-10-11', 'mae', 'T', NULL, 1), 
('Maggers', 'M', '2002-07-15', 'mae', 'S', NULL, 2), 
('Samba', 'M', '1999-04-08', 'mae', 'C', NULL, 3), 
('Maria', 'F', '1999-05-11', 'mae', 'C', 1, NULL), 
('Luiza', 'F', '1997-06-18', 'mae', 'T', 2, NULL), 
('Gabi', 'F', '1998-03-10', 'mae', 'S', 3, NULL); 

INSERT INTO SINTOMA (
        descricaoSintoma
)
VALUES
('Sem Nenhum Sintoma'), 
('Febre'), 
('Perda de paladar'); 

INSERT INTO possui (
        idPessoa,
        idSintoma
)
VALUES
(1,1),
(2,2),
(3,3),
(4,3),
(5,2),
(6,1);
