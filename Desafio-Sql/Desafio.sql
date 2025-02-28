CREATE SCHEMA `desafio`;
CREATE TABLE `desafio`.`tabela1`(
`CodigoID`INT NOT NULL,
`Nome`VARCHAR(15) NULL,
`Sobrenome`VARCHAR(45) NULL,
`Profissão`VARCHAR(15) NULL,
PRIMARY KEY (`CodigoID`));

CREATE TABLE `desafio`.`tabela2`(
`CodigoID`INT NOT NULL,
`País`VARCHAR(15) NULL,
`Cidade`VARCHAR(45) NULL,
`Período`VARCHAR(15) NULL,
PRIMARY KEY (`CodigoID`));

INSERT INTO tabela1(CodigoID,Nome,Sobrenome,Profissão)
VALUES
(1,'João','Firmino','Professor'),
(2,'Gabriel','Henrique','Professor'),
(3,'Tiago','Santos','Veterinário'),
(4,'Matheus','Cortez','Cientista'),
(5,'Franciele','Matos','Dentista'),
(6,'Gabriela','Rocha','Cantora'),
(7,'Eduarda','Camila','Personal'),
(8,'Silvio','Fernando','Professor'),
(9,'Adriana','Castro','Dentista'),
(10,'Bruna','Bezerra','Nutricionista');

INSERT INTO tabela2(CodigoID,País,Cidade,Período)
VALUES
(1,'Brasil','Brasilia','22-02-2025'),
(2,'Brasil','Salvador','22-02-2025'),
(3,'Brasil','Rio de Janeiro','22-02-2025'),
(4,'Brasil','São Paulo','22-02-2025'),
(5,'Brasil','Uberlândia','22-02-2025'),
(6,'Brasil','Santa Luzia','22-02-2025'),
(7,'Brasil','São Luís','22-02-2025'),
(8,'Brasil','Parnamirim','22-02-2025'),
(9,'Brasil','Barreiras','22-02-2025'),
(10,'Brasil','Petrolina','22-02-2025');

SELECT COUNT(CodigoID) FROM tabela1 WHERE Profissão = 'Professor';

SELECT SUM(CodigoID) FROM tabela2 WHERE País = 'Brasil';  

SELECT Período,Cidade
FROM tabela2
GROUP BY Período, Cidade
HAVING COUNT(Cidade) = 'Rio de Janeiro';

