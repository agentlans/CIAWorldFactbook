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
<subsection title="{replace(.,':','')}">
<xsl:apply-templates select="following-sibling::*"/>
</subsection>
</xsl:template>

<xsl:template match="xh:br">
&#xA;
</xsl:template>

<xsl:template match="xh:a">
&#x20;<xsl:value-of select="."/>
</xsl:template>

<!-- print the text after the heading -->
<xsl:template match="xh:strong">
<note title="{normalize-space(replace(.,':',''))}">
<xsl:call-template name="print-following-text"/>
</note>
</xsl:template>

<xsl:template name="print-following-text">
<xsl:value-of select="normalize-space(following-sibling::text()[1])"/>
</xsl:template>

<!-- Print text if it's not part of a boldface note -->
<xsl:template match="text()[not(preceding-sibling::xh:strong)]">
<xsl:value-of select="."/>
</xsl:template>

<!-- Only print paragraphs that don't have notes -->
<xsl:template match="xh:p">
<xsl:choose>
<xsl:when test="not(xh:strong)">
	<xsl:value-of select="."/>
</xsl:when>
<xsl:otherwise>
	<xsl:apply-templates/>
</xsl:otherwise>
</xsl:choose>
</xsl:template>

<!-- No text by default -->
<xsl:template match="text()"/>

<!-- don't include these tags -->
<xsl:template match="xh:style | xh:script | xh:head"/>

</xsl:stylesheet>
