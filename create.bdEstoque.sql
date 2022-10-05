CREATE DATABASE bdEstoque
GO

USE bdEstoque

CREATE TABLE tbCliente(
	codCliente INT PRIMARY KEY IDENTITY (1,1)
	,nomeCliente VARCHAR (50) NOT NULL
	,cpfCliente CHAR (11) NOT NULL UNIQUE
	,emailCliente VARCHAR (30) UNIQUE
	,sexoCliente CHAR(1) NOT NULL
	,dataNascimentoCliente SMALLDATETIME CHECK(dataNascimentoCliente < GETDATE())
)

CREATE TABLE tbVenda(
	codVenda INT PRIMARY KEY IDENTITY (1,1)
	,dataVenda SMALLDATETIME DEFAULT GETDATE()
	,valorTotalVenda SMALLMONEY NOT NULL
	,codClient INT FOREIGN KEY REFERENCES tbCliente(codCliente)
)

CREATE TABLE tbFornecedor(
	codFornecedor INT PRIMARY KEY IDENTITY(1,1)
	,nomeFornecedor VARCHAR (50) NOT NULL
	,contatoFornecedor VARCHAR (50) NOT NULL
)

CREATE TABLE tbFabricante(
	codFabricante INT PRIMARY KEY IDENTITY(1,1)
	,nomeFabricante VARCHAR (50) NOT NULL
)

CREATE TABLE tbProduto(
	codProduto INT PRIMARY KEY IDENTITY(1,1)
	,descricaoProduto VARCHAR (50) NOT NULL
	,valorProduto SMALLMONEY NOT NULL
	,quantidadeProduto SMALLINT DEFAULT (1)
	,codFabricante INT FOREIGN KEY REFERENCES tbFabricante (codFabricante)
	,codFornecedor INT FOREIGN KEY REFERENCES tbFornecedor (codFornecedor)
)

CREATE TABLE tbItensVenda(
	codItensVenda INT PRIMARY KEY IDENTITY (1,1)
	,codVenda INT FOREIGN KEY REFERENCES tbVenda(codVenda)
	,codProduto INT FOREIGN KEY REFERENCES tbProduto(codProduto)
	,quantidadeItensVenda SMALLINT DEFAULT (1)
	,subTotalItensVenda SMALLMONEY NOT NULL
)
