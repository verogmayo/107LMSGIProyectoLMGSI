(:16. Mostrar el precio mínimo y el máximo de los libros:)
concat("El precio minimo es ",min(/bookstore/book/price),"&#10;",
"El precio maximo es ",max(/bookstore/book/price))

(:Para que solo aparezca el texto, hay que utilizar concat() y "&#10;" para el salto de linea. Puedes buscar en la tabla ascii el numero despues del & Puedes poner el nombre de la base de datos.:)
(:<precios>
<precioMax>{max(/bookstore/book/price)}</precioMax>
<precioMin>{min(/bookstore/book/price)}</precioMin>
</precios>:)