(:3. Mostrar el nombre y email de los profesores que imparten el curso "Bases de Datos OR":)

let $idProfBdOR :=
  for $curso in collection('academia')/curso
  where $curso/nombre = "Bases de Datos OR"
  return $curso/profesor/@idref

for $profe in collection('academia')//profesor
where $profe/@id = $idProfBdOR
return( data($profe/nombre), data($profe/email))

