<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                expand-text="yes"
                version="3.0">
    <xsl:output method="xml" indent="yes"/>
    <!-- si dejo xmlns:xs="http://www.w3.org/2001/XMLSchema", aparece en el xml resultante 
    como atributo de topalbum.
    xmlns:xs="http://www.w3.org/2001/XMLSchema":Declara el espacio de nombres para XML 
    Schema (xs). Se usa cuando quieres validar datos con tipos como xs:string, xs:integer,
     etc. No siempre es necesario.
    Aunque xmlns:xs="http://www.w3.org/2001/XMLSchema" es útil para definir tipos 
    de datos en expresiones XPath o XSLT, si no lo usas, XSLT no lo ignora automáticamente, 
    sino que lo hereda en la salida. 
    Si realmente necesitas xs: dentro del XSLT (por ejemplo, para validaciones en XPath), 
    puedes forzar XSLT a no copiarlo en la salida con exclude-result-prefixes:
    -->
    <!-- expand-text="yes": Habilita "Text Expansion", permitiendo usar {} dentro de los
     textos para insertar valores dinámicamente. Solo es válido en XSLT 3.0.  -->
    <!-- <xsl:mode on-no-match="shallow-copy"/> : esto es para hacer una copia automatica.
    aqui no vale-->
    <xsl:template match="/lfm">
     <!-- Autor.- Véronique Grué -->
        <!-- Fecha.- Viernes 14 de marzo de 2025 -->
        <!-- Joaquín Sabina XML -->
         <topalbum artista="{topalbums/@artist}">
            <xsl:for-each select="topalbums/album">
                <xsl:sort select="playcount" data-type="number" order="descending"/>
                <album>
                    <name><xsl:value-of select="name"/></name>
                    <playcount><xsl:value-of select="playcount"/></playcount>
                    <url><xsl:value-of select="url"/></url>
                </album>
            </xsl:for-each>
        </topalbum>
    </xsl:template>




<!-- 
OTR OPCIÓN SEPARADO EN VARIOS TEMPLATES
    <topalbum artista="{topalbums/@artist}">
            <xsl:apply-templates select="topalbums"/>
        </topalbum>
    </xsl:template>

    <xsl:template match="topalbums">
        <xsl:apply-templates select="album">
            <xsl:sort select="playcount" data-type="number" order="descending"/>
        </xsl:apply-templates>
    </xsl:template>

    <xsl:template match="album">
        <album>
            <name><xsl:value-of select="name"/></name>
            <playcount><xsl:value-of select="playcount"/></playcount>
            <url><xsl:value-of select="url"/></url>
        </album>
    </xsl:template> -->

    <!--  <xsl:output method="xml" indent="yes"/>
    <xsl:mode on-no-match="shallow-copy"/>
    <xsl:template match="/lfm/topalbums" mode="#all">
     
    <topalbum >
       <xsl:for-each select="album">
            <album>
                <name><xsl:value-of select="name"/></name>
                <playcount><xsl:value-of select="playcount"/></playcount>
                <url><xsl:value-of select="url"/></url>
            </album>
       </xsl:for-each>
    </topalbum>
    </xsl:template>
</xsl:stylesheet> -->
</xsl:stylesheet>
