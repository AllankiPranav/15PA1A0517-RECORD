<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
    <h2>AddressBook</h2>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>Address</th>
        <th>D.no:</th>
        <th>Street</th>
        <th>State</th>
        <th>Pincode</th>
      </tr>
      <xsl:for-each select="addressbook/address/permanent">
        <tr>
          <td>Permanent</td>
          <td><xsl:value-of select="dno."/></td>
          <td><xsl:value-of select="street"/></td>
          <td><xsl:value-of select="state"/></td>
          <td><xsl:value-of select="pincode"/></td>
        </tr>
      </xsl:for-each>
      <xsl:for-each select="addressbook/address/temp">
        <tr>
          <td>Temporary</td>
          <td><xsl:value-of select="dno."/></td>
          <td><xsl:value-of select="street"/></td>
          <td><xsl:value-of select="state"/></td>
          <td><xsl:value-of select="pincode"/></td>
        </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>