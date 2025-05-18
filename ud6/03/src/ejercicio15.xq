(:15. Mostrar los títulos de los libros y al final una etiqueta con el número total de libros:)

<libros>
  {
    let $x:=(for $y in /bookstore/book/title/text() return <book>{$y}</book>),
    $t:=count(//book)
    return ($x,<total>{$t}</total>)
 
  }

      
</libros>

(:<libros>
  {
    for $x in /bookstore/book
    return 
      <titulo>{$x/title/text()}</titulo>
  }
 {
    for $x in /bookstore
    return 
   <total>{count($x/book)}</total>
  }
      
</libros>:)