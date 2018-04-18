<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:functx="http://www.functx.com"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  version="2.0">

  <xsl:output method="html" indent="yes" version="5.0" />

  <xsl:template match="/">
    <xsl:apply-templates select="hall/hallgatok" />
  </xsl:template>

  <xsl:template match="hallgatok[@element-type='recordset']" name="tableheaders">
    <table>
        <tr>
          <th>Poseidon</th>
          <th>Name</th>
		  <th>Birth Date</th>
        </tr>
        <xsl:apply-templates />
    </table>
  </xsl:template>

  <xsl:template match="hallgatok[@element-type='recordset']/record" name="tablebody">
    <tr>
      <xsl:apply-templates select="poseidonkod" />
      <xsl:apply-templates select="nev" />
	  <td><xsl:apply-templates select="szuletesidatum/@date" /></td>
    </tr>
  </xsl:template>

  <!-- process an empty field -->
  <xsl:template match="record/*[@is-null='True']" priority="0.8">
    <td/>
  </xsl:template>

  <!-- process a non-empty field -->
  <xsl:template match="record/*" priority="0.4">
    <td>
      <xsl:value-of select="." />
    </td>
  </xsl:template>
</xsl:stylesheet>
