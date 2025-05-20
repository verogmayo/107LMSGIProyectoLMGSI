(:Crea una página web (03.html) cuyo título de la web “UD6-3.3 Listado de libros. Nombre y
apellidos” y que contenga una lista con viñetas con los títulos de los libros.:)

<html lang="en">
<head>
   <meta charset="UTF-8"/>
   <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
   <title>Ud6.03 - Véronique Grué</title>
    <link href="../css/estilos.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <h1>Listado de libros</h1>
    <ul>{for $x in /bookstore/book
    return <li>{$x /title/text()}</li>}</ul>
 <footer>
      <div>Todos los derechos reservados. Creado por:<a href="../index.html" target="_blank" id="nombre"> Véronique Grué</a>
      </div>
    </footer>
</body>
</html>