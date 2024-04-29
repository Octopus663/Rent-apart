<!DOCTYPE html>
<html lang="en">
<head>
    <title>BLA</title>
</head>
<body>
<h1>Орендуй квартиру вже сьогодні!</h1><hr>
<h3>Квартири по всій Україні</h3>
<#list products as product>
<div>
    <p>${product.title} ${product.price} | <a href="/product/${product.id}">Детальна інформація</a> </p>
</div>
</#list>
<hr>
<h4>Добавити нову квартиру на продаж</h4>
<form action="/product/create" method="post">
    Назва оголошення: <input type="text" name="title">
    Назва оголошення: <input type="text" name="title">
    Назва оголошення: <input type="text" name="title">
    Назва оголошення: <input type="text" name="title">
    Назва оголошення: <input type="text" name="title">
    Назва оголошення: <input type="text" name="title">
</form>
</body>
</html>