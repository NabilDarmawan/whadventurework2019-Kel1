<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>


<jp:mondrianQuery id="query01" jdbcDriver="com.mysql.jdbc.Driver" 
jdbcUrl="jdbc:mysql://localhost/whadventurework2022?user=root&password=" catalogUri="/WEB-INF/queries/faktapembelian.xml">

select {[Measures].[OrderQty],[Measures].[LineTotal],[Measures].[ReceivedQty],[Measures].[RejectedQty]} ON COLUMNS,
  {([Time].[All Times],[Vendor],[Employee],[Product].[All Products],[ShipMethod])} ON ROWS
from [Pembelian]


</jp:mondrianQuery>





<c:set var="title01" scope="session">Query AdventureWork using Mondrian OLAP</c:set>
