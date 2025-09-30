<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html lang="en">
      <head>
        <title>
          <xsl:value-of select="/rss/channel/title"/> - Latest Updates
        </title>
        <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
      </head>
      <body>
        <header>
          <h1>
            <xsl:value-of select="/rss/channel/title"/>
          </h1>
          <p>
            <xsl:value-of select="/rss/channel/description"/>
          </p>
        </header>
        <section>
          <h2>Latest 5 Posts</h2>
          <xsl:for-each select="/rss/channel/item[position() &lt;= 5]">
            <article>
              <h3>
                <a>
                  <xsl:attribute name="href">
                    <xsl:value-of select="link"/>
                  </xsl:attribute>
                  <xsl:value-of select="title"/>
                </a>
              </h3>
              <div>
                <xsl:value-of select="description"/>
              </div>
              <time>
                <xsl:value-of select="pubDate"/>
              </time>
            </article>
          </xsl:for-each>
        </section>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
