<html lang="en">
<head>
   <meta charset="UTF-8"/>
   <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
   <title>Examen04-02 - Véronique Grué</title>
    <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
</head>

<body>
  
   <header>
   <img src="images/logo.jpg" alt="logo Software"/><h1>Distribución de softwareLinux</h1>
      </header>

     
    <ul class="lista">
   {
     for $x in //distribucion
    return <li class="nombre"><a href="{$x /web/text()}"> {$x /nombre/text()}</a></li>
   }
   </ul>
 <footer>
      <div>Todos los derechos reservados. Creado por:<a href="../../../index.html" target="_blank" id="nombre"> Véronique Grué</a>
      </div>
    </footer>
</body>
</html>