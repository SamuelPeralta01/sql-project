-- Tenistas, torneios e cidades
SELECT
    n.NomeTenista AS tenista,
    t.NomeTorneio AS torneio,
    c.NomeCidade AS cidade
FROM Edicao e
JOIN Torneio t ON t.CodTorneio = e.CodTorneio
JOIN Tenista n ON n.CodTenista = e.CodTenista
JOIN Cidade c ON c.CodCidade = t.CodCidade
ORDER BY n.NomeTenista;

-- Tenistas e seus patrocinadores (inclui quem não tem)
SELECT
    n.NomeTenista AS tenista,
    p.NomePatrocinador AS patrocinador
FROM Tenista n
LEFT JOIN Contrato c ON c.CodTenista = n.CodTenista
LEFT JOIN Patrocinador p ON p.CodPatrocinador = c.CodPatrocinador;

-- Patrocinadores e seus tenistas (inclui quem não patrocina ninguém)
SELECT
    p.NomePatrocinador AS patrocinador,
    n.NomeTenista AS tenista
FROM Patrocinador p
LEFT JOIN Contrato c ON p.CodPatrocinador = c.CodPatrocinador
LEFT JOIN Tenista n ON c.CodTenista = n.CodTenista;

-- Média de classificação
SELECT
    n.NomeTenista AS tenista,
    ROUND(AVG(e.Classificacao), 2) AS media_classificacao
FROM Edicao e
JOIN Tenista n ON n.CodTenista = e.CodTenista
GROUP BY n.CodTenista, n.NomeTenista;

-- Tenistas que participaram de mais de 3 torneios
SELECT
    n.NomeTenista AS tenista,
    COUNT(t.CodTorneio) AS Quant_Torneios
FROM Tenista n
JOIN Edicao e ON e.CodTenista = n.CodTenista
JOIN Torneio t ON t.CodTorneio = e.CodTorneio
GROUP BY n.CodTenista
HAVING COUNT(t.CodTorneio) > 3;
