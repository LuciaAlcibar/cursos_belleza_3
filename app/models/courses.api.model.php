<?php

class CoursesModel {
    private $db;

    public function __construct() {
       $this->db = new PDO('mysql:host=localhost;dbname=db_cursos_belleza;charset=utf8', 'root', '');
    }
 
    public function getAllCourses($filtrarCategoria, $categoria, $orderBy, $sort, $limit, $page) {
        $sql = 'SELECT * FROM cursos';
        $params = []; 
    
        // Filtrado por categoría
        if($filtrarCategoria != null && $filtrarCategoria == 'true') {
            $sql .= ' WHERE categoria = ?';
            $params[] = $categoria;
        }
    
        // Ordenamiento
        if($orderBy) {
            switch($orderBy) {
                case 'costo':
                    $sql .= ' ORDER BY costo ' . $sort;
                    break;
                case 'profesor':
                    $sql .= ' ORDER BY profesor ' . $sort;
                    break;
                case 'duracion':
                    $sql .= ' ORDER BY duracion ' . $sort;
                    break;
                case 'descripcion':
                    $sql .= ' ORDER BY descripcion ' . $sort;
                    break;
                case 'nombre':
                    $sql .= ' ORDER BY nombre ' . $sort;
                    break;
            }
        }
    
        // Paginación
        if ($limit !== null && $page !== null) {
            $desplazamiento = ($page - 1) * $limit; 
            $sql .= ' LIMIT ' . $limit . ' OFFSET ' . $desplazamiento;
        }
    
        $query = $this->db->prepare($sql);
        $query->execute($params);
        $courses = $query->fetchAll(PDO::FETCH_OBJ); 
    
        return $courses;
    }
    
 
    public function getCourse($id) {    
        $query = $this->db->prepare('SELECT * FROM cursos WHERE ID_curso = ?');
        $query->execute([$id]);   
    
        $course = $query->fetch(PDO::FETCH_OBJ);
    
        return $course;
    }
 
    public function insertCourse($categoria, $nombre, $descripcion, $duracion, $profesor, $costo, $imagen) { 
        $query = $this->db->prepare('INSERT INTO cursos(categoria, nombre, descripcion, duracion, profesor, costo, imagen) VALUES (?, ?, ?, ?, ?, ?, ?)');
        $query->execute([$categoria, $nombre, $descripcion, $duracion, $profesor, $costo, $imagen]);
    
        $id = $this->db->lastInsertId();
    
        return $id;
    }
    public function deleteInscriptionsByCourse($id) {
        $query = $this->db->prepare('DELETE FROM inscriptos WHERE ID_curso = ?');
        $query->execute([$id]);
    }
 
    public function eraseCourse($id) {
        $this->deleteInscriptionsByCourse($id);
        $query = $this->db->prepare('DELETE FROM cursos WHERE ID_curso = ?');
        $query->execute([$id]);
    }


    function updateCourse($categoria, $nombre, $descripcion, $duracion, $profesor, $costo, $imagen, $id) {    
        $query = $this->db->prepare('UPDATE cursos SET categoria = ?, nombre = ?, descripcion = ?, duracion = ?, profesor = ?, costo= ?, imagen = ? WHERE ID_curso = ?');
        $query->execute([$categoria, $nombre, $descripcion, $duracion, $profesor, $costo, $imagen, $id]);
    }

    public function doesCategoryExist($categoria) {
        $sql = 'SELECT COUNT(*) FROM cursos WHERE categoria = ?';
        $query = $this->db->prepare($sql);
        $query->execute([$categoria]);
        return $query->fetchColumn() > 0; 
    }
    
}