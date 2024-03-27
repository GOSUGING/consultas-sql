-- public.peliculas definition

-- Drop table

-- DROP TABLE public.peliculas;

CREATE TABLE public.peliculas (
	id int4 NULL,
	"Pelicula" varchar(64) NULL,
	"Año estreno" int4 NULL,
	"Director" varchar(50) NULL
);

CREATE TABLE public.reparto (
	id_pelicula int4 NULL,
	actor varchar(50) NULL
);
-- Obtener el ID de la película "Titanic":
SELECT id FROM peliculas  WHERE "Pelicula"  = 'Titanic';
--Listar a todos los actores que aparecen en la película "Titanic":
SELECT actor FROM reparto WHERE id_pelicula = (SELECT id FROM peliculas   where "Pelicula" = 'Titanic');
--Consultar en cuántas películas del top 100 participa Harrison Ford:
SELECT COUNT(*) FROM reparto WHERE actor = 'Harrison Ford' AND id_pelicula IN (SELECT id FROM peliculas  ORDER BY "Año estreno" DESC LIMIT 100);
--Indicar las películas estrenadas entre los años 1990 y 1999 ordenadas por título de manera ascendente:
SELECT * FROM peliculas WHERE "Año estreno" BETWEEN 1990 AND 1999 ORDER BY "Pelicula" ASC;
--Hacer una consulta SQL que muestre los títulos con su longitud, la longitud debe ser nombrado para la consulta como “longitud_titulo”:
SELECT "Pelicula", LENGTH("Pelicula") AS longitud_titulo FROM peliculas;
--Consultar cuántas películas hay en total en la base de datos:
SELECT COUNT(*) FROM peliculas ;

