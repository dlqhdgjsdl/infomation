<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<title>Insert title here</title>

<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<style >

.row{
	display: table-row;
}
body {
	font-family: 'Montserrat', sans-serif;
	color: #333;
	line-height: 1.6;
}
.mb-60 {
	margin-bottom: 60px;
}
.section-title p {
	font-size: 24px;
	font-family: Oleo Script;
	margin-bottom: 0px;
}
.section-title h4 {
	font-size: 40px;
	text-transform: capitalize;
	color: #FF5E18;
	position: relative;
	display: inline-block;
	padding-bottom: 25px;
}
.section-title h4::before {
	width: 80px;
	height: 1.5px;
	bottom: 0;
	left: 50%;
	margin-left: -40px;
}
.section-title h4::before, .section-title h4::after {
	position: absolute;
	content: "";
	background-color: #FF5E18;
}
#myTabContent {
	margin-top: 50px;
}
.menu_tab {
	width: 205px;
	margin: 0 auto;
	overflow:hidden;
}
.nav-tabs .nav-item {
	/* margin-bottom: -1px; */
	float:left;
	margin-right:49px;
	list-style:none;
}
.nav-item a {
	color: #333;
}
.menu_tab .nav-tabs .nav-item.show .nav-link, .nav-tabs .nav-link.active {
	color: white;
	background-color: #FF5E18;
	border-color: #FF5E18;
}
.single_menu_list {
	position: relative;
	padding-left: 190px;
	margin-bottom: 110px;
}

.single_menu_list img {
	max-width: 18%;
	position: absolute;
	left: 0px;
	top: 0;
	border: 1px solid #ddd;
	padding: 3px;
	border-radius: 50%;
	transition: .4s
}

.single_menu_list:hover img {
	border-radius: 0;
	transition: .4s
}

.single_menu_list h4 {
	font-size: 20px;
	border-bottom: 1px dashed #333;
	padding-bottom: 15px;
	margin-bottom: 10px;
}

.single_menu_list h4 span {
	float: right;
	font-weight: bold;
	color: #FF5E18;
	font-style: italic;
}
.row{
 display:gird;
}
</style>
</head>
<body>
	<section class="menu_list mt-60 mb-60">
	 <div class="container">
		<div class="row">
		   <div class="col-xl-12">
			  <div class="section-title text-center mb-60">
				 <p style="margin-left:39%">Famous for good food</p>
				 <h4 style="margin-left:41%">our menu</h4>
			  </div>
		   </div>
		</div>
		<div class="row">
		   <ul class="nav nav-tabs menu_tab" id="myTab" role="tablist">
			  <li class="nav-item">
				 <a class="nav-link" id="breakfast-tab" data-toggle="tab" href="#breakfast" role="tab" aria-selected="false">MainMenu</a>
			  </li>
			  <li class="nav-item" style="margin: 0;">
				 <a class="nav-link" id="lunch-tab" data-toggle="tab" href="#lunch" role="tab" aria-selected="false">SideMenu</a>
			  </li>
		   </ul>
		</div>
		<div class="row" >
		   <div class="tab-content col-xl-12" id="myTabContent">
			  <div class="tab-pane fade" id="breakfast" role="tabpanel" aria-labelledby="breakfast-tab">
				 <div class="row">
					<div class="col-md-6">
					   <div class="single_menu_list">
						  <img src="http://infinityflamesoft.com/html/restarunt-preview/assets/img/menu/menu-5.jpg" alt="">
						  <div class="menu_content">
							 <h4>메뉴 음식 이름<span>음식 가격</span></h4>
							 <p>음식설명</p>
						  </div>
					   </div>
					   <div class="single_menu_list">
						  <img src="http://infinityflamesoft.com/html/restarunt-preview/assets/img/menu/menu-2.jpg" alt="">
						  <div class="menu_content">
							 <h4>Chicken Fried Salad  <span>$45</span></h4>
							 <p>Aperiam tempore sit,perferendis numquam repudiandae porro voluptate dicta saepe facilis.</p>
						  </div>
					   </div>
					   <div class="single_menu_list">
						  <img src="http://infinityflamesoft.com/html/restarunt-preview/assets/img/menu/menu-3.jpg" alt="">
						  <div class="menu_content">
							 <h4>Chicken Fried Salad  <span>$45</span></h4>
							 <p>Aperiam tempore sit,perferendis numquam repudiandae porro voluptate dicta saepe facilis.</p>
						  </div>
					   </div>
					</div>
					<div class="col-md-6">
					   <div class="single_menu_list">
						  <img src="http://infinityflamesoft.com/html/restarunt-preview/assets/img/menu/menu-4.jpg" alt="">
						  <div class="menu_content">
							 <h4>Chicken Fried Salad  <span>$45</span></h4>
							 <p>Aperiam tempore sit,perferendis numquam repudiandae porro voluptate dicta saepe facilis.</p>
						  </div>
					   </div>
					   <div class="single_menu_list">
						  <img src="http://infinityflamesoft.com/html/restarunt-preview/assets/img/menu/menu-5.jpg" alt="">
						  <div class="menu_content">
							 <h4>Chicken Fried Salad  <span>$45</span></h4>
							 <p>Aperiam tempore sit,perferendis numquam repudiandae porro voluptate dicta saepe facilis.</p>
						  </div>
					   </div>
					   <div class="single_menu_list">
						  <img src="http://infinityflamesoft.com/html/restarunt-preview/assets/img/menu/menu-6.jpg" alt="">
						  <div class="menu_content">
							 <h4>Chicken Fried Salad  <span>$45</span></h4>
							 <p>Aperiam tempore sit,perferendis numquam repudiandae porro voluptate dicta saepe facilis.</p>
						  </div>
					   </div>
					</div>
				 </div>
			  </div>
			  <div class="tab-pane fade" id="lunch" role="tabpanel" aria-labelledby="lunch-tab">
				 <div class="row">
					<div class="col-md-6">
					   <div class="single_menu_list">
						  <img src="http://infinityflamesoft.com/html/restarunt-preview/assets/img/menu/menu-2.jpg" alt="">
						  <div class="menu_content">
							 <h4>Chicken Fried Salad  <span>$45</span></h4>
							 <p>Aperiam tempore sit,perferendis numquam repudiandae porro voluptate dicta saepe facilis.</p>
						  </div>
					   </div>
					   <div class="single_menu_list">
						  <img src="http://infinityflamesoft.com/html/restarunt-preview/assets/img/menu/menu-4.jpg" alt="">
						  <div class="menu_content">
							 <h4>Chicken Fried Salad  <span>$45</span></h4>
							 <p>Aperiam tempore sit,perferendis numquam repudiandae porro voluptate dicta saepe facilis.</p>
						  </div>
					   </div>
					   <div class="single_menu_list">
						  <img src="http://infinityflamesoft.com/html/restarunt-preview/assets/img/menu/menu-2.jpg" alt="">
						  <div class="menu_content">
							 <h4>Chicken Fried Salad  <span>$45</span></h4>
							 <p>Aperiam tempore sit,perferendis numquam repudiandae porro voluptate dicta saepe facilis.</p>
						  </div>
					   </div>
					</div>
					<div class="col-md-6">
					   <div class="single_menu_list">
						  <img src="http://infinityflamesoft.com/html/restarunt-preview/assets/img/menu/menu-5.jpg" alt="">
						  <div class="menu_content">
							 <h4>Chicken Fried Salad  <span>$45</span></h4>
							 <p>Aperiam tempore sit,perferendis numquam repudiandae porro voluptate dicta saepe facilis.</p>
						  </div>
					   </div>
					   <div class="single_menu_list">
						  <img src="http://infinityflamesoft.com/html/restarunt-preview/assets/img/menu/menu-3.jpg" alt="">
						  <div class="menu_content">
							 <h4>Chicken Fried Salad  <span>$45</span></h4>
							 <p>Aperiam tempore sit,perferendis numquam repudiandae porro voluptate dicta saepe facilis.</p>
						  </div>
					   </div>
					   <div class="single_menu_list">
						  <img src="http://infinityflamesoft.com/html/restarunt-preview/assets/img/menu/menu-4.jpg" alt="">
						  <div class="menu_content">
							 <h4>Chicken Fried Salad  <span>$45</span></h4>
							 <p>Aperiam tempore sit,perferendis numquam repudiandae porro voluptate dicta saepe facilis.</p>
						  </div>
					   </div>
					</div>
				 </div>
			  </div>
			  <div class="tab-pane fade active show" id="dinner" role="tabpanel" aria-labelledby="dinner-tab">
				 <div class="row">
					<div class="col-md-6">
					   <div class="single_menu_list">
						  <img src="http://infinityflamesoft.com/html/restarunt-preview/assets/img/menu/menu-1.jpg" alt="">
						  <div class="menu_content">
							 <h4>Chicken Fried Salad  <span>$45</span></h4>
							 <p>Aperiam tempore sit,perferendis numquam repudiandae porro voluptate dicta saepe facilis.</p>
						  </div>
					   </div>
					   <div class="single_menu_list">
						  <img src="http://infinityflamesoft.com/html/restarunt-preview/assets/img/menu/menu-4.jpg" alt="">
						  <div class="menu_content">
							 <h4>Chicken Fried Salad  <span>$45</span></h4>
							 <p>Aperiam tempore sit,perferendis numquam repudiandae porro voluptate dicta saepe facilis.</p>
						  </div>
					   </div>
					   <div class="single_menu_list">
						  <img src="http://infinityflamesoft.com/html/restarunt-preview/assets/img/menu/menu-1.jpg" alt="">
						  <div class="menu_content">
							 <h4>Chicken Fried Salad  <span>$45</span></h4>
							 <p>Aperiam tempore sit,perferendis numquam repudiandae porro voluptate dicta saepe facilis.</p>
						  </div>
					   </div>
					</div>
					<div class="col-md-6">
					   <div class="single_menu_list">
						  <img src="http://infinityflamesoft.com/html/restarunt-preview/assets/img/menu/menu-3.jpg" alt="">
						  <div class="menu_content">
							 <h4>Chicken Fried Salad  <span>$45</span></h4>
							 <p>Aperiam tempore sit,perferendis numquam repudiandae porro voluptate dicta saepe facilis.</p>
						  </div>
					   </div>
					   <div class="single_menu_list">
						  <img src="http://infinityflamesoft.com/html/restarunt-preview/assets/img/menu/menu-2.jpg" alt="">
						  <div class="menu_content">
							 <h4>Chicken Fried Salad  <span>$45</span></h4>
							 <p>Aperiam tempore sit,perferendis numquam repudiandae porro voluptate dicta saepe facilis.</p>
						  </div>
					   </div>
					   <div class="single_menu_list">
						  <img src="http://infinityflamesoft.com/html/restarunt-preview/assets/img/menu/menu-3.jpg" alt="">
						  <div class="menu_content">
							 <h4>Chicken Fried Salad  <span>$45</span></h4>
							 <p>Aperiam tempore sit,perferendis numquam repudiandae porro voluptate dicta saepe facilis.</p>
						  </div>
					   </div>
					</div>
				 </div>
			  </div>
		   </div>
		</div>
		<div class="row">
		   <div class="col-xl-12 text-center">
			  <div class="box_btn">
				 <a href="#">view more</a>
			  </div>
		   </div>
		</div>
	 </div>
  </section>
</body>
</html>