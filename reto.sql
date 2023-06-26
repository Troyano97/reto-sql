SHOW DATABASES;

CREATE DAATABASE cat_cafe;

SHOW tables;

CREATE TABLE tabla_gatos(
    id_registro INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(20) NOT NULL,
    apodo VARCHAR(20),
    edad INT NOT NULL,
    peso FLOAT NOT NULL,
    caracteristicas VARCHAR (50) NOT NULL,
    color VARCHAR (30) NOT NULL,
    color_ojos VARCHAR (30) NOT NULL,
    PRIMARY KEY (id_registro)
    );


INSERT INTO tabla_gatos (nombre,apodo,edad,peso,caracteristicas,color,color_ojos) VALUES ("Rocket","",3,3,"le gusta dormir mucho","blanco","celestes"),
("Pinto","Pin",5,3.5,"le gustan los mimos","naranja con blanco","amarillos con verde"),
("Sunny","",2,5,"Le gusta jugar con pelotitas","negro","amarillentos"),
("Emilia","Emeli",5,4.4,"le encanta reposar donde hay sol","Gris con negro","amarillentos"),
("Nikki","",4,4.3,"no se despega de Ricochet","gris","verdes claros"),
("Ricochet","",4,4.7,"le gustan los lugares altos","blanco con gris","celestes"),
("Onyx","",7,3.3,"va donde hay comida","naranja con marron","amarillentos"),
("Seiko","",2,3.7,"le gusta dormir junto a otros gatos","blanco con gris","verdosos"),
("Nathan","Ninja nate",7,4.5,"le encanta esconderse","negro","amarillentos");


/* Se elimino la base de datos, se volvio a hacer mejorada y mas simple */

UPDATE tabla_gatos SET apodo = NULL WHERE apodo = "";

ALTER TABLE tabla_gatos ADD COLUMN llegaron_acompaniados VARCHAR(50);

/* modifica el valor "" para que duelve NULL*/
UPDATE tabla_gatos SET llegaron_acompañados = NULL WHERE apodo = "";

UPDATE tabla_gatos SET llegaron_acompañados = "llego junto a Sunny" WHERE id_registro = 1;

UPDATE tabla_gatos SET llegaron_acompañados = "llego junto a Seiko" WHERE id_registro = 4;

SELECT * FROM tabla_gatos;


/* se agrego la columna dieta, si el peso es mayor a 4 devuelve 1 de lo contraio 0(1=debe hacer dieta) */

ALTER TABLE tabla_gatos
ADD COLUMN dieta BOOLEAN NOT NULL DEFAULT false AFTER peso;

UPDATE tabla_gatos
SET dieta = (peso > 4);

/* se agrega los años faltantes para la jubilacion*/
ALTER TABLE tabla_gatos ADD COLUMN anios_jubilacion INT AFTER edad;

UPDATE tabla_gatos SET anios_jubilacion = 11 - edad;

/* se elimino la base de datos, los datos agregados no se actualizan automaticamente */
INSERT INTO tabla_gatos (nombre,apodo,edad,peso,caracteristicas,color,color_ojos) VALUES ("Toffee","Tofesito",4,3.4,"le gusta jugar y estar solo a veces","blanco con gris","verdosos"),
("Chucky","",10,4.3,"le gusta dormir y caminar","naranja con blanco","amarillentos");

