INSERT INTO
    aluno (
        matricula,
        nome,
        nacionalidade,
        sexo,
        data_nascimento,
        etnia,
        status_socioeconomico
    )
VALUES (
        '1913089',
        'Yann Cabral',
        'Brasileiro',
        'Masculino',
        '1999-11-30',
        'Branco',
        'Classe média alta'
    ),
    (
        '2312392',
        'Júlia Tadeu',
        'Brasileira',
        'Feminino',
        '2001-05-15',
        'Branca',
        'Classe média'
    ),
    (
        '2310202',
        'Gabriele Sequeira',
        'Brasileira',
        'Feminino',
        '2001-08-22',
        'Parda',
        'Classe média'
    ),
    (
        '1713053',
        'Isabelle Nazareth',
        'Brasileira',
        'Feminino',
        '1998-03-10',
        'Negra',
        'Classe média'
    ),
    (
        '2220373',
        'Giovana Nogueira',
        'Brasileira',
        'Feminino',
        '2000-07-05',
        'Parda',
        'Classe média baixa'
    ),
    (
        '2312345',
        'Pedro Almeida',
        'Brasileiro',
        'Masculino',
        '2002-01-20',
        'Branco',
        'Classe média'
    ),
    (
        '2312346',
        'Mariana Costa',
        'Brasileira',
        'Feminino',
        '2001-12-03',
        'Parda',
        'Classe média alta'
    ),
    (
        '2312347',
        'Lucas Oliveira',
        'Brasileiro',
        'Masculino',
        '2002-06-18',
        'Negro',
        'Classe média baixa'
    ),
    (
        '2312348',
        'Camila Santos',
        'Brasileira',
        'Feminino',
        '2001-09-25',
        'Branca',
        'Classe média'
    ),
    (
        '2312349',
        'Rafael Ferreira',
        'Brasileiro',
        'Masculino',
        '2002-03-07',
        'Pardo',
        'Classe média'
    );

WITH
    eng_comp_oferta AS (
        SELECT oc.id
        FROM
            oferta_curso oc
            JOIN curso c ON oc.curso_id = c.id
            JOIN departamento d ON oc.departamento_id = d.id
        WHERE
            c.nome = 'Engenharia de Computação'
            AND d.ies_id = 6324
        LIMIT 1
    )
INSERT INTO
    matricula (
        matricula,
        ies_id,
        data_inicio,
        data_fim,
        status,
        oferta_curso_id
    )
SELECT
    a.matricula,
    6324 AS ies_id,
    CASE
        WHEN a.matricula LIKE '17%' THEN TO_DATE('2017-03-01', 'YYYY-MM-DD')
        WHEN a.matricula LIKE '19%' THEN TO_DATE('2019-03-01', 'YYYY-MM-DD')
        WHEN a.matricula LIKE '22%' THEN TO_DATE('2022-03-01', 'YYYY-MM-DD')
        ELSE TO_DATE('2023-03-01', 'YYYY-MM-DD')
    END AS data_inicio,
    NULL AS data_fim,
    'Ativo' AS status,
    (
        SELECT id
        FROM eng_comp_oferta
    ) AS oferta_curso_id
FROM aluno a
WHERE
    a.matricula IN (
        '2312392',
        '2310202',
        '1913089',
        '1713053',
        '2220373',
        '2312345',
        '2312346',
        '2312347',
        '2312348',
        '2312349'
    );

INSERT INTO
    aluno_bolsa (matricula, bolsa_id, periodo)
VALUES ('1913089', 1, '2023.2');

INSERT INTO
    aluno_bolsa (matricula, bolsa_id, periodo)
VALUES ('2310202', 2, '2023.2');

SELECT * FROM bolsa;

INSERT INTO
    aluno_bolsa (matricula, bolsa_id, periodo)
VALUES ('1913089', 9, '2023.2');

INSERT INTO
    aluno_bolsa (matricula, bolsa_id, periodo)
VALUES ('2310202', 3, '2023.2');

ALTER TABLE aluno_bolsa ADD COLUMN ies_id INTEGER;

UPDATE aluno_bolsa SET ies_id = 6324;

ALTER TABLE aluno_bolsa ALTER COLUMN ies_id SET NOT NULL;

ALTER TABLE aluno_bolsa DROP CONSTRAINT IF EXISTS aluno_bolsa_pkey;

ALTER TABLE aluno_bolsa
ADD PRIMARY KEY (
    matricula,
    bolsa_id,
    periodo,
    ies_id
);

UPDATE aluno_bolsa
SET
    ies_id = 6324
WHERE
    matricula = '1913089'
    AND bolsa_id = 1
    AND periodo = '2023.2';

UPDATE aluno_bolsa
SET
    ies_id = 6324
WHERE
    matricula = '2310202'
    AND bolsa_id = 2
    AND periodo = '2023.2';

UPDATE aluno_bolsa
SET
    ies_id = 6324
WHERE
    matricula = '1913089'
    AND bolsa_id = 9
    AND periodo = '2023.2';

UPDATE aluno_bolsa
SET
    ies_id = 6324
WHERE
    matricula = '2310202'
    AND bolsa_id = 3
    AND periodo = '2023.2';

INSERT INTO
    aluno_bolsa (
        matricula,
        bolsa_id,
        periodo,
        ies_id
    )
VALUES ('2312392', 1, '2023.2', 6324);