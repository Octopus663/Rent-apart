<html lang="en">
<head>
    <title>RentHaven</title>
</head>
<body>
<h1>Орендуй квартиру за вигідною ціною вже сьогодні!</h1><hr>
<h2>Детальна інформація про квартиру</h2>
<b>Назва квратири: ${product.title}</b>
<b>Опис квратири: ${product.description}</b>
<b>Ціна: ${product.price}</b>
<b>Місто: ${product.city}</b>
<b>Власник квратири: ${product.author}</b>
<hr>
<h4>Добавити нову квартиру на продаж</h4>
<form action="/product/delete/${product.id}" method="post">
    <input type="submit" value="Видалити оголошення"/>
</form>
</body>
</html>