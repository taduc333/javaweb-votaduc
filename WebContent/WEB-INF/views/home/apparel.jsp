<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<section class="padding-bottom">
<header class="section-heading heading-line">
	<h4 class="title-section text-uppercase">Trang Phục</h4>
</header>

<div class="card card-home-category">
<div class="row no-gutters">
	<div class="col-md-3">
	
	<div class="home-category-banner bg-light-orange">
		<h5 class="title">Quần áo xu hướng tốt nhất chỉ dành cho mùa hè</h5>
		<p>Hướng dẫn mua sắm cho các kiểu thịnh hành. </p>
		<a href="#" class="btn btn-outline-primary rounded-pill">Xem ngay</a>
		<img src="resources/images/items/2.jpg" class="img-bg">
	</div>

	</div> <!-- col.// -->
	<div class="col-md-9">

<ul class="row no-gutters bordered-cols">
<c:forEach var="product" items="${dealsOfFeatured}">
	
	<li class="col-6 col-lg-3 col-md-4">
	<a href="product?id=${product.getId()}" class="item"> 
		<div class="card-body">
			 	<h6 class="title">${product.getTitle()}</h6>
			<img class="img-sm float-right" src="resources/images/${product.getImage()}"> 
			<p class="text-muted"><i class="fa fa-map-marker-alt"></i>${product.getAddress()}</p>
		</div>
	</a>
	</li>
	</c:forEach>
</ul>

	</div> <!-- col.// -->
</div> <!-- row.// -->
</div> <!-- card.// -->
</section>
