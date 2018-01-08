<%-- 
    Document   : listCars
    Created on : 07-Nov-2017, 19:02:49
    Author     : I342042
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
    <head>
        
        <style>
#carListTable {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

#carListTable td, #carListTable th {
    border: 1px solid #ddd;
    padding: 8px;
}

#carListTable tr:nth-child(even){background-color: #f2f2f2;}

#carListTable tr:hover {background-color: #ddd;}

#carListTable th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color: #4CAF50;
    color: white;
}
input[type=submit] {
    padding:5px 15px; 
     background-color: #4CAF50;
     color: #FFFFFF;
    border:0 none;
    cursor:pointer;
    -webkit-border-radius: 5px;
    border-radius: 5px; 
    transition-duration: 0.4s;
}
input[type=submit]:after {
    content: "";
    background: #90EE90;
    display: block;
    position: absolute;
    padding-top: 300%;
    padding-left: 350%;
    margin-left: -20px!important;
    margin-top: -120%;
    opacity: 0;
    transition: all 0.8s
}

input[type=submit]:active:after {
    padding: 0;
    margin: 0;
    opacity: 1;
    transition: 0s
}
</style> 
       
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List Of Cars</title>
    </head>
    <body>

    <h1>List of Cars</h1>
    
<table id="carListTable">
<tr>
    <th bgcolor=>ID</th>
    <th bgcolor=>Name</th>
    <th bgcolor=>Price</th>
    <th bgcolor=>Mileage</th>
    <th bgcolor=>Edit</th>
    <th bgcolor=>Delete</th>
</tr>
<c:forEach var="car" begin="0" items="${requestScope.carList}">
<tr>
  
    <td>${car.id}&nbsp;&nbsp;</td> 
    <td>${car.name}&nbsp;&nbsp;</td> 
    <td>${car.price}&nbsp;&nbsp;</td> 
    <td>${car.mileage}&nbsp;&nbsp;</td> 
    <td>
    <form method="post" action="editCar.jsp">
        <input type="hidden" name="id" value="${car.id}"/>
        <input type="hidden" name="name" value="${car.name}"/>
        <input type="hidden" name="price" value="${car.price}"/>
        <input type="hidden" name="mileage" value="${car.mileage}"/>
        <input type="submit" value="Edit"/>
    </form>

</td>
        <td>
            <div>
                <form method="post" action="deleteCar">
                    <input type="hidden" name="id" value="${car.id}"/>
                    <input type="submit" value="Delete"/>
                </form>
    </div>
        </td>
</tr> 

</c:forEach>

</table>
    
    <button><a href="createCars.jsp"><strong>Create a New Car Record</strong></a></button>
   
</body>
</html>
