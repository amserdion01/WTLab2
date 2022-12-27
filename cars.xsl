<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html"/>

  <xsl:template match="/cars">
    <html>
      <head>
        <title>Best Cars</title>
        <style>
          body {
            font-family: sans-serif;
          }
          ul {
            list-style: none;
            padding: 0;
          }
          li {
            margin: 10px 0;
          }
          a {
            color: blue;
            text-decoration: none;
          }
          a:hover {
            text-decoration: underline;
          }
        </style>
      </head>
      <body>
        <ul>
          <xsl:apply-templates select="./car"/>
        </ul>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="car">
    <li>
      <a href="{@uri}">
        <strong><xsl:value-of select="@name"/></strong>
      </a>
	  <xsl:text> price: </xsl:text>
      <xsl:value-of select="@price"/><xsl:text> </xsl:text>
	  <xsl:text> raiting:</xsl:text>
      <xsl:value-of select="@rating"/>
      
    </li>
  </xsl:template>
</xsl:stylesheet>
