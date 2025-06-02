declare variable $src := file:list('C:/Users/Usuario/OneDrive - Educacyl/AA LENGUAJES/107LMSGIProyectoLMGSI/ud6/03/src');
declare variable $html :=
<html lang="es">
  <head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Ud6.03 - Véronique Grué</title>
    <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
  </head>
  <body>
     <header>
<h1 id="inicio">Ejercicios XQuery</h1>
      <nav>
      <div>
      {for $e in 01 to 14
       let $n :=format-number($e,"00")
    return 
    
    <a class="indexnav" href="{concat("#ejercicio",$n)}">{$n}</a>} 
      </div>
      <div>
      {for $e in 15 to 28
       let $n :=format-number($e,"00")
    return 
    
    <a class="indexnav" href="{concat("#ejercicio",$n)}">{$n}</a>} 
      </div>
       
               
        </nav>
    </header>
    <table class="index">
      <tr class="indextr">
        <th>Enlaces</th>
        <th>Resultado gráfico</th>
      </tr>
      {
        for $xq in $src
        let $nombre := substring-before($xq, ".xq")
        let $resultado := (
          (: Se busca buscar el primer archivo de resultado que exista, con la extensión que corresponda :)
          let $posibles_extensiones := ('xml', 'txt', 'html')
          let $archivos_resultado := 
            for $ext in $posibles_extensiones
            let $ruta := concat('C:/Users/Usuario/OneDrive - Educacyl/AA LENGUAJES/107LMSGIProyectoLMGSI/ud6/03/target/', $nombre, '.', $ext)
            where file:exists($ruta)
            return $ruta
          return
          (: Si encuentra por lo menos 1 elemento, se devuelve el elemento :)
            if (count($archivos_resultado) > 0) then
              $archivos_resultado[1]
            else
              ()
        )
        let $imagen := concat('webroot/images/', $nombre, '.png')
        return
          <tr class="indextr">
            <td id="{$nombre}" class="indextd">
              <a class="indexa" href="{concat('src/', $xq)}">{$xq}</a><br/>
              {
                <a class="indexa" href="{replace($resultado, 'C:/Users/Usuario/OneDrive - Educacyl/AA LENGUAJES/107LMSGIProyectoLMGSI/ud6/03/', '')}" >Ver resultado</a>
                }
                <br/>
                {
            <a class="indexa" href="#inicio">Ir al inicio</a>
                }
            </td>
            <td class="indextd">
              {
            if ($imagen) then
                  <img src="{$imagen}" alt="Imagen de {$nombre}" width="700"/>
                else
                  <span>Sin imagen</span>
              }
            </td>
          </tr>
      }
    </table>
    <footer class="indexfooter">
      <div>Todos los derechos reservados. Creado por:<a href="../../index.html" id="nombre"> Véronique Grué</a>
      </div>
    </footer>
  </body>
</html>;
$html
(:Funciones numéricas:
floor() - devuelve el valor númerico inferior más proximo al dato
ceiling() - devuelve el valor numérico superior más proximo al dato
round () - redondea el valor dado al más próximo
count() - determina el número de items en una colección
min() y max() devuelve el valor minimo o máximo de los nodos
avg() - calcula el valor medio de los valores dados
sum() - calcula la suma total de una cantidad de items dados

Funciones de cadena de texto
concat() - une dos cadena de texto dadas
string-length() - devuelve la cantidad de caracteres que forman una cadena
starwith(), ends-with() determinan si una cadena dada comienza o termina con otra cadena dada
upper-case(), lower-case() devuelve la cadena en mayúsculas o ninúsculas

Funciones de uso general
empty() devulve true cuando la secuencia dada no contiene ningún elemento
exits() - devuelve true cuando una secuenca contiene al menos un elemento
distict-values() extrae los valores de una secuencia de nodos y crea una nueca secuencia con valores no duplicados
some, every permiten definir consultas que devuelven algún o todos los elementos que verifiquen la condición dada

Xquery dispone de operadores para hacer comparaciones.

Comparaciones de valores

                        eq = igual
                        en = no igual
                        le = menor que
                        le= menor o igual que
                        gt = mayor que
                        ge = mayor o igual que
                      
Comparaciones generales: =, !=, <, <=, >, >=
Secuencia de nodos
union - devuelve todos los nodos que recibe enter los dos operandos indicados
intersect - devuelve todos los nodos que aparecen en los dos operandos que recibe
except - devuelve todos los nodos que aparecen en el primer operando que recibe y que no aparecen en el segundo
:)