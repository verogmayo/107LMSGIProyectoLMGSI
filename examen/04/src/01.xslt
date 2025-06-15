<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes"/>
  <xsl:mode on-no-match="shallow-copy"/>
  
  <xsl:template match="/zodiaco" mode="#all">
    <!-- Autor.- Véronique Grué -->
    <!-- Fecha.- Lunes 09 de mayo de 2025 -->
    <!-- Descripción.-Signos Zodiaco -->
    <html>
      <head>
        <title>Examen-Signos Zodiacos - Véronique Grué.</title>
        <meta charset="UTF-8"/>
        <link href="webroot/css/estilos.css" rel="stylesheet" type="text/css"/>
      </head>
      <body>
        <header>
         
          <h1> HOROSCOPO/SIGNOS ZODIACO</h1>
        </header>
        <main>
          <div class="contenedor">
            <xsl:for-each select="signo">
              <div class="caja">  
                <div class="cajita1" id="{@id}" style="background-image: url('{concat('webroot/images/bg-',@id,'.jpg')}');  background-repeat: no-repeat; background-position: center;"  width="200px" height="200px" >
                  <figure>
                    <img src="{concat('webroot/images/',@id,'.svg')}" alt="{@id}" width="200px" height="200px"/>
                    <figcaption class="fc1"><xsl:value-of select="nombre"/></figcaption>
                    <figcaption class="fc2" ><xsl:value-of select="fechaInicio"/>-<xsl:value-of select="fechaFin"/></figcaption>
                   
                   
                    
                  </figure>
                </div>
                              
                <div class="cajita2">
                  
                </div>
                
                
                
              </div>  
            </xsl:for-each>
          </div>
          
        </main>
        <footer>
          <div>&#169; 2025 <a href="../../../index.html" target="_blank" id="nombre"> Véronique Grué</a> | Todos los derechos reservados.
          </div>
        </footer>
      </body>
      <script>
     
      
       
                               </script>
    </html>
    
  </xsl:template>
  
  
  
</xsl:stylesheet>