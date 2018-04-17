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
      <xsl:copy-of select="record[year-from-date(current-date())-year-from-date(szuletesidatum/@date)&lt;24]"/>
    </xsl:copy>
  </xsl:template>
</xsl:stylesheet>
