(:19. Mostrar cada uno de los precios de los libros , y al final una etiqueta con la suma de los precios.:)
<precios>
{
  let $a:=(for $x in /bookstore/book/price/text() return <precio>{ $x }</precio>), $b:=(format-number(sum(/bookstore/book/price),'#.00'))
return
($a,<total>{$b}</total>)
}
</precios>

(:<precios>
{for $x in /bookstore/book
return
  <precio>{ $x/price/text() }</precio>
}
{<total>{format-number(sum(/bookstore/book/price),'#.00')}</total>}
</precios>
:)