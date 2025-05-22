
(:9. Actualizar todas las facturas con importe inferior a 100 con el valor 100.:)


for $x in collection("facturasDb")/factura[total < 100]
return
  replace value of node $x/total with 100
