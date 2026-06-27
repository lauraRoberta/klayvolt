-- Script SQL inicial da Klyvolt
-- Todas as tabelas possuem apenas chave primária.
-- Cada tabela contém dados de identificação, performance e temporalidade.

CREATE TABLE empresas (
    codigo SERIAL PRIMARY KEY,
    nome VARCHAR(120) NOT NULL,
    descricao TEXT,
    quantidade INTEGER,
    valor NUMERIC(10,2),
    indicador VARCHAR(120),
    data DATE,
    horario TIME
);

CREATE TABLE equipamentos (
    codigo SERIAL PRIMARY KEY,
    nome VARCHAR(120) NOT NULL,
    descricao TEXT,
    quantidade INTEGER,
    valor NUMERIC(10,2),
    indicador VARCHAR(120),
    data DATE,
    horario TIME
);

CREATE TABLE consumo_energia (
    codigo SERIAL PRIMARY KEY,
    nome VARCHAR(120) NOT NULL,
    descricao TEXT,
    quantidade INTEGER,
    valor NUMERIC(10,2),
    indicador VARCHAR(120),
    data DATE,
    horario TIME
);

CREATE TABLE metas_consumo (
    codigo SERIAL PRIMARY KEY,
    nome VARCHAR(120) NOT NULL,
    descricao TEXT,
    quantidade INTEGER,
    valor NUMERIC(10,2),
    indicador VARCHAR(120),
    data DATE,
    horario TIME
);

CREATE TABLE alertas (
    codigo SERIAL PRIMARY KEY,
    nome VARCHAR(120) NOT NULL,
    descricao TEXT,
    quantidade INTEGER,
    valor NUMERIC(10,2),
    indicador VARCHAR(120),
    data DATE,
    horario TIME
);

CREATE TABLE chatbot_interacoes (
    codigo SERIAL PRIMARY KEY,
    nome VARCHAR(120) NOT NULL,
    descricao TEXT,
    quantidade INTEGER,
    valor NUMERIC(10,2),
    indicador VARCHAR(120),
    data DATE,
    horario TIME
);

INSERT INTO empresas (nome, descricao, quantidade, valor, indicador, data, horario)
VALUES ('Empresa exemplo', 'Pequena empresa monitorada pela Klyvolt', 1, 0.00, 'Ativa', '2026-06-26', '08:00');

INSERT INTO equipamentos (nome, descricao, quantidade, valor, indicador, data, horario)
VALUES ('Ar-condicionado', 'Equipamento de climatização', 2, 42.50, 'Consumo alto', '2026-06-26', '14:00');

INSERT INTO consumo_energia (nome, descricao, quantidade, valor, indicador, data, horario)
VALUES ('Consumo diário', 'Registro de consumo total do dia', 1, 86.50, 'Atenção', '2026-06-26', '18:00');

INSERT INTO metas_consumo (nome, descricao, quantidade, valor, indicador, data, horario)
VALUES ('Meta mensal', 'Limite mensal de consumo energético', 1, 300.00, '71% utilizado', '2026-06-26', '18:00');

INSERT INTO alertas (nome, descricao, quantidade, valor, indicador, data, horario)
VALUES ('Alerta de consumo', 'Consumo próximo da meta mensal', 1, 214.00, 'Atenção', '2026-06-26', '18:00');

INSERT INTO chatbot_interacoes (nome, descricao, quantidade, valor, indicador, data, horario)
VALUES ('Pergunta sobre economia', 'Usuário perguntou como reduzir consumo', 1, 0.00, 'Respondido', '2026-06-26', '18:00');
