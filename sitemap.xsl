<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9"
  xmlns:image="http://www.google.com/schemas/sitemap-image/1.1"
  exclude-result-prefixes="sitemap image">

  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/">
    <html lang="en">
      <head>
        <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <title>XML Sitemap | Jonathan Fouquet</title>
        <link rel="preconnect" href="https://fonts.googleapis.com"/>
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="crossorigin"/>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&amp;family=JetBrains+Mono:wght@400;500&amp;display=swap"/>
        <style>
          :root {
            --bg: #FAFAF9;
            --surface: #FFFFFF;
            --surface-subtle: #F4F4F2;
            --line: #E4E5E2;
            --ink: #0F172A;
            --muted: #64748B;
            --faint: #94A3B8;
            --accent: #1E3A5F;
            --badge-bg: #EEF2F6;
            --font-sans: 'Inter', -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif;
            --font-mono: 'JetBrains Mono', ui-monospace, Menlo, monospace;
          }
          @media (prefers-color-scheme: dark) {
            :root {
              --bg: #0C0F14;
              --surface: #141820;
              --surface-subtle: #1A202A;
              --line: #27303E;
              --ink: #F1F5F9;
              --muted: #94A3B8;
              --faint: #64748B;
              --accent: #38BDF8;
              --badge-bg: #1A2433;
            }
          }
          * { box-sizing: border-box; margin: 0; padding: 0; }
          body {
            background: var(--bg);
            color: var(--ink);
            font-family: var(--font-sans);
            font-size: 14px;
            line-height: 1.6;
            padding: 40px 20px;
          }
          .container {
            max-width: 960px;
            margin: 0 auto;
          }
          header {
            margin-bottom: 28px;
            padding-bottom: 20px;
            border-bottom: 1px solid var(--line);
          }
          .back-link {
            display: inline-flex;
            align-items: center;
            gap: 6px;
            color: var(--accent);
            text-decoration: none;
            font-weight: 500;
            font-size: 13px;
            margin-bottom: 14px;
          }
          .back-link:hover { text-decoration: underline; }
          h1 {
            font-size: 24px;
            font-weight: 700;
            letter-spacing: -0.02em;
            margin-bottom: 6px;
          }
          .lead {
            color: var(--muted);
            font-size: 14px;
          }
          .stats {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(140px, 1fr));
            gap: 12px;
            margin: 20px 0;
          }
          .stat-card {
            background: var(--surface);
            border: 1px solid var(--line);
            border-radius: 8px;
            padding: 12px 16px;
          }
          .stat-num {
            font-size: 20px;
            font-weight: 700;
            font-family: var(--font-mono);
            color: var(--ink);
          }
          .stat-label {
            font-size: 12px;
            color: var(--muted);
            text-transform: uppercase;
            letter-spacing: 0.04em;
          }
          .card {
            background: var(--surface);
            border: 1px solid var(--line);
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 1px 3px rgba(0,0,0,0.03);
          }
          table {
            width: 100%;
            border-collapse: collapse;
            text-align: left;
          }
          th {
            background: var(--surface-subtle);
            color: var(--muted);
            font-size: 12px;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 0.05em;
            padding: 12px 16px;
            border-bottom: 1px solid var(--line);
          }
          td {
            padding: 14px 16px;
            border-bottom: 1px solid var(--line);
            vertical-align: top;
          }
          tr:last-child td { border-bottom: none; }
          .url-cell a {
            color: var(--accent);
            text-decoration: none;
            font-weight: 500;
            word-break: break-all;
          }
          .url-cell a:hover { text-decoration: underline; }
          .mono { font-family: var(--font-mono); font-size: 13px; }
          .badge {
            display: inline-block;
            background: var(--badge-bg);
            padding: 2px 8px;
            border-radius: 4px;
            font-size: 12px;
            font-weight: 500;
            color: var(--ink);
          }
          .images-list {
            margin-top: 10px;
            padding-top: 10px;
            border-top: 1px dashed var(--line);
            display: flex;
            flex-direction: column;
            gap: 8px;
          }
          .image-item {
            display: flex;
            align-items: flex-start;
            gap: 10px;
            font-size: 12px;
          }
          .image-item img {
            width: 44px;
            height: 44px;
            object-fit: cover;
            border-radius: 4px;
            border: 1px solid var(--line);
            flex-shrink: 0;
          }
          .image-info {
            display: flex;
            flex-direction: column;
            gap: 2px;
          }
          .image-title {
            font-weight: 600;
            color: var(--ink);
          }
          .image-caption {
            color: var(--muted);
          }
          .footer {
            margin-top: 24px;
            font-size: 12px;
            color: var(--muted);
            text-align: center;
          }
        </style>
      </head>
      <body>
        <div class="container">
          <header>
            <a class="back-link" href="https://jonathanfouquet.dev/">← Back to jonathanfouquet.dev</a>
            <h1>XML Sitemap</h1>
            <p class="lead">Generated for search engines like Google and Bing to crawl and index the pages and media of <a href="https://jonathanfouquet.dev/" style="color:var(--accent);">jonathanfouquet.dev</a>.</p>
          </header>

          <div class="stats">
            <div class="stat-card">
              <div class="stat-num"><xsl:value-of select="count(sitemap:urlset/sitemap:url)"/></div>
              <div class="stat-label">Total URLs</div>
            </div>
            <div class="stat-card">
              <div class="stat-num"><xsl:value-of select="count(sitemap:urlset/sitemap:url/image:image)"/></div>
              <div class="stat-label">Indexed Images</div>
            </div>
          </div>

          <div class="card">
            <table>
              <thead>
                <tr>
                  <th style="width: 50%;">URL &amp; Images</th>
                  <th>Last Modified</th>
                  <th>Change Frequency</th>
                  <th>Priority</th>
                </tr>
              </thead>
              <tbody>
                <xsl:for-each select="sitemap:urlset/sitemap:url">
                  <tr>
                    <td class="url-cell">
                      <a href="{sitemap:loc}"><xsl:value-of select="sitemap:loc"/></a>
                      <xsl:if test="count(image:image) &gt; 0">
                        <div class="images-list">
                          <xsl:for-each select="image:image">
                            <div class="image-item">
                              <a href="{image:loc}" target="_blank">
                                <img src="{image:loc}" alt="{image:title}"/>
                              </a>
                              <div class="image-info">
                                <span class="image-title"><xsl:value-of select="image:title"/></span>
                                <xsl:if test="image:caption">
                                  <span class="image-caption"><xsl:value-of select="image:caption"/></span>
                                </xsl:if>
                              </div>
                            </div>
                          </xsl:for-each>
                        </div>
                      </xsl:if>
                    </td>
                    <td class="mono muted"><xsl:value-of select="sitemap:lastmod"/></td>
                    <td><span class="badge"><xsl:value-of select="sitemap:changefreq"/></span></td>
                    <td class="mono"><xsl:value-of select="sitemap:priority"/></td>
                  </tr>
                </xsl:for-each>
              </tbody>
            </table>
          </div>

          <div class="footer">
            Jonathan Fouquet — MSc Robotics, Systems and Control, ETH Zürich
          </div>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
