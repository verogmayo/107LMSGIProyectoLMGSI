<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:array="http://www.w3.org/2005/xpath-functions/array"
                xmlns:map="http://www.w3.org/2005/xpath-functions/map"
                xmlns:math="http://www.w3.org/2005/xpath-functions/math"
                exclude-result-prefixes="#all"
                expand-text="yes"
                version="3.0">
    <xsl:output method="text" indent="yes"/>
    <xsl:mode on-no-match="shallow-copy"/>
    <xsl:template match="/network" >
     <!-- Autor.- Véronique Grué -->
        <!-- Fecha.- Martes 18 de febrero de 2025 -->
        <!-- Descripción.-Network -->
      
    network:
    <xsl:for-each select="ethernets">  
        ethernets:
            <xsl:value-of select="name"/>:
                addresses: 
                    <xsl:value-of select="addresses"/>
                <xsl:if test="gateway4">
                routes:
                    to: default
                    via: <xsl:value-of select="gateway4"/>
                </xsl:if>
                <xsl:if test="nameservers">
                nameservers:
                    <xsl:for-each select="nameservers/addresses">
                        <xsl:value-of select="."/>
                        <xsl:text>&#10;                    </xsl:text>
                    </xsl:for-each>
        </xsl:if>

     </xsl:for-each>        
    </xsl:template>

    

</xsl:stylesheet>