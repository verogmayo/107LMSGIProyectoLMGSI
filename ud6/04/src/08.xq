(:8. Renombrar el nodo total por importeTotal:)


for $x in collection("facturasDb")/factura
return
  rename node $x/total as xs:QName("importeTotal")
