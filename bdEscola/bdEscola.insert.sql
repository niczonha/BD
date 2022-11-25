USE bdEscola

INSERT INTO tbCurso
VALUES
    ('Inglês', 2000, 356.0)
    ,('Alemão', 3000, 478.0)

SELECT nomeCurso, cargahorarioCurso, valorCurso FROM tbCurso

INSERT INTO tbAluno
VALUES
    ('Paulo Santos', '2000/10/03', '82.292.122-0', 'SP')
    ,('Maria da Gloria', '1999/03/10', '45.233.123-0', 'SP')
    ,('Perla Nogueira Silva', '1998/04/04', '23.533.211-9', 'SP')
    ,('Gilson Barros Silva', '1995/09/09', '34.211.111-x', 'PE')
    ,('Mariana Barvosa Santos', '2001/10/10', '54.222.122-9', 'RJ')

SELECT nomeAluno, dataNascimentoAluno, rgAluno, naturalidadeAluno FROM tbAluno

INSERT INTO tbTurma
VALUES
    ('1|A', 1, '12:00:00')
    ,('1|B', 1, '18:00:00')
    ,('1AA', 2, '19:00:00')

SELECT nomeTurma, codCurso, codTurma FROM tbTurma

INSERT INTO tbMatricula
VALUES
    ('2015/03/10', 1, 1)
    ,('2014/04/05', 2, 1)
    ,('2012/03/05', 3, 2)
    ,('2016/03/03', 1, 3)
    ,('2015/07/05', 4, 2)
    ,('2015/05/07', 4, 3)
    ,('2015/06/06', 5, 1)
    ,('2015/05/05', 5, 3)

SELECT dataMatricula, codAluno, codTurma FROM tbMatricula