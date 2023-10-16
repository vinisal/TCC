USE MASTER IF EXISTS(SELECT * FROM SYS.databases WHERE NAME = 'bd_FA')
DROP DATABASE bd_FA
GO

CREATE DATABASE bd_FA
GO

USE bd_FA
GO

CREATE TABLE Usuario
( 
   id            INT IDENTITY,
   nome          VARCHAR(100)	NOT NULL,
   email         VARCHAR(100) UNIQUE 	NOT NULL,
   senha         VARCHAR(100)	NOT NULL,
   nivelAcesso   VARCHAR(10)    NULL, -- ADMIN, TECNICO ou USER
   foto			 VARBINARY(MAX) NULL,
   statusUsuario VARCHAR(20)    NOT NULL, -- ATIVO ou INATIVO ou TROCAR_SENHA

   PRIMARY KEY (id)
)
GO
INSERT Usuario (nome, email, senha, nivelAcesso, foto, statusUsuario)
VALUES ('Ana Sá', 'ana@email.com', 'MTIzNDU2Nzg=', 'ADMIN', null, 'ATIVO')

INSERT Usuario (nome, email, senha, nivelAcesso, foto, statusUsuario)
VALUES ('Ordnael Zurc', 'ordnael@email.com', 'MTIzNDU2Nzg=', 'USER', null, 'ATIVO')




CREATE TABLE Produto
( 
   id            INT IDENTITY,
   nome          VARCHAR(100)	NOT NULL,
   descricao     VARCHAR(400)	NOT NULL,
   preco         DECIMAL(10,2)	NOT NULL,
   categoria	 VARCHAR(50)	NOT NULL, -- Algo, Coisa, Treco, Bagulho
   foto			 VARBINARY(MAX) NULL,
   statusProduto VARCHAR(20)    NOT NULL, -- ATIVO ou INATIVO

   PRIMARY KEY (id)
)
GO

INSERT Produto (nome, descricao, preco, categoria, foto, statusProduto)
VALUES ('FooBar', 'O produto é muito bom', 2.99, 'Algo', null, 'ATIVO')

select * from Usuario
select * from Produto

