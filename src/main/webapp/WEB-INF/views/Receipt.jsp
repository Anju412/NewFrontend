<%@ page language="java" contentType="text/html" %>
<%@include file="Header.jsp" %>

<head>
<style>
.invoice-title h2, .invoice-title h3 {
    display: inline-block;
}

.table > tbody > tr > .no-line {
    border-top: none;
}

.table > thead > tr > .no-line {
    border-bottom: none;
}

.table > tbody > tr > .thick-line {
    border-top: 2px solid;
}
</style>
</head>
<div class="col-md-2" align="left" >
<form>
<input type="button" value="Printitnow" onclick="window.print()">
</form>
</div>
<div class="container" style="border:5px solid black">

<div class="row">
        <div class="col-xs-12">
    		<div class="invoice-title">
    			<h2>Invoice</h2><h3 class="pull-right">Order Id : ${orderDetail.orderId}</h3>
    		</div>
    		
    		<hr>
    		<div class="row">
    			<div class="col-xs-6">
    				<address>
    				<strong>Billed To:</strong><br>
    					${userDetail.userName}<br>
    					${userDetail.address }<br>
    					${userDetail.mobile }<br>
    					${userDetail.email }
    				</address>
    			</div>
    			<div class="col-xs-6 text-right">
    					<h4><b>Fashworld</b> <small>  |   Lucky Number : 156</small></h4>
							<p><b>Email :</b> fashworld@gmail.com</p>
							<p><b>Mobile :</b> +91 12345-6789</p>
							
							<p><b>Address :</b> India</p>
    			</div>
    			<br>
    			<div class="col-xs-6 text-right">
    				<address>
    					<strong>Order Date:</strong>${orderDetail.orderDate}<br>
    					<br><br>
    				</address>
    			</div>
    		</div>
    		</div>
    		</div>
    		
    		
    		
    		 <div class="row">
    	<div class="col-md-12">
    		<div class="panel panel-default">
    			<div class="panel-heading">
    				<h3 class="panel-title"><strong>Order summary</strong></h3>
    			</div>
    			<div class="panel-body">
    				<div class="table-responsive">
    					<table class="table table-condensed">
    						<thead>
                                <tr>
        							<td><strong>Product Name</strong></td>
        							<td class="text-center"><strong>Price</strong></td>
        							<td class="text-center"><strong>Quantity</strong></td>
        							<td class="text-right"><strong>Totals</strong></td>
                                </tr>
    						</thead>
    						<tbody>
    						
    						<c:if test="${empty cartItems}" var="cartItem">
                              <tr><td colspan="5"><center>!!! Your Cart is Empty !!!</center></td></tr>
                                 </c:if>

                           <c:if test="${not  empty cartItems}">
                            <c:forEach items="${cartItems }" var="cartItem">
                              <form action="<c:url value="/updateCartItem/${cartItem.cartItemId }"/>" method="get">
    						
    						
    							<!-- foreach ($order->lineItems as $line) or some such thing here -->
    							<%-- <tr>
    								<td>${cartItem.productName }</td>
    								<td class="text-center">$10.99</td>
    								<td class="text-center">1</td>
    								<td class="text-right">$10.99</td>
    							</tr>
    							 <tr>
        							<td>BS-400</td>
    								<td class="text-center">$20.00</td>
    								<td class="text-center">3</td>
    								<td class="text-right">$60.00</td>
    							</tr>
                                <tr>
            						<td>BS-1000</td>
    								<td class="text-center">$600.00</td>
    								<td class="text-center">1</td>
    								<td class="text-right">$600.00</td>
    							</tr>
    							<tr>
    								<td class="thick-line"></td>
    								<td class="thick-line"></td>
    								<td class="thick-line text-center"><strong>Subtotal</strong></td>
    								<td class="thick-line text-right">$670.99</td>
    							</tr>
    							<tr>
    								<td class="no-line"></td>
    								<td class="no-line"></td>
    								<td class="no-line text-center"><strong>Shipping</strong></td>
    								<td class="no-line text-right">$15</td>
    							</tr>
    							<tr>
    								<td class="no-line"></td>
    								<td class="no-line"></td>
    								<td class="no-line text-center"><strong>Total</strong></td>
    								<td class="no-line text-right">$685.99</td>
    							</tr>
    						</tbody>
    					</table>
    				</div>

	<table class="table">
	
	<tr>
		<td colspan="2"><center><b>Receipt</b></center></td>
	</tr>
	
	<tr>
		 <td colspan="2">Order Id</td>
		<td>ORD00${orderDetail.orderId}</td> 
		<td colspan="2">Order Date</td>
		<td>${orderDetail.orderDate}</td>
	</tr>
	
	<tr>
		
		<td>Product Name</td>
		<td>Quantity</td>
		<td>Price</td>
		<td>Total price</td>
	</tr> --%>
	
	<%-- <c:if test="${empty cartItems}" var="cartItem">
<tr><td colspan="5"><center>!!! Your Cart is Empty !!!</center></td></tr>
</c:if>

<c:if test="${not  empty cartItems}">
<c:forEach items="${cartItems }" var="cartItem">
<form action="<c:url value="/updateCartItem/${cartItem.cartItemId }"/>" method="get">
 --%>
<tr>

<td>${cartItem.productName }</td>
<td>${cartItem.quantity }</td>
<td>${cartItem.price }</td>
<td>${cartItem.quantity * cartItem.price }</td>
</tr>
</form>
</c:forEach>
</c:if>

<tr bgcolor="mistyrose">
	<td colspan="3"><font color="black">total Purchased Amount</td>
	<td colspan="2"><font color="black">&#8377;${totalPurchaseAmount}</td>
</tr>

<%-- <tr bgcolor="orange">
	<td colspan="3">Offers Applied</td>
	<td colspan="2">&#8377;${totalPurchaseAmount-totalPurchasedAmount}</td>
</tr>
<tr bgcolor="orange">
	<td colspan="3">Final Price</td>
	<td colspan="2">&#8377;${totalPurchasedAmount}</td>
</tr> --%>


<tr bgcolor="darkblue">
	<td colspan="5"><center><font color="white"><h3>!!!!Thanks For Shopping!!!!</h4></center></td>
</tr>

</table>
</div>
</div>
</div>
</div>
</div>
</div>
<br>
<br>
<%@include file="footer.jsp" %>
