<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>


<jp:mondrianQuery id="query01" jdbcDriver="com.mysql.jdbc.Driver" 
jdbcUrl="jdbc:mysql://localhost/whadventurework2022?user=root&password=" catalogUri="/WEB-INF/queries/faktapenjualan.xml">

select {[Measures].[OrderQty],[Measures].[LineTotal]} ON COLUMNS,
  {([Time].[All Times],[Store],[Customer],[Product].[All Products],[ShipMethod])} ON ROWS
from [Penjualan]

</jp:mondrianQuery>





<c:set var="title01" scope="session">Fakta Penjualan using Mondrian OLAP</c:set>