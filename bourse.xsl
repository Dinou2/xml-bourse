<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Bourse</title>
            </head>
            <body>
                <xsl:for-each select="/bourse/societe">
                    <ul>
                        <li><xsl:value-of select="codeSociete"/></li>
                        <li><xsl:value-of select="nomSoci"/></li>
                    </ul>
                    <table border="1" width="75%">
                        <tr> 
                            <th>Numero cotation</th>
                            <th>Date cotation</th>
                            <th>Valeur Action</th>
                        </tr>
                        <xsl:for-each select="cotations/cotation">
                            <tr>
                                <td><xsl:value-of select="@num"/></td>
                                <td><xsl:value-of select="@dateCotation"/></td>
                                <td><xsl:value-of select="@valeurAction"/></td>
                            </tr>
                        </xsl:for-each>
                        
                    </table>
                </xsl:for-each>
                
                <p>NOMBRE TOTALE DE SOCIETE : <xsl:value-of select="count(bourse/societe[@type='banque'])"/></p>
                
                
                
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>