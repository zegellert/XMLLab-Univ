<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:functx="http://www.functx.com"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  version="2.0">

  <xsl:output method="text" />

  <xsl:template match="/">
    <xsl:apply-templates select="hall/hallgatok" />
  </xsl:template>

  <xsl:template match="hallgatok[@element-type='recordset']">"Poszeidon-kód";"Név";"Születési-dátum";
<xsl:apply-templates select="*"/>
</xsl:template>

  <xsl:template match="hallgatok[@element-type='recordset']/record">
  <xsl:text>&quot;</xsl:text><xsl:apply-templates select="poseidonkod" /><xsl:text>&quot;;</xsl:text>
  <xsl:text>&quot;</xsl:text><xsl:apply-templates select="nev" /><xsl:text>&quot;;</xsl:text>
  <xsl:text>&quot;</xsl:text><xsl:apply-templates select="szuletesidatum/@date" /><xsl:text>&quot;;</xsl:text>
  <xsl:text>&#10;</xsl:text>
</xsl:template>

  <xsl:template match="record/*" priority="0.4"
><xsl:value-of select="."
/></xsl:template>
</xsl:stylesheet>
