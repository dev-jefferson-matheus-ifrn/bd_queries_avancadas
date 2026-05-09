CREATE DATABASE IF NOT EXISTS universidade_db;
USE universidade_db;

-- Criação das Tabelas
CREATE TABLE departamentos (
    id_dept INT PRIMARY KEY AUTO_INCREMENT,
    nome_dept VARCHAR(100) NOT NULL
);

CREATE TABLE professores (
    id_prof INT PRIMARY KEY AUTO_INCREMENT,
    nome_prof VARCHAR(100) NOT NULL,
    salario DECIMAL(10,2),
    id_dept INT,
    FOREIGN KEY (id_dept) REFERENCES departamentos(id_dept)
);

CREATE TABLE cursos (
    id_curso INT PRIMARY KEY AUTO_INCREMENT,
    nome_curso VARCHAR(100) NOT NULL,
    carga_horaria INT,
    id_dept INT,
    FOREIGN KEY (id_dept) REFERENCES departamentos(id_dept)
);

CREATE TABLE alunos (
    id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    nome_aluno VARCHAR(100) NOT NULL,
    cidade VARCHAR(50)
);

CREATE TABLE matriculas (
    id_matricula INT PRIMARY KEY AUTO_INCREMENT,
    id_aluno INT,
    id_curso INT,
    nota_final DECIMAL(4,2),
    FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno),
    FOREIGN KEY (id_curso) REFERENCES cursos(id_curso)
);

-- Inserção de Dados
INSERT INTO departamentos (nome_dept) VALUES ('Informática'), ('Matemática'), ('Física'), ('Letras');

INSERT INTO professores (nome_prof, salario, id_dept) VALUES 
('Alan Turing', 8500.00, 1), ('Ada Lovelace', 9200.00, 1), 
('Isaac Newton', 7500.00, 3), ('Euclides', 6000.00, 2),
('Machado de Assis', 5500.00, 4), ('Grace Hopper', 8800.00, 1);

INSERT INTO cursos (nome_curso, carga_horaria, id_dept) VALUES 
('Banco de Dados', 60, 1), ('Algoritmos', 80, 1), 
('Cálculo I', 90, 2), ('Mecânica Quântica', 100, 3), 
('Literatura Brasileira', 40, 4);

INSERT INTO alunos (nome_aluno, cidade) VALUES 
('João Silva', 'Natal'), ('Maria Oliveira', 'Mossoró'), 
('Carlos Souza', 'Natal'), ('Ana Costa', 'Caicó'), 
('Pedro Rocha', 'Pau dos Ferros');

INSERT INTO matriculas (id_aluno, id_curso, nota_final) VALUES 
(1, 1, 8.5), (1, 2, 7.0), (2, 1, 9.5), (3, 3, 6.0), 
(4, 4, 10.0), (5, 5, 4.5), (2, 2, 8.0);
