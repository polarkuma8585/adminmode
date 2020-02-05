<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="row">
		<div class="col-md-12">
			<form id="frm" name="frm">
			<div class="card">
				<div class="card-header">
					<h6 class="card-title">상품 목록 검색</h6>
				</div>
				<div class="card-body">
					<div class="row"> <!-- 첫라인 시작 -->
						<div class="col-md-1 pr-1">
							<div class="form-group">
								<label>상품 종류</label>
								<select class="form-control">
									<option selected>상호명</option>
									<option>상호명</option>
									<option>상호명</option>
									<option>상호명</option>
								</select>
							</div>
						</div> 
						<div class="col-md-9 px-1">
							<div class="form-group">
								<label>상품명</label>
								<input type="text" class="form-control">
							</div>
						</div>
						<div class="col-md-1 pl-1" >
							<div class="form-group">
								<label>상품 추가 삭제</label>
									<button type="button" class="btn btn-primary btn-sm">+</button>
									<button type="button" class="btn btn-primary btn-sm">-</button>
							</div>
						</div>
						
					</div> <!-- 첫째라인 끝 -->
					<div class="row"> <!-- 둘째라인 시작 -->
						<div class="col-md-5 pr-1" >
							<div class="form-group">
								<label>검색 기간</label><br>
									<button type="button" class="btn btn-primary btn-sm">오늘</button>
									<button type="button" class="btn btn-primary btn-sm">1일</button>
									<button type="button" class="btn btn-primary btn-sm">3일</button>
									<button type="button" class="btn btn-primary btn-sm">7일</button>
									<button type="button" class="btn btn-primary btn-sm">1개월</button>
									<button type="button" class="btn btn-primary btn-sm">3개월</button>
									<button type="button" class="btn btn-primary btn-sm">6개월</button>
									<button type="button" class="btn btn-primary btn-sm">1년</button>
									<button type="button" class="btn btn-primary btn-sm">전체</button>
							</div>
						</div>
						<div class="col-md-1">
							<div class="form-group">
								<label>시작일</label>
								<input type="text" class="form-control" readonly>
							</div>
						</div>
						<div class="col-md-1">
							
						</div>
						<div class="col-md-1">
							<div class="form-group">
								<label>종료일</label>
								<input type="text" class="form-control" readonly>
							</div>
						</div>
						<div class="col-md-4">
						</div>						
					</div> <!-- 둘째라인 끝 -->
					<div class="row">
						<div class="col-md-2">
							<label>판매 시작 시간</label>
							<select class="form-control" style="width:150px">
								<option selected>시간 선택</option>
								<option></option>
								<option></option>
								<option></option>
								<option></option>
								
							</select>
						</div>							
						<div class="col-md-2">
							<label>판매 종료 시간</label>
							<select class="form-control" style="width:150px">
								<option selected>시간 선택</option>
								<option></option>
								<option></option>
								<option></option>
								<option></option>
							</select>
						</div>
					</div> <!-- 셋째라인 끝 -->
					
					<div class="row">
						<div class="col-md-12">
														
						</div>
					</div> <!-- 넷째라인 끝 -->
					<div class="row">aa</div>
					<div class="row">aa</div> <!-- 버튼 -->
				</div>
			</div>
			</form>
		</div>
		<div class="col-md-12">
			<div class="card">
				<div class="card-header">
				</div>
				<div class="card-body">
				</div>
			</div>
		</div>
	</div>
</body>
</html>