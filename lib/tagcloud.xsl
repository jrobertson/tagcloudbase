<?xml version="1.0"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
      
    <xsl:template match="tags">
    <xsl:apply-templates select="summary"/>
    <div id="articles">
    <div id="records">	
        <xsl:apply-templates select="records/tag">
	  <xsl:sort order="ascending" select="word"/>
	</xsl:apply-templates>
    </div>
    </div></xsl:template>
  
<xsl:template match="summary">
<h1><xsl:value-of select="title"/></h1>
</xsl:template>
  
    <xsl:template match="records/tag">

      <span class="tag s{gauge}">
	<a href="{href}"><xsl:value-of select="word"/></a>
      </span><xsl:text> </xsl:text>

  </xsl:template>
  
</xsl:stylesheet>
