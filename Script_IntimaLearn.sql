create database IntimaLearn;

use IntimaLearn;

Create table Usuarios(
    nombre VARCHAR(500) NOT NULL PRIMARY KEY,
    correo VARCHAR(500) NOT NULL,
    contra VARCHAR(500) NOT NULL,
    rol VARCHAR(500) NOT NULL
);

Create table Entrada(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre_Usuario VARCHAR(500) NOT NULL,
    categoria VARCHAR(100) NOT NULL,
    texto VARCHAR(500) NOT NULL,
    meGusta INT NOT NULL,
    fecha DATE NOT NULL,
    FOREIGN KEY (nombre_Usuario) REFERENCES Usuarios(Nombre)
);

Create table Expertos(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    areaTrabajo VARCHAR(150) NOT NULL,
    nombre VARCHAR(200) NOT NULL
);

Create table Articulos(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100) NOT NULL,
    descripcion VARCHAR(150) NOT NULL,
    cuerpo VARCHAR(500) NOT NULL,
    id_experto INT NOT NULL,
    FOREIGN KEY (id_experto) REFERENCES Expertos(id)
);

create table Consulta(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    fecha DATE NOT NULL,
    tema VARCHAR(100) NOT NULL,
    texto VARCHAR(500) NOT NULL,
    id_experto INT NOT NULL,
    nombre_Usuario VARCHAR(500) NOT NULL,
    FOREIGN KEY (nombre_Usuario) REFERENCES Usuarios(Nombre),
    FOREIGN KEY (id_experto) REFERENCES Expertos(id)
);

INSERT INTO `Usuarios` (`nombre`, `correo`, `contra`, `rol`) 
VALUES ("usu1", 'Usu1@gmail.com', 'Usu1', 'Usuario');

INSERT INTO `Expertos` (`id`, `areaTrabajo`, `nombre`) 
VALUES (Null, 'Mental', 'Jesus');

INSERT INTO `Articulos` (`id`, `titulo`, `descripcion`, `cuerpo`, `id_experto`)
VALUES (null, 'El mar está en calma', 'El mar está en calma por la tarde', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '1');