--
-- File generated with SQLiteStudio v3.1.1 on sex abr 7 12:06:49 2017
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: tab_categoria
CREATE TABLE tab_categoria (id_categoria CHAR (36) PRIMARY KEY NOT NULL UNIQUE, descricao VARCHAR (100));
INSERT INTO tab_categoria (id_categoria, descricao) VALUES ('dd1f6f93-c5f4-4594-9d48-804b865202b9', 'SAÚDE');
INSERT INTO tab_categoria (id_categoria, descricao) VALUES ('2daad7b6-8f55-4947-b6b2-f44d1c7813a7', 'OUTRAS RECEITAS');
INSERT INTO tab_categoria (id_categoria, descricao) VALUES ('6c281bfc-4e31-481f-950b-0f9bbe52d51f', 'SALARIO');
INSERT INTO tab_categoria (id_categoria, descricao) VALUES ('70521fe3-3e4d-4d46-8d84-a78390d17687', 'MORADIA');
INSERT INTO tab_categoria (id_categoria, descricao) VALUES ('1a08119d-1f38-4e3a-9afb-557f9d05b08c', 'LAZER');
INSERT INTO tab_categoria (id_categoria, descricao) VALUES ('cdc80a5a-ef3b-4d08-acdd-573c02709795', 'TRANSPORTE');
INSERT INTO tab_categoria (id_categoria, descricao) VALUES ('0b043a89-0bf6-45a5-a261-120dfbb61a0f', 'ALIMENTAÇÃO');
INSERT INTO tab_categoria (id_categoria, descricao) VALUES ('d1b00306-c8db-416e-b0d4-0e3e4cb07857', 'OUTRAS DESPESAS');

-- Table: tab_lancamento
CREATE TABLE tab_lancamento (id_lancamento CHAR (36) PRIMARY KEY NOT NULL UNIQUE, id_categoria CHAR (36) REFERENCES tab_categoria (id_categoria), valor DECIMAL (8, 2) NOT NULL, descricao VARCHAR (100) NOT NULL, tipo_lancamento CHAR (1));

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
