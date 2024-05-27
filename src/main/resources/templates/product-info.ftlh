<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>RentHeaven</title>
</head>
<body>
<h1>Орендуй квартиру за вигідною ціною вже сьогодні!</h1><hr>
<h2>Детальна інформація про квартиру</h2>

<#list images as img>
    <img src="/images/${img.id}" height="100px"/><br>
</#list>

<b>Назва квратири: ${product.title}</b><br/><br/>
<b>Опис квратири: ${product.description}</b><br/><br/>
<b>Ціна: ${product.price}</b><br/><br/>
<b>Місто: ${product.city}</b><br/><br/>
<b>Район: ${product.district}</b><br/><br/>
<b>Автор: ${product.user.name}</b><br><br>
<b>Номер телефону: ${product.user.phoneNumber}</b><br/>
</body>
</html>