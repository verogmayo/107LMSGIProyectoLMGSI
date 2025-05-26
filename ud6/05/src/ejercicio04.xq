(:4. Listado de los cursos que imparte el profesor con el siguiente DNI: 33856315:)

let $idCurso :=
  for $profe in collection('academia')/profesor
where $profe/dni = "33856315"
return data($profe/@id)

for $curso in collection('academia')/curso
  where $curso/profesor/@idref = $idCurso
  return data($curso/nombre)
  
 