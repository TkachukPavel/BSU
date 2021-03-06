<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
  <h2>My University</h2>
  <table border="2">
    <tr bgcolor="#9acd32">
        <th>Name</th>
        <th>Exam</th>
        <th>Examinator</th>
    </tr>
    <xsl:for-each select="StudentList">
    <xsl:for-each select="Student">
        <tr>
            <td><xsl:value-of select="@name"/></td>
        </tr>
        <xsl:for-each select="ExamPass">
        <tr>
            <td></td>
            <td><xsl:value-of select="current()"/></td>
            <td><xsl:value-of select="@examinator"/></td>
            <td><xsl:value-of select="@mark"/></td>
        </tr>
        </xsl:for-each>
        <xsl:for-each select="TestPass">
        <tr>
            <td></td>
            <td><xsl:value-of select="current()"/></td>
            <td><xsl:value-of select="@examinator"/></td>
            <td><xsl:value-of select="@passed"/></td>
        </tr>
        </xsl:for-each>
    </xsl:for-each>
    </xsl:for-each>
  </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>
