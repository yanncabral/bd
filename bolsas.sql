INSERT INTO
    bolsa (nome, sigla, descricao)
VALUES (
        'Programa Universidade para Todos',
        'PROUNI',
        'Programa do Ministério da Educação que concede bolsas de estudo integrais e parciais em instituições privadas de ensino superior'
    ),
    (
        'Fundo de Financiamento Estudantil',
        'FIES',
        'Programa do Ministério da Educação destinado a financiar a graduação na educação superior de estudantes matriculados em cursos superiores não gratuitos'
    ),
    (
        'Programa Institucional de Bolsas de Iniciação Científica',
        'PIBIC',
        'Programa que visa apoiar a política de Iniciação Científica desenvolvida nas Instituições de Ensino e/ou Pesquisa'
    ),
    (
        'Programa Institucional de Bolsa de Iniciação à Docência',
        'PIBID',
        'Programa da Coordenação de Aperfeiçoamento de Pessoal de Nível Superior (CAPES) que oferece bolsas para estudantes de licenciatura'
    ),
    (
        'Programa de Educação Tutorial',
        'PET',
        'Programa que busca propiciar aos alunos condições para a realização de atividades extracurriculares que complementem a sua formação acadêmica'
    ),
    (
        'Bolsa Permanência',
        NULL,
        'Auxílio financeiro para estudantes em situação de vulnerabilidade socioeconômica'
    ),
    (
        'Programa Institucional de Bolsas de Iniciação em Desenvolvimento Tecnológico e Inovação',
        'PIBITI',
        'Programa que visa estimular estudantes do ensino superior nas atividades, metodologias, conhecimentos e práticas próprias ao desenvolvimento tecnológico e processos de inovação'
    ),
    (
        'Bolsa Atleta',
        NULL,
        'Auxílio financeiro para estudantes que se destacam em competições esportivas'
    ),
    (
        'Bolsa Monitoria',
        NULL,
        'Auxílio para estudantes que atuam como monitores em disciplinas'
    ),
    (
        'Bolsa Extensão',
        NULL,
        'Auxílio para estudantes envolvidos em projetos de extensão universitária'
    ),
    (
        'Programa Nacional de Assistência Estudantil',
        'PNAES',
        'Programa que apoia a permanência de estudantes de baixa renda matriculados em cursos de graduação presencial das instituições federais de ensino superior'
    ),
    (
        'Bolsa Alimentação',
        NULL,
        'Auxílio para custear despesas com alimentação dos estudantes'
    ),
    (
        'Bolsa Moradia',
        NULL,
        'Auxílio para custear despesas com moradia dos estudantes'
    ),
    (
        'Bolsa Transporte',
        NULL,
        'Auxílio para custear despesas com transporte dos estudantes'
    ),
    (
        'Bolsa Cultura',
        NULL,
        'Auxílio para estudantes envolvidos em atividades culturais'
    ),
    (
        'Bolsa Idiomas',
        NULL,
        'Auxílio para estudantes que desejam aprender ou aperfeiçoar idiomas estrangeiros'
    ),
    (
        'Bolsa Mérito Acadêmico',
        NULL,
        'Auxílio para estudantes que se destacam academicamente'
    );

select * from ies ies where ies.sigla = 'PUCRIO';