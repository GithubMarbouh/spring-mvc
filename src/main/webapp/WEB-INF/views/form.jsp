<%@include file="includes/header.jsp"%>
<body>
<%@include file="includes/navbar.jsp"%>

<h1>Platforme d'inscription des etudiants</h1>

</body>
<%--// formulaire pour ajouter etudiant(id,nom,email,address) en utilisant jstl(en utilisant boostrap)--%>
<div class="container">
    <form action="/save" method="post">
        <div class="form-group">
            <label for="id">Id:</label>
            <input type="text" class="form-control" id="id" placeholder="Enter id" name="id">
        </div>
        <div class="form-group">
            <label for="nom">Nom:</label>
            <input type="text" class="form-control" id="nom" placeholder="Enter nom" name="nom">
        </div>
        <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
        </div>
        <div class="form-group">
            <label for="address">Address:</label>
            <input type="text" class="form-control" id="address" placeholder="Enter address" name="address">
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>

<%@include file="includes/footer.jsp"%>

</html>
