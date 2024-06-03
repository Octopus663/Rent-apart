<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>RentHeaven</title>
</head>
<body>
Hello
<#if user.email??>
    <h4>Добавити нову квартиру на продаж</h4>
    <form action="/add-apart" method="post" enctype="multipart/form-data">
        Назва оголошення: <input type="text" name="title"/><br><br>
        Опис квартири: <input type="text" name="description"/><br><br>
        Ціна : <input type="number" name="price"/><br><br>
        Місто : <input type="text" name="city"/><br><br>
        Район : <input type="text" name="district"><br><br>
        <h4>Додати фотографії квартири:</h4>
        (перше завантажене зображення буде прев'ю об'єкта)<br><br>
        <input type="file" name="file1" class="btn-file"/><br><br>
        <input type="file" name="file2" class="btn-file"/><br><br>
        <input type="file" name="file3" class="btn-file"/><br><br>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <h3><input type="submit" value="Добавити квартиру" class="search-button"/></h3>
    </form>
</#if>
</body>
<html/>