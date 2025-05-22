(:2. Filtrar facturas con un importe total mayor que 200:)
for $x in collection("facturasDb")
where $x/factura/total>200
  return $x
  
 (:for $x :=collection("facturasDb")/factura/total>200
  return $x:) 