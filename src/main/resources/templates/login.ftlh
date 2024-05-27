<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>RentHaven</title>
</head>
<body>
<h1>RentHaven</h1><hr>
<h4>Авторизація</h4>
<form action="/login" method="post">
    Ел. почта: <input type="email" name="username"><br><br>
    Пароль: <input type="password" name="password"><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Вхід"/>
</form>
<a href="/registration">Зареєструватися</a>
</body>
</html>