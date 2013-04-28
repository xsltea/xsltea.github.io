<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:exsl="http://exslt.org/common" extension-element-prefixes="exsl">
<xsl:output omit-xml-declaration="yes" />

<xsl:variable name="foo" select="5" />
<xsl:variable name="bar" select="8" />
<xsl:variable name="baz" select="$foo + $bar" />

<xsl:variable name="quux">
 <lol>5</lol>
</xsl:variable>
<xsl:variable name="parsed_quux" select="exsl:node-set($quux)" />
<xsl:variable name="xyzzy" select="$parsed_quux/lol" />

<xsl:template match="/">
  <xsl:value-of select="$baz" />
  <xsl:value-of select="$quux" />
  <xsl:value-of select="$parsed_quux" />
  <xsl:value-of select="$xyzzy" />
</xsl:template>

</xsl:stylesheet>
