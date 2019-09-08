<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<style>

</style>

<div class="center_page">
	<section class="center_page">
		<div class="newcontent">
			<h5>최신 정보 슬라이드 제공</h5>
		</div>
		<div class="newchart">
			<h5>사용자 리뷰 기판 차트 제공</h5>
		</div>
		<div class="map">
			<h5>사용자 위치 주변 추천 장소 제공</h5>
		</div>
		<div class="row">
			<div class="col-xl-3 col-sm-6 mb-3">
				<div class="card text-white skycolor o-hidden h-100">
					<div class="card-body">
						<div class="card-body-icon">
							 	<i class="center_icon fas fa-film"></i>
						</div>
						<div class="mr-5">
						<ul class="card_list">
							<c:forEach var="mv" items="${mvlist}">
								<c:forEach var="ct" items="${cont}">
									<c:choose>
										<c:when test="${ct.id eq mv.contents}">
										<a href="postdetail.sh?id=${mv.id}"><li><span class="card_list_title">[${ct.title}]</span>
								${mv.title}	</li></a>						
										</c:when>
									</c:choose>
								</c:forEach>
							</c:forEach>
						</ul>
						</div>
					</div>
					<a class="card-footer clearfix small z-1"
						href="movie.sh"> <span class="float-left">더보기</span> <span
						class="float-right"> <i class="fas fa-angle-right"></i>
					</span>
					</a>
				</div>
			</div>
			<div class="col-xl-3 col-sm-6 mb-3">
				<div class="card text-white skycolor o-hidden h-100">
					<div class="card-body">
						<div class="card-body-icon">
						 <i class="center_icon fas fa-fw fa-table"></i>
						</div>
						<div class="mr-5">
						<ul class="card_list">
							<c:forEach var="pe" items="${pelist}">
								<c:forEach var="ct" items="${cont}">								
									<c:choose>
										<c:when test="${ct.id eq pe.contents}">
										<a href="postdetail.sh?id=${pe.id}"><li><span class="card_list_title">[${ct.title}]</span>
									${pe.title}</li></a>
										</c:when>
									</c:choose>
								</c:forEach>
							</c:forEach>
						</ul>
						</div>
					</div>
					<a class="card-footer  clearfix small z-1" href="pe.sh">
						<span class="float-left">더보기</span> <span
						class="float-right"> <i class="fas fa-angle-right"></i>
					</span>
					</a>
				</div>
			</div>
			<div class="col-xl-3 col-sm-6 mb-3">
				<div class="card  skycolor o-hidden h-100">
					<div class="card-body">
						<div class="card-body-icon">
							    <i class="center_icon fas fa-music"></i>
						</div>
						<div class="mr-5">
						<ul class="card_list">
							<c:forEach var="mu" items="${mulist}">
								<a href="music.sh"><li><span class="card_list_title">[${mu.title } - ${mu.img01}]</span>								
								${mu.text}</li></a>
							</c:forEach>
						</ul>
						</div>
					</div>
					<a class="card-footer  clearfix small z-1" href="music.sh">
						<span class="float-left">View Details</span> <span
						class="float-right"> <i class="fas fa-angle-right"></i>
					</span>
					</a>
				</div>
			</div>
			<div class="col-xl-3 col-sm-6 mb-3">
				<div class="card  skycolor o-hidden h-100">
					<div class="card-body">
						<div class="card-body-icon">
						  <i class="center_icon far fa-file-video"></i>
						</div>
						<div class="mr-5">
						<ul class="card_list">
							<c:forEach var="dra" items="${dralist}">
								<a href="drama.sh"><li><span class="card_list_title">[${dra.title}]</span>${dra.text}</li></a>								
							</c:forEach>
							</ul>
						</div>
					</div>
					<a class="card-footer  clearfix small z-1" href="drama.sh">
						<span class="float-left">View Details</span> <span
						class="float-right"> 
						<i class="fas fa-angle-right"></i>
					</span>
					</a>
				</div>
			</div>
		</div>
	</section>
</div>