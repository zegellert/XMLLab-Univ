<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:functx="http://www.functx.com"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  version="2.0">

  <xsl:import href="list.xsl" />

  <xsl:output method="html" indent="yes" version="5.0" />

  <xsl:template match="/">
    <html>
      <head>
        <title>Hallgato regiszter</title>
      </head>
      <body>
        <h1>Hallgatok</h1>
        <xsl:apply-templates select="hall/hallgatok" />
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
