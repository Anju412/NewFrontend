<%@ page language="java" contentType="text/html" %>
<%@include file="Header.jsp" %>


<div class="container">
<table class="table">
<tr>
<td colspan="6"><center><h3>Payment</h3></center>

<tr bgcolor="orange">
<td colspan="4">Total Purchase Amount </td>
<td>${totalPurchaseAmount }</td>
</tr>

<div class="container">
<table class="table" align="center" width="50%">

<tr>
<td colspan="2">Payment Option</td>
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