<%@ taglib prefix="for" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: aqsin
  Date: 9/15/2020
  Time: 14:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
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
    <link rel="stylesheet" href="../../resources/css/customer-list.css"/>
    <title>Hello, world!</title>
</head>
<body>
<div class="container">
    <h1 class="head-h1">CSR - Customer Source Management</h1>
</div>
<div class="container" style="height: 3rem;">
    <button class="btn btn-primary" style="float: right;" onclick="window.location.href ='customers/newCustomer'">Add Customer</button>
</div>
<div class="row" style="padding-left: 1rem; padding-right: 1rem;">
    <for:forEach var="customer" items="${customers}">
        <c:url var="updateLink" value="/customers/customer">
            <c:param name="id" value="${customer.id}" />
        </c:url>

        <!-- construct an "delete" link with customer id -->
        <c:url var="deleteLink" value="/customers/delete">
            <c:param name="id" value="${customer.id}" />
        </c:url>
        <div class="col-sm-3">
            <div class="card card-margin">
                <div class="card-body">
                    <h5 class="card-title">${customer.firstName} ${customer.lastName}</h5>
                    <p class="card-text">Email: ${customer.email}</p>
                    <a href="${updateLink}" class="btn btn-primary">Update</a>
                    <a href="${deleteLink}" class="btn btn-danger" onclick="if(!(confirm('Are you sure delete customer?')))return false">Delete</a>

                </div>
            </div>
        </div>
    </for:forEach>

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

