<%@ page language="java" contentType="text/html" %>
<%@include file="Header.jsp" %>



<div class="container" style="border:5px solid black">
<table class="table">
<td colspan="6"><center><h2><b><font color="brown">Your Cart <span class="glyphicon glyphicon-shopping-cart"></h2></center>
<tr>
<td><b> SL # </td>
<td><b> Product Name</td>
<td><b> Quantity</td>
<td><b> Price</td>
<td><b> Total Price</td>
<td><b> Operation</td>
</tr>

<c:if test="${empty cartItems}" var="cartItem">
<tr><td colspan="6"><center>!!! Your Cart is Empty !!!</center></td></tr>
</c:if>
<c:if test="${not  empty cartItems}">
<c:forEach items="${cartItems }" var="cartItem">
<form action="<c:url value="/updateCartItem/${cartItem.cartItemId }"/>" method="get">
<tr>
<td></td>
<td>${cartItem.productName }</td>
<td><input type="text" value=" ${cartItem.quantity }" name="quantity"/></td>
<td>${cartItem.price }</td>
<td>${cartItem.quantity * cartItem.price }</td>
<td>
<input type="submit" style="background-color:#00e600"   value="Update" class="btn btn-info" />
<a href="<c:url value="/deleteCartItem/${cartItem.cartItemId}"/>" class"btn btn-danger ><font color="red"><h4><span class="glyphicon glyphicon-trash">Delete </span></h4></a>
</td>
</tr>

</form>
</c:forEach>
</c:if>
<tr bgcolor="#ffffc2">
<td colspan="4"><font color="darkblue"><h4><b>Total Purchase Amount</b></h4> </td>
<td colspan="2"><font color="darkblue"><h4><b>${totalPurchaseAmount }</b></h4></td>
</tr>

<tr bgcolor="mistyrose">
<td colspan="3"><a href="<c:url value="/continueShopping"/>" class="btn btn-info" style="background-color:#000099"><span class="glyphicon glyphicon-arrow-left"><font color="white"> Continue Shopping</a></td>
<td colspan="3"><a href="<c:url value="/checkout"/>" class="btn btn-info" style="background-color:#000099"><font color="white">Check Out <span class="glyphicon glyphicon-arrow-right"></a></td>
<br><br>
</tr>
</table>
</div>
<br><br>
<%@include file="footer.jsp" %>
</html>