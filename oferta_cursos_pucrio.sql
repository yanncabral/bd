INSERT INTO
    oferta_curso (
        curso_id,
        departamento_id,
        modalidade,
        materiais_inclusivos
    )
VALUES (
        (
            SELECT id
            FROM curso
            WHERE
                nome = 'Engenharia de Computação'
            LIMIT 1
        ),
        (
            SELECT id
            FROM departamento
            WHERE
                nome = 'Centro Técnico Científico'
                AND ies_id = 6324
            LIMIT 1
        ),
        'Presencial',
        true
    ),
    (
        (
            SELECT id
            FROM curso
            WHERE
                nome = 'Direito'
            LIMIT 1
        ),
        (
            SELECT id
            FROM departamento
            WHERE
                nome = 'Centro de Ciências Sociais'
                AND ies_id = 6324
            LIMIT 1
        ),
        'Presencial',
        true
    ),
    (
        (
            SELECT id
            FROM curso
            WHERE
                nome = 'Psicologia'
            LIMIT 1
        ),
        (
            SELECT id
            FROM departamento
            WHERE
                nome = 'Centro de Teologia e Ciências Humanas'
                AND ies_id = 6324
            LIMIT 1
        ),
        'Presencial',
        true
    ),
    (
        (
            SELECT id
            FROM curso
            WHERE
                nome = 'Administração'
            LIMIT 1
        ),
        (
            SELECT id
            FROM departamento
            WHERE
                nome = 'Centro de Ciências Sociais'
                AND ies_id = 6324
            LIMIT 1
        ),
        'Presencial',
        true
    ),
    (
        (
            SELECT id
            FROM curso
            WHERE
                nome = 'Letras'
            LIMIT 1
        ),
        (
            SELECT id
            FROM departamento
            WHERE
                nome = 'Centro de Teologia e Ciências Humanas'
                AND ies_id = 6324
            LIMIT 1
        ),
        'Presencial',
        true
    ),
    (
        (
            SELECT id
            FROM curso
            WHERE
                nome = 'Ciências Biológicas'
            LIMIT 1
        ),
        (
            SELECT id
            FROM departamento
            WHERE
                nome = 'Centro de Ciências Biológicas e da Saúde'
                AND ies_id = 6324
            LIMIT 1
        ),
        'Presencial',
        true
    ),
    (
        (
            SELECT id
            FROM curso
            WHERE
                nome = 'Arquitetura e Urbanismo'
            LIMIT 1
        ),
        (
            SELECT id
            FROM departamento
            WHERE
                nome = 'Centro Técnico Científico'
                AND ies_id = 6324
            LIMIT 1
        ),
        'Presencial',
        true
    ),
    (
        (
            SELECT id
            FROM curso
            WHERE
                nome = 'Relações Internacionais'
            LIMIT 1
        ),
        (
            SELECT id
            FROM departamento
            WHERE
                nome = 'Centro de Ciências Sociais'
                AND ies_id = 6324
            LIMIT 1
        ),
        'Presencial',
        true
    ),
    (
        (
            SELECT id
            FROM curso
            WHERE
                nome = 'Física'
            LIMIT 1
        ),
        (
            SELECT id
            FROM departamento
            WHERE
                nome = 'Centro Técnico Científico'
                AND ies_id = 6324
            LIMIT 1
        ),
        'Presencial',
        true
    ),
    (
        (
            SELECT id
            FROM curso
            WHERE
                nome = 'Design'
            LIMIT 1
        ),
        (
            SELECT id
            FROM departamento
            WHERE
                nome = 'Centro de Teologia e Ciências Humanas'
                AND ies_id = 6324
            LIMIT 1
        ),
        'Presencial',
        true
    );

INSERT INTO
    oferta_curso (
        curso_id,
        departamento_id,
        modalidade,
        materiais_inclusivos
    )
VALUES (
        (
            SELECT id
            FROM curso
            WHERE
                nome = 'Administração'
            LIMIT 1
        ),
        (
            SELECT id
            FROM departamento
            WHERE
                nome = 'Centro de Ciências Sociais'
                AND ies_id = 6324
            LIMIT 1
        ),
        'EAD',
        true
    ),
    (
        (
            SELECT id
            FROM curso
            WHERE
                nome = 'Letras'
            LIMIT 1
        ),
        (
            SELECT id
            FROM departamento
            WHERE
                nome = 'Centro de Teologia e Ciências Humanas'
                AND ies_id = 6324
            LIMIT 1
        ),
        'EAD',
        true
    ),
    (
        (
            SELECT id
            FROM curso
            WHERE
                nome = 'Psicologia'
            LIMIT 1
        ),
        (
            SELECT id
            FROM departamento
            WHERE
                nome = 'Centro de Teologia e Ciências Humanas'
                AND ies_id = 6324
            LIMIT 1
        ),
        'EAD',
        true
    ),
    (
        (
            SELECT id
            FROM curso
            WHERE
                nome = 'Relações Internacionais'
            LIMIT 1
        ),
        (
            SELECT id
            FROM departamento
            WHERE
                nome = 'Centro de Ciências Sociais'
                AND ies_id = 6324
            LIMIT 1
        ),
        'EAD',
        true
    ),
    (
        (
            SELECT id
            FROM curso
            WHERE
                nome = 'Design'
            LIMIT 1
        ),
        (
            SELECT id
            FROM departamento
            WHERE
                nome = 'Centro de Teologia e Ciências Humanas'
                AND ies_id = 6324
            LIMIT 1
        ),
        'EAD',
        true
    );