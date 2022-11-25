DROP DATABASE bdEscola
CREATE DATABASE bdEscola
GO

USE bdEscola

CREATE TABLE tbAluno(
    codAluno INT PRIMARY KEY IDENTITY(1,1)
    ,nomeAluno VARCHAR(50) NOT NULL
    ,dataNascimentoAluno DATE NOT NULL
    ,rgAluno VARCHAR(13) NOT NULL
    ,naturalidadeAluno CHAR(2)
)

CREATE TABLE tbCurso(
    codCurso INT PRIMARY KEY IDENTITY(1,1)
    ,nomeCurso VARCHAR(30) NOT NULL
    ,cargahorarioCurso SMALLINT NOT NULL
    ,valorCurso SMALLMONEY NOT NULL
)

CREATE TABLE tbTurma(
    codTurma INT PRIMARY KEY IDENTITY(1,1)
    ,nomeTurma VARCHAR(30) NOT NULL
    ,codCurso INT FOREIGN KEY REFERENCES tbCurso(codCurso)
    ,horarioTurma TIME NOT NULL
)

CREATE TABLE tbMatricula(
    codMatricula INT PRIMARY KEY IDENTITY(1,1)
    ,dataMatricula DATE DEFAULT(GETDATE())
    ,codAluno INT FOREIGN KEY REFERENCES tbAluno(codAluno)
    ,codTurma INT FOREIGN KEY REFERENCES tbTurma(codTurma)
)
