(:18. Mostrar la suma total de los precios con la etiqueta total:)
<total>{format-number(sum(/bookstore/book/price),'#.00')}</total>
(:format-number(dato,'#.00'): para darle formato a numero.
# hace que pueda aparecer datos o no si hay 0 aparece 0:)