(:23. Mostrar los libros cuya categoría empiece por C:)
for $x in /bookstore/book
where starts-with($x/@category,"c")
return
$x/title/text()


(: con etiquetas
for $x in /bookstore/book
where starts-with($x/@category,"c")
return
<titulo>{$x/title/text()}</titulo>:)