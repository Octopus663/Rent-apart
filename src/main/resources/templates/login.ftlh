<#import "blocks/header.ftlh" as h>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>RentHeaven</title>
    <style>
        .registration {
            position: absolute; /* Make it positioned relative to viewport */
            top: 50%; /* Center vertically - half from the top */
            left: 50%; /* Center horizontally - half from the left */
            transform: translate(-50%, -50%);  /* Adjust its position */
            text-align: center;
            font-size: 22px ;
        }
        .buttons{
            margin-top: 20px;
        }

        .registration form {
            display: inline-block;
            text-align: center;
        }
        .search-button {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
        }
        .footer {
            position: fixed;
            bottom: 0;
            width: 100%;
            background-color: #99CCFF;
            padding: 10px;
        }

        .search-button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<@h.header user/>
<div class="registration">

    <form action="/login" method="post" class="registration">
        <fieldset>
            <legend><h2>Авторизація</h2></legend>
            <label for="username">Ел. почта:</label>
            <input type="email" id="username" name="username"><br><br>
            <label for="password">Пароль:</label>
            <input type="password" id="password" name="password"><br><br>
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <input type="submit" class="search-button" value="Вхід"/>
        </fieldset>
        <p class="buttons">Немає акаунту?</p>
        <input type="submit" class="search-button" value="Зареєструватися" formaction="/registration" method="post"/>
    </form>
</div>
<footer class="footer">
    <div class="container py-2">
        <a class="logo" href="/" style="display: flex; justify-content: center;">
            <span class="logo-item"><h1>RentHeaven</h1></span>
        </a>
        <div class="text-center">
            <p class="mb-0">Квартири для всіх!</p>
            <p class="mb-0">Контактні дані: +380-66-155-14-32</p>
            <p class="mb-0">2020-2024</p>
        </div>
    </div>
</footer>
</body>
</html>