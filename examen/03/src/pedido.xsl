<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>
    
    
    
    <!-- Plantilla que dado una fecha la escribe en otro formato -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Pedidos Véronique Grué.</title>
                <meta charset="UTF-8"/>
                <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
            </head>
            <body>
                <h1>Pedido ID:<xsl:value-of select="pedido/@idPedido"/></h1>
                
                <h3>Fecha:<xsl:apply-templates select="pedido/@fecha"/></h3>
                <label for="fabricanteSelect">Fabricante:</label>
                <select id="fabricanteSelect" onchange="filtrarFabricante()">
                    <option value="todos">Todos</option>
                    <xsl:for-each select="pedido/tractor/@codigoFabricante">
                        <option value="{.}"><xsl:value-of select="."/></option>
                        
                    </xsl:for-each>
                </select>
                <xsl:for-each select="pedido">
                    <xsl:for-each select="tractor">
                        <div class="contenedor">
                            <div class="caja">
                                <div class="div1" >
                                    
                                    <img class="logo" src="{concat('images/',@codigoFabricante, '.png')}" alt="{@codigoFabricante}"/>
                                </div>
                                <div class="div2">
                                    <h2>
                                        <xsl:value-of select="concat('Fabricante :',@codigoFabricante, document('../input/fabricantes.xml')/fabricantes/fabricante[@codigo=current()/@codigoFabricante]/@nombre)"/></h2>
                                    
                                </div>
                            </div>
                            
                            
                            <table>
                                <thead>
                                    <tr> 
                                        <th> </th>
                                        <th> Referencia</th>
                                        <th> Descripción</th>
                                        <th> Fecha Entrega</th>
                                        <th> Peso</th>
                                        <th> Número de Serie</th>
                                        <th> Km Máximos</th>
                                        <th> Cantidad</th>
                                    </tr>
                                </thead>
                                <tbody> 
                                    <xsl:for-each select="componente">
                                        <tr>
                                            <td class="image">
                                                <img src="{concat('images/', @referencia, '.png')}" alt="{@referencia/text()}"/>
                                            </td>
                                            <td class="ref">
                                                <xsl:value-of select="@referencia"/>
                                            </td>
                                            <td class="desc">
                                                <xsl:value-of select="document('../input/componentes.xml')/componentes/componente[@codigo=current()/@referencia]/@nombre"/>
                                            </td>
                                            <td class="fecha">
                                                <xsl:value-of select="concat(fechaEntrega/@mes,'-',fechaEntrega/@anio)"/>
                                            </td>
                                            <td class="peso">
                                                <xsl:value-of select="concat(peso/text(),'', peso/@unidad)"/>
                                            </td>
                                            <td class="numSerie">
                                                <xsl:value-of select="numeroSerie/text()"/>
                                            </td>
                                            <td class="num1">
                                                
                                                <xsl:choose>
                                                    <xsl:when test="kmMaximos/text()">
                                                        <xsl:value-of select="kmMaximos/text()"/>
                                                    </xsl:when>
                                                    <xsl:otherwise>
                                                        <xsl:text>-</xsl:text>
                                                    </xsl:otherwise>
                                                </xsl:choose>
                                            </td>
                                            <td class="num2">
                                                <xsl:value-of select="cantidad/text()"/>
                                            </td>
                                        </tr>
                                    </xsl:for-each>
                                </tbody> 
                            </table> 
                        </div>
                    </xsl:for-each>
                </xsl:for-each>
            </body>
        </html>
        
    </xsl:template>
    
    
    <xsl:template match="@fecha">
        <xsl:variable name="anio" select="substring(., 1, 4)"/>
        <xsl:variable name="mes" select="substring(., 6, 2)"/>
        <xsl:variable name="dia" select="substring(., 9, 2)"/>
        <xsl:value-of select="$dia"/> de
        <xsl:choose>
            <xsl:when test="$mes='01'">enero</xsl:when>
            <xsl:when test="$mes='02'">febrero</xsl:when>
            <xsl:when test="$mes='03'">marzo</xsl:when>
            <xsl:when test="$mes='04'">abril</xsl:when>
            <xsl:when test="$mes='05'">mayo</xsl:when>
            <xsl:when test="$mes='06'">junio</xsl:when>
            <xsl:when test="$mes='07'">julio</xsl:when>
            <xsl:when test="$mes='08'">agosto</xsl:when>
            <xsl:when test="$mes='09'">septiembre</xsl:when>
            <xsl:when test="$mes='10'">octubre</xsl:when>
            <xsl:when test="$mes='11'">noviembre</xsl:when>
            <xsl:when test="$mes='12'">diciembre</xsl:when>
        </xsl:choose> de <xsl:value-of select="$anio"/>
    </xsl:template>
    
</xsl:stylesheet>
