<%@ page language="java" contentType="text/html" %>
<%@include file="Header.jsp" %>


<div class="container" style="border:5px solid black">
<form action="<c:url value="/paymentProcess"/>" method ="post">

<table class="table">
<tr>
<td colspan="6"><center><h2><b>Payment<b></h2></center>

<tr bgcolor="navy">
<td colspan="4"><font color="white">Total Purchase Amount </td>
<td><font color="white">${totalPurchasedAmount }/--</td>
</tr>

<div class="container">
<table class="table" align="center" width="50%">

<tr>
<td colspan="2"><b><h3><font color="indigo">Payment Option</font></h3></td>
</tr>

<tr>
<td colspan="2">
<input type="radio" name="paymenttype" value="CC"/>Credit Card
<input type="radio" name="paymenttype" value="Cod"/>Cash on Delivery
</td>

<tr>
<td>Cart No: </td>
<td><input type="text" name="cardno" required/></td>
</tr>

<tr>
<td>CVV </td>
<td><input type="text" name="cvv" /></td>
</tr>

<tr>
<td>Valid Upto </td>
<td><input type="text" name="valid"/></td>
</tr>

<tr>
<td colspan="2">
<input type="submit" value="Payment"> 
</td>
</tr>
</table>
</div>