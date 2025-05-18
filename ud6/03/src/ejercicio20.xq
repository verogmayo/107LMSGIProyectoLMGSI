(:20. Mostrar el título y el número de autores que tiene cada título en etiquetas diferentes.:)
<numAutores>
{for $x in /bookstore/book
  return
  <libro>
  <titulo>{$x/title/text()} </titulo>
  <autores>{count($x/author)} </autores>
  </libro>
  }
</numAutores>