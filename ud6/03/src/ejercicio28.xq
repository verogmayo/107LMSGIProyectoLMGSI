(:28. Mostrar los títulos en una tabla de HTML.:)
<html lang="en">
<head>
   <meta charset="UTF-8"/>
   <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
   <title>Ud6.03 - Véronique Grué</title>
    <link href="../css/estilos.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <h1>Titulos de los libros</h1>
     <table>
      <tr>
       <th>Título</th>
      </tr>
      {
        for $x in /bookstore/book
        return
          <tr>
           <td>{ $x/title/text() }</td>
          </tr>
      }
    </table>
    <footer> <div>Todos los derechos reservados. Creado por:<a href="/index.html" target="_blank" id="nombre"> Véronique Grué</a> </div> </footer>
   </body>
    
</html>
(:
<html lang="en">
<head>
   <meta charset="UTF-8"/>
   <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
   <title>Ud6.03 - Véronique Grué-Irene Rodriguez-Yolanda Rogriguez</title>
    <link href="../css/estilos.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <h1>Titulos de los libros</h1>
     <table border="1">
      <tr>
        <th>Categoría</th>
        <th>Título</th>
        <th>Autor</th>
        <th>Año</th>
        <th>Precio</th>
      </tr>
      {
        for $x in /bookstore/book
        return
          <tr>
            <td>{ string ($x/@category) }</td>
            <td>{ $x/title/text() }</td>
            <td>{ $x/author/text() }</td>
            <td>{ $x/year/text() }</td>
            <td>{ $x/price/text() }</td>
          </tr>
      }
    </table>
   </body>
</html>
:)