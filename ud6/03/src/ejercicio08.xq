(:8.Uso de variables expresiones en un for $tema in (lista de valores), $y in (lista de valores). Para
indicar la lista de valor de valorinicial to valorfinal, por ejemplo 1 to 100. Generar automáticamente la siguiente página web (08.html):)
<html lang="en">
<head>
   <meta charset="UTF-8"/>
   <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
   <title>Ud6.03 - Véronique Grué</title>
    <link href="../css/estilos.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <h1>Listado de prácticas</h1>
    {for $tema in 1 to 7, $y in 1 to 3
    return <div><a href="{concat($tema,"/",$y,".html")}"></a>Tema{$tema}: Ejercicio"{$y}
    </div>}
  <footer>
      <div>Todos los derechos reservados. Creado por:<a href="../index.html" target="_blank" id="nombre"> Véronique Grué</a>
      </div>
    </footer>
</body>
</html>