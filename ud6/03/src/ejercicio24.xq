(:24. Mostrar los libros que contenga una X mayúscula o minúscula en el título ordenados de manera descendente:)
for $x in /bookstore/book/title
where contains(lower-case($x/text()),"x")
order by $x/title descending
return
$x/text()

(:for $x in /bookstore/book
where contains(lower-case($x/title/text()),"x")
order by $x/title descending
return
<titulo>{$x/title/text()}</titulo>:)