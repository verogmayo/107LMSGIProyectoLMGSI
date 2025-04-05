<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                expand-text="yes"
                version="3.0">
    <xsl:output method="text" indent="yes"/>
    <xsl:mode on-no-match="shallow-copy"/>
    <xsl:template match="/network" >
     <!-- Autor.- Véronique Grué -->
        <!-- Fecha.- Martes 18 de febrero de 2025 -->
        <!-- Descripción.-Network -->
    <xsl:variable name="newline" select="'&#10;'"/>
    <xsl:variable name="newtab" select="'   '"/>
    <xsl:value-of select="concat(name(current()),':')"/>
     <xsl:for-each select="ethernets">  
        <xsl:value-of select="concat($newline,$newtab,name(current()),':')"/>
        <xsl:value-of select="concat($newline,$newtab,$newtab,name,':')"/>
        <xsl:value-of select="concat($newline,$newtab,$newtab,$newtab,name(addresses),':')"/>
         <xsl:value-of select="concat($newline,$newtab,$newtab,$newtab,$newtab,addresses)"/>

               <!-- gateaway (si existe o no por eso se pone if). es para la puerta de enlace-->
            <xsl:if test="gateway4">
                <xsl:value-of select="concat($newline,$newtab, $newtab, $newtab, 'routes:')"/>
                <xsl:value-of select="concat($newline,$newtab, $newtab,$newtab,$newtab, 'to: default')"/>
                <xsl:value-of select="concat($newline,$newtab, $newtab,$newtab,$newtab,'via: ', gateway4)"/>
            </xsl:if> <!-- fin puerta de enlace -->
           
            <!-- nombre del servidor -->
            <xsl:if test="nameservers">
                <xsl:value-of select="concat($newline,$newtab, $newtab, $newtab, name(nameservers),':')"/>
                <xsl:value-of select="concat($newline,$newtab, $newtab, $newtab,$newtab, 'addresses:')"/>
               
                <!-- Se hace este for pq no se sabe exactamente cuantas direcciones hay, entonces lo repite las veces que haya direcciones (en caso de que las haya) -->
                <xsl:for-each select="nameservers/addresses">
                    <xsl:value-of select="concat($newline,$newtab, $newtab, $newtab, $newtab,$newtab,text())"/>
                   
                </xsl:for-each>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>
    </xsl:stylesheet>

   
      
    <!--network:
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

     </xsl:for-each>        -->
