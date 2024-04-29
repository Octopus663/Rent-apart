<!DOCTYPE html>
<html lang="en">
<head>
    <title>RentHaven</title>
</head>
<body>
<h1>Орендуй квартиру за вигідною ціною вже сьогодні!</h1><hr>
<h3>Квартири по всій Україні</h3>
<#list products as product>
<div>
    <p>${product.title} ${product.price} грн | <a href="/product/${product.id}">Детальна інформація</a> </p>
</div>
</#list>
<hr>
<h4>Добавити нову квартиру на продаж</h4>
<form action="/product/create" method="post">
    Назва оголошення: <input type="text" name="title"/><br><br>
    Опис квартири: <input type="text" name="description"/><br><br>
    Ціна : <input type="number" name="price"/><br><br>
    Місто : <input type="text" name="city"/><br><br>
    Власник: <input type="text" name="author"/><br><br>
    <input type="submit" value="Добавити квартиру"/>
</form>
</body>
</html>