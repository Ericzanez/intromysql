 -- Eric Zanez Bicalho

-- crud para as seguintes entidades:

-- cliente(id,nome,email,telefone

-- veiculo(id,placa,ano,marca,id_cliente)

-- funcionario(id,nome,funcao,salario,matricula,estatus)



-- criar uma base de dados


CREATE DATABASE empresa_localiza;


-- conectar na base de dados


USE empresa_localiza;


-- criar as tabelas e adcionar o id automatico

-- clientes


CREATE TABLE clientes(
	id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    telefone VARCHAR(12)
);

-- veiculo


CREATE TABLE veiculos(
	id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    placa VARCHAR(11) not null,
    ano INTEGER,
    marca VARCHAR(30),
    id_cliente INTEGER NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id)
);

-- funcionario


CREATE TABLE funcionarios(
	id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    funcao VARCHAR(50) NOT NULL,
    salario DOUBLE NOT NULL,
    matricula INTEGER,
    estatus INTEGER NOT NULL
);
-- inserir na base de dados usando o comando insert

-- clientes


INSERT INTO clientes( nome, emails, telefone) VALUES ("nome1","email1",1324567890);
INSERT INTO clientes( nome, emails, telefone) VALUES ("nome2","email2",3215467890);
INSERT INTO clientes( nome, emails, telefone) VALUES ("nome3","email3",0834657821);
INSERT INTO clientes( nome, emails, telefone) VALUES ("nome4","email4",6231457890);
INSERT INTO clientes( nome, emails, telefone) VALUES ("nome5","email5",9835421670);


-- veiculos


INSERT INTO veiculos(placa, ano, marca, id_cliente) VALUES ("umaplacaai",2006,marcaescolhida,1);
INSERT INTO veiculos(placa, ano, marca, id_cliente) VALUES ("umaplacaai2",2010,"umamarca",5);
INSERT INTO veiculos(placa, ano, marca, id_cliente) VALUES ("umaplacaai3",2089,"outramarca",3);
INSERT INTO veiculos(placa, ano, marca, id_cliente) VALUES ("umaplacaai4",1980,"maisumamarca",2);
INSERT INTO veiculos(placa, ano, marca, id_cliente) VALUES ("umaplacaai5",2013,"maisoutramarca",4);


-- funcionarios
-- legenda estatus: 0=inativo,1=ativo

INSERT INTO funcionarios( nome, funcao, salario, matricula, estatus) VALUES ("chefe","gerente",10000,1111,1);
INSERT INTO funcionarios( nome, funcao, salario, matricula, estatus) VALUES ("servo","vendendor",1200,1234,1);
INSERT INTO funcionarios( nome, funcao, salario, matricula, estatus) VALUES ("morto","vendendor",0,4321,0);


-- criar consultas usando o comando select

-- clientes


SELECT * FROM clientes;
SELECT email FROM clientes where id = 2;
SELECT nome FROM clientes;
SELECT email,telefone FROM clientes;


-- veiculos


SELECT * FROM veiculos;
SELECT * FROM veiculos where id = 3;
SELECT placa FROM veiculos;
SELECT * FROM veiculos where id_cliente = 1;


-- funcionarios


SELECT * FROM funcionarios;
SELECT * FROM funcionarios WHERE estatus = 1;
SELECT matricula FROM funcionarios;
SELECT funcao,salario FROM funcionarios;
SELECT funcao,salario FROM funcionarios WHERE estatus = 1;


-- deletar alguns registros usando o comando delete

-- veiculos

 
DELETE FROM veiculos where id = 2;
DELETE FROM veiculos where id_cliente = 1;
DELETE FROM veiculos;


-- clientes


DELETE FROM clientes where id = 1;
DELETE FROM clientes where nome = adevair;
DELETE FROM clientes where true;


-- funcionarios


DELETE FROM funcionarios where id = 1;
DELETE FROM funcionarios WHERE estatus = 0;


-- atualizar os registros existentes usando o comando update

-- clientes


UPDATE clientes set nome = "joaozinho" WHERE id = 5;


-- veiculos


UPDATE veiculo set ano = "3045" WHERE id = 4;


-- funcionarios


UPDATE funcionarios set nome = "crud" WHERE id = 2

