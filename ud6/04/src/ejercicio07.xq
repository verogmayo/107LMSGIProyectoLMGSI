(:7. Eliminar el nodo en la factura F001:)


 for $x in collection("facturasDb")/factura[@id = "F001"]
return
  delete node  $x/estado