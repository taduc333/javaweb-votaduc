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
<style>

/*****************globals*************/

img {
max-height:550px;
  max-width: 60%;
   display: block; margin-left: auto; margin-right: auto;
 }
  
.preview-thumbnail.nav-tabs {
  border: none;
  margin-top: 15px; }
  .preview-thumbnail.nav-tabs li {
    width: 20%;
    margin-right: 5%; }
    
    .preview-thumbnail.nav-tabs li:last-of-type {
      margin-right: 0; }

.tab-content {
  overflow: hidden; }
  .tab-content img {
    width: 100%;
    -webkit-animation-name: opacity;
            animation-name: opacity;
    -webkit-animation-duration: .3s;
            animation-duration: .3s; }

@-webkit-keyframes opacity {
  0% {
    opacity: 0;
    -webkit-transform: scale(3);
            transform: scale(3); }
  100% {
    opacity: 1;
    -webkit-transform: scale(1);
            transform: scale(1); } }

@keyframes opacity {
  0% {
    opacity: 0;
    -webkit-transform: scale(3);
            transform: scale(3); }
  100% {
    opacity: 1;
    -webkit-transform: scale(1);
            transform: scale(1); } }

/*# sourceMappingURL=style.css.map */
</style>

</head>
<body>

<b class="screen-overlay"></b>
<!-- ========================= HEADER========================= -->
<jsp:include page ="../share/header.jsp"></jsp:include>
<!-- =========================END  HEADER========================= -->
<div class="container">
<!-- ========================= SECTION MAIN  ========================= -->
<!-- ========================= SECTION MAIN END// ========================= -->

<!-- =============== SECTION DEAL =============== -->

<!-- =============== SECTION DEAL // END =============== -->

<!-- =============== SECTION APPAREL =============== -->

<!-- =============== SECTION APPAREL END =============== -->

<!-- =============== SECTION ELECTRONICS =============== -->

<!-- =============== SECTION ELECTRONICS END =============== -->

<!-- =============== SECTION product-detail =============== -->

<section class="section-content bg-white padding-y">
<form method="POST" action="CartController">
<div class="container">
<!-- ============================ ITEM DETAIL ======================== -->
<div class="row">		
<aside class="col-md-6">
<div class="card">
<article class="gallery-wrap">
					<div class="preview ">
						<div class="preview-pic tab-content">
						  <div class="tab-pane active" id="pic-1"><img src="resources/images/${product.getImage()}" /></div>
						  <div class="tab-pane" id="pic-2"><img src="resources/images/${product.getImage2()}" /></div>
						  <div class="tab-pane" id="pic-3"><img src="resources/images/${product.getImage3()}" /></div>
						  <div class="tab-pane" id="pic-4"><img src="resources/images/${product.getImage4()}" /></div>
						  
						</div>
						<ul class="preview-thumbnail thumbs-wrap nav nav-tabs">
						  <li class="active"><a data-target="#pic-1" data-toggle="tab"><img src="resources/images/${product.getImage()}" />
						   <input type="hidden" name="image" value="${product.getImage()}"></a></li>
						  <li><a data-target="#pic-2" data-toggle="tab"><img src="resources/images/${product.getImage2()}" /></a></li>
						  <li><a data-target="#pic-3" data-toggle="tab"><img src="resources/images/${product.getImage3()}" /></a></li>
						  <li><a data-target="#pic-4" data-toggle="tab"><img src="resources/images/${product.getImage4()}" /></a></li>
						  
						</ul>
					</div> 
</article> <!-- gallery-wrap .end// -->
</div> <!-- card.// -->
</aside>
		<main class="col-md-6">
<article class="product-info-aside">

<h2 class="title mt-3">${product.getTitle()}
<input type="hidden" name="title" value="${product.getTitle()}"><br/>
</h2>

<div class="rating-wrap my-3">
	<ul class="rating-stars">
		<li style="width:80%" class="stars-active"> 
			<i class="fa fa-star"></i> <i class="fa fa-star"></i> 
			<i class="fa fa-star"></i> <i class="fa fa-star"></i> 
			<i class="fa fa-star"></i> 
		</li>
		<li>
			<i class="fa fa-star"></i> <i class="fa fa-star"></i> 
			<i class="fa fa-star"></i> <i class="fa fa-star"></i> 
			<i class="fa fa-star"></i> 
		</li>
	</ul>
	<small class="label-rating text-muted">132 reviews</small>
	<small class="label-rating text-success"> <i class="fa fa-clipboard-check"></i>${product.getSold()} orders </small>
</div> <!-- rating-wrap.// -->

<div class="mb-3"> 
	<var class="price h4">Gi?? Ti???n:  <fmt:formatNumber value="${product.getPrice()}" type="number" maxIntegerDigits="14"/>
	<input type="hidden" name="price" value="${product.getPrice()}">
	</var> 
	<span class="text-muted">VN?? </span> 
</div> <!-- price-detail-wrap .// -->

<p> ${product.getDetail()}
<input type="hidden" name="description" value="0"><br/> </p>


	<div class="form-row  mt-4">

		<div class="form-group col-md flex-grow-0">
			<div class="input-group mb-3 input-spinner">
			  <div class="input-group-prepend">
			    <button onclick="this.parentNode.querySelector('input[type=number]').stepUp()" class="btn btn-light" type="button" id="button-plus"> + </button>
			   <input  class="quantity" min="0" name="quantity" value="1" type="number">
			    <button onclick="this.parentNode.querySelector('input[type=number]').stepDown()" class="btn btn-light" type="button" id="button-minus"> &minus; </button>
			  </div>
			</div>
		</div> <!-- col.// -->
		</div>
		<div class="form-group col-md">
		
		<input class="btn  btn-primary" type="submit" name="action" value="Th??m V??o Gi??? H??ng"> 

			<a href="#" class="btn btn-light">
        		<i class="fas fa-envelope"></i> <span class="text">Li??n h??? v???i nh?? cung c???p</span> 
			</a>
		
		</div> <!-- col.// -->
		
	

</article> <!-- product-info-aside .// -->
		</main> <!-- col.// -->
	
					
	</div> <!-- row.// -->

<!-- ================ ITEM DETAIL END .// ================= -->


</div> <!-- container .//  -->
</form>
</section>

<!-- =============== SECTION product-detail  .//END =============== -->
<!-- ========================= SECTION  ========================= -->
<section class="section-name padding-y bg">
<div class="container">

<div class="row">
	<div class="col-md-8">
		<h5 class="title-description">M?? T??? S???n Ph???m</h5>
		<p>
			${product.getDescription()}
		</p>
		<ul class="list-check">
		<li>Ch???t li???u:B???n b??, ch???c ch???n</li>
		<li>????? an to??n: T???t</li>
		<li>Kh??? khu???n</li>
		<li>?????i tr??? trong 7 ng??y</li>
		<li>Cam k???t ?????c quy???n</li>
		</ul>

	</div> <!-- col.// -->
	
	<aside class="col-md-4">

		<div class="box">

    <h5 class="title-description">Video</h5>
      

    <article class="media mb-3">
      <a href="#"><img class="img-sm mr-3" src="resources/images/posts/3.jpg"></a>
      <div class="media-body">
        <h6 class="mt-0"><a href="#">9 T??P NG???N PH???I THU???C N???M L??NG </a></h6>
        <p class="mb-2"> N???u ngh?? r???ng c?? v???t m???i ch??nh l?? th??? quan tr???ng nh???t ????? b???n ch??i ????a c??ng m??u s???c ????? ??em l???i ??i???m nh???n cho...  </p>
      </div>
    </article>

    <article class="media mb-3">
      <a href="#"><img class="img-sm mr-3" src="resources/images/posts/2.jpg"></a>
      <div class="media-body">
        <h6 class="mt-0"><a href="#"> NGUY??N T???C PH???I ?????</a></h6>
        <p class="mb-2"> Ngo??i vi???c c???n tu??n th??? c??c quy t???c th??ng th?????ng ??n m???c trong v??n ph??ng, b???n v???n ph???i ch?? ?? ?????n v??n... </p>
      </div>
    </article>

    <article class="media mb-3">
      <a href="#"><img class="img-sm mr-3" src="resources/images/posts/1.jpg"></a>
      <div class="media-body">
        <h6 class="mt-0"><a href="#">Gi???i m?? tips hay khi ph???i ?????</a></h6>
        <p class="mb-2"> M???t trong nh???ng c??ch ????? ch??ng v?? n??ng th??? hi???n t??nh c???m v?? ???m???i quan h?????? c???a nhau d?????i ??nh nh??n ... </p>
      </div>
    </article>


		
	</div> <!-- box.// -->
	</aside> <!-- col.// -->
</div> <!-- row.// -->

</div> <!-- container .//  -->
</section>
<!-- ========================= SECTION  ========================= -->

<!-- ========================= SECTION test  ========================= -->

<!-- ========================= SECTION test end ========================= -->

<!-- =============== SECTION RECOMMENDED ITEMS =============== -->

<section  class="padding-bottom-sm">

<header class="section-heading heading-line">
	<h4 class="title-section text-uppercase">C??c s???n ph???m C??ng lo???i</h4>
</header>

<div class="row row-sm">
<c:forEach var="product" items="${Hotnew}">

	<div class="col-xl-2 col-lg-3 col-md-4 col-6">
		<div class="card card-sm card-product-grid">
			<a href="#" class="img-wrap"> <img src="resources/images/${product.getImage()}"> </a>
			<figcaption class="info-wrap">
				<a href="product?id=${product.getId()}" class="title">${product.getTitle()}</a>
				<div class="price mt-1"><fmt:formatNumber value="${product.getPrice()}" type="number" maxIntegerDigits="14"/> vn??</div> <!-- price-wrap.// -->
			</figcaption>
		</div>
	</div> <!-- col.// -->
</c:forEach>

</div> <!-- row.// -->
</section>
<!-- =============== SECTION RECOMMENDED ITEMS .//END =============== -->


<!-- =============== SECTION TRADE SERVICES =============== -->

<!-- =============== SECTION TRADE SERVICES .//END =============== -->
  

<!-- =============== SECTION REGION =============== -->

<!-- =============== SECTION CHOOSE REGION .//END =============== -->
</div>
<!-- container end.// -->

<!-- ========================= SECTION SUBSCRIBE  ========================= -->
<jsp:include page ="../home/suprise.jsp"></jsp:include>
<!-- ========================= SECTION SUBSCRIBE END// ========================= -->


<!-- ========================= FOOTER ========================= -->
<jsp:include page ="../share/footer.jsp"></jsp:include>
<!-- ========================= FOOTER END // ========================= -->

<script >

</body>
</html>