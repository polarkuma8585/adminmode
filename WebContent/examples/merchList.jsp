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
		    			<li class="breadcrumb-item active" aria-current="page">상품 목록 관리</li>		    			
		  			 </ol>
					</nav>
				</div>
			</div>
		</div>
		<div class="col-md-12">
			<div class="col-md-12">
				<form id="frm" name="frm" method="post" action="">
				<div class="card" id="card1-cell">
					<div class="card-header">
						<h6 class="card-title">
							상품 목록 검색
						</h6>
						<hr>
					</div>
					<div class="card-body"> <!-- 첫번째 카드 바디 시작 -->
						<div class="row ">
							<div class="col-md-1 pt-3 row-st">검색어</div> 
							<div class="col-md-2 pt-2 row-st">
								<select class="custom-select row-st" name="category1"> 
									<option value="goods_name" selected >상품명</option>
									<option value="goods_id">상품번호</option>
									<option value="order_id">주문번호</option>
									<option value="sle_id">판매번호</option>
								</select>
							</div> 
							<div class="col-md-6 ml-2 row-st" style="padding-top:10px">
								<input type="text" class="form-control" id="search_word" name="search_word">
							</div> 
							
							<div class="col-md-1 pt-1 row-st">
								<div class="form-group">
								<button type="button" class="btn btn-primary btn-sm">+</button>
								<button type="button" class="btn btn-primary btn-sm">-</button>
								</div>
							</div>
							
						</div> <!-- 첫줄끝 -->
						<div class="row ">
							<div class="col-md-1 row-st" style="padding-top:15px">검색기간</div>
							<div class="col-md-4 pt-1 row-st" >
								<button type="button" class="btn btn-primary btn-sm">오늘</button>											
											<button type="button" class="btn btn-primary btn-sm" id="t_day" name="t_day">3일</button>
											<button type="button" class="btn btn-primary btn-sm" id="s_day" name="s_day">7일</button>
											<button type="button" class="btn btn-primary btn-sm" id="o_mon" name="o_mon">1개월</button>
											<button type="button" class="btn btn-primary btn-sm" id="t_mon" name="t_mon">3개월</button>
											<button type="button" class="btn btn-primary btn-sm" id="s_mon" name="s_mon">6개월</button>
											<button type="button" class="btn btn-primary btn-sm" id="o_yr" name="o_yr">1년</button>																					
											<button type="button" class="btn btn-primary btn-sm" id="d_all" name="all">전체</button>
							</div>
							<!-- datepicker -->
							<div class="col-md-2 row-st" style="padding-top:8px"> 						
																
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
							<span class="pt-3">
							 ~
							</span>
							<!-- datepicker -->
							<!-- <div class="col-md-1 row-st">~</div> -->
							<div class="col-md-2 row-st" style="padding-top:8px"> 
								
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
						</div>	<!-- 둘째라인 끝 -->
						<div class="row ">
							<div class="col-md-1 pt-2 row-st">등록시간</div>
							<div class="col-md-2 row-st">
								<select class="custom-select" id="rTime" name="rTime">
											<option selected>시간 선택</option>
											<option value="13:00">13:00</option>
											<option value="14:00">14:00</option>
											<option value="15:00">15:00</option>
											<option value="16:00">16:00</option>
											<option value="17:00">17:00</option>
											<option value="18:00">18:00</option>										
								</select>
							</div>
							<div class="col-md-3 row-st"></div>
							<div class="col-md-1 pt-2 row-st" >판매종료시간</div>
							<div class="col-md-2 ml-2 row-st">
								<select class="custom-select" id="eTime" name="eTime">
										<option selected>시간 선택</option>
										<option></option>
										<option></option>
										<option></option>
										<option></option>
								</select>
							</div>
							
						</div><!-- 셋째라인 끝 -->
						<div class="row mt-3" >
							<div class="col-md-1 pt-3 row-st">판매상태</div>
							<div class="col-md-1 row-st">
								<div class="custom-control custom-checkbox">
								  <input type="checkbox" class="custom-control-input" id="customCheck1">
								  <label class="custom-control-label" for="customCheck1">전체</label>
								</div>
							</div>
							<div class="col-md-1 row-st">
								<div class="custom-control custom-checkbox">
								  <input type="checkbox" class="custom-control-input" id="customCheck2">
								  <label class="custom-control-label" for="customCheck2">판매중</label>
								</div>

							</div>
							<div class="col-md-1 row-st">
								<div class="custom-control custom-checkbox">
								  <input type="checkbox" class="custom-control-input" id="customCheck3">
								  <label class="custom-control-label" for="customCheck3">판매중단</label>
								</div>
							</div>
							<div class="col-md-1 row-st">
								<div class="custom-control custom-checkbox">
								  <input type="checkbox" class="custom-control-input" id="customCheck4">
								  <label class="custom-control-label" for="customCheck4">판매완료</label>
								</div>
							</div>
							<div class="col-md-1 row-st">
								<div class="custom-control custom-checkbox">
								  <input type="checkbox" class="custom-control-input" id="customCheck5">
								  <label class="custom-control-label" for="customCheck5">부분판매</label>
								</div>
							</div>
							<div class="col-md-1 row-st">
								<div class="custom-control custom-checkbox">
								  <input type="checkbox" class="custom-control-input" id="customCheck6">
								  <label class="custom-control-label" for="customCheck6">완전판매</label>
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
				<div class="card" >
					<div class="card-header">
						<div class="row">
							<div class="col-1 row-st">
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
							<div class="col-md-2 pt-1 row-st text-center">
								<select class="custom-select">
									<option selected>메인노출여부 </option>
									<option>노출</option>
									<option>비노출</option>															
								</select>
								
							</div>
							<div class="col-md-2 row-st text-left">
								<button type="button" class="btn btn-danger btn-sm">판매취소</button>&nbsp;&nbsp;
								<button type="button" class="btn btn-warning btn-sm">삭제</button>	
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
		                        	상품명
		                      </th>
		                      <th>
		                        	상품등록일
		                      </th>
		                      <th>
		                        	상품가격
		                      </th>
		                      <th>
		                        	상품판매상태
		                      </th>
		                      <th>
		                      		상품 등록일
		                      </th>
		                      <th>
		                      		상품 판매일
		                      </th>
		                      <th>
		                      		상품등록시간
		                      </th>
		                      <th>
		                      		상품판매종료시간
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