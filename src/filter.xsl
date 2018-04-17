<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:functx="http://www.functx.com"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  version="2.0">

  <xsl:output method="xml" indent="yes" />

  <xsl:template match="/">
    <xsl:copy-of select="hall/hallgatok"/>
  </xsl:template>
  <xsl:template match="szuletesidatum[/@date='1992-06-05']">
    <xsl:apply-templates/>
  </xsl:template>

</xsl:stylesheet>