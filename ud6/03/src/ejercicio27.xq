(:27. Mostrar todos los autores eliminando los que se repiten y ordenados por el número de caracteres que tiene cada autor.:)


  for $x in distinct-values(/bookstore/book/author)
  order by string-length($x)
  return 
  $x
 
(:
Estos son los autores ordenados ascendentes y el numero de carcateres de cada uno

<autores>
{
  for $x in distinct-values(/bookstore/book/author)
  order by $x
  return 
  <libro><autor>{$x}</autor>
  <numCaracteres>{string-length($x)}</numCaracteres></libro>
  
}
</autores>:)

