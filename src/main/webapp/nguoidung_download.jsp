<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Người Dưng - Download</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css">
  </head>
  <body>
    <h1>Tải nhạc</h1>

    <h2>Người Dưng</h2>

    <table>
      <tr>
        <th>Tên bài hát</th>
        <th>Nghe thử</th>
        <th>Tải về</th>
      </tr>
      <tr>
        <td>Người Dưng</td>
        <td>
          <audio controls>
            <source src="người dưng.mp3" type="audio/mpeg">
            Trình duyệt của bạn không hỗ trợ thẻ audio.
          </audio>
        </td>
        <td>
          <a href="người dưng.mp3" download>Tải MP3</a>
        </td>
      </tr>
    </table>
    <p><a href="download?action=viewAlbums">Quay lại danh sách bài hát</a></p>
  </body>
</html>
