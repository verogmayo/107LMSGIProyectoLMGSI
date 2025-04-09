<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                    
            exclude-result-prefixes="#all"
                expand-text="yes"
                version="3.0">
    
    <xsl:output method="html" indent="yes"/>
    
    <xsl:include href="../../../ud5/lib/libhtml.xsl"/>
    <xsl:template match="/lfm/topalbums" mode="#all">
        <!-- Autor.- Véronique Grué -->
        <!-- Fecha.- Viernes 14 de Marzo de 2025 -->
        <!-- Transformación a html Joaquin Sabina -->
        <html>
            <head>
                <xsl:call-template name="meta">
                    <xsl:with-param name="titulo" select="'Joaquin Sabina-Véronique-Grué'"/>
                </xsl:call-template>
                <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
            </head>
            <body>
                <h1>last.fm</h1>
                <h2><xsl:value-of select="/lfm/topalbums/@artist"/></h2>
                <h3><xsl:text>Álbumes</xsl:text></h3>
                <div id="cajaPrincipal">
                    <xsl:for-each select="album">
                        <div class="cajaAlbum">
                            <xsl:choose>
                                    <xsl:when test="string(image[@size='large'])">
                                        <!-- Si la URL de la imagen existe y no está vacía, la mostramos -->
                                        <img src="{normalize-space(image[@size='large']/text())}" alt="{name/text()}"/><!-- seleccionar la URL de las imagenes que estan dentro del XML y cuyo atributo es SIZE="LARGE" -->
                                <!-- Se abren llaves para escribir dentro una expresión XPath. en el ALT se pone un texto alternativo, o un titulo, el cual es importante para el SEO -->
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <!-- Si no tiene contenido o está vacía, mostramos la imagen predeterminada -->
                                        <img src="../target/images/sin.png" alt="{name/text()}"/>
                                    </xsl:otherwise>
                                </xsl:choose>
                                <div class="texto"> <!-- Texto que va a la derecha de la imagen -->
                                    <p><a href="{url/text()}"><xsl:value-of select="name"/></a></p>
                                    <!-- Se coge el titulo del album y la URL del album-->
                                    <xsl:for-each select="artist"><!-- por cada artista se repite el nombre, si hay mas de uno se repiten los nombres de todos los artistas que haya en el disco -->
                                        <p><xsl:value-of select="name"/></p>            
                                    </xsl:for-each>
                                </div>
                            </div>
                    </xsl:for-each>
                </div>
                
            </body>
        </html>
        
    </xsl:template>      
</xsl:stylesheet>