insert into pais(nombre_pais) values ('Colombia');

INSERT INTO departamento (codigo_departamento, pais_codigo, nombre_departamento)
SELECT DISTINCT codigo_departamento, 1, nombre_departamento
FROM localidad
ORDER BY codigo_departamento ASC;

INSERT INTO municipio (codigo_municipio, departamento_id, nombre_municipio)
SELECT DISTINCT codigo_municipio, 5, nombre_municipio
FROM localidad
where codigo_departamento = 5;