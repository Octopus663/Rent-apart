<!DOCTYPE html>
<html lang="en">
<head>
    <title>RentHaven</title>
</head>

<body>
<h1>Орендуй квартиру за вигідною ціною вже сьогодні!</h1>
<hr>
<h3>Квартири по всій Україні</h3>
<form action="/" method="get">
    Пошук по назві квартири: <input type="text" name="title"><br>
    <input type="submit" value="Пошук">
</form>
<#list products as product>
    <div>
        <p>${product.title} ${product.price} грн | <a href="/product/${product.id}">Детальна інформація</a></p>
    </div>
<#else>
    <h4>На жаль, таких квартир немає</h4>
</#list>
<hr>
<h4>Добавити нову квартиру на продаж</h4>
<form action="/product/create" method="post" enctype="multipart/form-data">
    Назва оголошення: <input type="text" name="title"/><br><br>
    Опис квартири: <input type="text" name="description"/><br><br>
    Ціна : <input type="number" name="price"/><br><br>
    Місто : <input type="text" name="city"/><br><br>
    Район : <input type="text" name="district"><br><br>
    Власник: <input type="text" name="author"/><br><br>
    <h4>Додати фотографії квартири:</h4>
    (перше завантажене зображення буде прев'ю об'єкта)<br><br>
    <input type="file" name="file1"/><br><br>
    <input type="file" name="file2"/><br><br>
    <input type="file" name="file3"/><br><br>
    <h3><input type="submit" value="Добавити квартиру"/></h3>
</form>
</body>
</html>