create database localidades;

use localidades;

create table pais(
	codigo_pais serial primary key,
	nombre_pais VARCHAR(100)
);

create table departamento(
	id_departamento serial primary key,
	codigo_departamento integer,
	pais_codigo integer,
	nombre_departamento VARCHAR(100),
	CONSTRAINT fk_pais FOREIGN KEY (pais_codigo) references pais(codigo_pais)
);


create table municipio(
	id_municipio serial primary key,
	codigo_municipio integer,
	departamento_id integer,
	nombre_municipio VARCHAR(100),
	CONSTRAINT fk_departamento FOREIGN KEY (departamento_id) references departamento(id_departamento)
);

create table localidad(
	codigo_departamento integer,
	nombre_departamento VARCHAR(100),
	codigo_municipio integer,
	nombre_municipio VARCHAR(100)
);