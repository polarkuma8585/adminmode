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
			<div class="row">				
				<div class="col-md-2 ml-3">
					<nav aria-label="breadcrumb" role="navigation">
					  <ol class="breadcrumb">
		    			<li class="breadcrumb-item"><a href="adminMain.jsp">관리자 홈</a></li>
		    			<li class="breadcrumb-item active" aria-current="page">사용자 관리</li>		    			
		  			 </ol>
					</nav>
				</div>
			</div>
		</div>
		<div class="col-md-12">
			
			<div class="col-md-12">
				<form id="frm" name="frm" class="form-horizontal">
				<div class="card">
					<div class="card-header">
						
						<h6 class="card-title">
							사용자 관리
						</h6>
						<hr>
					</div>
					<div class="card-body"> <!-- 첫번째 카드 바디 시작 -->
						<div class="row">
							<div class=" col-md-1 pt-3 row-st ">검색어</div> <!-- 첫줄끝 -->
							<div class="col-md-2 row-st" style="padding-top:10px">
								<input type="text" class="form-control " value="사용자ID" readonly>
							</div> 
							<div class="col-md-6 row-st" style="padding-top:10px">
								<input type="text" class="form-control ">
							</div> 
							
							<div class="col-md-1 pt-1 row-st">
								<div class="form-group">
								<button type="button" class="btn btn-primary btn-sm">+</button>
								<button type="button" class="btn btn-primary btn-sm">-</button>
								</div>
							</div>
							
						</div> <!-- 첫줄끝 -->
						<div class="row ">							
							<div class="col-md-1 row-st" style="padding-top:10px">사용자 상태</div>
							<div class="col-md-1 row-st">
								<div class="custom-control custom-checkbox">
								  <input type="checkbox" class="custom-control-input" id="customCheck1">
								  <label class="custom-control-label" for="customCheck1">전체</label>
								</div>
							</div>
							<div class="col-md-1 row-st">
								<div class="custom-control custom-checkbox">
								  <input type="checkbox" class="custom-control-input" id="customCheck1">
								  <label class="custom-control-label" for="customCheck1">일반</label>
								</div>
							</div>
							<div class="col-md-1 row-st">
								<div class="custom-control custom-checkbox">
								  <input type="checkbox" class="custom-control-input" id="customCheck1">
								  <label class="custom-control-label" for="customCheck1">휴면</label>
								</div>
							</div>
							<div class="col-md-1 row-st">
								<div class="custom-control custom-checkbox">
								  <input type="checkbox" class="custom-control-input" id="customCheck1">
								  <label class="custom-control-label" for="customCheck1">완료</label>
								</div>
							</div>
							<div class="col-md-1 row-st">
								<div class="custom-control custom-checkbox">
								  <input type="checkbox" class="custom-control-input" id="customCheck1">
								  <label class="custom-control-label" for="customCheck1">징계</label>
								</div>
							</div>
							<div class="col-md-1 pt-2 row-st">주문상품</div>
							<div class="col-md-2 row-st" style="padding-top:5px">
								<input type="text" class="form-control">
							</div>
							<div class="col-md-1 row-st" >
								<button type="button" class="btn btn-primary btn-sm">상품 검색</button>
							</div>
						</div>	<!-- 둘째라인 끝 -->
						<div class="row ">
							<div class="col-md-1 pt-2 row-st">구매금액 / 건수</div>
							<div class="col-md-2 row-st">							
								<select class="custom-select">									
									<option selected>전체</option>
									<option>구매금액</option>
									<option>건수</option>										
								</select>								
							</div>
							<div class="col-md-3"></div>
							<div class="col-md-1 pt-2 row-st">가입일 / 생일</div>
							<div class="col-md-2 row-st">
								<select class="custom-select">
									<option selected>전체</option>
									<option>가입일</option>
									<option>생일</option>
								</select>
							</div>
							<div class="col-md-3"></div>
						</div>
						<div class="row mt-2">
							<div class="col-md-1 pt-2 row-st">주문일</div>
							<div class="col-md-2 row-st">
								<!-- <input type="text" class="form-con	trol" id="startDate" style="width:150px"> -->								
								<div class="input-group date" >								  
								    <input type="text" class="form-control" id="startDate" placeholder="시작일">
								    <div class="input-group-append">								    	
								    	<div class="input-group-text">
								    		<label for="startDate" class="fa fa-calendar" style="cursor:pointer;">
								    			<!-- <i class="fa fa-calendar"></i> -->
								    		</label>
								    	</div>								    	
								 	</div>								 	
							    </div>
							</div>
							<span class="pt-2">~</span>
							<div class="col-md-2 row-st">
								<!-- <input type="text" class="form-control" id="endDate" style="width:150px"> -->
								<div class="input-group date" >								  
								    <input type="text" class="form-control" id="endDate" placeholder="종료일">
								    <div class="input-group-append">								    	
								    	<div class="input-group-text">
								    		<label for="endDate" class="fa fa-calendar" style="cursor:pointer;">
								    			<!-- <i class="fa fa-calendar"></i> -->
								    		</label>
								    	</div>								    	
								 	</div>								 	
							    </div>
							</div>
							
							<div class="col-md-1 pt-2 row-st" style="margin-left:7.8%">주문시간</div>
							<div class="col-md-2 row-st">
								<select class="custom-select ">
												<option selected>시간 선택</option>
												<option>13:00</option>
												<option>14:00</option>
												<option>15:00</option>
												<option>16:00</option>
												<option>17:00</option>
												<option>18:00</option>										
												<option>19:00</option>
												<option>20:00</option>
								</select>
							</div>
						</div>
						<div class="row ">
							<div class="col-md-1 pt-3 row-st">나이대</div>
							<div class="col-md-1 row-st">
								<div class="custom-control custom-checkbox">
								  <input type="checkbox" class="custom-control-input" id="ageAll">
								  <label class="custom-control-label" for="ageAll">전체</label>
								</div>
							</div>
							<div class="col-md-1 row-st">
								<div class="custom-control custom-checkbox">
								  <input type="checkbox" class="custom-control-input" id="age10">
								  <label class="custom-control-label" for="age10">10대</label>
								</div>

							</div>
							<div class="col-md-1 row-st">
								<div class="custom-control custom-checkbox">
								  <input type="checkbox" class="custom-control-input" id="age20">
								  <label class="custom-control-label" for="age20">20대</label>
								</div>
							</div>
							<div class="col-md-1 row-st">
								<div class="custom-control custom-checkbox">
								  <input type="checkbox" class="custom-control-input" id="age30">
								  <label class="custom-control-label" for="age30">30대</label>
								</div>
							</div>
							<div class="col-md-1 row-st">
								<div class="custom-control custom-checkbox">
								  <input type="checkbox" class="custom-control-input" id="age40">
								  <label class="custom-control-label" for="age40">40대</label>
								</div>
							</div>
							<div class="col-md-1 row-st">
								<div class="custom-control custom-checkbox">
								  <input type="checkbox" class="custom-control-input" id="age50">
								  <label class="custom-control-label" for=age50>50대</label>
								</div>
							</div>
							<div class="col-md-1 row-st">
								<div class="custom-control custom-checkbox">
								  <input type="checkbox" class="custom-control-input" id="over50">
								  <label class="custom-control-label" for="over50">50대 이상</label>
								</div>
							</div>
						</div><!-- 넷째라인 끝 -->
					</div>						 
					<div class="card-footer">						
					<hr>
						<div class="col-md-12 text-center">
								<button type="submit" class="btn btn-primary">검색</button>&nbsp;
								<button type="reset" class="btn btn-primary">취소</button>
						</div>
					</div>
				</div>
				</form>			
			</div>
		</div>
		<div class="col-md-12">
			<div class="col-md-12">
				<div class="card">
					<div class="card-header">
						<div class="row">
							<div class="col-1 row-st text-center">
								<h6 class="h6">[총 n 건]</h6>								
							</div>
							<div class="col-7">								
							</div>
							<div class="col-2 row-st">
								<select class="custom-select">
									<option selected>등록일순</option>
									<option>등록일 역순</option>
									<option>주문번호순</option>
									<option>상품명 순</option>
									<option>상품ID순</option>
								</select>								
							</div>
							<div class="col-2 row-st">
								<select class="custom-select">
									<option selected>10개씩보기</option>
									<option>20개씩보기</option>
									<option>30개씩보기</option>															
								</select>									
							</div>
						</div>
						<div class="row">
							<div class="col-md-2 row-st text-center">
								<select class="custom-select">
									<option selected>상태 변경</option>
									<option>일반</option>
									<option>징계</option>
									<option>휴면</option>															
									<option>탈퇴</option>
								</select>
							</div>
							
							<div class="col-md-2 row-st">
								<button type="button" class="btn btn-danger btn-sm">적용</button>
							</div>
							<div class="col-md-7 row-st"></div>
							<div class="col-md-1 row-st">
								<button type="button" class="btn btn-success btn-sm">엑셀다운로드</button>
							</div>
						</div>
					</div>
					
					<div class="card-body">
					<hr>
						<div class="table-responsive" style="overflow:hidden;">
		                  <table class="table table-hover table-condensed">
		                    <thead class="text-primary">
		                      <th>		                      	
								  <div class="custom-control custom-checkbox">
									  <input type="checkbox" class="custom-control-input" id="resultChkAll">
									  <label class="custom-control-label" for="resultChkAll"></label>
								  </div>							
		                      </th>
		                      <th>
		                        	주문일
		                      </th>
		                      <th>
		                        	주문번호
		                      </th>
		                      <th>
		                        	구매수량
		                      </th>
		                      <th>
		                        	구매자 ID
		                      </th>
		                      <th>
		                      		상품명
		                      </th>
		                      <th>
		                      		결제 금액
		                      </th>
		                      <th>
		                      		결제 수단
		                      </th>
		                      <th>
		                      		결제 상태
		                      </th>
		                    </thead>
		                    <tbody>
		                     <tr>
		                     </tr>		              
		                    </tbody>
		                  </table>
                		</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>	
	 $( "#startDate" ).datepicker({
	    	dateFormat: 'yyyy-mm-dd'
	    	,startDate: '-10d'
	    	,uiLibrary: 'bootstrap4'
	    	/* ,showOn: "both"  
	        ,buttonImage: "../assets/icon/calendar.png"
	        ,buttonImageOnly: true  */
	        ,language:"ko"
	        ,todayHighlight : true
	        ,autoclose: true
	    });
	    
	    $( "#endDate" ).datepicker({
	    	dateFormat: 'yyyy-mm-dd'
	    	,startDate: '-10d'
	    	,uiLibrary: 'bootstrap4'
	    	,showOn: "both"  
	        ,buttonImage: "../assets/icon/calendar.png" 
	        ,buttonImageOnly: true 
	        ,language:"ko"
	        ,todayHighlight : true
	        ,autoclose: true
	    });			    	    	  
	</script>
</body>
</html>