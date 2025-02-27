<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                expand-text="yes"
                version="3.0">
  <xsl:output method="xml" indent="yes"/>
  <xsl:include href="../../lib/libhtml.xsl"/>
  <xsl:template match="/prediccion" mode="#all">
    <!-- Autor.- Véronique Grué -->
    <!-- Fecha.- Viernes 21 de febrero de 2025 -->
    <!-- Descripción.-Predicciíon -->
    <html>
      <head>
        <xsl:call-template name="meta">
          <xsl:with-param name="titulo" select="'07 XSLT Véronique Grué'  "/>
        </xsl:call-template>
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
      </head>
      <body>
        <header>
          <h1>Predicción por municipios</h1>                    
        </header>
        <main>
          <table>
            <caption> EL TIEMPO. <xsl:value-of select="upper-case(municipio/nombre),' '"/>(<xsl:value-of select="upper-case(municipio/provincia)"/>)</caption>
            <!--<caption> EL TIEMPO. <xsl:value-of select="concat (upper-case(municipio/nombre),' ('upper-case(municipio/provincia)"/>')'</caption> -->
            <!--<xsl:apply-templates select="dia"/>-->
            <!--<xsl:call-templates select="encTabla"/>-->
            <thead>
              <tr>
                <th> Dia</th>
                <th>Prob. precip.</th>
                <th>Estado del cielo</th>
                <th>Temperatura (ºC)</th>
                <th>Viento (Km/h)</th>
              </tr>
              <!-- <xsl:template match="" -->
            </thead>
            <tbody>
              <xsl:for-each select="dia">
                <tr>
                  <!-- substring-after para recuperar solo el día -->
                 <!-- "substring(@fecha, )" -->
                  <td><xsl:value-of select="substring-after(substring-after(@fecha, '-'), '-')" /></td> 
                  <td><xsl:value-of select="concat(prob_precipitacion,'%')"/></td>
                  <td><xsl:value-of select="concat('images/',{estado_cielo},'.gif')"/></td>
                  <!--
                  <td>
                    <xsl:choose>
                      <xsl:when test="estado_cielo= 11">
                        <img src="11.gif" alt="{estado_cielo/@descripcion}" title="{estado_cielo/@descripcion}"/>
                      </xsl:when>
                      <xsl:when test="estado_cielo= 12">
                        <img src="12.gif" alt="{estado_cielo/@descripcion}" title="{estado_cielo/@descripcion}"/>
                      </xsl:when>
                      <xsl:when test="estado_cielo = 13">
                        <img src="13.gif" alt="{estado_cielo/@descripcion}" title="{estado_cielo/@descripcion}"/>
                      </xsl:when>
                      <xsl:when test="estado_cielo = 14">
                        <img src="14.gif" alt="{estado_cielo/@descripcion}" title="{estado_cielo/@descripcion}"/>
                      </xsl:when>
                      <xsl:when test="estado_cielo = 15">
                        <img src="15.gif" alt="{estado_cielo/@descripcion}" title="{estado_cielo/@descripcion}"/>
                      </xsl:when>
                      <xsl:when test="estado_cielo = 16">
                        <img src="16.gif" alt="{estado_cielo/@descripcion}" title="{estado_cielo/@descripcion}"/>
                      </xsl:when>
                    </xsl:choose>
                  </td> -->
                  <td> <span class="minima">
                      <xsl:value-of select="temperatura/minima"/>
                    </span>
                    <xsl:text>/</xsl:text>
                    <span class="maxima">
                      <xsl:value-of select="temperatura/maxima"/>
                      </span>
                      </td>
                      <td>
                    <img src="'images/',{viento/direccion},'.gif'" alt="{viento/direccion}"/>
                  </td>
                 
                </tr>
              </xsl:for-each>
            </tbody>
          </table>
        </main>
      </body>
      
    </html>
    <!-- <xsl:template  -->
  </xsl:template>
</xsl:stylesheet>



<!--  
                  <td>
                    <xsl:choose>
                      <xsl:when test="viento/direccion= 'Oeste'">
                        <img src="Oeste.gif" alt="{viento/direccion}" title="{viento/direccion}"/>
                      </xsl:when>
                      <xsl:when test="viento/direccion= 'Nordeste'">
                        <img src="Nordeste.gif" alt="{viento/direccion}" title="{viento/direccion}"/>
                      </xsl:when>
                      <xsl:when test="viento/direccion = 'Norte'">
                        <img src="Norte.gif" alt="{viento/direccion}" title="{viento/direccion}"/>
                      </xsl:when>
                      <xsl:when test="viento/direccion = 'Oeste'">
                        <img src="Oeste.gif" alt="{viento/direccion}" title="{viento/direccion}"/>
                      </xsl:when>
                      <xsl:when test="viento/direccion = 'Sudeste'">
                        <img src="Sudeste.gif" alt="{viento/direccion}" title="{viento/direccion}"/>
                      </xsl:when>
                      <xsl:when test="viento/direccion ='Sudoeste'">
                        <img src="Sudoeste.gif" alt="{viento/direccion}" title="{viento/direccion}"/>
                      </xsl:when>
                      <xsl:when test="viento/direccion ='Calma'">
                        <img src="Calma.gif" alt="{viento/direccion}" title="{viento/direccion}"/>
                      </xsl:when>
                      <xsl:when test="viento/direccion ='Sur'">
                        <img src="Sur.gif" alt="{viento/direccion}" title="{viento/direccion}"/>
                      </xsl:when>
                      <xsl:when test="viento/direccion ='Este'">
                        <img src="Este.gif" alt="{viento/direccion}" title="{viento/direccion}"/>
                      </xsl:when>
                    </xsl:choose>
                    <xsl:value-of select="viento/velocidad"/>
                  </td> -->