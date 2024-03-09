use Colegio;

INSERT INTO students (cedula, nombre, apellidos, grupo) VALUES
('1234567890', 'Juan', 'Pérez', 'A'),
('0987654321', 'María', 'López', 'B');
use Colegio;
INSERT INTO ExamenesTeoricos (titulo, num_preguntas, fecha, id_profesor) VALUES
('Examen 1', 20, '2024-03-07', 1),
('Examen 2', 25, '2024-03-08', 2);

use Colegio;
INSERT INTO NotasExamenesTeoricos (id_alumno, id_examen, nota) VALUES
(1, 1, 85),
(2, 2, 78);
use Colegio;
INSERT INTO Practicas (titulo, grado_dificultad) VALUES
('Práctica 1', 'Baja'),
('Práctica 2', 'Media');
use Colegio;
INSERT INTO ParticipacionPracticas (id_profesor, id_practica, fecha) VALUES
(1, 1, '2024-03-07'),
(2, 2, '2024-03-08');

use Colegio;
INSERT INTO Profesores (cedula, nombre, apellidos) VALUES
('1111111111', 'Profesor', 'Uno'),
('2222222222', 'Profesora', 'Dos');