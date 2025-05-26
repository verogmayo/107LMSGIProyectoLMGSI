
(:9. Actualizar todas las facturas con importe inferior a 200 con el valor 100.:)


for $x in collection("facturasDb")/factura 
where $x/importeTotal < 200
return
  replace value of node $x/factura/importeTotal with 100
