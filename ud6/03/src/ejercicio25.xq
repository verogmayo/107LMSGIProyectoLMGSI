(:25. Mostrar el título y el número de caracteres que tiene cada título, cada uno con su propia etiqueta.:)
<libros>
{for $x in /bookstore/book/title
return
<libro>
<titulo>{$x/text()}</titulo>
<numCaracteres>{string-length($x)}</numCaracteres>
</libro>}
</libros>

