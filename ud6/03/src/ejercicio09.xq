(:9.Mostrar el título del libro cuando tenga más de dos autores.:)
for $x in //book
where count($x/author) gt 1  
return $x/title/text()
(:gt es lo mismo que >, y  gt= igual que >= :)