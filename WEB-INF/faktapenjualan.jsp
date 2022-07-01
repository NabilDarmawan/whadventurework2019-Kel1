<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>


<jp:mondrianQuery id="query01" jdbcDriver="com.mysql.jdbc.Driver" 
jdbcUrl="jdbc:mysql://localhost/whadventurework2022?user=root&password=" catalogUri="/WEB-INF/queries/faktapenjualan.xml">

select
 {[measures].[Order Quantity], [measures].[Total Price]}on columns,
 {([Product].[Semua Produk], [Costumer].[Semua Pelanggan], [Store].[Semua Toko], [Ship Method].[Semua Ship Method])}on rows
from
Penjualan

</jp:mondrianQuery>





<c:set var="title01" scope="session">Query WHSAKILA using Mondrian OLAP</c:set>