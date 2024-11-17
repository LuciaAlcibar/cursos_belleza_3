<?php
require_once 'app/models/courses.api.model.php';
require_once 'app/views/json.view.php';

class CoursesApiController {
    private $model;
    private $view;

    public function __construct() {
        $this->model = new CoursesModel();
        $this->view = new JSONView();
    }

    public function getAllCourses($req, $res) {
        // Inicialización de variables
        $filtrarCategoria = null;
        $categoria = null;
        $limit = 10;
        $page = 1; 
    
        // Validación de la categoría
        if (isset($req->query->categoria)) {
            $filtrarCategoria = 'true'; 
            $categoria = $req->query->categoria; 
            if (empty($categoria)) {
                return $this->view->response("La categoría no puede estar vacía.", 400);
            }
        }
    
        // Validación de limit
        if (isset($req->query->limit)) {
            $limit = intval($req->query->limit);
            if ($limit <= 0) {
                return $this->view->response("El límite debe ser un número positivo.", 400);
            }
        }
    
        // Validación de page
        if (isset($req->query->page)) {
            $page = intval($req->query->page);
            if ($page <= 0) {
                return $this->view->response("La página debe ser un número positivo.", 400);
            }
        }
    
        // Validación de orderBy
        $orderBy = false;
        if (isset($req->query->orderBy)) {
            $orderBy = $req->query->orderBy;
            $validOrderBy = ['duracion', 'costo', 'profesor', 'descripcion', 'nombre'];
            if (!in_array($orderBy, $validOrderBy)) {
                return $this->view->response("El parámetro 'orderBy' debe ser 'duracion', 'costo', 'profesor', 'descripcion' o 'nombre'.", 400);
            }
        }
    
        // Validación de sort
        $sort = null;  
        if (isset($req->query->sort)) {
            $sort = $req->query->sort;
            if ($sort !== 'asc' && $sort !== 'desc') {
                return $this->view->response("El parámetro 'sort' debe ser 'asc' o 'desc'.", 400);
            }
        }
    
        // Validación de categoría existente
        if ($filtrarCategoria === 'true') {
            if (!$this->model->doesCategoryExist($categoria)) { 
                return $this->view->response("La categoría '$categoria' no existe.", 404);
            }
        }
    
        // Obtener cursos
        $courses = $this->model->getAllCourses($filtrarCategoria, $categoria, $orderBy, $sort, $limit, $page);
    
        // Respuesta
        if (empty($courses)) {
            return $this->view->response("No se encontraron cursos para la categoría '$categoria' en la página $page.", 404);
        }
    
        return $this->view->response($courses);
    }
    
    
    public function deleteCourse($req) {
        $id = $req->params->id;

        $course = $this->model->getCourse($id);

        if (!$course) {
            return $this->view->response("el curso con el id= $id no existe", 404);
        }

        $this->model->eraseCourse($id);
        $this->view->response("el curso con el id= $id se eliminó con éxito");
    }

    public function createCourse($req) {
        
        if (empty($req->body->nombre) || empty($req->body->descripcion) || empty($req->body->categoria) || empty($req->body->duracion) || empty($req->body->profesor) || empty($req->body->costo) || empty($req->body->imagen)) {
            return $this->view->response('Faltan completar datos', 400);
        }
        
        $categoria = $req->body->categoria;
        $nombre = $req->body->nombre;       
        $descripcion = $req->body->descripcion;       
        $duracion = $req->body->duracion;
        $profesor = $req->body->profesor;
        $costo = $req->body->costo; 
        $imagen = $req->body->imagen;      

        $id = $this->model->insertCourse($categoria, $nombre, $descripcion, $duracion, $profesor, $costo, $imagen);

        if (!$id) {
            return $this->view->response("Error al insertar tarea", 500);
        }else{
            $course = $this->model->getCourse($id);
            return $this->view->response($course, 201);
        }

        
    }
    public function updateCourse($req) {
        $id = $req->params->id;

        // verifico que exista
        $course = $this->model->getCourse($id);
        if (!$course) {
            return $this->view->response("El curso con el id= $id no existe", 404);
        }

         // valido los datos
        if (empty($req->body->nombre) || empty($req->body->descripcion) || empty($req->body->categoria) || empty($req->body->duracion) || empty($req->body->profesor) || empty($req->body->costo) || empty($req->body->imagen)) {
            return $this->view->response('Faltan completar datos', 400);
        }

        $categoria = $req->body->categoria;
        $nombre = $req->body->nombre;       
        $descripcion = $req->body->descripcion;       
        $duracion = $req->body->duracion;
        $profesor = $req->body->profesor;
        $costo = $req->body->costo; 
        $imagen = $req->body->imagen;    

        $this->model->updateCourse($categoria, $nombre, $descripcion, $duracion, $profesor, $costo, $imagen, $id);

        $course = $this->model->getCourse($id);
        $this->view->response($course, 200);
    }

}
