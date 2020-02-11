<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	window.addEventListener("load", function(){
			
		 day.addEventListener("click",function(){
			dateInput(0,0);			
			if(startDate.disabled == true && endDate.disabled == true){
				startDate.disabled = false;
				endDate.disabled = false;
			}
		});
		t_day.addEventListener("click",function(){
			dateInput(3,0);
			if(startDate.disabled == true && endDate.disabled == true){
				startDate.disabled = false;
				endDate.disabled = false;
			}
		});
		s_day.addEventListener("click",function(){			
			dateInput(7,0);
			if(startDate.disabled == true && endDate.disabled == true){
				startDate.disabled = false;
				endDate.disabled = false;
			}
		});
		o_mon.addEventListener("click",function(){			
			dateInput(30,0);
			if(startDate.disabled == true && endDate.disabled == true){
				startDate.disabled = false;
				endDate.disabled = false;
			}
		});
		t_mon.addEventListener("click",function(){
			dateInput(90,0);
			if(startDate.disabled == true && endDate.disabled == true){
				startDate.disabled = false;
				endDate.disabled = false;
			}
		});
		s_mon.addEventListener("click",function(){
			dateInput(180,0);
			if(startDate.disabled == true && endDate.disabled == true){
				startDate.disabled = false;
				endDate.disabled = false;
			}
		});
		o_year.addEventListener("click",function(){
			dateInput(365,0);
			if(startDate.disabled == true && endDate.disabled == true){
				startDate.disabled = false;
				endDate.disabled = false;
			}
		});
		d_all.addEventListener("click",function(){
			dateInput(365*2,0);
			startDate.setAttribute("disabled",true);
			endDate.setAttribute("disabled",true);
		});
	});
	 //날짜 계산
	 function dateInput(n,m){
		  startDate.value = "";
		  endDate.value = "";
		  
		  var date = new Date();
		  var start = new Date(Date.parse(date) - n * 1000 * 60 * 60 * 24);
		  var today = new Date(Date.parse(date) - m * 1000 * 60 * 60 * 24);
		  
		  var yyyy = start.getFullYear();
		  var mm = start.getMonth()+1;
		  var dd = start.getDate();
		  
		  if(mm<10){
		   mm = "0" + mm; //10 보다 작으면 숫자앞에 0을 붙임
		  }if(dd<10){
		   dd = "0" + dd;
		  }
		  
		  var t_yyyy = today.getFullYear();
		  var t_mm = today.getMonth()+1;
		  var t_dd = today.getDate();
		  
		  if(t_mm<10){
		   t_mm = "0" + t_mm;
		  }if(t_dd<10){
		   t_dd = "0" + t_dd;
		  }
		  
		  startDate.value = yyyy + "-" + mm + "-" + dd;
		  endDate.value = t_yyyy + "-" + t_mm + "-" + t_dd;
		  
		 }
	 // submit 유효성 검사
	 function formCheck(){
		 var d1 = new Date(startDate.value);
		 var d2 = new Date(endDate.value);
	        if(frm.startDate.value > frm.endDate.value) {	             
	            alert("시작날짜와 종료날짜를 확인해 주세요.");
	            frm.startDate.focus();
	            return false;	            
	        }
	        if(frm.rTime.value > frm.eTime.value) {
	        	alert("등록시간과 판매종료시간을 확인해 주세요.");
	        	frm.rTime.focus();
	        	return false;
	        }
	 }
	
	 
	 
</script>
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
				<!-- <form id="frm" name="frm" method="post" action="AdminMerchListOk.do" onsubmit="return formCheck()"> -->
				<form id="frm" name="frm" method="post" action="" onsubmit="return formCheck()"> <!-- 테스트용 -->
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
								<select class="custom-select row-st" name="category"> 
									<option value="name" selected >상품명</option>
									<option value="id">상품번호</option>									
									<option value="sleId">판매번호</option>
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
											<button type="button" class="btn btn-primary btn-sm" id="day" name="day">오늘</button>											
											<button type="button" class="btn btn-primary btn-sm" id="t_day" name="t_day">3일</button>
											<button type="button" class="btn btn-primary btn-sm" id="s_day" name="s_day">7일</button>
											<button type="button" class="btn btn-primary btn-sm" id="o_mon" name="o_mon">1개월</button>
											<button type="button" class="btn btn-primary btn-sm" id="t_mon" name="t_mon">3개월</button>
											<button type="button" class="btn btn-primary btn-sm" id="s_mon" name="s_mon">6개월</button>
											<button type="button" class="btn btn-primary btn-sm" id="o_year" name="o_year">1년</button>																					
											<button type="button" class="btn btn-primary btn-sm" id="d_all" name="d_all">전체</button>
							</div>
							<!-- datepicker -->
							<div class="col-md-2 row-st" style="padding-top:8px"> 						
																
								<div class="input-group date" >								  
								    <input type="text" class="form-control" id="startDate" name="startDate" placeholder="시작일">
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
								    <input type="text" class="form-control" id="endDate" name="endDate" placeholder="종료일">
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
							<div class="col-md-1 pt-2 row-st">판매등록시간</div>
							<div class="col-md-2 row-st">
								<select class="custom-select" id="rTime" name="rTime">
											<option selected>시간 선택</option>
											<option value="1300">13:00</option>
											<option value="1400">14:00</option>
											<option value="1500">15:00</option>
											<option value="1600">16:00</option>
											<option value="1700">17:00</option>
											<option value="1800">18:00</option>
											<option value="1800">18:00</option>
											<option value="1900">19:00</option>
											<option value="2000">20:00</option>
											<option value="2100">21:00</option>
											<option value="2200">22:00</option>
											<option value="2300">23:00</option>										
											<option value="2400">24:00</option>
								</select>
							</div>
							<div class="col-md-3 row-st"></div>
							<div class="col-md-1 pt-2 row-st" >판매종료시간</div>
							<div class="col-md-2 ml-2 row-st">
								<select class="custom-select" id="eTime" name="eTime">
										<option selected>시간 선택</option>											
											<option value="1600">16:00</option>
											<option value="1700">17:00</option>
											<option value="1800">18:00</option>
											<option value="1800">18:00</option>
											<option value="1900">19:00</option>
											<option value="2000">20:00</option>
											<option value="2100">21:00</option>
											<option value="2200">22:00</option>
											<option value="2300">23:00</option>										
											<option value="2400">24:00</option>
								</select>
							</div>
							
						</div><!-- 셋째라인 끝 -->
						<div class="row mt-3" >
							<div class="col-md-1 pt-3 row-st">판매상태</div>
							<div class="col-md-1 row-st">
								<div class="custom-control custom-checkbox">
								  <input type="checkbox" class="custom-control-input" id="s_all" name="s_all" value="all">
								  <label class="custom-control-label" for="s_all">전체</label>
								</div>
							</div>
							<div class="col-md-1 row-st">
								<div class="custom-control custom-checkbox">
								  <input type="checkbox" class="custom-control-input" id="s_onSale" name="s_onSale" value="onSale">
								  <label class="custom-control-label" for="s_onSale">판매중</label>
								</div>

							</div>
							<div class="col-md-1 row-st">
								<div class="custom-control custom-checkbox">
								  <input type="checkbox" class="custom-control-input" id="s_cancel" name="s_cancel" value="cancel">
								  <label class="custom-control-label" for="s_cancel">판매중단</label>
								</div>
							</div>
							<div class="col-md-1 row-st">
								<div class="custom-control custom-checkbox">
								  <input type="checkbox" class="custom-control-input" id="s_complete" name="s_complete" value="complete">
								  <label class="custom-control-label" for="s_complete">판매완료</label>
								</div>
							</div>
							<div class="col-md-1 row-st">
								<div class="custom-control custom-checkbox">
								  <input type="checkbox" class="custom-control-input" id="s_part" name="s_part" value="part">
								  <label class="custom-control-label" for="s_part">부분판매</label>
								</div>
							</div>
							<div class="col-md-1 row-st">
								<div class="custom-control custom-checkbox">
								  <input type="checkbox" class="custom-control-input" id="s_soldOut" name="s_soldOut" value="soldOut">
								  <label class="custom-control-label" for="s_soldOut">완전판매</label>
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
					<form id="secondFrm" name="secondFrm" method="post" action="">
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
								<select class="custom-select" id="mainDp" name="mainDp">
									<option selected>메인노출여부 </option>
									<option value="y">노출</option>
									<option value="n">비노출</option>															
								</select>
								
							</div>
							<div class="col-md-2 row-st text-left">
								<button type="button" class="btn btn-danger btn-sm" id="submit_2" name="submit_2">적용</button>&nbsp;&nbsp;
								<button type="button" class="btn btn-danger btn-sm" id="selCancel" name="selCancel">판매취소</button>&nbsp;&nbsp;
								<button type="button" class="btn btn-warning btn-sm" id="del" name="del">삭제</button>	
							</div>
							
							<div class="col-md-7 row-st"></div>
							<div class="col-md-1 row-st">
								<button type="button" class="btn btn-success btn-sm mr-1">엑셀다운로드</button>
							</div>
						</div>
					</div>
					
					<div class="card-body">
					<hr>
						<div class="table-responsive" style="overflow:hidden;">
		                  <table class="table table-hover table-condensed">
		                    <thead class="text-primary text-center">
		                      <th>		                      	
								  <div class="custom-control custom-checkbox text-center">
									  <input type="checkbox" class="custom-control-input" id="resultChkAll">
									  <label class="custom-control-label" for="resultChkAll"></label>
								  </div>							
		                      </th>
		                      <th>상품번호</th>
		                      <th>상품명</th>
		                      <th>등록일시</th>
		                      <th>정가</th>
		                      <th>상품정보</th>
		                      <th>판매자ID</th>
		                      <th>판매상태</th>
		                    </thead>
		                    <tbody align="center">
		                     <tr>
		                   		
		                     </tr>		              
		                    </tbody>
		                  </table>
                		</div>
					</div>
					</form>
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