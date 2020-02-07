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
			<div class="col-md-12">
				<div class="card" id="card1-cell">
					<div class="card-header">
						<h6 class="card-title">마일리지 관리</h6>
						<hr>
					</div>
					<div class="card-body">
						<div class="row">
							<div class="col-md-1">아이디</div>
							<div class="col-md-3">
								<input type="text" class="form-control">
							</div>
							<div class="col-md-2"></div>
							<div class="col-md-1">기간</div>
							<div class="col-md-2">
								<input type="text" class="form-control" readonly>
							</div>
							<div class="col-md-1">~</div>
							<div class="col-md-2">
								<input type="text" class="form-control" readonly>
							</div>
																
						</div>
						<div class="row">
							<div class="col-md-12 text-center">
								<button type="submit" class="btn btn-warning btn-sm">검색</button>&nbsp;
								<button type="reset" class="btn btn-warning btn-sm">초기화</button>								
							</div>
						</div>	
					</div>
					<div class="card-footer">
					
					</div>
				</div>
			</div>
			</form>	<!-- form 끝 -->
		</div> <!-- 첫번째 card 끝 -->
		<div class="col-md-12">
			<div class="row">
				<div class="col-md-4">
		            <div class="card card-stats" id="card1-cell">
		              <div class="card-body ">
		                <div class="row">
		                  <div class="col-5 col-md-4">
		                    <div class="icon-big text-center icon-warning">
		<!--                       <i class="nc-icon nc-cart-simple text-warning"></i> -->
								  <i class="fas fa-bread-slice text-warning"></i>
		                    </div>
		                  </div>
		                  <div class="col-7 col-md-8">
		                    <div class="numbers">
		                      <p class="card-category">증가</p>                      
		                      <p class="card-title">0원<p>
		                    </div>
		                  </div>
		                </div>
		              </div>
		              <div class="card-footer ">
		                <hr>
		                
		              </div>
		            </div>
		          </div>
				<div class="col-md-4">
		            <div class="card card-stats">
		              <div class="card-body ">
		                <div class="row">
		                  <div class="col-5 col-md-4">
		                    <div class="icon-big text-center icon-warning">
		<!--                       <i class="nc-icon nc-cart-simple text-warning"></i> -->
								  <i class="fas fa-bread-slice text-warning"></i>
		                    </div>
		                  </div>
		                  <div class="col-7 col-md-8">
		                    <div class="numbers">
		                      <p class="card-category">차감</p>                      
		                      <p class="card-title">0원<p>
		                    </div>
		                  </div>
		                </div>
		              </div>
		              <div class="card-footer ">
		                <hr>
		                
		              </div>
		            </div>
		          </div>
				
				<div class="col-md-4">
		            <div class="card card-stats">
		              <div class="card-body ">
		                <div class="row">
		                  <div class="col-5 col-md-4">
		                    <div class="icon-big text-center icon-warning">
		<!--                       <i class="nc-icon nc-cart-simple text-warning"></i> -->
								  <i class="fas fa-bread-slice text-warning"></i>
		                    </div>
		                  </div>
		                  <div class="col-7 col-md-8">
		                    <div class="numbers">
		                      <p class="card-category">합계</p>                      
		                      <p class="card-title">0원<p>
		                    </div>
		                  </div>
		                </div>
		              </div>
		              <div class="card-footer ">
		                <hr>
		                
		              </div>
		            </div>
		          </div>
				
			</div>			
		</div> <!-- 두번째 card 끝 -->
		<div class="col-md-12">
			<div class="col-md-12">
				<div class="card" id="card2-cell">
					<div class="card-header">
						<div class="row">
							<div class="col-md-1">
							<h6 class="card-title">총 [ n건]</h6>
							</div>
							<div class="col-md-9"></div>
							<div class="col-md-2">
								<select class="custom-select custom-select-sm">
									<option selected>10개씩보기</option>
									<option>20개씩보기</option>
									<option>30개씩보기</option>															
								</select>
							</div>
						</div>
						<hr>
					</div>
					<div class="card-body">
						<div class="row">
							<div class="col-md-12">
							 버튼 추가 가능 <!-- 추가 가능 -->
							</div>
						</div>
						<div class="row">
						<div class="table-responsive" style="overflow:hidden;">
		                  <table class="table table-hover">
		                    <thead class="text-warning">		                    		                    
			                      <th class="text-center" rowspan="2">		                      	
									  <div class="custom-control custom-checkbox">
										  <input type="checkbox" class="custom-control-input" id="resultChkAll">
										  <label class="custom-control-label" for="resultChkAll"></label>
									  </div>							
			                      </th>
			                      <th class="text-center">
			                        	날짜
			                      </th>
			                      <th class="text-center">
			                        	아이디
			                      </th>			                			                			                      		                   
			                      <th class="text-center">
			                        	마일리지 증감
			                      </th>
			                      <th class="text-center">
			                        	마일리지 차감
			                      </th>
			                      <th class="text-center">
			                      		마일리지 합계
			                      </th>
			                      <th class="text-center">
			                      		마일리지 유형
			                      </th>
			                      <th class="text-center">
			                      		마일리지 상세 내용
			                      </th>		                    
		                    </thead>
		                    <tbody>
		                     	<tr class="text-center">
		                     		<td>
		                     			<div class="custom-control custom-checkbox">
										  <input type="checkbox" class="custom-control-input" id="resultChkAll">
										  <label class="custom-control-label" for="resultChkAll"></label>
									  </div>
		                     		</td>
		                     		<td>11</td> <!-- tr예제 -->
		                     		<td>11</td>
		                     		<td>11</td>
		                     		<td>11</td>
		                     		<td>11</td>
		                     		<td>11</td>
		                     		<td>11</td>
		                     	</tr>
		                     	<tr class="text-center">
		                     		<td>
		                     			<div class="custom-control custom-checkbox">
										  <input type="checkbox" class="custom-control-input" id="resultChkAll">
										  <label class="custom-control-label" for="resultChkAll"></label>
									  </div>
		                     		</td>
		                     		<td>11</td> <!-- tr예제 -->
		                     		<td>11</td>
		                     		<td>11</td>
		                     		<td>11</td>
		                     		<td>11</td>
		                     		<td>11</td>
		                     		<td>11</td>
		                     	</tr>              
		                    </tbody>
		                  </table>
                		</div>
						</div>						
					</div>
					<div class="card-footer">
					</div>
				</div>
			</div>			
		</div> <!-- 세번째 card 끝 -->		
	</div>	
</body>
</html>