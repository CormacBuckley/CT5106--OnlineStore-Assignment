<%-- 
    Document   : editCar
    Created on : 20-Nov-2017, 18:11:22
    Author     : I342042
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Cars</title>
    </head>
    <body>
 <h1>Edit record</h1>
    <form id="editCarForm" action="editCar" method="post">
    <table>
        <tr hidden="true"><td>ID</td><td><input type="hidden" id = "ID" name="id" value="${param.id}" readonly /></td></tr>
        <tr><td>Name</td><td><input type="text" id = "Name" name="name" value="${param.name}"/></td></tr>
        <tr><td>Price</td><td><input type="text" id = "Price" name="price" value="${param.price}"/></td></tr>
       <tr><td>Mileage</td><td><input type="text" id = "Mileage" name="mileage" value="${param.mileage}"/></td></tr>
      </table>
    <input type="submit" id="EditRecord" value="Edit Car" />
    </form>
<a href="ListCars"><strong>Go to List of cars</strong></a>
</body>
</html>
