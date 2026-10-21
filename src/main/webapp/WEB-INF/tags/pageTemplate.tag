<%@tag description="base page template" pageEncoding="UTF-8"%>
<%@attribute name="pageTitle"%>

<!DOCTYPE html>
<html>
<head>
    <title>${pageTitle}</title>
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@latest/dist/css/bootstrap.min.css" rel="stylesheet">
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@latest/dist/js/bootstrap.bundle.min.js">
   body {
               padding-top: 4.5rem; /* Spațiu sus pentru navbar-ul fixed-top */
           }
   </script>
</head>
<body>
<jsp:include page="/WEB-INF/pages/menu.jsp" />

<main class="container-fluid mt-5">
    <jsp:doBody/>

    </main>
    <jsp:include page="/footer.jsp"/>

</body>
</html>