<%@include file="includes/header.jsp"%>
<body>
<%@include file="includes/navbar.jsp"%>
<%--// liser la liste des etudiants(id,nom,email,address) en utilisant jstl--%>
<div class="container">
    <h1>Liste des etudiants</h1>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>Id</th>
            <th>Nom</th>
            <th>Email</th>
            <th>Address</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${students}" var="student">
            <tr>
                <td>${student.id}</td>
                <td>${student.nom}</td>
                <td>${student.email}</td>
                <td>${student.address}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

</body>
<%@include file="includes/footer.jsp"%>
</html>
