(:7.Uso de at, for variable1 at variable2 expresiónXpath, siendo la segunda variable la posición de cada nodo. Genera el siguiente archivo XML (07.xml):)
<books>
{for $x at $p in /bookstore/book
return 
  <book>{concat($p,". ",$x/title)}</book>}
</books>