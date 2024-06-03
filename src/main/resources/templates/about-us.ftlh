<#import "blocks/header.ftlh" as h>
<#import "blocks/footer.ftlh" as f>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>About Us</title>
    <style>
        body {
            font-family: 'Open Sans', sans-serif;
            margin: 0;
        }
        .container2{
            background-color: #99CCFF;
        }

        .container {
            background-color: #f5f5f5;
            padding: 2rem;
            border-radius: 0.5rem;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            max-width: 900px;
            height: 90vh;
            margin: 0 auto;
            font-size: 15px;
            text-align: center;
            justify-content: center;
        }
        .footer {
            position: fixed;
            bottom: 0;
            width: 100%;
        }

        h2 {
            color: #2c3e50;
            text-align: center; /* Центрування заголовку по горизонталі */
        }

        p {
            font-size: 16px;
            line-height: 1.6;
            color: #555;
        }
    </style>
</head>
<body>
<@h.header user/>
<div class="">
<div class="container" ><br><br><br><br><br><br><br><br><br><br><br><br>
    <h2>Наша історія</h2>
    <p>RentHeaven був заснований у 2024 році людьми, які прагнули полегшити процес пошуку та оренди квартир в Україні. Ми усвідомлювали, що знайти ідеальне місце для проживання може бути складним завданням, і вирішили створити платформу, яка зробить цей процес максимально зручним і прозорим.</p>
    <p>З самого початку ми ставили перед собою мету створити надійний та зручний ресурс, який об'єднає орендодавців та орендарів в одному місці. Наша команда невпинно працювала над удосконаленням сервісу, додаючи нові функції та покращуючи користувацький досвід.</p>
    <p>Сьогодні RentHeaven є одним з провідних сайтів з оренди квартир в Україні, пропонуючи широкий вибір варіантів у різних містах та районах. Ми пишаємося нашою репутацією та високими стандартами якості, які забезпечують задоволення наших клієнтів.</p>
    <p>Наша мета - зробити процес пошуку та оренди квартири максимально легким та приємним для кожного користувача. Ми продовжуємо вдосконалювати нашу платформу, впроваджуючи інноваційні рішення та прислухаючись до відгуків наших клієнтів.</p>
</div>
</div>
<footer class="footer"
        style="background-color: #99CCFF;
            text-align: center;
            width: 100%;
            display: grid;
            justify-content: center;
            align-items: center;">
    <div class="container2">
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



