SHOW DATABASES;

CREATE DAATABASE cat_cafe;

SHOW tables;

CREATE TABLE tabla_gatos(
    id_registro INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(20) NOT NULL,
    apodo VARCHAR(20),
    edad INT NOT NULL,
    peso FLOAT NOT NULL,
    caracteristicas VARCHAR (30) NOT NULL,
    color VARCHAR (30) NOT NULL,
    color_ojos VARCHAR (30) NOT NULL,
    PRIMARY KEY (id_registro)
    );

INSERT INTO tabla_gatos (nombre,apodo,edad,peso,caracteristicas,color,color_ojos) VALUES ("Rocket","",3,3,"le gusta dormir mucho","blanco","celeste");
INSERT INTO tabla_gatos (nombre,apodo,edad,peso,caracteristicas,color,color_ojos) VALUES ("Pinto","Pin",5,3.5,"le gustan los mimos","naranja con blanco","amarillos con verde");