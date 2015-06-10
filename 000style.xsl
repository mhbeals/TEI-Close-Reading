<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:strip-space elements="*"/>
    <xsl:output method="html" version="4.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <html>
            <body>
               
                <center><h2>
                    <xsl:value-of select="teiCorpus/teiHeader/fileDesc/sourceDesc/biblFull/titleStmt/title"/>
                </h2>
                <h4>
                    <xsl:value-of select="teiCorpus/teiHeader/fileDesc/sourceDesc/biblFull/publicationStmt/publisher"/>.<br/>
                    <xsl:value-of select="teiCorpus/teiHeader/fileDesc/sourceDesc/biblFull/publicationStmt/distributor"/><br/>
                    <xsl:value-of select="teiCorpus/teiHeader/fileDesc/sourceDesc/biblFull/publicationStmt/pubPlace/settlement"/>: <xsl:value-of select="teiCorpus/teiHeader/fileDesc/sourceDesc/biblFull/publicationStmt/date/@when"/>.
                </h4>
                <hr/>
                <h4><xsl:value-of select="teiCorpus/teiHeader/fileDesc/titleStmt/title"/>.<br/>
                    <xsl:value-of select="teiCorpus/teiHeader/fileDesc/publicationStmt/authority"/>.
                </h4>
                </center>
                <hr/>
                <h4>Page: <xsl:value-of select="teiCorpus/TEI/teiHeader/fileDesc/sourceDesc/bibl/biblScope"/></h4>
                <xsl:for-each select="teiCorpus/TEI/text/body">
                    <p><xsl:apply-templates/></p>
                    <i><xsl:value-of select="../../teiHeader/fileDesc/publicationStmt/authority"/>.</i>
                </xsl:for-each>
                
                <h3>Key:</h3>
                <ul>
                    <li style="color:blue;text-decoration:none;">Individual</li>
                    <li style="color:#00CC00;text-decoration:none;">Location</li>
                    <li style="color:red;text-decoration:none;">Claim</li>
                </ul>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="persName">
        <a style="color:blue;text-decoration:none;" href="{@ref}" title="{@key}&#013;({@from}-{@to})&#013;{@role}"><xsl:value-of select="."/></a>
    </xsl:template>
    <xsl:template match="placeName">
        <a style="color:#00CC00;text-decoration:none;" href="{@ref}" title="{@key}"><xsl:value-of select="."/></a>
    </xsl:template>
    <xsl:template match="interp">
        <a style="color:red;text-decoration:none;" href="{@ref}" title="{@key}&#013;&#013;{@n}, available at {@ref}"><xsl:value-of select="."/></a>
    </xsl:template>
    <xsl:template match="pb">
        <h4>Page: <a name="{@n}"><xsl:value-of select="@n"/></a></h4> 
    </xsl:template>
</xsl:stylesheet>
