<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: aqsin
  Date: 9/15/2020
  Time: 14:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8"/>
    <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />

    <!-- Bootstrap CSS -->
    <link
            rel="stylesheet"
            href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
            integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
            crossorigin="anonymous"
    />
    <link rel="stylesheet" href="../../resources/css/customer-form.css"/>
    <title>Add Customer</title>
</head>

<body>

<div class="row">
    <div class="card card-style">
        <form:form modelAttribute="customer" method="post" action="saveCustomer">
            <form:hidden path="id"/>
            <div class="card-body">
                <h5 class="card-title">Add new customer</h5>
                <div class="input-group">
                    <form:input path="firstName" type="text" class="form-control" placeholder="Name" aria-label="Name"
                           aria-describedby="addon-wrapping"/>
                </div>
                <br>
                <div class="input-group">
                    <form:input path="lastName" type="text" class="form-control" placeholder="Surname" aria-label="Surname"
                           aria-describedby="addon-wrapping"/>
                </div>
                <br>
                <div class="input-group">
                    <form:input path="email" type="email" class="form-control" placeholder="Email" aria-label="Email"
                           aria-describedby="addon-wrapping"/>
                </div>
                <br>
                <a href="/customers" class="btn btn-secondary">Go back</a>
                <button type="submit" class="btn btn-primary float-right">Save</button>
            </div>
        </form:form>

    </div>
</div>

<hr>
<footer>
    <p style="float: right; margin-right: 1rem;"><strong>Basic Spring MVC + Hibernate application</strong></p>
</footer>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script
        src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"
></script>
<script
        src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"
></script>
<script
        src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
        integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
        crossorigin="anonymous"
></script>
</body>
</html>
