<?xml version="1.0" encoding="UTF-8"?>
<html xsl:version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<body>

<div class="menu">
      <h3>
       <a class="menuItem" href="../../index.html">Home </a> <br/>
       <a class="menuItem" href="../../computerstore.html">Computer Store </a><br/> 
       <a class="menuItem" href="../../flashpage.html">Flash Page </a> <br/>
       <a class="menuItem" href="../../hobbies.html">Hobbies </a> <br/>
       <a class="menuItem" href="../../table.html">Course Schedules </a>
       <br/></h3>
    </div>


    <h1>List of University books</h1>

    <xsl:for-each select="textbooks/textbook">
        <div>

            <table border="1">
                <tr>
                    <td>
                        <label>Title </label>
                    </td>
                    <td>
                        <xsl:value-of select="title" />
                    </td>
                </tr>

                <tr>
                    <td>
                        <label>Authors First Name </label>
                    </td>
                    <td>
                        <xsl:value-of select="author/author-first-name" />
                    </td>
                </tr>

                <tr>
                    <td>
                        <label>Authors Last Name </label>
                    </td>
                    <td>
                        <xsl:value-of select="author/author-last-name" />
                    </td>
                </tr>

                <tr>
                    <td>
                        <label>Publisher Name </label>
                    </td>
                    <td>
                        <xsl:value-of select="publisher/publisher-name" />
                    </td>
                </tr>

                <tr>
                    <td>
                        <label>Publisher Website </label>
                    </td>
                    <td>
                        <xsl:variable name="hyperlink">
                            <xsl:value-of select="publisher/publisher-website" />
                        </xsl:variable>
                        <a href="{$hyperlink}">
                            <xsl:value-of select="publisher/publisher-website" /></a>

                    </td>
                </tr>

                <tr>
                    <td>
                        <label>Publishing Year </label>
                    </td>
                    <td>

                        <xsl:value-of select="year" />
                    </td>
                </tr>

                <tr>
                    <td>
                        <label>Covertype </label>
                    </td>
                    <td>
                        <xsl:value-of select="covertype" />
                    </td>
                </tr>

                <tr>
                    <td>
                        <label>ISBN </label>
                    </td>
                    <td>
                        <xsl:value-of select="ISBN" />
                    </td>
                </tr>

                <tr>
                    <td>
                        <label>Edition </label>
                    </td>
                    <td>
                        <xsl:value-of select="edition" />
                    </td>
                </tr>

                <tr>
                    <td>
                        <label>Price </label>
                    </td>
                    <td>
                        $<xsl:value-of select="price" />
                    </td>
                </tr>

            </table>

            <br />
            <br />

        </div>
    </xsl:for-each>
</body>

</html>