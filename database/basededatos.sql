create database Colegio;

Use Colegio;

CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cedula VARCHAR|(20) UNIQUE,
    nombre VARCHAR(50),
    apellidos VARCHAR(50),
    grupo CHAR(1) CHECK (grupo BETWEEN 'A' AND 'Z')
);


Use Colegio;
CREATE TABLE ExamenesTeoricos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100),
    num_preguntas INT,
    fecha DATE
);

Use Colegio;
CREATE TABLE NotasExamenesTeoricos (
    id_alumno INT,
    id_examen INT,
    nota FLOAT,
    PRIMARY KEY (id_alumno, id_examen),
    FOREIGN KEY (id_alumno) REFERENCES Alumnos(id),
    FOREIGN KEY (id_examen) REFERENCES ExamenesTeoricos(id)
);

Use Colegio;
CREATE TABLE Practicas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100),
    grado_dificultad ENUM('Baja', 'Media', 'Alta')
);

Use Colegio;
CREATE TABLE ParticipacionPracticas (
    id_profesor INT,
    id_practica INT,
    fecha DATE,
    PRIMARY KEY (id_profesor, id_practica),
    FOREIGN KEY (id_profesor) REFERENCES Profesores(id),
    FOREIGN KEY (id_practica) REFERENCES Practicas(id)
);

Use Colegio;
CREATE TABLE Profesores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cedula VARCHAR(20) UNIQUE,
    nombre VARCHAR(50),
    apellidos VARCHAR(50)
);

Use Colegio;
ALTER TABLE ExamenesTeoricos ADD COLUMN id_profesor INT;
ALTER TABLE ExamenesTeoricos ADD CONSTRAINT FK_ExamenesTeoricos_Profesores
    FOREIGN KEY (id_profesor) REFERENCES Profesores(id);


Use Colegio;
SHOW TABLES;

