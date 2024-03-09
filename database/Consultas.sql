use Colegio;
-- Estudiantes que pertenecen al grupo A
SELECT *
FROM students
WHERE grupo = 'A';

--Consulta para obtener el nombre del profesor, el título de la práctica y la fecha de participación
use Colegio;
SELECT p.nombre AS nombre_profesor, pr.titulo AS titulo_practica, pp.fecha
FROM ParticipacionPracticas pp
INNER JOIN Profesores p ON pp.id_profesor = p.id
INNER JOIN Practicas pr ON pp.id_practica = pr.id;






