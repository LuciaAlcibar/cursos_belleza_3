<?php
require_once 'libs/router.php';
require_once 'app/controllers/courses.api.controller.php';

 $router = new Router();

 #                  endpoint             verbo           controller             metodo
 $router->addRoute('cursos'      ,       'GET',     'CoursesApiController',   'getAllCourses');
 $router->addRoute('cursos/:id'  ,       'GET',     'CoursesApiController',   'getCourse');
 $router->addRoute('cursos/:id'  ,       'DELETE',  'CoursesApiController',   'deleteCourse');
 $router->addRoute('cursos/:id'  ,       'PUT',    'CoursesApiController',   'updateCourse');
 $router->addRoute('cursos'      ,       'POST',     'CoursesApiController',   'createCourse');

 $router->route($_GET['resource'], $_SERVER['REQUEST_METHOD']);
