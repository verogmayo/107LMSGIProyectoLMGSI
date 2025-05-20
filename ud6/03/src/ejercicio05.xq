(:Crea una página web (05.html), que contenga todos los libros con su categoría, en la lista aparece distintos colores el título en función de la categoría.:)
(:para que aparezca el dato del atributo hay que poner string(todo en minuscula:)
<html lang="en">
<head>
   <meta charset="UTF-8"/>
   <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
   <title>Ud6.03 - Véronique Grué</title>
    <link href="../css/estilos.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <h1>Bookstore</h1>
     <table>
     <thead>
       <tr>
        <th>Título</th>
        <th>Categoría</th>
      </tr>
     </thead>
     <tbody>
      {
        for $x in /bookstore/book
        return
          <tr>
            <td>{ data($x/title) }</td>
            <td>{ string ($x/@category) }</td>
         </tr>
      }
     </tbody>
     
    </table>
    <h2>Listado por categoría</h2>
   <ul class="lista">
   {
     for $x in /bookstore/book
    return <li class="{string ($x/@category)}">{$x /title/text()}</li>
   }
   </ul>
 <footer>
      <div>Todos los derechos reservados. Creado por:<a href="../index.html" target="_blank" id="nombre"> Véronique Grué</a>
      </div>
    </footer>
</body>
</html>