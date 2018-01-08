<%-- 
    Document   : createProducts
    Created on : 15-Nov-2017, 17:51:07
    Author     : I342042
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Cars</title>
    </head>
    <body>
 <h1>Create a Product record</h1>
    <form id="createCarForm" action="createCar" method="post">
    <table>
        <tr><td>ID</td><td><input type="text" id = "ID" name="id" /></td></tr>
        <tr><td>Name</td><td><input type="text" id = "Name" name="name" /></td></tr>
        <tr><td>Price</td><td><input type="text" id = "Price" name="price" /></td></tr>
       <tr><td>Mileage</td><td><input type="text" id = "Mileage" name="mileage" /></td></tr>
      </table>
    <input type="submit" id="CreateRecord" value="CreateRecord" />
    </form>
<a href="ListCars"><strong>Go to List of cars</strong></a>
</body>
</html>
