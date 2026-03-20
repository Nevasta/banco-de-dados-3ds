-- Criação do banco de dados
-- No SQLite, o banco é criado automaticamente ao executar a primeira instrução.
-- Não é necessário o comando "CREATE DATABASE" como no MySQL ou PostgreSQL.

-- Criação da tabela de Alunos
CREATE TABLE IF NOT EXISTS alunos (
    aluno_id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    data_nascimento TEXT,
    endereco TEXT,
    telefone TEXT
);

-- Criação da tabela de Professores
CREATE TABLE IF NOT EXISTS professores (
    professor_id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    titulacao TEXT,
    especialidade TEXT
);

-- Criação da tabela de Disciplinas
CREATE TABLE IF NOT EXISTS disciplinas (
    disciplina_id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    carga_horaria INTEGER NOT NULL
);

-- Criação da tabela de Turmas
CREATE TABLE IF NOT EXISTS turmas (
    turma_id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    ano INTEGER NOT NULL,
    semestre TEXT NOT NULL
);

-- Criação da tabela de Matrículas (relaciona Alunos e Turmas)
CREATE TABLE IF NOT EXISTS matriculas (
    matricula_id INTEGER PRIMARY KEY AUTOINCREMENT,
    aluno_id INTEGER,
    turma_id INTEGER,
    FOREIGN KEY (aluno_id) REFERENCES alunos(aluno_id),
    FOREIGN KEY (turma_id) REFERENCES turmas(turma_id)
);

-- Criação da tabela de Atribuição de Professores a Disciplinas
CREATE TABLE IF NOT EXISTS atribuicao_professor_disciplina (
    atribuicao_id INTEGER PRIMARY KEY AUTOINCREMENT,
    professor_id INTEGER,
    disciplina_id INTEGER,
    FOREIGN KEY (professor_id) REFERENCES professores(professor_id),
    FOREIGN KEY (disciplina_id) REFERENCES disciplinas(disciplina_id)
);
