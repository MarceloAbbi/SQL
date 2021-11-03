Inserção de dados na tabela Aluno:

INSERT INTO aluno(cpf, nome, endereco)
VALUES(1234567891, "João Silveira", "Rua José Silveira, 125");

INSERT INTO aluno(cpf, nome, endereco)
VALUES(1234567895, "Julia Silva", "Rua Silveira José, 155");

INSERT INTO aluno(cpf, nome, endereco)
VALUES(1876543210, "Julio Antonio", "Avenida Protásio, 1578");

INSERT INTO aluno(cpf, nome, endereco)
VALUES(1597534682, "Raimundo Teixeira", "Rua Mirtilo, 1684");

Inserção de dados na tabela Disciplina:

INSERT INTO disciplina(codigoDisciplina, qtde_creditos)
VALUES (10, 4);

INSERT INTO disciplina(codigoDisciplina, qtde_creditos)
VALUES (9, 4);

INSERT INTO disciplina(codigoDisciplina, qtde_creditos)
VALUES (11, 4);


Inserção de dados na tabela Professor:

INSERT INTO professor(matriculaProfessor, nome)
VALUES (1111111111, "Roberto Carlos");

INSERT INTO professor(matriculaProfessor, nome)
VALUES (122222222, "Carlos Roberto");

INSERT INTO professor(matriculaProfessor, nome)
VALUES (1233333333, "Ronaldo Souza");

Deletando aluno onde o atributo CPF for igual a 1234567891:

DELETE FROM aluno WHERE cpf = 1234567891;

Selecionando atributo nome onde o nome do aluno for “Julia Silva”:

SELECT nome FROM aluno WHERE nome = "Julia Silva";

Selecionando todos os atributos da tabela aluno:

SELECT * FROM aluno;

Atualizando a tabela disciplina, onde o atributo codigoDisciplina for 10, vai passar a ser 12:

UPDATE disciplina set codigoDisciplina = 12 WHERE codigoDisciplina = 10;

Selecionando cpf da tabela aluno e combinando com codigoDisciplina da tabela disciplina:

SELECT cpf FROM aluno as a JOIN disciplina as d ON a.cpf = d.codigoDisciplina;

Usando INNER JOIN para obter os dados relacionados nos atributos “nome” da tabela aluno, e “codigoDisciplina”, na tabela Disciplina:
SELECT a.nome [ALUNO], d.codigoDisciplina AS [DISCIPLINA], FROM aluno AS a INNER JOIN disciplina AS d ON a.d = F.IDALUNO

Usando INNER JOIN para obter os dados relacionados nos atributos “nome” na tabela aluno, e “dataMatricula” da tabela matricula:

SELECT a.nome [ALUNO], d.dataMatricula AS [DATAMATRICULA], 
FROM aluno AS a INNER JOIN ALUNOS AS l ON a.cpf ON d.cpf;

Cruzando todos os dados da tabela aluno e professor:
SELECT * FROM aluno CROSS JOIN professor;


Usando INNER JOIN para obter os dados relacionados nos atributos “nome” e “cpf” na tabela aluno, e “codigoDisciplina” da tabela disciplina:

SELECT A.cpf , A.nome , D.codigoDisciplina
FROM aluno AS A INNER JOIN disciplina AS D ON D.codigoDisciplina = A.cpf

Selecionando e eliminando a duplicação das linhas dos atributos “nome” e “codigoDisciplina” das tabelas unidas Aluno e Disciplina:

SELECT DISTINCT nome, codigoDisciplina FROM aluno a join disciplina d;
