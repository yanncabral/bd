-- Inserir professores
INSERT INTO
    professor (
        cnpq,
        nome,
        salario,
        titulacao
    )
VALUES (
        '1234567890',
        'Dra. Maria Silva',
        15000.00,
        'Doutorado'
    ),
    (
        '2345678901',
        'Dr. João Santos',
        14500.00,
        'Doutorado'
    ),
    (
        '3456789012',
        'Dra. Ana Oliveira',
        13800.00,
        'Doutorado'
    ),
    (
        '4567890123',
        'Dr. Carlos Ferreira',
        14200.00,
        'Doutorado'
    ),
    (
        '5678901234',
        'Dra. Beatriz Lima',
        15500.00,
        'Pós-Doutorado'
    ),
    (
        '6789012345',
        'Dr. Ricardo Souza',
        13500.00,
        'Doutorado'
    ),
    (
        '7890123456',
        'Dra. Fernanda Costa',
        14800.00,
        'Doutorado'
    ),
    (
        '8901234567',
        'Dr. Paulo Rodrigues',
        14000.00,
        'Doutorado'
    ),
    (
        '9012345678',
        'Dra. Luciana Alves',
        15200.00,
        'Pós-Doutorado'
    ),
    (
        '0123456789',
        'Dr. Marcelo Pereira',
        13900.00,
        'Doutorado'
    );

INSERT INTO
    professor (
        cnpq,
        nome,
        salario,
        titulacao
    )
VALUES (
        '1234567892',
        'Dr. Sérgio Lifschitz',
        15000.00,
        'Doutorado'
    );

INSERT INTO
    professor (
        cnpq,
        nome,
        salario,
        titulacao
    )
VALUES (
        '1234567893',
        'Dra. Veronica dos Santos',
        15000.00,
        'Doutorado'
    ),
    (
        '1234567894',
        'Dr. Marcos Villas',
        15000.00,
        'Doutorado'
    );

INSERT INTO
    professor_ies (
        professor_cnpq,
        ies_id,
        data_inicio,
        data_fim
    )
VALUES (
        '1234567890',
        6324,
        '2015-01-01',
        NULL
    ),
    (
        '2345678901',
        6324,
        '2016-03-15',
        NULL
    ),
    (
        '3456789012',
        6324,
        '2014-08-01',
        NULL
    ),
    (
        '4567890123',
        6324,
        '2017-02-01',
        NULL
    ),
    (
        '5678901234',
        6324,
        '2013-09-01',
        NULL
    ),
    (
        '6789012345',
        6324,
        '2018-01-01',
        NULL
    ),
    (
        '7890123456',
        6324,
        '2015-07-01',
        NULL
    ),
    (
        '8901234567',
        6324,
        '2016-01-01',
        NULL
    ),
    (
        '9012345678',
        6324,
        '2014-03-01',
        NULL
    ),
    (
        '0123456789',
        6324,
        '2017-08-01',
        NULL
    );

INSERT INTO
    professor_ies (
        professor_cnpq,
        ies_id,
        data_inicio,
        data_fim
    )
VALUES (
        '1234567892',
        6324,
        '2015-01-01',
        NULL
    ),
    (
        '1234567893',
        6324,
        '2016-03-15',
        NULL
    ),
    (
        '1234567894',
        6324,
        '2014-08-01',
        NULL
    );

INSERT INTO
    departamento (nome, orcamento, ies_id)
SELECT 'Departamento de Informática', 2000000.00, 6324
WHERE
    NOT EXISTS (
        SELECT 1
        FROM departamento
        WHERE
            nome = 'Departamento de Informática'
            AND ies_id = 6324
    );

select * from professor where cnpq = '1234567892';
select * from departamento;

insert into gerencia (departamento_id, professor_cnpq)
values (5, '1234567892');