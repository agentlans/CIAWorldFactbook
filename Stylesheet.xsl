<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:xh="http://www.w3.org/1999/xhtml">
<xsl:output method="xml" omit-xml-declaration="yes" indent="yes"/>

<!-- root -->
<xsl:template match="/">
<country>
<xsl:apply-templates select=".//xh:h1"/>
<xsl:apply-templates select=".//xh:h2"/>
</country>
</xsl:template>

<!-- name of the country -->
<xsl:template match="xh:h1[@class='hero-title']">
<name><xsl:value-of select="."/></name>
</xsl:template>

<!-- section topic -->
<xsl:template match="xh:h2">
<section title="{.}">
<xsl:apply-templates select="following-sibling::xh:div"/>
</section>
</xsl:template>

<!-- more detailed topic -->
<xsl:template match="xh:div">
<xsl:apply-templates select="xh:h3"/>
</xsl:template>

<xsl:template match="xh:h3">
<subsection title="{.}">
<xsl:apply-templates select="following-sibling::*"/>
</subsection>
</xsl:template>

<!-- to keep the spacing between paragraphs -->
<xsl:template match="xh:br">
<br/>
</xsl:template>

<xsl:template match="xh:a">
<br/><xsl:value-of select="."/>
</xsl:template>

<!-- don't include these tags -->
<xsl:template match="xh:style | xh:script | xh:head"/>

</xsl:stylesheet>
