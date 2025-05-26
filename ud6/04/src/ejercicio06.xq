
(:6. Insertar un nuevo nodo estado con valor pagada dentro de en la factura F001:)


  let $f := "F001"
let $e := <estado>pagada</estado>

for $x in collection("facturasDb")/factura[@id = $f]
return
  insert node $e after $x/total
  (:let $f := "F001"
let $e := <estado>pagada</estado>

for $x in collection("facturasDb")/factura[@id = $f]
return
   insert node $e into $x:)
