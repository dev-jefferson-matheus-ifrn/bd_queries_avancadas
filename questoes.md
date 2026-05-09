# Lista De Questões - Banco de dados: Queries Avançadas

Utilizando o banco de dados gerado pelos script `universidade_db.sql` responda
as questões abaixo.

# Lista de questões

1. Subconsulta no WHERE: Liste os nomes dos professores que ganham um salário acima da média salarial de todos os professores da universidade.

2. Subconsulta no WHERE (IN): Liste o nome dos alunos que estão matriculados no curso de 'Banco de Dados' (use subconsulta para encontrar o ID do curso).

3. Subconsulta no SELECT: Exiba o nome de cada curso e, em uma coluna ao lado, a média de notas de todos os alunos da universidade (média global).

4. Subconsulta Correlacionada: Liste os professores (nome e salário) que ganham mais do que a média salarial do seu próprio departamento.

5. Subconsulta no FROM (Derived Table): Crie uma consulta que mostre o nome do departamento e sua média salarial, mas apenas para os departamentos cuja média salarial seja superior a R$ 7.000,00.

6. Subconsulta no WHERE: Quais alunos (nome) tiraram uma nota final maior do que a nota de 'João Silva' no curso de 'Banco de Dados'?

7. Subconsulta no SELECT: Liste o nome dos alunos e a quantidade de cursos em que cada um está matriculado, utilizando uma subconsulta no SELECT.

8. Subconsulta no WHERE (NOT IN): Liste os nomes dos professores que pertencem a departamentos que não possuem cursos com carga horária superior a 80 horas.

9. Subconsulta no FROM: Utilizando uma tabela derivada (subconsulta no FROM), liste o ID do curso e a maior nota obtida em cada curso.

10. Subconsulta Correlacionada (EXISTS): Liste os nomes dos alunos que possuem pelo menos uma matrícula com nota superior a 9.0.

11. Subconsulta no WHERE: Exiba os dados do curso que possui a maior carga horária de toda a universidade.

12. Subconsulta no SELECT: Para cada professor, mostre seu nome e a diferença entre o seu salário e o maior salário pago na universidade.

13. Subconsulta no FROM: Calcule a média das notas finais apenas dos cursos que possuem mais de 60 horas de carga horária, utilizando o FROM para filtrar os cursos primeiro.

14. Subconsulta Correlacionada: Liste o nome de cada aluno e a maior nota que ele obteve, mas apenas se essa nota for maior que a média geral de todas as notas da tabela de matrículas.

15. Subconsulta no HAVING: Liste os IDs dos departamentos que possuem uma média salarial maior do que a média salarial do departamento de 'Informática'.
