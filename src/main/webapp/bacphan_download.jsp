<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Bạc Phận - Download</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css">
  </head>
  <body>
    <h1>Tải nhạc</h1>

    <h2>Bạc Phận</h2>

    <table>
      <tr>
        <th>Tên bài hát</th>
        <th>Nghe thử</th>
        <th>Tải về</th>
      </tr>
      <tr>
        <td>Bạc Phận</td>
        <td>
          <audio controls>
            <source src="bạc phận.mp3" type="audio/mpeg">
            Trình duyệt của bạn không hỗ trợ thẻ audio.
          </audio>
        </td>
        <td>
          <a href="bạc phận.mp3" download>Tải MP3</a>
        </td>
      </tr>
    </table>
    <p><a href="download?action=viewAlbums">Quay lại danh sách bài hát</a></p>
  </body>
</html>
