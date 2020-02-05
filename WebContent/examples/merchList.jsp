<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<style>

</style>
<body>
	<div class="row">
		<div class="col-md-12">
			<div class="row">
				<div class="col-md-6">
					<form id="frm" name="frm" class="form-horizontal">			
					<div class="card">
						<div class="card-header">
							<h6 class="card-title">상품 목록 검색</h6>
							<hr>
						</div>
						<div class="card-body">
							
							<div class="row" > <!-- 첫라인 시작 -->
								<div class="col-md-2"> <!--  style="border:1px solid black" -->
									<div class="form-group">
										<label>상품 종류</label>
										<select class="form-control" style="padding:5px 5px;">
											<option selected>상품명</option>
											<option value="">상호명</option>
											<option value="">상호명</option>
											<option value="">상호명</option>
										</select>
									</div>
								</div> 
								<div class="col-md-6"> <!--  style="border:1px solid black" -->
									<div class="form-group">
										<label>상품명</label>
										<input type="text" class="form-control">
									</div>
								</div>
								
								<div class="col-md-4 pl-1"> <!--  style="border:1px solid black" -->	
								<br>																																																																																		
											<button type="button" class="btn btn-primary btn-sm">+</button>
											<button type="button" class="btn btn-primary btn-sm">-</button>																											
								</div>
							</div> <!-- 첫째라인 끝 -->
							<div class="row"> <!-- 둘째라인 시작 -->
								<div class="col-md-12"> <!--  style="border:1px solid black" -->
									<div class="form-group">
									<label>기간 선택</label><br>									
									<div class="btn-group btn-group-sm" role="group" aria-label="dateSelect">										
											<button type="button" class="btn btn-primary">오늘</button>
											<button type="button" class="btn btn-primary">1일</button>
											<button type="button" class="btn btn-primary">3일</button>
											<button type="button" class="btn btn-primary">7일</button>
											<button type="button" class="btn btn-primary">1개월</button>
											<button type="button" class="btn btn-primary">3개월</button>
											<button type="button" class="btn btn-primary">6개월</button>
											<button type="button" class="btn btn-primary">1년</button>
											<button type="button" class="btn btn-primary">전체</button>
									</div>
									</div>
								</div>								
							</div> <!-- 둘째라인 끝 -->
							<div class="row">
								<div class="col-md-2"> <!--  style="border:1px solid black" -->
									<div class="form-group">
										<label>시작일</label>
										<input type="text" class="form-control" readonly style="width:150px">
									</div>
								</div>
								<div class="col-md-2"> <!--  style="border:1px solid black" -->
								</div>
								<div class="col-md-2" > <!-- style="border:1px solid black" -->
									<div class="form-group">
										<label>종료일</label>
										<input type="text" class="form-control" readonly style="width:150px"	>
									</div>
								</div>
								<div class="col-md-2"> <!--  style="border:1px solid black" -->
								</div>
							</div> <!-- 셋째 라인 끝 -->
							<div class="row" style="margin-bottom:10px;"><!-- style="border:1px solid black;  -->
								<div class="col-md-3">
									
									<label>판매 시작 시간</label>
									<select class="form-control" style="width:150px">
										<option selected>시간 선택</option>
										<option></option>
										<option></option>
										<option></option>
										<option></option>
										
									</select>
								</div>		
								<div class="col-md-1">
								</div>					
								<div class="col-md-3">
									<label>판매 종료 시간</label>
									<select class="form-control" style="width:150px">
										<option selected>시간 선택</option>
										<option></option>
										<option></option>
										<option></option>
										<option></option>
									</select>
								</div>
								
							</div> <!-- 넷째라인 끝 -->
							
							<div class="row"> <!-- style="border:1px solid black"  -->
								
								<div class="col-md-12">
									<div class="form-group">
									<label>판매 상태</label><br>								
										<label class="radio-inline">
										  <input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1"> 전체
										</label>
										<label class="radio-inline">&nbsp;&nbsp;
										  <input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2"> 판매중
										</label>
										<label class="radio-inline">&nbsp;&nbsp;
										  <input type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3"> 판매중단
										</label>
										<label class="radio-inline">&nbsp;&nbsp;
										  <input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1"> 판매완료
										</label>
										<label class="radio-inline">&nbsp;&nbsp;
										  <input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2"> 부분판매
										</label>
										<label class="radio-inline">&nbsp;&nbsp;
										  <input type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3"> 완전판매
										</label>
									</div>				
								</div>
							</div> <!-- 다섯째라인 끝 -->
							<div class="card-footer">
							<hr>
								<div class="row">								
									<div class="col-md-12">
										<div class="text-center">
											<button type="submit" class="btn btn-outline-primary btn-sm">검색</button>
											<button type="reset" class="btn btn-outline-primary btn-sm">초기화</button>
										</div>
									</div>
								</div>
							</div> <!-- 버튼 끝-->
						</div>
					</div>
					</form>
				</div>

				<div class="col-md-6">
					<div class="row">
						<div class="col-md-12">
							<div class="card">
								<div class="card-header">
									<h6 class="card-title">상품 판매 추이</h6>
								<hr>
								</div>
								<div class="card-body">
									<canvas id="chartHours"></canvas>		
								</div>
								<div class="card-footer">
								<hr>
									<div class="row">
										<div class="col-12 text-right">								
										<div class="stats">
						                  <i class="fa fa-calendar-o"></i> Last day
						                </div>
						                </div>
									</div>
								</div>
							</div>
						</div><!-- 우 상단 1 그리드 끝  -->
						<!-- <div class="col-md-12">
							<div class="card">
								<div class="card-header">
								<hr>
								</div>
								<div class="card-body">
									
								</div>
								<div class="card-footer">
								<hr>
								</div>
							</div>
						</div>우 상단 2 그리드 끝  -->
					</div>
				</div> 
			</div>
		</div>
		<div class="col-md-12">
			<div class="card">
				<div class="card-header">
				</div>
				<div class="card-body">
					 <div class="table-responsive">
		                  <table class="table">
		                    <thead class=" text-primary">
		                      <th>
		                        Name
		                      </th>
		                      <th>
		                        Country
		                      </th>
		                      <th>
		                        City
		                      </th>
		                      <th class="text-right">
		                        Salary
		                      </th>
		                    </thead>
		                    <tbody>
		                      <tr>
		                        <td>
		                          Dakota Rice
		                        </td>
		                        <td>
		                          Niger
		                        </td>
		                        <td>
		                          Oud-Turnhout
		                        </td>
		                        <td class="text-right">
		                          $36,738
		                        </td>
		                      </tr>
		                      <tr>
		                        <td>
		                          Minerva Hooper
		                        </td>
		                        <td>
		                          Curaçao
		                        </td>
		                        <td>
		                          Sinaai-Waas
		                        </td>
		                        <td class="text-right">
		                          $23,789
		                        </td>
		                      </tr>
		                      <tr>
		                        <td>
		                          Sage Rodriguez
		                        </td>
		                        <td>
		                          Netherlands
		                        </td>
		                        <td>
		                          Baileux
		                        </td>
		                        <td class="text-right">
		                          $56,142
		                        </td>
		                      </tr>
		                      <tr>
		                        <td>
		                          Philip Chaney
		                        </td>
		                        <td>
		                          Korea, South
		                        </td>
		                        <td>
		                          Overland Park
		                        </td>
		                        <td class="text-right">
		                          $38,735
		                        </td>
		                      </tr>
		                      <tr>
		                        <td>
		                          Doris Greene
		                        </td>
		                        <td>
		                          Malawi
		                        </td>
		                        <td>
		                          Feldkirchen in Kärnten
		                        </td>
		                        <td class="text-right">
		                          $63,542
		                        </td>
		                      </tr>
		              
		                    </tbody>
		                  </table>
                		</div>
				</div> <!--  -->
			</div>
		</div>
	</div>
</body>
</html>