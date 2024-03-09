
use colegio;
--creacion de usuarios
CREATE USER 'admin_colegio'@'localhost' IDENTIFIED BY '12345';
CREATE USER 'gestor_colegio'@'localhost' IDENTIFIED BY '65432';
CREATE USER 'consulta_colegio'@'localhost' IDENTIFIED BY '34567';


-- otorgar permisos
use colegio;
GRANT ALL PRIVILEGES ON colegio.* TO 'admin_colegio'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON colegio.alumnos TO 'gestor_colegio'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON colegio.profesores TO 'gestor_colegio'@'localhost';
GRANT SELECT ON colegio.alumnos TO 'consulta_colegio'@'localhost';
GRANT SELECT ON colegio.profesores TO 'consulta_colegio'@'localhost'



--consultar usuarios 

SELECT User, Host FROM mysql.user;



--ver permisos otorgados en la base de datos 
SHOW GRANTS FOR 'admin_colegio'@'localhost';
SHOW GRANTS FOR 'gestor_colegio'@'localhost';
SHOW GRANTS FOR 'consulta_colegio'@'localhost';






