<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" version="2.0" 
	xmlns:ms="urn:schemas-microsoft-com:xml-analysis:rowset" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:saw-sql="urn:saw-sql" >
    <xsl:output method="text" encoding="UTF-8" indent="no" omit-xml-declaration="yes"  />

    <xsl:template match="/">
		<xsl:for-each select="//report/QueryResult/ResultXml/ms:rowset/ms:Row">
			<xsl:value-of select="ms:Column1"/>
<xsl:text>
</xsl:text>
		</xsl:for-each>
    </xsl:template>
  
</xsl:stylesheet>
