SELECT * FROM R WHERE A=a1
SELECT * FROM emprestimo WHERE id_agencia=103;
SELECT * FROM carro WHERE ano >=2020;

select * from virus where periodoincubacao > 5
​σ periodoIncubacao>5 (virus)
SELECT a,c FROM R;

SELECT id_agencia, id_cliente FROM emprestimo;
SELECT nome FROM cliente WHERE cidade='Porto Alegre';
SELECT marca, modelo FROM carro;

SELECT compostoativo FROM medicamento;
pi compostoativo (medicamento)

CREATE TABLE PRAGAS(
	id INT,
	nomePraga VARCHAR(60),
	PRIMARY KEY (id)
);

SELECT nomePopular FROM VIRUS WHERE periodoIncubacao > 5;
pi nomePopular(​σ periodoIncubacao>5(VIRUS))


π nome_da_mae(σ ano_nascimento < 2010 (PESSOA))

SELECT * FROM regions;

SELECT country_name FROM countries;

SELECT country_name, region_id FROM countries WHERE region_id = 2;

SELECT 
	salary				AS salario,
	salary*12			AS 'salario anual',
 	salary-salary*0.27	AS IRPF,
	salary+salary*0.15 AS "Bônus",
	salary+(salary*0.15)-(salary*0.27)-(salary*0.08) AS 'teste'
FROM employees 
LIMIT 10;

SELECT first_name, last_name FROM employees; 
SELECT first_name, last_name FROM employees WHERE last_name='king'; 

--projeção e seleção
SELECT 
	first_name AS "Nome", 
	last_name  AS "Sobrenome"
FROM employees 
WHERE last_name='king'; 

-- OPERADORES DE COMPARAÇÃO
SELECT 
	first_name AS "Nome", 
	last_name  AS "Sobrenome",
	salary 	   AS 'salario'
FROM employees 
WHERE salary>10500; 

SELECT 
	first_name AS "Nome", 
	last_name  AS "Sobrenome",
	salary 	   AS 'salario'
FROM employees 
WHERE job_id !='ST_CLERK'; 

SINAIS DE DIFERENTE: != E <>

--Maior e menor igual funciona com VARCHAR
SELECT 
	first_name AS "Nome", 
	last_name  AS "Sobrenome",
	salary 	   AS 'salario'
FROM employees 
WHERE first_name> 'thales'; 

--BETWEEN

SELECT 
	first_name AS "Nome", 
	last_name  AS "Sobrenome",
	salary 	   AS 'salario'
FROM employees 
WHERE salary BETWEEN 7000 AND 10500; 

SELECT 
	first_name AS "Nome", 
	last_name  AS "Sobrenome",
	salary 	   AS 'salario'
FROM employees 
WHERE salary BETWEEN 'king' AND 'smith'; 

--ORDER BY

SELECT 
	first_name AS "Nome", 
	last_name  AS "Sobrenome",
	salary 	   AS 'salario'
FROM employees 
WHERE salary BETWEEN 'king' AND 'smith'
ORDER BY last_name;

--IN

SELECT 
	employee_id AS 'id',
	first_name  AS 'Nome', 
	last_name   AS 'Sobrenome',
	salary 	    AS 'Salario',
	manager_id  AS 'Gerente'
FROM employees 
WHERE manager_id IN (101,201);

SELECT 
	employee_id AS 'id',
	first_name  AS 'Nome', 
	last_name   AS 'Sobrenome',
	salary 	    AS 'Salario',
	manager_id  AS 'Gerente'
FROM employees 
WHERE salary IN (10500,8300, 2600)
ORDER BY salary DESC;

--LIKE

SELECT 
	employee_id AS 'id',
	first_name  AS 'Nome', 
	last_name   AS 'Sobrenome',
	salary 	    AS 'Salario',
	manager_id  AS 'Gerente'
FROM employees 
WHERE last_name LIKE '%a%';

--NULL

SELECT 
	first_name  	AS 'Nome', 
	last_name   	AS 'Sobrenome',
	salary 	    	AS 'Salario',
	commission_pct  AS 'Comissão'
FROM employees 
WHERE commission_pct IS NULL;

SELECT 
	first_name  	AS 'Nome', 
	last_name   	AS 'Sobrenome',
	salary 	    	AS 'Salario',
	commission_pct  AS 'Comissão'
FROM employees 
WHERE commission_pct IS NOT NULL;

SELECT 
	first_name  	AS 'Nome', 
	last_name   	AS 'Sobrenome',
	salary 	    	AS 'Salario',
	commission_pct  AS 'Comissão'
FROM employees 
WHERE commission_pct NOT LIKE '%a%';

SELECT 
	first_name  	AS 'Nome', 
	last_name   	AS 'Sobrenome',
	salary 	    	AS 'Salario',
	commission_pct  AS 'Comissão'
FROM employees 
WHERE commission_pct NOT BETWEEN 2500 AND 3500
ORDER BY salary;

SELECT 
	first_name  	AS 'Nome', 
	last_name   	AS 'Sobrenome',
	salary 	    	AS 'Salario',
	commission_pct  AS 'Comissão'
FROM employees 
WHERE commission_pct NOT LIKE '%a%';

DROP SCHEMA

IF EXISTS hr;
	CREATE SCHEMA hr COLLATE = utf8_general_ci;

USE hr;