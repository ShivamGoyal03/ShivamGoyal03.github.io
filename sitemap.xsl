<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:sm="http://www.sitemaps.org/schemas/sitemap/0.9">
  <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/">
    <html lang="en">
      <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>XML Sitemap – shivamgoyal03.github.io</title>
        <style>
          body { font-family: Inter, Arial, sans-serif; margin: 2rem; color: #111827; background: #f9fafb; }
          main { max-width: 72rem; margin: 0 auto; background: #ffffff; border: 1px solid #e5e7eb; border-radius: 12px; padding: 2rem; }
          h1 { margin-top: 0; font-size: 1.5rem; }
          p { color: #4b5563; margin-bottom: 1.5rem; }
          .count { background: #818cf8; color: #fff; border-radius: 9999px; padding: 0.1rem 0.5rem; font-size: 0.75rem; margin-left: 0.5rem; }
          table { width: 100%; border-collapse: collapse; font-size: 0.875rem; }
          th { text-align: left; padding: 0.75rem 1rem; background: #f3f4f6; border-bottom: 2px solid #e5e7eb; font-weight: 600; white-space: nowrap; }
          td { padding: 0.6rem 1rem; border-bottom: 1px solid #f3f4f6; }
          tr:hover td { background: #f9fafb; }
          a { color: #2563eb; text-decoration: none; word-break: break-all; }
          a:hover { text-decoration: underline; }
          .priority { font-weight: 600; }
          .priority-high { color: #059669; }
          .priority-med { color: #d97706; }
          .priority-low { color: #6b7280; }
          .meta { color: #6b7280; font-size: 0.8rem; }
        </style>
      </head>
      <body>
        <main>
          <h1>XML Sitemap <span class="count"><xsl:value-of select="count(sm:urlset/sm:url)" /></span></h1>
          <p>This sitemap contains all indexable URLs for <strong>shivamgoyal03.github.io</strong>. It is generated automatically during each build.</p>
          <table>
            <thead>
              <tr>
                <th>URL</th>
                <th>Priority</th>
                <th>Change Freq</th>
                <th>Last Modified</th>
              </tr>
            </thead>
            <tbody>
              <xsl:for-each select="sm:urlset/sm:url">
                <xsl:sort select="sm:priority" order="descending" data-type="number" />
                <tr>
                  <td>
                    <a href="{sm:loc}">
                      <xsl:value-of select="sm:loc" />
                    </a>
                  </td>
                  <td class="priority">
                    <xsl:choose>
                      <xsl:when test="sm:priority &gt;= 0.9">
                        <xsl:attribute name="class">priority priority-high</xsl:attribute>
                      </xsl:when>
                      <xsl:when test="sm:priority &gt;= 0.7">
                        <xsl:attribute name="class">priority priority-med</xsl:attribute>
                      </xsl:when>
                      <xsl:otherwise>
                        <xsl:attribute name="class">priority priority-low</xsl:attribute>
                      </xsl:otherwise>
                    </xsl:choose>
                    <xsl:value-of select="sm:priority" />
                  </td>
                  <td class="meta"><xsl:value-of select="sm:changefreq" /></td>
                  <td class="meta"><xsl:value-of select="substring(sm:lastmod, 1, 10)" /></td>
                </tr>
              </xsl:for-each>
            </tbody>
          </table>
        </main>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
