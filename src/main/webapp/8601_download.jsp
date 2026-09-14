<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 10/09/2026
  Time: 13:51
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Downloads</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css">
  </head>
  <body>
    <h1>Downloads</h1>

    <h2>86 (the band) - True Life Songs and Pictures</h2>

    <table>
      <tr>
        <th>Song title</th>
        <th>Audio Format</th>
      </tr>
      <tr>
        <td>You Are a Star</td>
        <td>
          <a href="/musicStore/sound/${productCode}/star.mp3">MP3</a>
        </td>
      </tr>
      <tr>
        <td>Don't Make No Difference</td>
        <td>
          <a href="/musicStore/sound/${productCode}/no_difference.mp3">MP3</a>
        </td>
      </tr>
    </table>
    <p><a href="download?action=viewAlbums">View list of albums</a></p>
  </body>
</html>
