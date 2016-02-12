<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c"
           uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Contact</title>

    <link href="resources/css/bootstrap.css" rel="stylesheet">

    <script src="resources/js/bootstrap.js"></script>

    <script src="resources/js/jquery-2.2.0.js"></script>

    <script src="resources/js/bootstrap-select.js"></script>

    <script src="resources/js/hovers_menu"></script>

    <script src="resources/js/ajaxupload.js"></script>



    <link rel="stylesheet" href="resources/css/reset">
    <link rel="stylesheet" href="resources/css/all.css">
    <link rel="stylesheet" href="resources/css/app.css">

    <!-- CSS reset -->
    <link rel="stylesheet" href="resources/css/style">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

    <jsp:useBean id="ContB" class="com.becomejavasenior.model.Contact" />

    <jsp:useBean id="CompB" class="com.becomejavasenior.model.Company" />

    <jsp:useBean id="UserB" class="com.becomejavasenior.model.User" />

    <jsp:useBean id="TaskB" class="com.becomejavasenior.model.Task" />

    <jsp:useBean id="DealB" class="com.becomejavasenior.model.Deal" />

    <jsp:useBean id="PhoneB" class="com.becomejavasenior.model.PhoneNumber" />

    <jsp:useBean id="CommB" class="com.becomejavasenior.model.Comment" />

    <jsp:useBean id="FileB" class="com.becomejavasenior.model.Comment" />

    <jsp:useBean id="TagB" class="com.becomejavasenior.model.Tag" />

</head>
<body>
<div class="col-lg-2" style="background-color:grey; height:643px">

</div>
<form method="post" action="/ContactConfirm.jsp" >

    <c:if test="${! (empty errorMsg1)}">
        <font color="red"> <c:out value="${errorMsg1}"/> </font>
    </c:if>
    <c:if test="${! (empty errorMsg2)}">
        <font color="red"> <c:out value="${errorMsg2}"/> </font>
    </c:if>
    <c:if test="${! (empty errorMsg3)}">
        <font color="blue"> <c:out value="${errorMsg3}"/> </font>
    </c:if>

    <div class="col-lg-10" style="background-color:lightgrey; height: 643px">

        <div class="col-lg-7">
            <div class="panel panel-default" >
                <div class="panel-heading"><strong>Добавление Контакта</strong></div>
                <div class="panel-body" style="background-color:lightgrey;">
                    <div class="col-lg-6">
                        <div class="row">

                            <div class="col-lg-6" class="form-group">
                                <label>Имя</label><br/>
                                <input type="text" class="form-control input-sm" name="name"
                                       required value='<c:out value="${name}" />'>
                            </div >

                            <div class="col-lg-6" class="form-group">
                                <label>Фамилия</label><br/>
                                <input type="text" class="form-control input-sm" name="lastName" placeholder="Введите Фамилию"
                                       required value='<c:out value="${lastName}" />'>
                            </div >

                            <div class="col-lg-12" class="form-group">
                                <label>Тэги</label><br/>
                                <input type="text" class="form-control input-sm" name="yourtags" placeholder="your_tags"
                                       value='<c:out value="${yourtags}" />'>
                            </div>

                            <br/>

                            <div class="col-lg-12" class="form-group">
                                <label>Ответственный</label>
                                <select class="form-control input-sm" name="responsibleId"
                                        value='<c:out value="${responsibleId}" />'>
                                    <option selected value="12">Рабочий</option>
                                    <c:forEach var="UserB" items="${UserB.id}">
                                        <option value="${UserB.id}">
                                            <c:out value="${UserB.name}"/>
                                            <c:out value="${UserB.lastName}"/>
                                        </option>
                                    </c:forEach>
                                </select>
                            </div>


                            <div class="col-lg-12" class="form-group">
                                <label>Номер телефона</label>
                                <span class="glyphicon glyphicon-earphone"></span>
                                <select class="form-control input-sm" name="type" value1="${PhoneB.type}">
                                    <option selected value="рабочий">Рабочий</option>
                                    <option value="раб_прямой">Раб. прямой</option>
                                    <option value="мобильний">Мобильный</option>
                                    <option value="факс">Факс</option>
                                    <option value="домашний">Домашний</option>
                                    <option value="другой">Другой</option>
                                </select>
                            </div>
                        </div>
                    </div>



                    <div class="col-lg-6">

                        <div class="col-lg-12" class="form-group">
                            <label>Должность</label>
                            <input type="text" class="form-control input-sm" name="position" placeholder="Должность"
                                   value='<c:out value="${position}" />'>
                        </div>

                        <div class="col-lg-12" class="form-group">
                            <label>Email</label>
                            <i class="fa fa-envelope-o"></i>
                            <input type="email" class="form-control input-sm" name="email" placeholder="Email"
                                   required value='<c:out value="${email}" />'>
                        </div>

                        <div class="col-lg-12" class="form-group">
                            <label>Skype </label><i class="fa fa-skype"></i>
                            <input type="text" class="form-control input-sm" name="skype" placeholder="Skype"
                                   value='<c:out value="${skype}" />'>
                        </div>

                        <div class="col-lg-12" class="form-group">
                            <label>Номер<br/></label>
                            <input type="tel" class="form-control input-sm" name="contNumber" pattern="\d{10,12}"
                                   required placeholder="X-(XXX)-XXX-XXX-XXXX" value='<c:out value="${contNumber}" />'>
                        </div>
                    </div>

                    <div class="col-lg-12" class="form-group">
                        <label>Comment:</label><br/>
                        <textarea class="form-control input-sm" name="comment" rows="3"
                                  value='<c:out value="${comment}" />' placeholder="Comment`s" ></textarea>
                    </div>

                    <div class="col-lg-12">
                        <input type="file" name="fileName">
                    </div><!--
                        <div id="uploadButton" class="button">
                            <font>Загрузить</font>
                            <img id="load" src="loadstop.gif"/><br>
                        </div>
                        <ol id="files">
                            Загруженные файлы :
                        </ol>

                        <script>
                            $(document).ready(function() {

                                var button = $('#uploadButton'), interval;

                                $.ajax_upload(button, {
                                    action : '/com.becomejavasenior.controller.UploadServlet',
                                    name : 'file',
                                    onSubmit : function(file, ext) {
                                        // показываем картинку загрузки файла
                                        $("img#load").attr("src", "load.gif");
                                        $("#uploadButton font").text('Загрузка');

                                        /*
                                         * Выключаем кнопку на время загрузки файла
                                         */
                                        this.disable();

                                    },
                                    onComplete : function(file, response) {
                                        // убираем картинку загрузки файла
                                        $("img#load").attr("src", "loadstop.gif");
                                        $("#uploadButton font").text('Загрузить');

                                        // снова включаем кнопку
                                        this.enable();

                                        // показываем что файл загружен
                                        $("<li>" + file + "</li>").appendTo("#files");

                                    }
                                });
                            });
                        </script>-->


                </div>
            </div>



            <br/>




            <div class="panel panel-default">
                <div class="panel-heading"><strong>Добавление Компании</strong></div>
                <div class="panel-body" style="background-color:lightgrey;">
                    <div class="col-lg-12">
                        <div class="row">

                            <div class="col-lg-12" class="form-group">
                                <select class="form-control input-sm" name="compId" value='<c:out value="${compId}" />'
                                        placeholder="Не выбрано">
                                    <option selected value="рабочий">Рабочий</option>
                                    <c:forEach var="CompB" items="${CompB.id}">
                                        <option value="${CompB.id}">
                                            <c:out value="${CompB.name}"/>
                                        </option>
                                    </c:forEach>
                                </select>
                            </div>

                            <div class="col-lg-6" class="form-group">
                                <label>Компания</label><br/>
                                <input type="text" class="form-control input-sm" name="compName" placeholder="Компания"
                                       value='<c:out value="${compName}" />'/>
                            </div >

                            <div class="col-lg-6" class="form-group">
                                <label>Номер телефона</label>
                                <span class="glyphicon glyphicon-earphone"></span>
                                <input type="tel" class="form-control input-sm" name="compNumber" pattern="\d{10,13}"
                                       placeholder="X(XXX)-XXX-XXXX" value='<c:out value="${compNumber}"/>'>
                            </div>


                            <div class="col-lg-6" class="form-group">
                                <label>Email</label>
                                <i class="fa fa-envelope-o"></i>
                                <input type="email" class="form-control input-sm" name="compEmail" placeholder="Email"
                                       value='<c:out value="${compEmail}"/>'>
                            </div>


                            <div class="col-lg-6" class="form-group">
                                <label>Web Address</label>
                                <i class="fa fa-globe"></i>
                                <input type="text" class="form-control input-sm" name="web"
                                       placeholder="Web Address" value='<c:out value="${web}"/>'>
                            </div>

                            <br/>


                        </div>
                    </div>


                    <div class="col-lg-12" class="form-group">
                        <label>Адрес:</label>
                        <i class="fa fa-home"></i><br/>
                        <textarea class="form-control input-sm" name="location" rows="3"
                                  placeholder="Введите адрес" value='<c:out value="${location}"/>'></textarea>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-lg-5">
            <div class="panel panel-default" >
                <div class="panel-heading"><strong>Запланировать действие</strong></div>
                <div class="panel-body" style="background-color:lightgrey;">
                    <div class="col-lg-12">
                        <div class="row">



                            <div class="col-lg-4" class="form-group">
                                <label>Период</label>
                                <div>
                                    <!--<div style="width: 1px; position: absolute; opacity: 0; cursor: not-allowed;" id="select_body"></div>-->
                                    <select class="form-control input-sm" id="select" name="taskPeriod"
                                            value='<c:out value="${taskPeriod}"/>'>
                                        <option selected value=0>Период</option>
                                        <option value="today">Сегодня</option>
                                        <option value="allday">Весь День</option>
                                        <option value="tomorrow">Завтра</option>
                                        <option value="week">Следующая неделя</option>
                                        <option value="month">Следующий месяц</option>
                                        <option value="year">Следующий год</option>
                                    </select>
                                </div>
                            </div>

                            <div class="col-lg-8" class="form-group">
                                <tr>
                                    <td>Календарь:</td>
                                    <td><input type="date" name="date"  value='<c:out value="${date}"/>'></td>
                                    <td>Время:</td>
                                    <td><input type="time" name="time" value='<c:out value="${time}"/>'></td>
                                </tr>
                            </div >



                            <div class="col-lg-6" class="form-group">
                                <label>Ответственный</label>
                                <select class="form-control input-sm" name="taskRespId"
                                        value='<c:out value="${taskRespId}"/>'>
                                    <option selected value=0>Рабочий</option>
                                    <c:forEach var="UserB" items="${UserB.id}">
                                        <option value="${UserB.id}">
                                            <c:out value="${UserB.name}"/>
                                            <c:out value="${UserB.lastName}"/>
                                        </option>
                                    </c:forEach>
                                    <option value="1">Один</option>
                                </select>
                            </div>

                            <div class="col-lg-6" class="form-group">
                                <label>Тип задачи</label>
                                <select class="form-control input-sm" name="taskType"
                                        value='<c:out value="${taskType}"/>'>
                                    <option selected value=1>Тип задачи</option>
                                    <option value="первый">Первый</option>
                                    <option value="второй">Второй</option>
                                    <option value="третий">Третий</option>
                                </select>
                            </div>

                            <div class="col-lg-12" class="form-group"><br/>
                                <label>Текст задачи:</label><br/>
                                <textarea class="form-control input-sm" name="description" rows="3"
                                          placeholder="Comment`s" value='<c:out value="${description}"/>'></textarea>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div class="panel panel-default" >
                <div class="panel-heading"><strong>Быстрое добавление сделки</strong></div>
                <div class="panel-body" style="background-color:lightgrey;">
                    <div class="col-lg-12">
                        <div class="row">

                            <div class="col-lg-6" class="form-group">
                                <label>Название сделки</label><br/>
                                <input type="text" class="form-control input-sm" name="dealTitle" placeholder="Название"
                                       value='<c:out value="${dealTitle}"/>'>
                            </div >


                            <div class="col-lg-6" class="form-group">
                                <label>Этап</label>
                                <select class="form-control input-sm" name="dealPhase"
                                        value='<c:out value="${dealPhase}"/>'>
                                    <option disabled value=0>Переговоры</option>
                                    <option selected value=1>Первичный контакт</option>
                                    <option value="2">Переговоры</option>
                                    <option value="3">Принимают решение</option>
                                    <option value="4">Согласование договора</option>
                                    <option value="5">Успешно реализовано</option>
                                    <option value="6">Закрыто и не реализовано</option>
                                </select>
                            </div>


                            <div class="col-lg-12" class="form-group">
                                <label>Бюджет</label><br/>
                                <input type="text" class="form-control input-sm" name="dealBudget" placeholder="Укажите"
                                       value='<c:out value="${dealBudget}" />'>
                            </div>

                            <br/>


                        </div>
                    </div>
                </div>
            </div>



            <div class="col-lg-12" >
                <input type="submit" class="btn btn-primary">
                    <i class="fa fa-user-plus pull-right"></i> Добавить Контакт
                </input>
            </div>
        </div>

    </div>

</form>
</body>
</html>















