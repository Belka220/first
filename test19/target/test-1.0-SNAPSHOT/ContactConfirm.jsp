<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c"
           uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>

    <link href="resources/css/bootstrap.css" rel="stylesheet">

    <script src="resources/js/bootstrap.js"></script>

    <script src="resources/js/jquery-2.2.0.js"></script>

    <title>Подтверждение</title>

    <jsp:useBean id="ContB" class="com.becomejavasenior.model.Contact" />

</head>
<body>
<div class="col-lg-2" style="background-color:grey; height: 643px; width: 20%">

</div>
<div class="col-lg-10" style="background-color:palegoldenrod; height: 643px; width: 80%">
<h2>Контакт успешно добавлен!</h2>

<table class="table table-striped" >

    <tr>
        <td><strong>Имя</strong></td>
        <td>${param.name}</td>
    </tr>
    <tr>
        <td><strong>Фамилия</strong></td>
        <td>${param.lastName}</td>
    </tr>
    <tr>
        <td><strong>Должность</strong></td>
        <td>${param.position}</td>
    </tr>
    <tr>
        <td><strong>E-mail</strong></td>
        <td>${param.email}</td>
    </tr>
    <tr>
        <td><strong>Skype</strong></td>
        <td>${param.skype}</td>
    </tr>
    <tr>
        <td><strong>Телефон</strong></td>
        <td>
            <table>
                <tr><td>${param.type}</td></tr>
                <tr><td>${param.contNumber}</td></tr>
            </table>
        </td>
    </tr>
    <tr>
        <td><strong>Ответственный</strong></td>
        <td>${param.responsibleId}</td>
    </tr>
    <tr>
        <td><strong>Тэги</strong></td>
        <td>${param.yourtags}</td>
    </tr>
    <tr>
        <td><strong>Комментарии</strong></td>
        <td>${param.comment}</td>
    </tr>
    <tr>
        <td><strong>Прикрепленные файлы</strong></td>
        <td>${param.fileName}</td>
    </tr>
    <tr>
        <td><strong>Привязаная компания</strong></td>
        <td>
            <table>
                <tr><td>${param.compName}</td></tr>
                <tr><td>${param.web}</td></tr>
                <tr><td>${param.compEmail}</td></tr>
                <tr><td>${param.compNumber}</td></tr>
                <tr><td>${param.location}</td></tr>
            </table>
        </td>
    </tr>
    <tr>
        <td><strong>Cвязаная сделка</strong></td>
        <td>
            <table>
                <tr><td>${param.dealTitle}</td></tr>
                <tr><td>${param.dealBudget}</td></tr>
                <tr><td>${param.dealPhase}</td></tr>
            </table>
        </td>
    </tr>
    <tr>
        <td><strong>Запланированое действие на</strong></td>
        <td>
            <table>
                <tr><td>${param.date} - ${param.time}</td></tr>
                <tr><td>до ${param.taskPeriod}</td></tr>
                <tr><td>Отвественный</td></tr>
                <tr><td>Тип задачи</td></tr>
                <tr><td>${param.description}</td></tr>
            </table>
        </td>
    </tr>

</table>

</div>
</body>
</html>
