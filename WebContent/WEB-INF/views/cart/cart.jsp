<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value ="vi_VN"/>
<!DOCTYPE HTML>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="max-age=604800" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<meta name="description" content="Bootstrap e-commerce html template similar to Alibaba">
<meta name="keywords" content="Online template, shop, theme, template, html, css, bootstrap 4">

<title> alistyle </title>

<link href="resources/images/favicon.ico" rel="shortcut icon" type="image/x-icon">

<!-- jQuery -->
<script src="resources/js/jquery-2.0.0.min.js" type="text/javascript"></script>

<!-- Bootstrap4 files-->
<script src="resources/js/bootstrap.bundle.min.js" type="text/javascript"></script>
<link href="resources/css/bootstrap.css" rel="stylesheet" type="text/css"/>

<!-- Font awesome 5 -->
<link href="resources/fonts/fontawesome/css/all.min.css" type="text/css" rel="stylesheet">

<!-- custom style -->
<link href="resources/css/ui.css" rel="stylesheet" type="text/css"/>
<link href="resources/css/responsive.css" rel="stylesheet" type="text/css" />

<!-- custom javascript -->
<script src="resources/js/script.js" type="text/javascript"></script>


</head>
<body>

<b class="screen-overlay"></b>
<!-- ========================= HEADER========================= -->
<jsp:include page ="../share/header.jsp"></jsp:include>

  <main class="site-main">
	
	

	<!-- ================ start banner area ================= -->	

	<!-- ================ end banner area ================= -->
  

<!-- ========================= SECTION CONTENT ========================= -->
<section class="section-content padding-y">
<div class="container">

<div class="row">
	<main class="col-md-9">
<div class="card">

<table class="table table-borderless table-shopping-cart">
<thead class="text-muted">
<tr class="small text-uppercase">
  <th scope="col">S???n Ph???m</th>
  <th scope="col" width="120">S??? L?????ng</th>
  <th scope="col" width="120">Thay ?????i</th>
  <th scope="col" width="120">Gi??</th>
  <th scope="col" width="120">T???ng Gi??</th>
  
</tr>
</thead>
<tbody>

<jsp:useBean id="cart" scope="session" class="votaduc.beans.CartBean"/>
			<c:if test="${cart.lineItemCount==0 }">
				<tr>
				<td>Kh??ng c?? s???n ph???m n??o trong gi??? h??ng</td>
				</tr>
			</c:if>
<c:forEach var="cartItem" items="${cart.list}" varStatus="counter">
<form name="item" method="POST" action="CartController">

	<tr>
		<td>
			<figure class="itemside">
				<div class="aside"><img src="resources/images/${cartItem.getImage()}" style=" max-width:150px; max-height:150px;"/></div>
				<figcaption class="info">
					<a href="#" class="title text-dark">${cartItem.title }</a>
					
				</figcaption>
			</figure>
		</td>
		<td> 
			<div class="input-group-prepend">
				<input type="hidden" name="stt" value='<c:out value="${counter.count }"/>'/>
				<button onclick="this.parentNode.querySelector('input[type=number]').stepUp()" class="btn btn-light" type="button" id="button-plus"> + </button>
				<input type="number"min="0" style="width: 70px;"  name="quantity" value='<c:out value="${cartItem.quantity }"/>'>
				<button onclick="this.parentNode.querySelector('input[type=number]').stepDown()" class="btn btn-light" type="button" id="button-minus"> &minus; </button>
			</div>
		</td>
		<td class="text-right"> 
			<input style="width: 100px;" class="btn btn-light" type="submit" name="action" value='C???p nh???t'> 
			<input style="width: 100px;" class="btn btn-light" type="submit" name="action" value='X??a'>
		</td>
		<td  > 
			<div class="price-wrap"> 
				<fmt:formatNumber value = "${cartItem.price}"  type="number" maxIntegerDigits="14"/>
			</div> <!-- price-wrap .// -->
		vn??</td>
			<td > 
			<div class="price-wrap"> 
				<fmt:formatNumber value = "${cartItem.totalCost}"  type="number" maxIntegerDigits="14"/>
			</div> <!-- price-wrap .// -->
		vn??</td>
	
	</tr>
	
</form>
</c:forEach>
</tbody>
</table>

<div class="card-body border-top">
	<a href="pay" class="btn btn-primary float-md-right"> Mua h??ng <i class="fa fa-chevron-right"></i> </a>
	<a href="home" class="btn btn-light"> <i class="fa fa-chevron-left"></i> Ti???p t???c mua s???m </a>
</div>	
</div> <!-- card.// -->

<div class="alert alert-success mt-3">
	<p class="icontext"><i class="icon text-success fa fa-truck"></i> Giao h??ng mi???n ph?? trong v??ng 1-2 tu???n</p>
</div>

	</main> <!-- col.// -->
	<aside class="col-md-3">
		<div class="card mb-3">
			<div class="card-body">
			<form>
				<div class="form-group">
					<label>B???n c?? M?? Gi???m Gi?? ch??a ?</label>
					<div class="input-group">
						<input type="text" class="form-control" name="" placeholder="M?? gi???m gi??">
						<span class="input-group-append"> 
							<button class="btn btn-primary">S??? D???ng</button>
						</span>
					</div>
				</div>
			</form>
			</div> <!-- card-body.// -->
		</div>  <!-- card .// -->
		<div class="card">
			<div class="card-body">
					<dl class="dlist-align">
					  <dt>T???ng H??a ????n:</dt>
					  <dd class="text-right  h5"><strong><fmt:formatNumber value = "${cart.total}"  type="number" maxIntegerDigits="30"/> vn??</strong></dd>
					</dl>
					<hr>
					<p class="text-center mb-3">
						<img src="resources/images/misc/payments.png" height="26">
					</p>
					
			</div> <!-- card-body.// -->
		</div>  <!-- card .// -->
	</aside> <!-- col.// -->
</div>

</div> <!-- container .//  -->
</section>
<!-- ========================= SECTION CONTENT END// ========================= -->

  </main>


<jsp:include page = "../share/footer.jsp"></jsp:include>
	
	
	
	
	
	