<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>お問い合わせフォーム作成</title>

</head>
<body>

  <p style="color: skyblue">--お問い合わせフォーム--</p>

  <form action = "select" method = "post">
  <p style="color: blue">氏名<br>
  <input type = "text" name = "name" required = "required"></p>
  
  <p style="color: darkblue">会社名<br>
  <input type = "text" name = "work"></p>
  
  <p style="color: blue">メールアドレス<br>
  <input type = "text" name = "mail" required = "required"></p>
  
  <p style="color: blue">お問い合わせ内容<br>
  <textarea name = "review" cols = "30" rows = "5" required = "required"></textarea></p>
  
  <p style="color: darkblue">メルマガ種類<br>
  <input type = "checkbox" name = "box">総合案内<br>
  <input type = "checkbox" name = "box">セミナー案内<br>
  <input type = "checkbox" name = "box">求人採用情報<br>
  </p>
  
  <p style="color: darkblue">資料請求希望<br>
  <input type = "radio" name = "radio" value = "Yes" checked>Yes<br>
  <input type = "radio" name = "radio" value = "No">No<br>
  </p>
  
  <p><input type = "submit" value = "送信"></p>
  
   <body style=" text-align: center;"></body>
   

  </form>

</body>
</html>