/* Ejercicio 1*/

CREATE DATABASE IF NOT EXISTS RecursosHumanos;

USE RecursosHumanos;

DROP TABLE IF EXISTS Realiza;
DROP TABLE IF EXISTS Empleado;
DROP TABLE IF EXISTS Curso;

CREATE TABLE Empleado (
    id          INT             NOT NULL        AUTO_INCREMENT,
    nombre      VARCHAR(20)     NOT NULL,
    apellido    VARCHAR(20)     NOT NULL,
    PRIMARY KEY (id) 
);

CREATE TABLE Curso (
    código      VARCHAR(7)      NOT NULL,
    nombre      VARCHAR(30)     NOT NULL,
    tipo        VARCHAR(15)     NOT NULL   DEFAULT 'interno',
    PRIMARY KEY (código) 
);

CREATE TABLE Realiza (
    id          INT             NOT NULL,
    código      VARCHAR(7)      NOT NULL,
    PRIMARY KEY (id, código),
    FOREIGN KEY (id) REFERENCES Empleado(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (código) REFERENCES Curso(código) ON DELETE CASCADE ON UPDATE CASCADE
);


/* Ejercicio 2 */

ALTER TABLE Empleado
ADD ingreso DATE, 
MODIFY nombre VARCHAR(30) NOT NULL;

/* Ejercicio 3 */

CREATE INDEX apellido_idx ON Empleado(apellido);