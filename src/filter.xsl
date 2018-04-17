<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:functx="http://www.functx.com"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  version="2.0">

  <xsl:output method="xml" indent="yes" />

  <xsl:template match="/hall">
    <xsl:copy>
      <!-- see xsl:attribute to copy attributes of the element -->
      <xsl:apply-templates select="hallgatok" />
    </xsl:copy>
  </xsl:template>

  <xsl:template match="hallgatok">
	<xsl:copy>
        <xsl:apply-templates/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="@*|node()">
    <xsl:copy-of select="@*|b/@*" />
  </xsl:template>
</xsl:stylesheet>
