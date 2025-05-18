(:14. Mostrar cuántos libros hay, y etiquetarlo con “total”:)
let $x:=count(/bookstore/book)
return <total>{$x}</total>
(:<total>{concat("En total hay ",count($x/book)," libros")}</total>:)

(:for $x in /bookstore
return
<total>{count($x/book)}</total>:)
