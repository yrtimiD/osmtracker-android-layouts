<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
    <table>
      <xsl:for-each select="layouts/layout">
        <tr>
			<td>
				<h3><xsl:value-of select="@name"/></h3>
				<table border="1">
					<xsl:for-each select="row">
						<tr>
							<xsl:for-each select="button">
								<td style="text-align:center;">
									<img><xsl:attribute name="src"><xsl:value-of select="@icon" /></xsl:attribute></img><br />
									<xsl:value-of select="@label" />
								</td>
							</xsl:for-each>
						</tr>
					</xsl:for-each>
				</table>
				<br />
			</td>
        </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>