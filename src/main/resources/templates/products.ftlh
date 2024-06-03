<#import "blocks/header.ftlh" as h>
<#import "blocks/footer.ftlh" as f>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>RentHeaven</title>
    <meta charset="UTF-8">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: rgba(0, 123, 255, 0.05) !important;
            margin: 0;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        .content {
            flex: 1;
            padding: 2rem;
        }

        h1, h2, h3, h4 {
            color: #25355c;
        }

        .btn-file {
            display: inline-block;
            background-color: #ffffff;
            color: #ff6200;
            padding: 0.5rem 1rem;
            border-radius: 0.25rem;
            text-decoration: none;
            transition: background-color 0.3s;
        }
        footer {
            background-color: #2c3e50;
            color: white;
            text-align: center;
            padding: 1rem;
        }
        .center {
            display: flex;
            flex-direction: column; /* Вирівнювання елементів по вертикалі */
            align-items: center; /* Вирівнювання елементів по горизонталі */
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

        .search-form {
            display: flex;
            align-items: center;
            justify-content: left;
            margin-bottom: 2rem;
        }

        .search-input {
            padding: 0.5rem 1rem;
            border: 2px solid #ccc;
            border-radius: 0.25rem 0 0 0.25rem;
            font-size: 1rem;
            flex: 0 1 auto;
            max-width: 550px;
        }
    </style>
</head>
<body>
<@h.header user/>
<div class="content" >
    <h1 style="text-align: center">Орендуй квартиру за вигідною ціною вже сьогодні!</h1>
    <hr>
    <div style="text-align: center;">
        <h3>Квартири по всій Україні</h3>
        <div class="center">
            <form action="/" method="get" class="search-form">
                <input type="text" name="title" placeholder="Пошук по назві квартири" class="search-input">
                <button type="submit" class="search-button">Пошук</button>
            </form>
        </div>
    </div>

    <div class="container">
        <div class="row text-left">
            <#list products as product>
                <div class="col-md-4">
                    <a href="/product/${product.id}" class="product-link">
                        <div class="card text-white my-3 product" style="background-color: darkturquoise;">
                            <img src="/images/${product.previewImageId}" class="card-img-top">
                            <div class="card-body">
                                <h5 class="card-title">${product.title}</h5>
                            </div>
                            <div class="card-footer">
                                ${product.price}грн
                            </div>
                        </div>
                    </a>
                </div>
            </#list>
        </div>
    </div>

    <#if user.email??>
        <h4>Добавити нову квартиру на продаж</h4>
        <form action="/product/create" method="post" enctype="multipart/form-data">
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
</div>
<@f.footer/>
</body>
</html>
