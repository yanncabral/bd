CREATE TABLE bolsa (
    id SERIAL PRIMARY KEY,
    tipo VARCHAR(255) NOT NULL
);

CREATE TABLE aluno (
    matricula VARCHAR(255) PRIMARY KEY NOT NULL,
    nome VARCHAR(255),
    nacionalidade VARCHAR(255),
    sexo VARCHAR(255),
    data_nascimento DATE,
    etnia VARCHAR(255),
    status_socioeconomico VARCHAR(255)
);

CREATE TABLE aluno_bolsa (
    matricula VARCHAR(255),
    bolsa_id INT,
    periodo VARCHAR(255),
    FOREIGN KEY (matricula) REFERENCES aluno (matricula),
    FOREIGN KEY (bolsa_id) REFERENCES bolsa (id)
);

CREATE TABLE IES (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    sigla VARCHAR(255),
    estado VARCHAR(255) NOT NULL,
    municipio VARCHAR(255) NOT NULL,
    categoria_administrativa_id INT,
    FOREIGN KEY (categoria_administrativa_id) REFERENCES categoria_administrativa (id)
);

CREATE TABLE matricula (
    matricula VARCHAR(255),
    ies_id INT,
    data_inicio DATE,
    data_fim DATE,
    status VARCHAR(255),
    FOREIGN KEY (matricula) REFERENCES aluno (matricula),
    FOREIGN KEY (ies_id) REFERENCES IES (id),
    PRIMARY KEY (matricula, ies_id)
);

CREATE TABLE departamento (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255),
    orcamento FLOAT,
    ies_id INT,
    FOREIGN KEY (ies_id) REFERENCES IES (id)
);

CREATE TABLE professor (
    cnpq VARCHAR(255) PRIMARY KEY NOT NULL,
    nome VARCHAR(255),
    salario FLOAT,
    titulacao VARCHAR(255)
);

CREATE TABLE gerencia (
    area_de_atuacao VARCHAR(255),
    cnpq VARCHAR(255) NOT NULL,
    FOREIGN KEY (cnpq) REFERENCES professor (cnpq),
    PRIMARY KEY (area_de_atuacao, cnpq)
);

CREATE TABLE curso (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    modalidade VARCHAR(255) NOT NULL,
    materiais_inclusivos BOOLEAN NOT NULL,
    nivel VARCHAR(255) NOT NULL,
    area VARCHAR(255) NOT NULL,
    departamento_id INT,
    FOREIGN KEY (departamento_id) REFERENCES departamento (id)
);

ALTER TABLE matricula ADD COLUMN curso_id INT;

ALTER TABLE matricula
ADD FOREIGN KEY (curso_id) REFERENCES curso (id);

CREATE TABLE oferta (
    id SERIAL PRIMARY KEY,
    turno VARCHAR(255),
    vagas INT,
    departamento_id INT,
    FOREIGN KEY (departamento_id) REFERENCES departamento (id)
);

ALTER TABLE oferta ADD COLUMN curso_id INT;

ALTER TABLE oferta ADD FOREIGN KEY (curso_id) REFERENCES curso (id);

ALTER TABLE ies
ADD COLUMN salas_de_aula INT,
ADD COLUMN bibliotecas INT,
ADD COLUMN laboratorios INT;

CREATE TABLE categoria_administrativa (
    id SERIAL PRIMARY KEY NOT NULL,
    nome VARCHAR(255)
);

ALTER TABLE ies ADD COLUMN categoria_administrativa_id INT;

ALTER TABLE ies
ADD FOREIGN KEY (categoria_administrativa_id) REFERENCES categoria_administrativa (id);

ALTER TABLE categoria_administrativa RENAME COLUMN categoria TO nome;

ALTER TABLE bolsa
ADD COLUMN sigla VARCHAR(20),
ADD COLUMN descricao TEXT;

ALTER TABLE bolsa
ADD COLUMN sigla VARCHAR(20),
ADD COLUMN descricao TEXT;

ALTER TABLE bolsa RENAME COLUMN tipo TO nome;

ALTER TABLE curso DROP COLUMN departamento_id;

CREATE TABLE oferta_curso (
    id SERIAL PRIMARY KEY,
    curso_id INT,
    departamento_id INT,
    modalidade VARCHAR(255),
    materiais_inclusivos BOOLEAN,
    FOREIGN KEY (curso_id) REFERENCES curso (id),
    FOREIGN KEY (departamento_id) REFERENCES departamento (id)
);

ALTER TABLE matricula DROP COLUMN curso_id;

ALTER TABLE matricula ADD COLUMN oferta_curso_id INT;

ALTER TABLE matricula
ADD FOREIGN KEY (oferta_curso_id) REFERENCES oferta_curso (id);


ALTER TABLE curso DROP COLUMN modalidade;

ALTER TABLE curso DROP COLUMN materiais_inclusivos;


ALTER TABLE IF EXISTS matricula
DROP CONSTRAINT IF EXISTS matricula_oferta_id_fkey;

DROP TABLE IF EXISTS oferta;

CREATE TABLE professor_ies (
    professor_cnpq VARCHAR(255),
    ies_id INT,
    data_inicio DATE,
    data_fim DATE,
    FOREIGN KEY (professor_cnpq) REFERENCES professor (cnpq),
    FOREIGN KEY (ies_id) REFERENCES IES (id),
    PRIMARY KEY (professor_cnpq, ies_id)
);

DROP TABLE IF EXISTS gerencia;

CREATE TABLE gerencia (
    professor_cnpq VARCHAR(255),
    departamento_id INT,
    FOREIGN KEY (professor_cnpq) REFERENCES professor (cnpq),
    FOREIGN KEY (departamento_id) REFERENCES departamento (id),
    PRIMARY KEY (
        professor_cnpq,
        departamento_id
    )
);