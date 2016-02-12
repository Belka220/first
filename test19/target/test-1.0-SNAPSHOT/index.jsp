<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300,400,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="">
    <link rel="stylesheet" href="resources/css/reset">
    <link rel="stylesheet" href="resources/css/all.css">
    <link rel="stylesheet" href="resources/css/app.css">

    <!-- CSS reset -->
    <link rel="stylesheet" href="resources/css/style">

    <link rel="stylesheet" href="resources/css/bootstrap.css">
    <!-- Resource style -->

    <meta http-equiv="X-UA-Compatible" content="IE=edge">

</head>
<body>
<header class="cd-main-header">
    <div class="headerLeft">
        <a href="" class="cd-logo"><img src="../resources/img/cd-logo.svg" alt="Logo"></a>
    </div>
    <a class="cd-nav-trigger" href="#0"><!--Menu--><span></span></a>
    <div class="header_right"></div>

</header>
<!-- .cd-main-header -->

<main class="cd-main-content">
    <nav class="cd-side-nav">

        <ul>

            <li id="desctop" class="users <!--active-->"> <a href="#0">Рабочий стол</a> </li>
            <li id="deals" class="users <!--active-->"> <a href="#0">Сделки</a> </li>
            <li id="contacts" class="users <!--active-->"> <a href="#0">Контакты</a> </li>

            <ul>
                <li > <a href="/AddContact.jsp">Создать новый контакт</a> </li>
                <li > <a href="#0">Просмотр контактов</a> </li>
            </ul>

            <li id="company" class="users <!--active-->"> <a href="#0">Компания</a> </li>
            <li id="task" class="users <!--active-->"> <a href="#0">Задача</a> </li>
            <li id="options" class="users <!--active-->"> <a href="#0">Настройки</a> </li>

            <ul id="options_hover" class="dropdown" style="height:0;position:relative;display:none">
                <li > <a href="#0">Общие настройки</a> </li>
                <li > <a href="#0">Этапы продаж</a> </li>
                <li > <a href="#0">Пользователи и прав</a> </li>
                <li > <a href="#0">Редакторы полей</a> </li>
                <li > <a href="#0">Бизнес процессы</a> </li>
                <li > <a href="#0">История посещений</a> </li>
                <li > <a href="#0">Безопасность</a> </li>
            </ul>
            <!---->

            <li id="analytic" class="users <!--active-->"> <a href="#0">Аналитика</a> </li>
            <ul id="analytic_hover" class="dropdown" style="height:0;position:relative;display:none">
                <li > <a href="#0">Анализ продаж</a> </li>
                <li > <a href="#0">Сводный отчет</a> </li>
                <li > <a href="#0">Отчет по сотрудникам</a> </li>
                <li > <a href="#0">Список событий</a> </li>
            </ul>

            <li id="edit" class="users <!--active-->"> <a href="#0">Редактирование</a> </li>
        </ul>
    </nav>

    <!--General Content wrapper-->
    <div class="content-wrapper">
        <div class="st-content">

            <!-- extra div for emulating position:fixed of the menu -->
            <div class="st-content-inner">
                <div class="container-fluid">

                </div>

            </div>
        </div>

        <!-- /st-content-inner -->

    </div>




    <form id="dsa" method="post" action="upload">

        <input type="file" name="file">

        <input type="submit" name="ccc" value="Отправить" />
    </form>

    <form name="asd" method="post" action="/ContactConfirm.jsp">
        <input type="text" name="name" value="">
        <input type="text" name="position" value="">
        <input type="submit" name="333" value="Отправить" />
    </form>

    <script type="text/javascript">
        window.onload = function()
        {
            document.getElementById("dsa").onsubmit = popupForm
        }

        function popupForm()
        {
            window.open("/ContactConfirm.jsp")
            document.forms["asd"].submit()
        }
    </script>-->





















    <!-- .content-wrapper END -->
    <!-- Resource jQuery -->
</main>
<script src="resources/js/jquery-2.2.0.js"></script>
<script src="resources/js/bootstrap.js"></script>
<script src="resources/js/hovers_menu"> </script>

</body>
</html>