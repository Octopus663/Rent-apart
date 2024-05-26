<!DOCTYPE html>
<html>
<head>
    <title>RentHaven</title>
</head>
<body>
<h1>RentHaven</h1><hr>
<h4>Авторизація</h4>
<form action="/login" method="post">
    Ел. почта: <input type="email" name="username"><br><br>
    Пароль: <input type="password" name="password"><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Вход"/>
</form>
<a href="/registration">Зареєструватися</a>
</body>
</html>