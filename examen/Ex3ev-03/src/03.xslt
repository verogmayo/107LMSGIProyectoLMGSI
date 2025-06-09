<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:array="http://www.w3.org/2005/xpath-functions/array"
                xmlns:map="http://www.w3.org/2005/xpath-functions/map"
                xmlns:math="http://www.w3.org/2005/xpath-functions/math"
                exclude-result-prefixes="#all"
                expand-text="yes"
                version="3.0">

  <xsl:output method="xml" indent="yes"/>
  <xsl:mode on-no-match="shallow-copy"/>
  
  
  <xsl:template match="/">
   <ultimaVersion>
      <xsl:apply-templates select="software-libre/distribuciones/distribucion"/>
    </ultimaVersion>
  </xsl:template>
  

  <xsl:template match="software-libre/distribuciones/distribucion" mode="#all">
    <xsl:variable name="maxVersion" select="max(//lanzamiento[@distribucion=current()/@id]/@version)"/>
    <xsl:for-each select="//lanzamiento[@distribucion=current()/@id and @version=$maxVersion]">
      <xsl:if test="not(following-sibling::lanzamiento[@distribucion=current()/@id])">
      </xsl:if>
     <xsl:copy-of select="."/> <!-- copiar todo el nodo -->
      
    </xsl:for-each>
  </xsl:template>

</xsl:stylesheet>