

(:2. Qué cursos imparten/o han impartido clases en el "Aula 1":)

let $idAula1 :=
  for $aula in collection('academia')//aula
  where $aula/nombre = "Aula 1"
  return $aula/@id

for $curso in collection('academia')//curso
where $curso/aula/@idref = $idAula1
return data($curso/nombre)







