(:26. Mostrar todos los años en los que se ha publicado un libro eliminando los repetidos. Etiquetados con "año".:)
<anyos>{
  for $x in distinct-values( /bookstore/book/year)
return
<anyo>{$x}</anyo>
  
}
</anyos>
