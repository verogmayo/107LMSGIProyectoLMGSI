(:5.Remplazar el nombre del clietne en la factura F001 por "tu nombre y Apellidos":)


let $f := "F001"
let $n := "Véronique Grué"

for $x in collection("facturasDb")/factura[@id = $f]
return
  replace value of node $x/cliente/nombre with $n
  (:ça remplace le noeud en question avec la variable:)

(:let $f := "F001"
let $n := "Véronique Grué"
let $factura := collection("facturasDb")/factura[@id = $f]

return
  replace value of node $factura/cliente/nombre with $n
:)
(:let $f := "F001"
let $n := "Véronique Grué"

for $x in collection("facturasDb")/factura
return
  if ($x/@id = $f) then
    <factura id="{$x/@id}">
      <cliente>
        <nombre>{$n}</nombre>
        { $x/cliente/*[name() != "nombre"] }
      </cliente>
      { $x/*[name() != "cliente"] }
    </factura>
  else $x:)
