(:21. Mostrar en la misma etiqueta el título y entre paréntesis el número de autores que tiene ese título:)
<libros>{
for $x in /bookstore/book
return
<numAutores>{concat($x/title/text(),"(",count($x/author),")")}</numAutores> 
}
</libros>
