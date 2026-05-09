# Resposta/Gabarito 

Essas são possivels soluções para as questões para as questões.

```SQL
-- 1. Professores acima da média global
SELECT nome_prof FROM professores 
WHERE salario > (SELECT AVG(salario) FROM professores);
``` 

```SQL
-- 2. Alunos em 'Banco de Dados'
SELECT nome_aluno FROM alunos 
WHERE id_aluno IN (SELECT id_aluno FROM matriculas WHERE id_curso = (SELECT id_curso FROM cursos WHERE nome_curso = 'Banco de Dados'));
``` 
```SQL
-- 3. Nome do curso e média global no SELECT
SELECT nome_curso, (SELECT AVG(nota_final) FROM matriculas) AS media_global FROM cursos;
```

```SQL
-- 4. Professores acima da média do seu próprio departamento (Correlacionada)
SELECT f.nome_prof, f.salario 
FROM professores f 
WHERE f.salario > (SELECT AVG(f2.salario) FROM professores f2 WHERE f2.id_dept = f.id_dept);
```
```SQL
-- 5. Departamentos com média > 7000 (Derived Table)
SELECT d.nome_dept, resumo.media_sal
FROM (SELECT id_dept, AVG(salario) AS media_sal FROM professores GROUP BY id_dept) AS resumo
JOIN departamentos d ON d.id_dept = resumo.id_dept
WHERE resumo.media_sal > 7000;
``` 

```SQL
-- 6. Notas maiores que a do João Silva no curso 1
SELECT a.nome_aluno FROM alunos a
JOIN matriculas m ON a.id_aluno = m.id_aluno
WHERE m.nota_final > (SELECT nota_final FROM matriculas WHERE id_aluno = 1 AND id_curso = 1);
```

```SQL
-- 7. Alunos e contagem de cursos via SELECT
SELECT a.nome_aluno, (SELECT COUNT(*) FROM matriculas m WHERE m.id_aluno = a.id_aluno) AS total_cursos FROM alunos a;
```

```SQL
-- 8. Professores de departamentos sem cursos > 80h
SELECT nome_prof FROM professores 
WHERE id_dept NOT IN (SELECT id_dept FROM cursos WHERE carga_horaria > 80);
```

```SQL
-- 9. Maior nota por curso via FROM
SELECT curso_id, maior_nota 
FROM (SELECT id_curso AS curso_id, MAX(nota_final) AS maior_nota FROM matriculas GROUP BY id_curso) AS notas_max;
```
```SQL
-- 10. Alunos com nota > 9.0 via EXISTS
SELECT a.nome_aluno FROM alunos a 
WHERE EXISTS (SELECT 1 FROM matriculas m WHERE m.id_aluno = a.id_aluno AND m.nota_final > 9.0);
```

```SQL
-- 11. Curso com maior carga horária
SELECT * FROM cursos 
WHERE carga_horaria = (SELECT MAX(carga_horaria) FROM cursos);
```

```SQL
-- 12. Diferença salarial para o topo
SELECT nome_prof, ( (SELECT MAX(salario) FROM professores) - salario ) AS diferenca_para_o_topo FROM professores;
``` 

```SQL
-- 13. Média de notas de cursos > 60h via FROM
SELECT AVG(m.nota_final) 
FROM matriculas m
JOIN (SELECT id_curso FROM cursos WHERE carga_horaria > 60) AS c_longos ON m.id_curso = c_longos.id_curso;
```
```SQL
-- 14. Maior nota do aluno se for maior que a média geral
SELECT a.nome_aluno, (SELECT MAX(m2.nota_final) FROM matriculas m2 WHERE m2.id_aluno = a.id_aluno) AS maior_nota
FROM alunos a
WHERE (SELECT MAX(m3.nota_final) FROM matriculas m3 WHERE m3.id_aluno = a.id_aluno) > (SELECT AVG(nota_final) FROM matriculas);
```

```SQL
-- 15. Departamentos com média salarial > média da Informática
SELECT id_dept FROM professores 
GROUP BY id_dept 
HAVING AVG(salario) > (SELECT AVG(salario) FROM professores WHERE id_dept = (SELECT id_dept FROM departamentos WHERE nome_dept = 'Informática'));
