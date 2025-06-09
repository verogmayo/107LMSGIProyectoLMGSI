(:3. Mostrar el nombre y email de los profesores que imparten el curso "Bases de Datos OR":)

let $idProfBdOR :=
  for $curso in collection('academia')/curso
  where $curso/nombre = "Bases de Datos OR"
  return $curso/profesor/@idref

for $profe in collection('academia')//profesor
where $profe/@id = $idProfBdOR
return( data($profe/nombre), data($profe/email))

(:for $curso in collection("academia")/curso[nombre="Bases de Datos OR"]
for $profesor in collection("academia")/profesor
where $curso/profesor/@idref=$profesor/@id
return concat("nombre: ", data($profesor)/nombre),"email :"data ($profesor/email)


for $doc in collection("academia")/profesor
where collection("academia")/curso[nombre="Bases de Datos OR"]/profesor/@idref =$doc/@id
return concat($doc/nombre/text().... pas fini:)