<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes"/>
  <xsl:mode on-no-match="shallow-copy"/>

  <xsl:template match="/software-libre" mode="#all">
    <!-- Autor.- Véronique Grué -->
    <!-- Fecha.- Viernes 02 de mayo de 2025 -->
    <!-- Descripción.-Softwore Libre -->
    <html>
      <head>
        <title>Software-Libre - Véronique Grué.</title>
        <meta charset="UTF-8"/>
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
      </head>
      <body>
        <header>
          <img src="images/logo.jpg" alt="logo Software"/>
          <h1> <xsl:value-of select="concat('Distribución de software',@tipo)"/></h1>
        </header>
        <main>
          <div class="contenedor">
            <h2>Lanzamiento de distribuciones</h2>
          <xsl:for-each select="lanzamientos/lanzamiento">
               <div class="caja">  
                  <div class="cajitas">
                  <figure>
                    <img src="{concat('images/',@distribucion,'.png')}" alt="{@distribucion}" width="200px" height="200px"/>
                    <figcaption><a href='//distribucion/@id=current()/@distribucion)/web)'><xsl:value-of select="//distribucion[@id=current()/@distribucion]/web"/></a></figcaption>
                  </figure>
                </div>
                
                
                <div class="cajitas">
                  <xsl:if test="@escritorio !=''">
                    <figure>
                      <img src="{concat('images/',@escritorio,'.png')}" alt="{@escritorio}" width="200px" height="200px"/>
                      <figcaption><a href='//escritorio/@id=current()/@escritorio)/web)'><xsl:value-of select="//escritorio[@id=current()/@escritorio]/web"/></a></figcaption>
                    </figure>
                  </xsl:if>
                </div>
                              
                <div class="cajitas">
                  <p><span class="negrita">Versión:</span> <xsl:value-of select="@version"/></p>
                  <p><span class="negrita">Año:</span> <xsl:value-of select="@año"/></p>
                  <p><span class="negrita">Kernel:</span> <xsl:value-of select="@kernel"/></p>
                </div>
                  
                </div>  
          </xsl:for-each>
          </div>
         
        </main>
        <footer>
          <div>Todos los derechos reservados. Creado por:<a href="../../../index.html" target="_blank" id="nombre"> Véronique Grué</a>
          </div>
        </footer>
      </body>
    </html>
    
  </xsl:template>

  

</xsl:stylesheet>