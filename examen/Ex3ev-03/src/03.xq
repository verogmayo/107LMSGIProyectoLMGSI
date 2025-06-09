<ultimaversion>
{
  (:distribuciones distintas:)
  for $distribucion in distinct-values(//lanzamiento/@distribucion)
  order by $distribucion
  
  (: lanzamiento más reciente :)
  let $lanzdist := //lanzamiento[@distribucion = $distribucion]
  let $ultimo := 
    for $lanzamiento in $lanzdist
    order by xs:int($lanzamiento/@año) descending, xs:int($lanzamiento/@mes) descending
    return $lanzamiento
  
  (: esto devuelve el mas reciente(limit1) :)
  return $ultimo[1]
}
</ultimaversion>