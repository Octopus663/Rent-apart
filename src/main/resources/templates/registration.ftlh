<#import "blocks/header.ftlh" as h>
<#import "blocks/footer.ftlh" as f>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>RentHeaven</title>
    <style>
        h2 {
            text-align: center;
        }

        .registration {
            text-align: center;
            margin-top: 50px;
            font-size: 22px;
        }

        .registration form {
            display: inline-block;
            text-align: left;
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

        .search-button:hover {
            background-color: #0056b3;
        }

        .container {
            display: flex;
            align-items: center;
            justify-content: center;
            padding-bottom: 356px;
        }
        .search-input {
            padding: 0.5rem 1rem;
            border: 2px solid #ccc;
            border-radius: 0.25rem 0 0 0.25rem;
            font-size: 1rem;
            flex: 0 1 auto;
            max-width: 450px;
        }
    </style>
</head>
<body>
<@h.header user/>

<div class="container">

    <form action="/registration" method="post" class="registration">
        <h1>Реєстрація</h1>
        Ім'я користувача: <input type="text" class="search-input" name="name"><br><br>
        Ел. почта: <input type="email" class="search-input" name="email"><br><br>
        Номер телефону: <input type="text" class="search-input" name="phoneNumber"><br><br>
        Пароль: <input type="password" class="search-input" name="password"><br><br>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" class="search-button" value="Зареєструватися!"/>
    </form>
</div>
<#if errorMessage??>
    <h2 style="color: #ff0000">${errorMessage}</h2>
</#if>


<footer class="text-white py-2"
        style="background-color: #99CCFF;
            text-align: center;
            width: 100%;
            display: grid;
            justify-content: center;
            align-items: center;">
    <div class="container py-2">
        <a class="logo" href="/" style="display: flex; justify-content: left;">
            <span class="logo-item"><h1>RentHeaven</h1></span>
        </a>
    </div>
    <div class="text-center">
        <p class="mb-0">Квартири для всіх!</p>
        <p class="mb-0">Контактні дані: +380-66-155-14-32</p>
        <p class="mb-0">2020-2024</p>
    </div>
</footer>
</body>
</html>
