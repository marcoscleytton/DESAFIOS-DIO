

LOAD DATA INFILE '/path/to/brazil_population_2019.csv'
INTO TABLE brazil_population;

## Esta query calcula a soma da população
CREATE VIEW _sum_all_population AS
SELECT SUM(population) AS total_population
FROM brazil_population_2019;

## Esta query seleciona a população de cada cidade
CREATE VIEW query_select_population_by_city AS
SELECT city, population
FROM brazil_population_2019;

## Query para selecionar dez registros
CREATE VIEW query_select_ten_records AS
SELECT *
FROM brazil_population_2019
LIMIT 10;

## Query para somar a população por região
CREATE VIEW query_sum_by_region AS
SELECT region, SUM(population) AS total_population
FROM brazil_population_2019
GROUP BY region;
