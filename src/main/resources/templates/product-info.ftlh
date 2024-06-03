<#import "blocks/header.ftlh" as h>
<#import "blocks/footer.ftlh" as f>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>RentHeaven</title>
    <style>
        .footer {
            position: fixed;
            bottom: 0;
            width: 100%;
            background-color: #99CCFF;
            padding: 10px;
        }
        .image-container {
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
        }
        .image-container img {
            height: 400px;
            width: 400px;
        }
    </style>
</head>
<body>
<@h.header user/>
<h1>Орендуй квартиру за вигідною ціною вже сьогодні!</h1>
<hr>
<h2>Детальна інформація про квартиру</h2>

<div class="image-container">
<#list images as img>
    <img src="/images/${img.id}" alt="Фото квартири"/><br>
</#list>
</div>

<b>Назва квратири: ${product.title}</b><br/><br/>
<b>Опис квратири: ${product.description}</b><br/><br/>
<b>Ціна: ${product.price}</b><br/><br/>
<b>Місто: ${product.city}</b><br/><br/>
<b>Район: ${product.district}</b><br/><br/>
<b>Автор: ${product.user.name}</b><br><br>
<b>Номер телефону: ${product.user.phoneNumber}</b><br/>
<form action="/product/${product.id}/delete" method="post" onsubmit="return confirm('Ви впевнені, що хочете видалити цей товар?');">
    <input type="hidden" name="_csrf" value="${_csrf.token}" />
    <button type="submit">Видалити</button>
</form>
<footer class="footer"
        style="background-color: #99CCFF;
            text-align: center;
            width: 100%;
            display: grid;
            justify-content: center;
            align-items: center;">
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