(:Para generar json
map es una colection de pares clave-valor
la declaración:)

(:Esto crea json con las fucnioens nativas:)
declare namespace output = "http://www.w3.org/2010/xslt-xquery-serialization";
declare option output:method "json";
declare option output:indent "yes";


map {
  "distribuciones": array {
    for $lanzamiento in //lanzamiento[@distribucion = ('ubuntu', 'redhat')]
    order by $lanzamiento/@distribucion, $lanzamiento/@version
    return
      map {
        "distribucion": string($lanzamiento/@distribucion),
        "version": string($lanzamiento/@version)
      }
  }
}