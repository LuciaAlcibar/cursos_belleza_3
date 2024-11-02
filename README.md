# cursos_belleza_3
INTEGRANTES: ALCIBAR LUCIA Y FIGUEROA MILAGROS.

En esta etapa del TPE decidimos utilizar la tabla 'cursos' ya que fue la que vimos mas apropiada para lo que se pedía en la consigna. 

Como opcionales decidimos hacer:
-Paginación en el metodo GET 
-Filtrado por uno de los campos de la tabla
-Ordenamiento de cualquier campo (a eleccion del usuario) de la tabla cursos, ya sea de forma ascendente o descendente.

## Como utilizar los endpoints:
A continuación, se detallan los endpoints y como buscarlos a través de PostMan:
- ('cursos'      ,       'GET'):
Este endpoint nos trae todos los cursos y se busca de esta forma:
.GET [localhost/nombre_de_la_carpeta/api/cursos] = para listar todos los cursos

.GET [localhost/nombre_de_la_carpeta/api/cursos?categoria=maquillaje] = esta query se utiliza para FILTRAR todos los cursos por categoria, en este ejemplo en particular se filtrarian los cursos con categoria maquillaje pero se pueden filtrar las siguientes categorias: maquillaje, uñas, peluqueria, cuidados.

.GET [localhost/nombre_de_la_carpeta/api/cursos?orderBy=campoDeLaTablaPorElQueQuieroOrdenar&sort=asc/desc] = esta query nos permite ordenar por cualquier campo de la tabla cursos, es decir, orderBy(nombre, descripción, duración, profesor, costo) y tambien nos permite elegir si queremos que los ordene de forma ascendente o descendente utilizando: sort=asc o sort=desc. EJEMPLO: si yo quiero ordenar los cursos por costo de forma ascendente tendria que ingresar: GET [localhost/TPE3/api/cursos?orderBy=costo&sort=asc].

A su vez, podemos COMBINAR la filtracion y el ordenamiento, un ejemplo seria: GET [localhost/TPE3/api/cursos?categoria=maquillaje&orderBy=costo&sort=asc].
esto nos mostraria aquellos cursos que tienen categoria maquillaje y los ordenaria segun el costo de los cursos de forma ascendente, es decir, del mas barato al mas caro en este ejemplo.

Para la paginación utilizamos limit=cantidadDeCursosQueQuieroQueSeMuestren y page=paginaQueQuieroVer. EJEMPLO:
[localhost/TPE3/cursos?limit=5&page=1], este ejemplo me mostraria los primeros 5 cursos de la pagina 1, en caso de querer ver la segunda pagina y que no tenga la cantidad de cursos que quiero ver, se mostraran los que haya. Por ejemplo, si quiero que el limite sea 5 y la pagina que quiero ver es la 2 y yo tengo 8 cursos, me va a mostrar los ultimos 3.
La paginación también puede combinarse con el resto de las querys, ejemplo:
[localhost/TPE3/api/cursos?categoria=maquillaje&orderBy=costo&sort=asc&limit=3&page=1]:
este ejemplo me mostraria aquellos cursos pertenecientes a la categoria maquillaje, ordenados de forma ascendente segun el costo y me mostraria solo los primeros 3 de la pagina 1.

-('cursos/:id'  ,       'GET'):
  .GET [localhost/nombre_de_la_carpeta/api/cursos/ID]
  este endpoint nos permite buscar un curso en especifico por ID. EJEMPLO: [localhost/TPE3/api/cursos/15], me mostraria el curso con id=15
  
-('cursos/:id'  ,       'DELETE'):
  .DELETE [localhost/nombre_de_la_carpeta/api/cursos/ID] este endpoint permite eliminar un curso en específico que se indica en el ID.
  
-('cursos/:id'  ,       'PUT'):
.PUT [localhost/nombre_de_la_carpeta/api/cursos/ID]: este endpoint nos permite editar un curso, para eso, en el postman deberas seleccionar: body, raw y elegir la opcion JSON. Para poder editar se debe enviar la informacion en formato JSON, utilizar este formato:
{
  "categoria": "maquillaje",
  "nombre":"curso de maquillaje",
  "descripcion":"este es un curso orientado a...",
  "duracion":2,
  "profesor": "anastasia",
  "costo": 20000,
  "imagen": "https/..."
  }
  una vez editado el curso que elegiste por id, lo muestra.

-('cursos'      ,       'POST'):
  .POST [localhost/nombre_de_la_carpeta/api/cursos]: este endpoint me permite crear un nuevo curso, para eso escribimos en formato JSON las caracteristicas del nuevo curso y lo enviamos. Utilizar este formato:
  {
"categoria": "maquillaje",
  "nombre":"curso de maquillaje",
  "descripcion":"este es un curso orientado a...",
  "duracion":2,
  "profesor": "anastasia",
  "costo": 20000,
  "imagen": "https/..."
  }

  Aclaracion: el campo duración representa cuanto dura el curso en cuestión de meses.
