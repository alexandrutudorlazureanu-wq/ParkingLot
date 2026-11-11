<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemplate pageTitle="Cars">
    <h1>Cars</h1>

    <!-- Am deschis formularul aici, având acțiunea spre /Cars -->
    <form method="POST" action="${pageContext.request.contextPath}/Cars">

        <div class="mb-3">
            <a href="${pageContext.request.contextPath}/AddCar" class="btn btn-primary btn-lg">Add Car</a>
            <!-- NOU: Butonul de ștergere -->
            <button class="btn btn-danger btn-lg" type="submit">Delete Cars</button>
        </div>

        <div class="container text-center">
            <c:forEach var="car" items="${cars}">
                <div class="row align-items-center mb-2">
                    <!-- NOU: Căsuța de bifat (Checkbox) -->
                    <div class="col-1">
                        <input type="checkbox" name="car_ids" value="${car.id}" />
                    </div>
                    <div class="col">
                        ${car.licensePlate}
                    </div>
                    <div class="col">
                        ${car.parkingSpot}
                    </div>
                    <div class="col">
                        ${car.ownerName}
                    </div>
                    <div class="col">
                        <a class="btn btn-secondary" href="${pageContext.request.contextPath}/EditCar?id=${car.id}">Edit Car</a>
                    </div>
                </div>
            </c:forEach>
        </div>

    </form>
    <!-- Am închis formularul -->

    <h5 class="mt-4">Free parking spots: ${numberOfFreeParkingSpots}</h5>
</t:pageTemplate>