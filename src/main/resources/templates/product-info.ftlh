<html lang="en">
<head>
    <title>RentHaven</title>
</head>
<body>
<h1>Орендуй квартиру за вигідною ціною вже сьогодні!</h1><hr>
<h2>Детальна інформація про квартиру</h2>
<b>Назва квратири: ${product.title}</b><br/><br/>
<b>Опис квратири: ${product.description}</b><br/><br/>
<b>Ціна: ${product.price}</b><br/><br/>
<b>Місто: ${product.city}</b><br/><br/>
<b>Район: ${product.district}</b><br/><br/>
<b>Власник квратири: ${product.author}</b><br/>
<hr>
<form action="/product/delete/${product.id}" method="post">
    <input type="submit" value="Видалити оголошення"/>
</form>
</body>
</html>