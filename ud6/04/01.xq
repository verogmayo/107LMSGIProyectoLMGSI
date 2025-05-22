(:1. Listar el nombre de todos los clientes:)
for $x in collection("facturasDb")
  return $x//nombre/text()