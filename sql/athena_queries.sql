-- Amostra da tabela
SELECT *
FROM economic_data.ipca
LIMIT 10;

-- Média da variação mensal do IPCA por ano
-- (requer a coluna "data" no tipo date/timestamp)
SELECT
    year(data)   AS ano,
    ROUND(AVG(valor), 2) AS ipca_medio_mensal
FROM economic_data.ipca
GROUP BY year(data)
ORDER BY ano DESC;

-- Meses com maior variação do IPCA
SELECT data, valor
FROM economic_data.ipca
ORDER BY valor DESC
LIMIT 10;
