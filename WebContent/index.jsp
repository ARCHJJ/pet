<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="stylesheet" type="text/css" href="css/main.css" />
</head>
<body>
	<div class="body_wrapper" style="position: static;">

		<!--common_wrapper-->
		<div class="common_wrapper">


			<!--header_wrapper-->
			<!-- <div class="header_wrapper">

				상단 1차메뉴 및 로고 검색
				<div class="header_section">
					<div class="top_header_section fix">
						<div class="m_head">

							<div class="lft_tit_section">
								<h1>
									<a href="/index.do"><img
										src="/front/images/header/tit_logo.png" alt="SNUBH 분당서울대학교병원"></a>
								</h1>
								<ul class="utility_section fix">


									<li><a href="javascript:memberLogin()">로그인</a></li>
									<li><a href="/member/joinSelect.do">회원가입</a></li>


									<li><a href="/sitemap/SiteMap.do">사이트맵</a></li>
									<li class="bh_lang"><strong><span>Language</span></strong>
										<ul>
											<li><a href="https://www.snubh.org/dh/en/"
												target="_blank">English</a></li>
										</ul></li>
								</ul>
							</div>

							<div class="rit_navi_section">
								<h2 class="skip">주메뉴</h2>
								<div id="btn_top_menus" class="total_navi_div">

									<div class="bh_menu_p" id="bh_main_menus" tabindex="0">&nbsp;</div>
									<div class="bh_menu_m">&nbsp;</div>
									<div class="bh_mob_quick_wrap"
										style="display: none; width: 1198px;">
										<div class="bh_mob_quick_1">
											<a href="/medical/drMedicalTeam.do" class="btn_find">의료진<span></span>찾기
											</a>
										</div>
										<div class="bh_mob_quick_2">
											<a href="/medical/deptListTime.do" class="btn_cal">외래진료<span></span>일정표
											</a>
										</div>
										<div class="bh_mob_quick_3">
                      <a href="/intro/map/road.do" class="btn_app_form">찾아오시는 <span></span>길</a>
                    </div>
										<div class="bh_mob_quick_4">
											<a href="/treatmentpay/PayMedicalList.do" class="btn_find">진료비<span></span>결제
											</a>
										</div>
										<div class="bh_mob_quick_5">
                            <a href="/personal/info/offMember.do" class="btn_cal">환자번호<span></span>확인</a>
                          </div>
									</div>
									<ul class="sec_total_navi_ul"
										style="display: none; width: 1198px;">




										<li><a href="#" tabindex="0">나의 진료정보</a>


											<div class="total_navi_div2">
												<ul class="snb" style="">



													<li class="sds_1"><a tabindex="0"
														href="/reserve/treatResvrInfo.do">예약</a></li>




													<li class="sds_2"><a tabindex="0"
														href="/personal/resvrStatusList.do">예약조회 및 취소</a></li>




													<li class="sds_3"><a tabindex="0"
														href="/treatmentpay/PayMedicalList.do">진료비 결제</a></li>




													<li class="sds_4"><a tabindex="0"
														href="/personal/health4u.do">Health4U</a></li>




													<li class="sds_5"><a tabindex="0"
														href="/personal/myTimeLine.do">나의 타임라인</a></li>




													<li class="sds_6"><a tabindex="0"
														href="/personal/bookMark/bookMarkList.do">관심 콘텐츠</a></li>




													<li class="sds_7"><a tabindex="0"
														href="/personal/myHichart.do">처방동영상</a></li>




													<li class="sds_8"><a tabindex="0"
														href="/personal/certi/ctfIssue.do">증명서발급</a></li>




													<li class="sds_9"><a tabindex="0"
														href="/personal/voice/customervoiceList.do">고객의 소리</a></li>




													<li class="sds_10"><a tabindex="0"
														href="/personal/info/myInfoChk.do">개인정보</a></li>




													<li class="sds_11"><a tabindex="0"
														href="/personal/spsorDonationList.do">기부현황조회</a></li>



												</ul>


												간편상담예약
												<div id="sub_s_1" class="snb_conts_wrap"
													style="display: none; width: 827px;">
													<div class="snb_conts_box">
														<div class="snb_conts">
															<form onsubmit="return chkPhone(this)" lpformnum="1">
																<strong class="bh_snb_tit">간편상담예약</strong>
																<div class="bh_snb_input fix">
																	<p class="f_left">
																		<input type="tel" tabindex="0" class="input_snb_text"
																			style="width: 200px; padding: 0 5px 0 20px;"
																			maxlength="12" name="phone"
																			onkeydown="onlyNum(this, event)" title="연락처"
																			placeholder="000 - 0000 - 0000">
																	</p>
																	<p class="f_right">
																		<input class="btn_snb_blue" type="submit" value="간편예약">
																	</p>
																</div>
															</form>
															<p class="bh_snb_desc">
																분당서울대학교병원은 빠르고 편리한 <span>온라인 진료예약이 가능합니다.</span>
															</p>
															<ul class="bh_snb_ul">
																<li class="bh_snb_li_1"><a
																	href="/reserve/firstReserve.do"> <strong>간편상담예약</strong>
																</a></li>
																<li class="bh_snb_li_2"><a
																	href="/reserve/onlineReserve.do"> <strong>온라인
																			예약</strong>
																</a></li>
																<li class="bh_snb_li_3"><a
																	href="/personal/resvrStatusList.do"> <strong>예약현황조회</strong>
																</a></li>
															</ul>
														</div>
													</div>
												</div>
												//간편상담예약










											</div></li>






										<li><a href="#" tabindex="0">진료안내</a>


											<div class="total_navi_div2">
												<ul class="snb" style="">



													<li class="sds_1"><a tabindex="0"
														href="/medical/deptList.do">진료과</a></li>




													<li class="sds_2"><a tabindex="0"
														href="/medical/supDeptList.do">진료지원부서</a></li>




													<li class="sds_3"><a tabindex="0"
														href="/medical/drMedicalTeam.do">의료진</a></li>




													<li class="sds_4"><a tabindex="0"
														href="/medical/out/clinic01.do">외래진료</a></li>




													<li class="sds_5"><a tabindex="0"
														href="/medical/deptListTime.do">외래진료일정표</a></li>




													<li class="sds_6"><a tabindex="0"
														href="/medical/day/surgeryCenter01.do">당일수술센터</a></li>




													<li class="sds_7"><a tabindex="0"
														href="/medical/emergency/center.do">응급의료센터</a></li>




													<li class="sds_8"><a tabindex="0"
														href="/medical/home/nursing01.do">가정간호</a></li>




													<li class="sds_9"><a tabindex="0"
														href="/medical/inOut/hospital01.do">입원/퇴원</a></li>




													<li class="sds_10"><a tabindex="0"
														href="/medical/visit.do">병문안</a></li>




													<li class="sds_11"><a tabindex="0"
														href="/medical/program.do">건강검진안내</a></li>



												</ul>




												의료진/진료과찾기
												<div id="sub_s_2" class="snb_conts_wrap"
													style="display: none; width: 827px;">
													<div class="snb_conts_box">
														<div class="snb_conts">
															<strong class="bh_snb_tit">의료진/진료과찾기</strong>

															<form action="/search.do"
																onsubmit="return chkTxt( this );">
																<div class="bh_snb_input">
																	<label for="search_txt" class="skip">의료진, 진료과
																		입력</label> <input tabindex="0" class="input_snb_text"
																		type="text" name="search_txt" id="search_txt"
																		placeholder="의료진,진료과 입력"> <input
																		class="btn_snb_blue" type="submit" value="찾기">
																</div>
															</form>

															<p class="bh_snb_desc1">
																분당서울대학교병원 <span>진료관련 절차에 대한 안내입니다.</span>
															</p>
															<ul class="bh_snb_ul">
																<li class="bh_snb_li_4"><a
																	href="/medical/out/clinic01.do"> <strong>외래진료</strong>
																</a></li>
																<li class="bh_snb_li_5"><a
																	href="/medical/inOut/hospital01.do"> <strong>입원/퇴원</strong>
																</a></li>
																<li class="bh_snb_li_6"><a href="/medical/visit.do">
																		<strong>면회</strong>
																</a></li>
															</ul>
														</div>
													</div>
												</div>
												//의료진/진료과찾기








											</div></li>






										<li><a href="#" tabindex="0">병원소개</a>


											<div class="total_navi_div2">
												<ul class="snb" style="">



													<li class="sds_1"><a tabindex="0"
														href="/intro/hospital/introduce.do">병원소개</a></li>




													<li class="sds_2"><a tabindex="0"
														href="/intro/floor/guide.do">층별안내</a></li>




													<li class="sds_3"><a tabindex="0"
														href="/intro/news/realname/list.do">병원소식</a></li>




													<li class="sds_4"><a tabindex="0"
														href="/intro/amenity/amenity01.do">편의시설</a></li>




													<li class="sds_5"><a tabindex="0"
														href="/intro/spaceU.do">SPACE U</a></li>




													<li class="sds_6"><a tabindex="0"
														href="https://www.snubh.org/dh/mc" target="_blank">공공의료사업단</a></li>




													<li class="sds_7"><a tabindex="0"
														href="/intro/supporters.do">발전후원회</a></li>




													<li class="sds_8"><a tabindex="0"
														href="/intro/tell.do">주요전화번호안내</a></li>




													<li class="sds_9"><a tabindex="0"
														href="/intro/map/road.do">찾아오시는길</a></li>






												</ul>






												찾아오시는길 안내
												<div id="sub_s_3" class="snb_conts_wrap"
													style="display: none; width: 827px;">
													<div class="snb_conts_box">
														<div class="snb_conts">
															<strong class="bh_snb_tit">찾아오시는길</strong>

															<p class="bh_snb_desc2">
																분당서울대학교병원에 <span>찾아오시는 길입니다.</span>
															</p>

															<div class="bh_snb_btn_wrap">
																<a href="/intro/map/road.do" class="bh_btn_b1"
																	tabindex="0">자세히 보기</a>
															</div>

															<div class="bh_snb_map_img">
																<img src="/front/images/header/img_gnb_map.jpg"
																	alt="분당서울대학교병원 찾아오시는 길 약도">
															</div>
														</div>
													</div>
												</div>
												//찾아오시는길 안내






											</div></li>






										<li><a href="/intro/news/noti/list.do" tabindex="0">공지사항</a>


											<div class="total_navi_div2">
												<ul class="snb" style="">



													<li class="sds_1"><a tabindex="0"
														href="/intro/news/noti/list.do">공지사항</a></li>



												</ul>












												공지사항
												<div id="sub_s_5" class="snb_conts_wrap"
													style="display: none; width: 827px;">
													<div class="snb_conts_box">
														<div class="snb_conts">
															<strong class="bh_snb_tit">공지사항</strong>

															<p class="bh_snb_desc4">분당서울대학교병원의 공지사항을 알려드립니다.</p>

															<ul class="main_notice_board">

																<li><em>공지</em><a
																	href="/intro/news/noti/view.do?BNO=926" tabindex="0">
																		[분당서울대학교병원 홈페이지 회원 관리 정책 안내]</a></li>

																<li><em>공지</em><a
																	href="/intro/news/noti/view.do?BNO=680" tabindex="0">
																		[비급여 항목 안내]</a></li>

																<li><a href="/intro/news/noti/view.do?BNO=930"
																	tabindex="0"> 제 14회 사랑나눔 자선 大바자회</a></li>

																<li><a href="/intro/news/noti/view.do?BNO=929"
																	tabindex="0"> 11월 공연 및 건강강좌 일정</a></li>

																<li><a href="/intro/news/noti/view.do?BNO=928"
																	tabindex="0"> [암정보교육센터]2017.11월 교육프로그램 일정표</a></li>

																<li><a href="/intro/news/noti/view.do?BNO=925"
																	tabindex="0"> 난임 보조생식술 보험 적용 안내</a></li>

															</ul>

														</div>
													</div>
												</div>
												//공지사항


											</div></li>






										<li><a href="#" tabindex="0">건강정보</a>


											<div class="total_navi_div2">
												<ul class="snb" style="">



													<li class="sds_1"><a tabindex="0"
														href="/service/lecture/healthLectList.do">건강강좌</a></li>




													<li class="sds_2"><a tabindex="0"
														href="/service/info/web/list.do">HEALTH PLUS</a></li>




													<li class="sds_3"><a tabindex="0"
														href="/service/info/ebook/list.do">나음진</a></li>




													<li class="sds_4"><a tabindex="0"
														href="/service/hichart/list.do">검사안내 동영상</a></li>



												</ul>








												헬스포커스
												<div id="sub_s_4" class="snb_conts_wrap"
													style="display: none; width: 827px;">
													<div class="snb_conts_box">
														<div class="snb_conts">
															<strong class="bh_snb_tit">헬스 포커스</strong>

															<p class="bh_snb_desc3">
																다양하고 유익한 건강상식을 <span>제공해 드립니다.</span>
															</p>

															<ul class="bh_snb_bab">




																<li class="fix">
																	<p>
																		<a
																			href="/service/info/com/view.do?BNO=312&amp;Board_ID=B004"
																			tabindex="0"> <img
																			src="/upload/board/B004/dse-info_immunity_06.jpg&#10;"
																			alt="우리 몸의 방어시스템 '면역력'을 점검하자">
																		</a>
																	</p>
																	<dl>
																		<dt>
																			<a
																				href="/service/info/com/view.do?BNO=312&amp;Board_ID=B004">
																				우리 몸의 방어시스템 '면역력'을 점검하자 </a>
																		</dt>
																		<dd>
																			<a
																				href="/service/info/com/view.do?BNO=312&amp;Board_ID=B004">
																				밤낮으로 쌀쌀해진 날씨에 따라 쉽게 체온이 떨어져 면역력이 약해지기 때문에 감기와 비염 등
																				각종 질환에 노출되어 평소보다 더욱 체력이 저하되는 환절기에는 더욱 건강에 신경 써야 하는
																				때이기도 하다. 우리를 둘러싼 환경에는 질병을 유발하는 여러가지 병원체가 존재하며, 이들은
																				다양한 경로로 인체에 침입하며 병을 일으킬 수 있다. 24시간 우리의 몸은 항시 노출되는
																				병원체로부터 싸우고 있을 면역력을 위해 우리의 면역력을 알아보는 시간을 가져보자. &nbsp;
																				&nbsp; 면역력이란 무엇인가요? 면역이란 우리 몸이 스스로를 보호하기 위해 외부 인자에
																				대해서 방어하는 현상으로 외부 인자는 병원미생물, 음식물, 화학물질, 약, 꽃가루 등 원래 내
																				몸의 것이 아닌 모든 물질을 총칭합니다. 면역은 태어날 때부터 가지고 있는 선천 면역과
																				감염이나 예방접종 등을 통해 얻은 후천 면역으로 나뉩니다. &nbsp; 선천 면역은 병원체가
																				몸 안에 들어오면 비특이적으로 즉시 반응을 하여 우리 몸을 보호하며, 선천면역체계에는 피부,
																				점액조직, 위산, 혈액에 존재하는 보체와 식균작용을 담당하는 대식세포와 백혈구 등이 있습니다.
																				후천 면역은 출생 후 병원체에 대응하면서 학습과 기억을 통해 또 다시 병원체가 들어올 때
																				특이적으로 반응을 하게 되며, 후천면역체계에는 림프구의 T세포와 B세포가 있습니다.
																				&nbsp; 면역력은 왜 떨어지는가요? 건강할 때는 이런 선천 면역 체계와 후천 면역 체계의
																				완벽한 면역시스템이 조화를 이루어 우리 몸을 보호하지만, 면역 체계를 담당하는 조직과 세포들의
																				기능이 떨어지면 면역력이 떨어지게 됩니다. 즉, 면역력이 떨어지는 것은 면역 시스템에 문제가
																				생겼음을 뜻합니다. 면역력이 떨어지는 이유는 매우 다양합니다. 흡연이나 음주를 자주 하는
																				경우. 과로나 스트레스를 받는 경우, 노화로 인해 신체 저항력이 떨어지는 경우, 수면부족이
																				지속되는 경우, 비만한 경우, 환절기로 급격한 온도 변화가 있는 경우 들이 있습니다.
																				&nbsp; 면역력은 계절과 어떠한 관계가 있는가요? 적절한 체온을 유지하는 것은 면역력을
																				담당하는 세포의 기능을 유지하는데 중요한 역활을 합니다. 봄, 가을에 나타나는 큰 일교차에
																				적응하기 위해 우리 몸의 피부, 근육 등 여러 기관이 에너지를 과다하게 쓰게 되고 자율
																				신경계의 불균형을 초래하기 쉽습니다. 이럴 경우, 면역세포 기능 유지에 필요한 에너지 양이
																				줄어들고 면역 시스템에 문제가 생기게 됩니다. 이때, 심리적, 정신적 스트레스를 받게 되면
																				면역력 저하는 더욱 가속화 됩니다. &nbsp; 가을, 겨울이 되면 감기나 독감도 잘
																				걸리는데, 면역력과 어떠한 관계가 있는가요? 환절기 급격한 체온 변화에 우리 몸이 잘 적응하지
																				못해 면역력이 떨어지면, 호흡기 질환 환자가 증가합니다. 감기는 다양한 바이러스에 의한 감염
																				질환이고, 독감은 인플루엔자 바이러스에 의한 감염 질환입니다. 바이러스에 노출이 되더라도
																				질병의 발현은 우리 몸의 면역체계에 달려 있기 때문에 면역력이 높은 경우 바이러스에
																				노출되더라도 감기나 독감에 걸리지 않을 수 있습니다. &nbsp; 면역력을 지키기 위한 생활
																				속 건강 수칙을 알려주세요! 운동(체조)저-중강도의 적당한 활동은 우리 몸의 면역기능은
																				향상시키고 질병 발생률은 낮출 수 있습니다.그러나 고강도의 운동은 오히려 면역기능을
																				저하시킵니다. 미국스포츠의학회 (American College of Sports
																				Medicine)는 저-중강도의 운동을 최대심박수의 40~70% 범위로 정의하고 있으며,
																				유산소 운동으로 주 3~5회, 30~50분 정도의 운동을 권합니다. 음식단 음식 및 지방 많은
																				음식의 잦은 섭취 등은 면역력을 약하게 할 수 있어 균형 잡힌 식생활 습관을 유지하는 것이
																				중요합니다. 면역력을 높이는 음식으로는 당근, 버섯, 단호박, 무 같은 신선한 채소와 불포화
																				지방산이 함유된 고등어와 같은 생선, 비타민이 풍부한 사과 등을 섭취하는 것이 좋습니다.
																				또한, 최근 연구에 따르면 장내 세균이 면역기능을 담당하는 NK세포의 활성도를 높이고
																				대식세포의 식작용을 증가시켜 면역 기능을 높입니다. 프로바이오틱스(유산균, 비피더스균 등)를
																				섭취하는 것이 도움이 되며, 발효식품에는 좋은 프로바이오틱스가 다량 함유되어 있습니다.
																				스트레스 관리나 수면몸을 혹사하지 않고 과로하지 않으며 좋아하는 취미생활을 갖는 것도 스트레스
																				관리에 도움이 됩니다. 규칙적인 수면 습관과 수면 시간을 유지하고 수면 문제가 있을 경우
																				멜라토닌의 보충이 도움이 됩니다. 예방접종예방접종을 통해 특이적인 면역반응을 통한 해당 질병의
																				이환으로부터 우리 몸을 보호할 수 있습니다.특히 만성질환자나 노약자의 경우 적절한 시기에
																				예방접종을 하는 것이 중요합니다. &nbsp; &nbsp; </a>
																		</dd>
																	</dl>
																</li>




																<li class="fix">
																	<p>
																		<a
																			href="/service/info/com/view.do?BNO=311&amp;Board_ID=B004"
																			tabindex="0"> <img
																			src="/upload/board/B004/dse-info_DSPZ_04.jpg&#10;"
																			alt="면역력과의 싸움 대상포진 질환의 이해">
																		</a>
																	</p>
																	<dl>
																		<dt>
																			<a
																				href="/service/info/com/view.do?BNO=311&amp;Board_ID=B004">
																				면역력과의 싸움 대상포진 질환의 이해 </a>
																		</dt>
																		<dd>
																			<a
																				href="/service/info/com/view.do?BNO=311&amp;Board_ID=B004">
																				고령화가 급속도로 진행되고 면역이 위협받는 환경오염의 시대를 살아가는 현대인들에게 있어
																				대상포진은 누구나 주의해야 할 질환이다. 단순한 피부질환이 아닌 신경질환이라는 사실을 잊지
																				않고, 증상이 나타나면 병원을 찾아 제때 치료를 받는 것이 중요하다. 증상 면역력이 떨어지는
																				시기에 노인들이 특히 조심해야 할 질환이 바로 대상포진이다. 피부에 난 이 포진이 어찌나
																				아픈지 바늘로 콕콕 찌르는 듯, 송곳으로 푹 찌르는 것 같다가 때로는 참을 수 없이 간지럽기도
																				해 잠조차 편하게 청할 수도 없다. 원인 성인 대상포진은 유년기에 발생했던 수두 바이러스가
																				몸의 신경세포 속에 숨어 있다가 면역이 떨어진 틈을 타고 다시 기승을 부려(재활성화)
																				신경세포를 망가뜨리는 것으로 시작된다. 신경의 주행 경로에 따라 피부에 물집이 생긴다고 알려져
																				있으며, 밤새 일을 하는 등 과로하거나 운동을 무리하게 하는 경우, 혹은 암과 같은 질병이
																				생겼을 때 전체적인 면역체계가 망가지면서 대상포진이 발생한다. 실태 &nbsp; 건강보험공단
																				자료(2009~2014년)에 따르면 대상포진 질환으로 진료받은 국내 환자는 매년 평균
																				7.3%가량 증가했다. 최근에는 젊은 층에서도 종종 나타나긴 하지만, 주로 50~60대 이상
																				고령층에서 많이 발생하기 때문에 노년층은 특히 주의해야 한다. 폐경기 여성 또한 호르몬 변화로
																				면역력이 떨어지는 탓에 발생비율이 높다. 치료 가장 좋은 치료는 예방이다. 사회적으로는
																				미세먼지를 최소화하고 환경오염을 줄일 수 있는 대책이 따라야 하며, 개인적으로는 스트레스를 덜
																				받으려고 노력하고 무리하지 않는 것이 좋다. 이미 대상포진에 걸린 경우 치료는 빠르면 빠를수록
																				좋다. 바이러스의 재활성화로 인한 질환이기 때문에 항바이러스 약물을 최소 1주일 동안 복용해야
																				한다. 피부의 포진을 잘 관리하는 것은 물론, 항전간제나 항우울제 신경을 가라앉혀 주는 약물을
																				복용해 통증 조절이 필요하다. 치료 시기를 놓치거나 치료가 잘 안 되어 후유증이 생기는 경우
																				신경치료 주사가 도움이 된다. </a>
																		</dd>
																	</dl>
																</li>

															</ul>
														</div>
													</div>
												</div>
												//건강밥상




											</div></li>






										<li><a href="#" tabindex="0">바로가기</a>


											<div class="total_navi_div2">
												<ul class="snb" style="">



													<li class="sds_1"><a tabindex="0"
														href="https://cancer.snubh.org/index.do" target="_blank">암센터</a></li>




													<li class="sds_2"><a tabindex="0"
														href="https://bcni.snubh.org/index.do" target="_blank">뇌신경센터</a></li>




													<li class="sds_3"><a tabindex="0"
														href="https://sbrc.snubh.org/index.do" target="_blank">진료협력센터</a></li>




													<li class="sds_4"><a tabindex="0"
														href="https://hpc.snubh.org/index.do" target="_blank">건강증진센터</a></li>




													<li class="sds_5"><a tabindex="0"
														href="https://snubh.recruiter.co.kr" target="_blank">채용</a></li>




													<li class="sds_6"><a tabindex="0"
														href="https://funeral.snubh.org/index.do" target="_blank">장례식장</a></li>




													<li class="sds_7"><a tabindex="0"
														href="https://msri.snubh.org/index.do" target="_blank">연구부문</a></li>




													<li class="sds_8"><a tabindex="0"
														href="https://medi.snubh.org/index.do" target="_blank">의학자료정보실</a></li>




													<li class="sds_9"><a tabindex="0"
														href="https://www.snubh.org/dh/mc/" target="_blank">공공의료사업단</a></li>




													<li class="sds_10"><a tabindex="0"
														href="https://www.snubh.org/dh/hcd7/" target="_blank">발전후원회</a></li>




													<li class="sds_11"><a tabindex="0"
														href="https://www.snubh.org/dh/ihc" target="_blank">국제진료센터</a></li>




													<li class="sds_12"><a tabindex="0"
														href="https://hip.snubh.org/" target="_blank">헬스케어혁신파크</a></li>




													<li class="sds_13"><a tabindex="0"
														href="http://ggccvc.snubh.org/" target="_blank">권역심뇌혈관질환센터</a></li>




													<li class="sds_14"><a tabindex="0"
														href="http://e-allergy.org/" target="_blank">아토피·천식교육정보센터</a></li>




													<li class="sds_15"><a tabindex="0" href="/dh/rihp"
														target="_blank">정책연구기획센터</a></li>




													<li class="sds_16"><a tabindex="0"
														href="http://www.alio.go.kr/" target="_blank">알리오</a></li>






												</ul>











											</div></li>










									</ul>

									<div class="m_dp_num pc_none"
										style="display: none; width: 1198px;">
										<div class="bh_tel_area">
											<strong>대표전화</strong> <span><a href="tel:1588-3369">1588-3369</a></span>
										</div>
									</div>
								</div>

							</div>

							<div class="bh_nav_close_comp skip" tabindex="0"></div>

							<p class="btn_login">
								<a href="/member/login.do"><span class="skip">모바일 로그인</span></a>
							</p>


							<p class="btn_m_cc" style="display: none;">
								<a class="btn_m_c"><span class="skip">모바일 메뉴 닫기</span></a>
							</p>
							<div class="btn_m_off" style="display: none;">
								<span class="skip">모바일 메뉴 DIM처리 배경</span>
							</div>
							<div class="bh_menu_bg" style="display: none; width: 1920px;">
								<div class="bh_menu_inner_bg" style="display: none;">
									<span class="skip">모바일 메뉴 배경</span>
								</div>
							</div>

						</div>

						검색
						<div class="header_search_section">
							<div class="header_form">
								<form action="/search.do" onsubmit="return chkTxt( this );">
									<fieldset>
										<legend>통합검색</legend>
										<div class="top_search_form">
											<label for="bh_search_txts" class="skip">통합검색 검색어 입력</label>
											<input class="search_text" id="bh_search_txts" type="text"
												name="search_txt" placeholder="예) 질병명 , 의료진명" value=""
												onkeyup="autoComplete( this )" autocomplete="off"> <input
												class="btn_search" type="submit" value="통합검색">
										</div>

										자동완성 검색어 영역
										<ul class="auto_add_word" style="display: none;"
											id="autocomplate_area"></ul>
									</fieldset>
								</form>
							</div>
						</div>
						/검색

					</div>

				</div>
				/상단 1차메뉴 및 로고 검색

				서브 상단 메뉴


			</div> -->
			<!--/header_wrapper-->

			<hr>




			<!--container_wrapper-->
			<div class="container_wrapper fix" id="bh_container">

				<!--contents_section-->
				<div class="main_conts_set">
					<!-- <h2 class="skip">본문</h2> -->












					<!--[if IE 8]>
<style type="text/css">
 .ie8_box{font-size:21px; font-weight:600; position:fixed; bottom:0; width:100%; padding:20px 0; border:2px solid #666; z-index:9999; border-left:0; border-right:0; background:#fff; border-bottom:0; text-align:center;}
 .ie8_box dt{font-size:24px; color:#2d58b5; margin-bottom:5px; background:url(/front/images/introduce/ico_notice.png) no-repeat 0 50%; padding:10px 0 10px 50px; display:inline-block;}
 .ie8_box dd{font-size:16px; line-height:1.4; font-weight:600; color:#666;}
 .ie8_box dd a{display:inline-block; margin-top:5px; background:#38afe9; color:#fff; font-size:18px; font-weight:600; padding:5px 20px; border-radius:10px;}
</style>
<div class="ie8_box">
  <dl>
    <dt>분당서울대학교병원 홈페이지는 익스플로러 11에 최적화 되어있습니다.</dt>
    <dd>지금 바로 업그레이드 하시어 보다 안전하고 빠르게 분당서울대학교 홈페이지를 이용하세요.
    </dd>
    <dd><a target="_blank" href="https://www.microsoft.com/ko-kr/download/internet-explorer.aspx">최신 익스플로러11 업그레이드 바로가기</a></dd>
  </dl>
</div>
 <![endif]-->



					<!--메인 비주얼-->
					<div class="main_v_section">
						<!-- <div class="text_section">
							로고
							<div class="move_text">
								<div class="move_text01">
									<img src="/front/images/container/txt_1.png" alt="Lead"
										style="padding-top: 0px; opacity: 1;"> <img
										src="/front/images/container/txt_2.png" alt="the"
										style="padding-top: 0px; opacity: 1;"> <img
										src="/front/images/container/txt_3.png" alt="Standard"
										style="padding-top: 0px; opacity: 1;">
								</div>
								<div class="move_text02">
									<img src="/front/images/container/txt_4.png" alt="Build"
										style="padding-top: 0px; opacity: 1;"> <img
										src="/front/images/container/txt_5.png" alt="the"
										style="padding-top: 0px; opacity: 1;"> <img
										src="/front/images/container/txt_6.png" alt="Trust"
										style="padding-top: 0px; opacity: 1;">
								</div>
								<div class="move_text02">
									<img src="/front/images/container/txt_7.png"
										alt="세계 의료의 표준을 선도하는 국민의 병원"
										style="padding-top: 0px; opacity: 1;">
								</div>
								<div class="move_text03">
									<img src="/front/images/container/img_8.png" alt="서울대학교 로고"
										style="padding-top: 0px; opacity: 1;">
								</div>
							</div>
							/로고
						</div> 

						<!--배경-->

						<!-- <ul class="slideshow">

							<li class="bg_1 active">&nbsp;<img style="display: none;"
								alt="홈페이지메인배경화면" src="/upload//"></li>

						</ul>
						/배경

						모바일 로고
						<p class="m_logo">
							<img src="/front/images/container/img_m.png"
								alt="Lead the Standard Build the Trust 세계의료의 표준을 선도하는 국민의 병원">
						</p> -->
						<!--/모바일 로고-->
					</div>
					<!--/메인 비주얼-->

					<hr>

					<!--메인 메뉴-->
					<div class="main_menu_section">
						<h2 class="skip">본문</h2>

						<!--모바일 진료카드-->
						<div class="bh_barco_layer_wrap">
							<div class="bh_barco_bg"></div>
							<div class="bh_barco_layer">
								<!-- <div class="bh_barco_layer1">
									<img src="/front/images/medical/img_barco_logo.png"
										alt="SNUBH 분당서울대학교병원 Lead the Standard, Build the Trust"
										class="bh_barco_img_1"> <img
										src="/front/images/medical/ico_barco_logo.png"
										alt="분당서울대학교병원 마크" class="bh_barco_img_2">
									<div class="bh_barco_layer2">

										<div class="bh_barco_layer3">

											<ul>
												<li><img src="" alt="Barcode"></li>
												<li><img src="" alt="Barcode"></li>
												<li><img src="" alt="Barcode"></li>
												<li><img src="" alt="Barcode"></li>
												<li><img src="" alt="Barcode"></li>
											</ul>

											<div class="m_bar_div">
												<strong>님 <span>환자번호 : <em></em></span></strong>
											</div>

											<div class="bh_barco_line_bg0">
												<div class="bh_barco_line_bg1">
													<div class="bh_barco_line_bg2">
														<div class="bh_barco_line_bg3">
															<div class="bh_barco_line_bg4">
																모바일 진료카드는<br>무인수납기에서 사용 가능 합니다.
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div> -->
							</div>
						</div>
						<!--/모바일 진료카드-->

						<!--모바일 개인화 서비스-->


						<!--pc 로그인을 하면 pc_login클래스 선언-->
						<ul class="m_ddd fix">

							<!--간편예약상담-->
							<li class="main_li_1" style="top: 0px; height: 239px;">
								<dl>
									<dt>
										<a href="/reserve/firstReserve.do">간편상담예약</a>
									</dt>
									<dd>
										<form onsubmit="return chkPhone(this)" lpformnum="2">
											<fieldset>
												<legend>간편상담예약</legend>
												<div class="pd_20 mb5">
													<p class="phone_p">
														<input class="input_text_c1" maxlength="12" type="tel"
															name="phone" onkeydown="onlyNum(this, event)" title="연락처"
															placeholder="000 - 0000 - 0000"
															style="width: 85%; text-align: center;">
													</p>
												</div>
												<p class="pd_20">
													<input class="btn_blue" type="submit" value="신청">
												</p>
											</fieldset>
										</form>
									</dd>
								</dl> <!--PC 개인화 정보-->
								<div class="pc_login_info">
									<div class="top_pc_login_info">
										<p>
											<strong>님</strong> <em>반갑습니다.</em>
										</p>


										<span></span>




									</div>

									<div class="bottom_pc_login_info">
										<p class="ico_car1">




											<a href="/personal/carinfo.do">차량 등록</a>


										</p>
										<p class="ico_info1">
											<a href="/personal/info/myInfoChk.do">개인정보수정</a>
										</p>
									</div>
								</div> <!--/PC 개인화 정보-->
							</li>
							<!--/간편예약상담-->

							<!--예약현황조회-->
							<li class="main_li_2" style="top: 0px; height: 239px;"><a
								href="/personal/resvrStatusList.do">
									<dl>
										<dt>예약현황조회</dt>
										<dd>진료예약현황을 조회</dd>
									</dl>
							</a> <!--진료예약,검사예약-->
								<div class="pc_card_bottom_form fix">

									<!--진료예약-->
									<div class="lft_card_bottom">
										<div class="pc_lft_card_bottom">
											<div>
												<a href="/personal/resvrStatusList.do"><strong>진료예약</strong></a>
												<p class="btn_more">
													<a href="/personal/resvrStatusList.do"><img
														src="/front/images/main/btn_n_plus.png" alt=""></a>
												</p>
											</div>




											<div class="sec_dd">
												<span class="cpt_span">예약된 진료가 없습니다.</span>
											</div>

										</div>

									</div>
									<!--/진료예약-->

									<!--검사예약-->
									<div class="rit_card_bottom">
										<div class="pc_lft_card_bottom">
											<div>
												<a href="/personal/resvrCheckStatusList.do"><strong>검사예약</strong></a>
												<p class="btn_more">
													<a href="/personal/resvrCheckStatusList.do"><img
														src="/front/images/main/btn_n_plus.png" alt=""></a>
												</p>
											</div>




											<div class="sec_dd">
												<span class="cpt_span">예약된 검사가 없습니다.</span>
											</div>


										</div>
									</div>
									<!--/검사예약-->

								</div> <!--/진료예약,검사예약--></li>
							<!--/예약현황조회-->

							<!--의료진/진료과 찾기-->
							<li class="main_li_3" style="top: 0px; height: 239px;">
								<dl>
									<dt>
										<a href="/medical/drMedicalTeam.do">의료진/<span>진료과
												찾기</span></a>
									</dt>
									<dd>
										<form action="/search.do" onsubmit="return chkTxt2( this );">
											<fieldset>
												<legend>의료진/진료과 찾기</legend>
												<p class="pd_20 mb5">
													<label class="skip" for="search_txt">의료진, 진료과 입력</label><input
														class="input_text_c" type="search" name="search_txt"
														id="search_txt" placeholder="의료진, 진료과 입력">
												</p>
												<p class="pd_20">
													<input class="btn_blue" type="submit" value="찾기">
												</p>
											</fieldset>
										</form>
									</dd>
								</dl>
							</li>
							<!--/의료진/진료과 찾기-->

							<!--온라인 예약-->
							<li class="main_li_4" style="top: 0px; height: 239px;"><a
								href="/reserve/onlineReserve.do">
									<dl>
										<dt>온라인 예약</dt>
										<dd>온라인으로 진료예약을 진행</dd>
									</dl>
							</a></li>
							<!--/온라인 예약-->

							<!--오시는길-->
							<li class="main_li_5" style="top: 240px; height: 239px;"><a
								href="/intro/map/road.do">
									<dl>
										<dt>찾아오시는 길</dt>
										<dd>지하철, 버스, 자동차, 기차</dd>
									</dl>
							</a></li>
							<!--/오시는길-->

							<!--진료비결제-->
							<li class="main_li_6" style="top: 0px; height: 239px;"><a
								href="/treatmentpay/PayMedicalList.do">
									<dl>
										<dt>진료비결제</dt>
										<dd>결제관련 절차 및 안내</dd>
									</dl>
							</a></li>
							<!--/진료비결제-->

							<!--진료스케쥴-->
							<li class="main_li_7" style="top: 0px; height: 239px;"><a
								href="/medical/deptListTime.do">
									<dl>
										<dt>외래진료일정표</dt>
										<dd>진료과별 진료스케쥴 확인</dd>
									</dl>
							</a></li>
							<!--/진료스케쥴-->

							<!--처방동영상-->
							<li class="main_li_8" style="top: 0px; height: 239px;"><a
								href="/personal/myHichart.do">
									<dl>
										<dt>처방동영상</dt>
										<dd>나의 처방동영상 확인</dd>
									</dl>
							</a></li>
							<!--/처방동영상-->

							<!--Health4U-->
							<li class="main_li_9" style="top: 0px; height: 239px;"><a
								href="/personal/health4u.do">
									<dl>
										<dt>
											<span>Health4U</span>
										</dt>
										<dd>나의 진료기록 조회</dd>
									</dl>
							</a></li>
							<!--/Health4U-->

							<!--주요기사-->
							<li class="main_li_10" style="top: -1px; height: 239px;"><a
								href="/intro/news/newsList.do">
									<dl>
										<dt>언론소식</dt>
										<dd>병원관련 주요기사</dd>
									</dl>
							</a></li>
							<!--/주요기사-->
						</ul>

						<!--하단 add 메뉴-->
						<ul class="add_menu_section fix">
							<li class="add_menu_1"><a href="/medical/out/clinic01.do">
									<dl>
										<dt>외래진료안내</dt>
										<dd>외래진료 관련 절차 및 안내</dd>
									</dl>
							</a></li>

							<li class="add_menu_2"><a href="/personal/certi/ctfIssue.do">
									<dl>
										<dt>증명서발급</dt>
										<dd>증명서 발급에 대한 안내</dd>
									</dl>
							</a></li>

							<li class="add_menu_3"><a href="/medical/program.do">
									<dl>
										<dt>건강검진안내</dt>
										<dd>건강검진 프로그램 안내</dd>
									</dl>
							</a></li>

							<li class="add_menu_4"><a
								href="https://msri.snubh.org/index.do" target="_blank">
									<dl>
										<dt>연구부문</dt>
										<dd>21세기를 선도하는 연구부문</dd>
									</dl>
							</a></li>
						</ul>
						<!--/하단 add 메뉴-->
					</div>
					<!--/메인 메뉴-->

					<!--하단 센터소개-->
					<!-- <div class="center_intro_section slideshow2">
						<div class="center_intro_form fix">
							<div class="center_intro_div">
								<ul class="center_intro_cnt">
									<li style="display: none;">
										<div>
											<dl>
												<dt>
													<strong>분당서울대학교병원<em>암센터</em></strong>
												</dt>
												<dd class="tit_dd">
													<strong>세상 모든 이에게 건강과 행복을!</strong> 2008년 6월 암센터 진료를 시작한
													이래, <br> 암환자들의 다양한 요구에 부응하여 전문적이면서도 <br> 고급화된
													통합진료와 삶의 질 향상을 위하여 <br> 분당서울대학교병원이 2013년 새롭게 출발하였습니다.
													<br> 분당서울대학교병원 암센터는 World BEST in 2020 이라는<br> 비전
													하에 다음과 같은 과제를 통해 암환자들이<br> 행복하도록 최선을 다하고자 합니다.
												</dd>
											</dl>
											<p class="btn_center">
												<a href="https://cancer.snubh.org/index.do" target="_blank"
													title="새창으로 열기">암센터 바로가기</a>
											</p>
										</div>
									</li>

									<li style="display: none;">
										<div>
											<dl>
												<dt>
													<strong>분당서울대학교병원<em>뇌신경센터</em></strong>
												</dt>
												<dd class="tit_dd">
													<strong>세계 최고의 뇌신경병원을 통한 뇌신경계 질환 정복</strong> 분당서울대학교병원은
													2003년 5월 국내 최초로 뇌신경센터를<br> 설립하여 한층 더 높은 차원의 진단과 치료를
													제공하기 위해<br> 뇌신경계질환을 통합 관리하여 집중 치료하는<br> 세계 최고 수준의
													뇌신경센터를 운영하고 있습니다.
												</dd>
											</dl>
											<p class="btn_center">
												<a href="https://bcni.snubh.org/index.do" target="_blank"
													title="새창으로 열기">뇌신경센터 바로가기</a>
											</p>
										</div>
									</li>

									<li style="display: none;">
										<div>
											<dl>
												<dt>
													<strong>분당서울대학교병원<em>노인의료센터</em></strong>
												</dt>
												<dd class="tit_dd">
													<strong>노인의료센터에 오신 것을 환영합니다.</strong> 분당서울대학교병원 노인의료센터에서는
													노인병내과, 신경과, <br> 재활의학과, 정신건강의학과의 전문의와 노인 전문간호사, 영양사, <br>
													약사, 사회복지사 등으로 구성된 전문팀이 환자 개개인의 특성과 <br> 상황에 맞는 개별화된
													진료를 제공하여 진료의 효율성을 <br> 높이고 있습니다.
												</dd>
											</dl>
											<p class="btn_center">
												<a href="https://www.snubh.org/dh/gc/" target="_blank"
													title="새창으로 열기">노인의료센터 바로가기</a>
											</p>
										</div>
									</li>

									<li style="display: list-item;">
										<div>
											<dl>
												<dt>
													<strong>분당서울대학교병원<em>심장혈관센터</em></strong>
												</dt>
												<dd class="tit_dd">
													<strong>심장혈관센터에 오신 것을 환영합니다.</strong> 분당서울대학교병원 심장혈관센터는 생활
													수준의 향상과 <br> 서구화된 생활 패턴으로 인해 나날이 증가하고 있는 심장, <br>
													혈관 질환을 효과적으로 치료하고, 최상의 의료서비스를 제공하기 <br> 위해 순환기내과와 흉부외과
													외 여러 의료진이 함께 모여 <br> 협동 진료하는 센터입니다.
												</dd>
											</dl>
											<p class="btn_center">
												<a href="https://www.snubh.org/dh/cvc/" target="_blank"
													title="새창으로 열기">심장혈관센터 바로가기</a>
											</p>
										</div>
									</li>

									<li style="display: none;">
										<div>
											<dl>
												<dt>
													<strong>분당서울대학교병원<em>폐센터</em></strong>
												</dt>
												<dd class="tit_dd">
													<strong>폐센터에 오신 것을 환영합니다.</strong> 분당서울대학교병원은 2003년 개원 시부터
													센터 중심의 진료를 <br> 표방하였으며, 그 중심에 저희 폐센터가 자리하고 있습니다. <br>
													이름뿐인 센터가 아니라 환자를 가운데에 두고 전문 의료진이 <br> 감싸 안는 형태인 실질적인
													센터 진료로 국내 최고의 폐센터로 <br> 자부하고 있습니다.
												</dd>
											</dl>
											<p class="btn_center">
												<a href="https://www.snubh.org/dh/rc/" target="_blank"
													title="새창으로 열기">폐센터 바로가기</a>
											</p>
										</div>
									</li>

									<li style="display: none;">
										<div>
											<dl>
												<dt>
													<strong>분당서울대학교병원<em>관절센터</em></strong>
												</dt>
												<dd class="tit_dd">
													<strong>관절센터에 오신 것을 환영합니다.</strong> 분당서울대학교병원 관절센터는 골, 관절,
													신경, 근육 질환과 <br> 외상에 대한 종합적인 진료, 교육, 연구를 목표로 2003년 5월
													10일 <br> 분당서울대학교병원이 진료를 시작하면서 동시에 개소되었습니다. <br>
													관절 질환에 대해서 국제적인 연구업적을 축적해온 총 14명의 <br> 서울대학교 의과대학
													교수진(정형외과 10명, 진단방사선과 3명, <br> 류마티스내과 1명)이 참여하여
													설립되었습니다.
												</dd>
											</dl>
											<p class="btn_center">
												<a href="https://www.snubh.org/dh/jrc/" target="_blank"
													title="새창으로 열기">관절센터 바로가기</a>
											</p>
										</div>
									</li>

									<li style="display: none;">
										<div>
											<dl>
												<dt>
													<strong>분당서울대학교병원<em>척추센터</em></strong>
												</dt>
												<dd class="tit_dd">
													<strong>당신의 척추를 건강하게 지켜드리겠습니다</strong> 2008년 6월 척추센터를 개소하였고
													척추 질환을 다루는 모든 <br> 진료 분야 즉, 신경외과, 정형외과, 재활의학과, 신경과, <br>
													마취통증의학과, 영상의학과의 전문 의료진이 유기적으로 <br> 상호 연계할 수 있는 통합 진료
													시스템을 갖추고 최적의 <br> 척추 질환 의료 서비스를 제공하고 있습니다.
												</dd>
											</dl>
											<p class="btn_center">
												<a href="https://www.snubh.org/dh/spc/" target="_blank"
													title="새창으로 열기">척추센터 바로가기</a>
											</p>
										</div>
									</li>

									<li style="display: none;">
										<div>
											<dl>
												<dt>
													<strong>분당서울대학교병원<em>소화기센터</em></strong>
												</dt>
												<dd class="tit_dd">
													<strong>소화기센터에 오신 것을 환영합니다.</strong> 소화기센터는 식도, 위, 소장, 대장,
													직장에서 발생하는 각종 질환 <br> 및 간, 담낭을 포함한 담도계, 췌장 등의 이상에 대한 진단
													및 <br> 치료를 담당하는 과입니다. 내시경을 이용한 각종 시술 즉, <br>
													(수면)위내시경, (수면)대장내시경, 췌담도내시경 등의 진단 내시경 <br> 뿐 아니라 용종절제술
													등을 포함한 각종 치료 내시경을 <br> 시행하고 있습니다.
												</dd>
											</dl>
											<p class="btn_center">
												<a href="https://www.snubh.org/dh/aac/" target="_blank"
													title="새창으로 열기">소화기센터 바로가기</a>
											</p>
										</div>
									</li>

									<li style="display: none;">
										<div>
											<dl>
												<dt>
													<strong>분당서울대학교병원<em>건강증진센터</em></strong>
												</dt>
												<dd class="tit_dd">
													<strong>For Your Health &amp; Happy Life</strong> 국내 최고의 전문
													의료진의 풍부한 임상경험을 통한 신뢰할 수 <br> 있는 정확한 진단과 최적의 치료는
													건강증진센터만의 자랑이자 <br> 자부심입니다. 내외국인 모두가 만족할 수 있는 혁신적인 시스템
													<br> 운영과 함께 결과 상담 이후에도 전문화된 클리닉을 통해 <br> 체계적이고
													지속적인 건강관리가 가능하며 언제든지 모든 진료과 <br> 교수진의 신속한 선진 의술의 혜택을
													누리실 수 있습니다.
												</dd>
											</dl>
											<p class="btn_center">
												<a href="https://hpc.snubh.org/index.do" target="_blank"
													title="새창으로 열기">건강증진센터 바로가기</a>
											</p>
										</div>
									</li>
								</ul>

								<div class="play_form fix">
									<p class="lft_play_form">
										<span><a href="#" class="stop"><img
												src="/front/images/main/btn_stop.png" alt="센터 배너 정지"></a></span>
										<span><a href="#" class="play"><img
												src="/front/images/main/btn_play.png" alt="센터 배너 시작"></a></span>
									</p>

									<ul class="rit_play_form fix">
										<li><a href="#"><img
												src="/front/images/main/ico_off.png" alt="암센터 배너"></a></li>
										<li><a href="#"><img
												src="/front/images/main/ico_off.png" alt="뇌신경센터 배너"></a></li>
										<li><a href="#"><img
												src="/front/images/main/ico_off.png" alt="노인의료센터 배너"></a></li>
										<li><a href="#"><img
												src="/front/images/main/ico_on.png" alt="심장혈관센터 배너"></a></li>
										<li><a href="#"><img
												src="/front/images/main/ico_off.png" alt="폐센터 배너"></a></li>
										<li><a href="#"><img
												src="/front/images/main/ico_off.png" alt="관절센터 배너"></a></li>
										<li><a href="#"><img
												src="/front/images/main/ico_off.png" alt="척추센터 배너"></a></li>
										<li><a href="#"><img
												src="/front/images/main/ico_off.png" alt="소화기센터 배너"></a></li>
										<li><a href="#"><img
												src="/front/images/main/ico_off.png" alt="건강증진센터 배너"></a></li>
									</ul>
								</div>
							</div>
						</div>

						<ul class="center_img_ul">
							<li class="bg_c_1 active" style="display: none; opacity: 0;"><span
								class="skip">암센터 이미지</span></li>
							<li class="bg_c_2" style="display: none; opacity: 0;"><span
								class="skip">뇌신경센터 이미지</span></li>
							<li class="bg_c_3" style="display: none; opacity: 0;"><span
								class="skip">노인의료센터 이미지</span></li>
							<li class="bg_c_4" style="display: none; opacity: 1;"><span
								class="skip">심장혈관센터 이미지</span></li>
							<li class="bg_c_5" style="display: none; opacity: 0;"><span
								class="skip">폐센터 이미지</span></li>
							<li class="bg_c_6" style="display: none; opacity: 0;"><span
								class="skip">관절센터 이미지</span></li>
							<li class="bg_c_7" style="display: none; opacity: 0;"><span
								class="skip">척추센터 이미지</span></li>
							<li class="bg_c_8" style="display: none; opacity: 0;"><span
								class="skip">소화기센터 이미지</span></li>
							<li class="bg_c_9" style="display: none; opacity: 0;"><span
								class="skip">건강증진센터 이미지</span></li>
						</ul>
					</div> -->
					<!--/하단 센터소개-->

					<hr>

					<!--헬스 플러스-->
					<!-- <div class="healthplus_section flexslider">
						<h4>
							<strong>SNUBH Health Plus</strong> <span>분당서울대학교병원에서 제공하는
								다양한 정보를 통해 건강한 삶을 누리세요.</span>
						</h4>
						<ul class="health_ul fix">

							건강강좌
							<li class="health_li1">
								<div class="health_h5_1">
									<a href="/service/lecture/healthLectList.do">건강강좌</a>
								</div>
								<div class="bh_main_health_scroll">
									<div class="bh_main_health_scroll_x">
										<ul class="sec_ul" id="edu_area">

											<li><a class="btn_link"
												href="/service/lecture/healthLectView.do?EDU_NO=438"><div>
														<dl>
															<dt>뇌동맥류(뇌혈관 꽈리)에 대해 알아봅시다.</dt>
															<dd class="day_date">주제 : 뇌혈관 꽈리</dd>
															<dd class="day_date">일정 : 2017.11.30 15:00 ~ 16:30</dd>
															<dd class="day_date">강사 : 신경외과 김택균 교수, 반승필 교수</dd>
															<dd class="day_date">장소 :분당서울대학교병원 1동 지하1층 대강당</dd>
															<dd></dd>
														</dl>
													</div></a></li>
											<li><a class="btn_link"
												href="/service/lecture/healthLectView.do?EDU_NO=437"><div>
														<dl>
															<dt>투석과 함께 살아가기(두번째 이야기)</dt>
															<dd class="day_date">주제 : 투석에 관한 두번째 이야기</dd>
															<dd class="day_date">일정 : 2017.11.24 14:00 ~ 16:00</dd>
															<dd class="day_date">강사 : 진호준 교수</dd>
															<dd class="day_date">장소 :분당서울대학교병원 1동 지하1층 대강당</dd>
															<dd></dd>
														</dl>
													</div></a></li>
											<li><a class="btn_link"
												href="/service/lecture/healthLectView.do?EDU_NO=436"><div>
														<dl>
															<dt>기능성 소화불량증과 위식도 역류질환</dt>
															<dd class="day_date">주제 : 기능성 소화불량증과 위식도 역류질환</dd>
															<dd class="day_date">일정 : 2017.11.08 15:00 ~ 16:00</dd>
															<dd class="day_date">강사 : 김나영 교수</dd>
															<dd class="day_date">장소 :분당서울대학교병원 1동 지하1층 대강당</dd>
															<dd></dd>
														</dl>
													</div></a></li>
											<li><a class="btn_link"
												href="/service/lecture/healthLectView.do?EDU_NO=434"><div>
														<dl>
															<dt>건강한 심장 만들기</dt>
															<dd class="day_date">주제 : 심장질환의 치료와 예방</dd>
															<dd class="day_date">일정 : 2017.10.19 10:00 ~ 11:00</dd>
															<dd class="day_date">강사 : 순환기내과 윤연이 교수, 이지현 교수</dd>
															<dd class="day_date">장소 :1동 지하 1층 대강당</dd>
															<dd></dd>
														</dl>
													</div></a></li>
										</ul>
									</div>
								</div>

								<p class="btn_more">
									<a href="/service/lecture/healthLectList.do"><img
										src="/front/images/main/ico_plus.png" alt="더보기"></a>
								</p>
							</li>
							/건강강좌

							헬스포커스
							<li class="health_li2">
								<div class="health_h5_2">
									<a href="/service/info/com/list.do">헬스포커스</a>
								</div>
								<div class="bh_main_health_scroll">
									<p class="slick-prev"></p>
									<div class="bh_main_health_scroll_x ">
										<ul class="sec_ul" id="b004_area">

											<li class="" style="" tabindex="0" role="option"
												aria-describedby="slick-slide00"><a class="btn_link"
												href="/service/info/com/view.do?BNO=312&amp;Board_ID=B004&amp;RNUM=1"
												tabindex="0"><div>
														<dl>
															<dt>우리 몸의 방어시스템 '면역력'을 점검하자</dt>
															<dd class="img_dd">
																<img src="/upload/board/B004/dse-info_immunity_06.jpg"
																	alt="우리 몸의 방어시스템 " 면역력'을="" 점검하자="" 이미지'="" width="220">
															</dd>
														</dl>
													</div></a></li>
											<li class="" style="" tabindex="-1" role="option"
												aria-describedby="slick-slide01"><a class="btn_link"
												href="/service/info/com/view.do?BNO=311&amp;Board_ID=B004&amp;RNUM=2"
												tabindex="-1"><div>
														<dl>
															<dt>면역력과의 싸움 대상포진 질환의 이해</dt>
															<dd class="img_dd">
																<img src="/upload/board/B004/dse-info_DSPZ_04.jpg"
																	alt="면역력과의 싸움 대상포진 질환의 이해 이미지" width="220">
															</dd>
														</dl>
													</div></a></li>
											<li class="" style="" tabindex="-1" role="option"
												aria-describedby="slick-slide02"><a class="btn_link"
												href="/service/info/com/view.do?BNO=310&amp;Board_ID=B004&amp;RNUM=3"
												tabindex="-1"><div>
														<dl>
															<dt>E형간염이란?</dt>
															<dd class="img_dd">
																<img src="/upload/board/B004/HEVgan_05.jpg"
																	alt="E형간염이란? 이미지" width="220">
															</dd>
														</dl>
													</div></a></li>
										</ul>
									</div>
									<p class="slick-next"></p>
								</div>

								<p class="btn_more">
									<a href="/service/info/com/list.do"><img
										src="/front/images/main/ico_plus.png" alt="더보기"></a>
								</p>
							</li>
							헬스포커스

							헬스라이프
							<li class="health_li3">
								<div class="health_h5_3">
									<a href="/service/info/folks/list.do">헬스라이프</a>
								</div>
								<div class="bh_main_health_scroll">
									<p class="slick-prev"></p>
									<div class="bh_main_health_scroll_x">
										<ul class="sec_ul" id="b003_area">

											<li class="" style="" tabindex="0" role="option"
												aria-describedby="slick-slide10"><a class="btn_link"
												href="/service/info/folks/view.do?BNO=101&amp;Board_ID=B003&amp;RNUM=1"
												tabindex="0"><div>
														<dl>
															<dt>폐경기 여성을 위한 맛있는 콩 요리</dt>
															<dd class="img_dd">
																<img src="/upload/board/B003/h-recipe_bean_05.jpg"
																	alt="폐경기 여성을 위한 맛있는 콩 요리 이미지" width="220">
															</dd>
														</dl>
													</div></a></li>
											<li class="" style="" tabindex="-1" role="option"
												aria-describedby="slick-slide11"><a class="btn_link"
												href="/service/info/folks/view.do?BNO=100&amp;Board_ID=B003&amp;RNUM=2"
												tabindex="-1"><div>
														<dl>
															<dt>남녀노소 쉽고 재미있게! 스포츠클라이밍 입문하기</dt>
															<dd class="img_dd">
																<img src="/upload/board/B003/cul-info_climbing_07.jpg"
																	alt="남녀노소 쉽고 재미있게! 스포츠클라이밍 입문하기 이미지" width="220">
															</dd>
														</dl>
													</div></a></li>
											<li class="" style="" tabindex="-1" role="option"
												aria-describedby="slick-slide12"><a class="btn_link"
												href="/service/info/folks/view.do?BNO=99&amp;Board_ID=B003&amp;RNUM=3"
												tabindex="-1"><div>
														<dl>
															<dt>서울 근교 천문대 나들이 - 별 헤는 가을밤, 반짝이는 추억 만들기</dt>
															<dd class="img_dd">
																<img src="/upload/board/B003/cul-info_star_02_02.jpg"
																	alt="서울 근교 천문대 나들이 - 별 헤는 가을밤, 반짝이는 추억 만들기 이미지"
																	width="220">
															</dd>
														</dl>
													</div></a></li>
										</ul>
									</div>
									<p class="slick-next"></p>
								</div>

								<p class="btn_more">
									<a href="/service/info/folks/list.do"><img
										src="/front/images/main/ico_plus.png" alt="더보기"></a>
								</p>
							</li>
							/헬스라이프

							힐링스토리
							<li class="health_li4">
								<div class="health_h5_4">
									<a href="/service/hope/list.do">힐링스토리</a>
								</div>
								<div class="bh_main_health_scroll">
									<p class="slick-prev"></p>
									<div class="bh_main_health_scroll_x">
										<ul class="sec_ul" id="b047_area">

											<li class="" style="" tabindex="0" role="option"
												aria-describedby="slick-slide20"><a class="btn_link"
												href="/service/hope/view.do?BNO=22" tabindex="0"><div>
														<dl>
															<dt>아빠의 믿음이 만든 기적</dt>
															<dd>신현아 양은 자가면역뇌염이 오래 진행되어 위독한 상태에서 분당서울대학교병원을
																찾았다.중환자실에서 며칠을 깨어나지 못했다. 딸 하나만 바라보고 살아온 아빠의 마음은 무너져 내렸다.
																나이 드신...</dd>
														</dl>
													</div></a></li>
											<li class="" style="" tabindex="-1" role="option"
												aria-describedby="slick-slide21"><a class="btn_link"
												href="/service/hope/view.do?BNO=20" tabindex="-1"><div>
														<dl>
															<dt>유방암 수술 후 상실감마저 치료됐습니다.</dt>
															<dd>교수님을 만나 희망과 용기를 얻다 분당서울대병원 홍보팀으로 한 통의 엽서가 도착했다.
																`유방암 진단을 받고 절망에 빠졌을 때 정재훈 교수님을 만나 희망과 용기를 얻을 수 있었습니다. 항상
																...</dd>
														</dl>
													</div></a></li>
											<li class="" style="" tabindex="-1" role="option"
												aria-describedby="slick-slide22"><a class="btn_link"
												href="/service/hope/view.do?BNO=19" tabindex="-1"><div>
														<dl>
															<dt>'귀' 기울여 들어주셔서 감사합니다.</dt>
															<dd>&nbsp;&nbsp; 다시 들을 수 있다는 희망을 갖게 된 날 중학생이었던 동생
																준호씨가 처음 보청기를 끼던 날이었다. 얼굴을 맞대고 큰소리로 얘기해야 겨우 알아듣던 동생이 어느
																정도 거...</dd>
														</dl>
													</div></a></li>
											<li class="" style="" tabindex="-1" role="option"
												aria-describedby="slick-slide23"><a class="btn_link"
												href="/service/hope/view.do?BNO=18" tabindex="-1"><div>
														<dl>
															<dt>천천히 곱씹는 삶, 한 술 밥에 배부르다</dt>
															<dd>불안을 삼키고 용기를 내다 “음식을 그저 음식답게 먹고 싶었어요. 먹는 게 고통인
																지경에 이르면 절로 그런 생각이 듭니다. 그렇다고 음식을 안 먹을 순 없잖아요. 당장 배가 고프니까.
																그저...</dd>
														</dl>
													</div></a></li>
										</ul>
									</div>
									<p class="slick-next"></p>
								</div>

								<p class="btn_more">
									<a href="/service/hope/list.do"><img
										src="/front/images/main/ico_plus.png" alt="더보기"></a>
								</p>
							</li>
							/힐링스토리

							스누비안존
							<li class="health_li5">
								<div class="health_h5_5">
									<a href="/intro/news/snubhStory/list.do">스누비안존</a>
								</div>
								<div class="bh_main_health_scroll">
									<div class="bh_main_health_scroll_x">
										<ul class="sec_ul" id="b048_area">

											<li><a class="btn_link"
												href="/intro/news/snubhStory/view.do?BNO=43"><div>
														<dl>
															<dt>[권역응급의료센터] 꺼져가는 생명과 국가 의료재난의 마지막 보루</dt>
															<dd>분당서울대학교병원 권역응급의료센터는 일반 응급실에서 치료가 힘든 환자들이 이송되는
																‘응급실 중의 응급실’이다. 전국 40개 의료권역 중 하나인 경기남동권역 응급 환자들의 최종 치료
																책임을 ...</dd>
														</dl>
													</div></a></li>
											<li><a class="btn_link"
												href="/intro/news/snubhStory/view.do?BNO=42"><div>
														<dl>
															<dt>[고위험 산모•신생아 통합치료센터] 건강한 인생의 첫걸음을 내딛다.</dt>
															<dd>경기도 권역 내 최초로 고위험 산모·신생아 거점 병원으로 선정 요즘 활발해진 여성들의
																사회활동과 늦게 결혼하는 추세가 이어지면서 고령 산모가 많아지고 있고, 늦은 나이에 임신을 하게 되면
																...</dd>
														</dl>
													</div></a></li>
											<li><a class="btn_link"
												href="/intro/news/snubhStory/view.do?BNO=40"><div>
														<dl>
															<dt>[어지럼증센터] 몸의 중심을 바로 잡다</dt>
															<dd>'국내 최대 규모의 어지럼증센터' 어지럼증은 살면서 한번쯤은 겪어 볼 수 있을 정도로
																흔한 질환이다. 쉽게 호전되는 경우도 많지만 어지럼증의 정도가 심하거나 반복된다면 양성질환에서부터
																뇌졸...</dd>
														</dl>
													</div></a></li>
											<li><a class="btn_link"
												href="/intro/news/snubhStory/view.do?BNO=39"><div>
														<dl>
															<dt>[성형외과] 사람을 건강하고, 아름답게</dt>
															<dd>사람을 더욱 건강하고 아름답게 만들어주는 성형외과 유방암으로 진단받고, 여성의
																자존심으로 여겨지는 유방절제술을 시행 받는 것은 환자에게 큰 상실감과 상처를 주기 마련이다. 유방
																재건술은 이...</dd>
														</dl>
													</div></a></li>
										</ul>
									</div>
								</div>

								<p class="btn_more">
									<a href="/intro/news/snubhStory/list.do"><img
										src="/front/images/main/ico_plus.png" alt="더보기"></a>
								</p>
							</li>
							/스누비안존

							나음진
							<li class="health_li6">
								<div class="health_h5_6">
									<a href="/service/info/ebook/list.do">나음진</a>
								</div>
								<div class="bh_main_health_scroll">
									<div class="bh_main_health_scroll_x">
										<ul class="sec_ul" id="b057_area">

											<li><a class="btn_link"
												href="/file_download.do?board_id=B057&amp;dirName=board/B057&amp;fileOrgName=41D638 2017AC00C744(B2E8BA74).pdf&amp;fileRealName=41호 2017가을(단면).pdf"><div>
														<dl>
															<dt>피부</dt>
															<dd class="sw_ebook_subject">41호 2017가을</dd>
															<dd class="img_dd">
																<img src="/upload/board/B057/AC00C744D638BA54C778.jpg"
																	alt="41호 2017가을 이미지" width="220">
															</dd>
														</dl>
													</div></a></li>
											<li><a class="btn_link"
												href="/file_download.do?board_id=B057&amp;dirName=board/B057&amp;fileOrgName=40D638 2017C5ECB984(B2E8BA74).pdf&amp;fileRealName=40호 2017여름(단면).pdf"><div>
														<dl>
															<dt>비만</dt>
															<dd class="sw_ebook_subject">40호 2017여름</dd>
															<dd class="img_dd">
																<img
																	src="/upload/board/B057/C5ECB984BA54C778CD5CC88522.jpg"
																	alt="40호 2017여름 이미지" width="220">
															</dd>
														</dl>
													</div></a></li>
											<li><a class="btn_link"
												href="/file_download.do?board_id=B057&amp;dirName=board/B057&amp;fileOrgName=39D638 2017BD04(B2E8BA74).pdf&amp;fileRealName=39호 2017봄(단면).pdf"><div>
														<dl>
															<dt>암</dt>
															<dd class="sw_ebook_subject">39호 2017봄</dd>
															<dd class="img_dd">
																<img
																	src="/upload/board/B057/BA54C778D398C774C9C0C774BBF8C9C0C791C5C5.jpg"
																	alt="39호 2017봄 이미지" width="220">
															</dd>
														</dl>
													</div></a></li>
										</ul>
									</div>
								</div>

								<p class="btn_more">
									<a href="/service/info/ebook/list.do"><img
										src="/front/images/main/ico_plus.png" alt="더보기"></a>
								</p>
							</li>
							/나음진

						</ul>

						<p class="btn_health_more mb30">
							<a href="javascript:health_data_load();"><img id="loader_btn"
								src="/front/images/main/btn_more.png" alt="헬스플러스 더 불러오기"></a>
						</p>
					</div> -->
					<!--/헬스 플러스-->


					<!-- 공지사항 -->
					<!-- <div class="main_notice_section main_new_table">
						<table>
							<colgroup>
								<col width="50%">
								<col width="50%">
							</colgroup>

							<thead>
								<tr>
									<th colspan="2"><a class="tit_m_notice_a fix"
										href="/intro/news/noti/list.do">공지사항 <img
											src="/front/images/main/btn_pp.gif" alt="더보기"></a></th>
								</tr>
							</thead>

							<tbody>




								<tr>


									<td><a href="/intro/news/noti/view.do?BNO=926"><em>공지</em>
											[분당서울대학교병원 홈페이지 회원 관리 정책 안내]</a></td>







									<td><a href="/intro/news/noti/view.do?BNO=680"><em>공지</em>
											[비급여 항목 안내]</a></td>


								</tr>





								<tr>


									<td><a href="/intro/news/noti/view.do?BNO=930"> 제 14회
											사랑나눔 자선 大바자회</a></td>







									<td><a href="/intro/news/noti/view.do?BNO=929"> 11월 공연
											및 건강강좌 일정</a></td>


								</tr>





								<tr>


									<td><a href="/intro/news/noti/view.do?BNO=928">
											[암정보교육센터]2017.11월 교육프로그램 일정표</a></td>







									<td><a href="/intro/news/noti/view.do?BNO=925"> 난임
											보조생식술 보험 적용 안내</a></td>


								</tr>




							</tbody>
						</table>



					</div> -->
					<!-- /공지사항 -->




				</div>
				<!--/contents_section-->

			</div>
			<!--/container_wrapper-->

			<hr>

			<!--footer_wrapper-->
			<!-- <div class="footer_wrapper fix" id="bh_footer">
				<h2 class="skip">카피라이트</h2>
				<div class="q_section">
					<h3 class="skip">바로가기 메뉴</h3>
					<ul class="sli_ddd">
						<li class="q1_1"><a href="/medical/drMedicalTeam.do"><img
								src="/front/images/sub/ico_q1.png" alt=""><span>의료진찾기</span></a></li>
						<li class="q2_1"><a href="/medical/deptListTime.do"><img
								src="/front/images/sub/ico_q2.png" alt=""><span>외래진료일정표</span></a></li>
						<li class="q3_1"><a href="/intro/map/road.do"><img
								src="/front/images/sub/ico_q3.png" alt=""><span>찾아오시는
									길</span></a></li>
						<li class="q4_1"><a href="/personal/certi/ctfIssue.do"><img
								src="/front/images/sub/ico_q4.png" alt=""><span>증명서발급</span></a></li>
						<li class="q5_1"><a href="/service/info/ebook/list.do"><img
								src="/front/images/sub/ico_q5.png" alt=""><span>나음진</span></a></li>
						<li class="q6_1"><a href="http://blog.naver.com/happy_snubh"
							target="_blank"><img src="/front/images/sub/ico_q5.jpg"
								alt=""><span>블로그</span></a></li>
						<li class="q7_1"><a
							href="https://www.facebook.com/SNUBundanghospital"
							target="_blank"><img src="/front/images/sub/ico_q6.gif"
								alt=""><span>페이스북</span></a></li>
						<li class="q8_1"><a href="https://www.youtube.com/user/snubh"
							target="_blank"><img src="/front/images/sub/ico_q7.gif"
								alt=""><span>유튜브</span></a></li>
						<li class="q9_1"><a href="javascript:alert( '준비중입니다.' );"><img
								src="/front/images/sub/ico_q8.gif" alt=""><span>톡!
									상담</span></a></li>
					</ul>
				</div>

				footer_util_section
				<ul class="footer_util_section fix">
					<li class="ico_f1"><a href="/intro/map/parking.do">주차안내</a></li>
					<li class="ico_f2"><a href="/intro/hospital/situation.do">병원현황</a></li>
					<li class="ico_f3"><a href="/medical/day/surgeryCenter01.do">당일수술센터</a></li>
					<li class="ico_f4"><a href="/medical/emergency/center.do">응급의료센터</a></li>
					<li class="ico_f5"><a href="/medical/inOut/hospital01.do">입원/퇴원</a></li>
					<li class="ico_f6"><a href="/medical/visit.do">면회</a></li>
					<li class="ico_f7"><a href="/medical/supDeptList.do">진료지원부서</a></li>
					<li class="ico_f8"><a href="#">콜센터</a></li>
				</ul>
				/footer_util_section

				<div class="add_footer_section fix">
					<div class="add_footer_form fix">

						<div class="lft_add_footer_form">
							<ul class="footer_util_ul fix">
								<li><a href="/member/privacy.do">개인정보처리방침</a></li>
								<li><a href="/member/rigths.do">환자권리장전</a></li>
								<li><a href="mailto:master@snubh.org">이메일주소수집거부</a></li>
								<li><a href="/personal/voice/customervoiceList.do">고객의
										소리</a></li>
								<li><a href="/personal/voice/behaviorViolnList.do">행동강령위반신고</a></li>
								<li><a href="/personal/voice/faq/list.do">FAQ</a></li>
								<li><a href="mailto:master@snubh.org">관리자이메일보내기</a></li>
								<li><a href="http://www.alio.go.kr/home.do" target="_blank">ALIO</a></li>
								<li><a href="/sitemap/SiteMap.do">사이트맵</a></li>
							</ul>

							<div class="fix">
								<div class="etc_service_form">

									특성화센터/진료과 바로가기
									<div class="select_form">
										<div>
											<form name="link_form">
												<fieldset>
													<legend>특성화센터/진료과</legend>
													<select title="특성화센터/진료과" name="link">
														<option value="">특성화센터/진료과</option>
														<option class="op_cor1"
															value="https://cancer.snubh.org/index.do">암센터</option>
														<option class="op_cor1"
															value="https://bcni.snubh.org/index.do">뇌신경센터</option>
														<option class="op_cor1"
															value="https://www.snubh.org/dh/gc/">노인의료센터</option>
														<option class="op_cor1"
															value="https://www.snubh.org/dh/cvc/">심장혈관센터</option>
														<option class="op_cor1"
															value="https://www.snubh.org/dh/rc/">폐센터</option>
														<option class="op_cor1"
															value="https://www.snubh.org/dh/jrc/">관절센터</option>
														<option class="op_cor1"
															value="https://www.snubh.org/dh/spc/">척추센터</option>
														<option class="op_cor1"
															value="https://www.snubh.org/dh/img/">소화기센터</option>
														<option class="op_cor1"
															value="https://hpc.snubh.org/index.do">건강증진센터</option>
														<option class="op_cor5"
															value="https://www.snubh.org/dh/fm/">가정의학과</option>
														<option class="op_cor5"
															value="https://www.snubh.org/dh/imi/">감염내과</option>
														<option class="op_cor5"
															value="https://www.snubh.org/dh/ime/">내분비내과</option>
														<option class="op_cor5"
															value="https://www.snubh.org/dh/gc/">노인병내과</option>
														<option class="op_cor5"
															value="https://www.snubh.org/dh/imj/">류마티스내과</option>
														<option class="op_cor5"
															value="https://www.snubh.org/dh/an/">마취통증의학과</option>
														<option class="op_cor5"
															value="https://www.snubh.org/dh/tr/">방사선종양학과</option>
														<option class="op_cor5"
															value="https://www.snubh.org/dh/pa/">병리과</option>
														<option class="op_cor5"
															value="https://www.snubh.org/dh/ur/">비뇨기과</option>
														<option class="op_cor5"
															value="https://www.snubh.org/dh/og/">산부인과</option>
														<option class="op_cor5"
															value="https://www.snubh.org/dh/ps/">성형외과</option>
														<option class="op_cor5"
															value="https://www.snubh.org/dh/ped/">소아청소년과</option>
														<option class="op_cor5"
															value="https://www.snubh.org/dh/img/">소화기내과</option>
														<option class="op_cor5"
															value="https://www.snubh.org/dh/cvc">순환기내과</option>
														<option class="op_cor5"
															value="https://bcni.snubh.org/index.do">신경과</option>
														<option class="op_cor5"
															value="https://bcni.snubh.org/index.do">신경외과</option>
														<option class="op_cor5"
															value="https://www.snubh.org/dh/imn/">신장내과</option>
														<option class="op_cor5"
															value="https://www.snubh.org/dh/ot/">안과</option>
														<option class="op_cor5"
															value="https://www.snubh.org/dh/ima/">알레르기내과</option>
														<option class="op_cor5"
															value="https://www.snubh.org/dh/dr/">영상의학과</option>
														<option class="op_cor5"
															value="https://www.snubh.org/dh/gs/">외과</option>
														<option class="op_cor5"
															value="https://www.snubh.org/dh/em/">응급의학과</option>
														<option class="op_cor5"
															value="https://www.snubh.org/dh/ol/">이비인후과</option>
														<option class="op_cor5"
															value="https://www.snubh.org/dh/rh/">재활의학과</option>
														<option class="op_cor5"
															value="https://www.snubh.org/dh/np/">정신건강의학과</option>
														<option class="op_cor5"
															value="https://www.snubh.org/dh/os/">정형외과</option>
														<option class="op_cor5"
															value="https://www.snubh.org/dh/lm/">진단검사의학과</option>
														<option class="op_cor5"
															value="https://www.snubh.org/dh/ds/">치과</option>
														<option class="op_cor5"
															value="https://www.snubh.org/dh/dm/">피부과</option>
														<option class="op_cor5"
															value="https://www.snubh.org/dh/nm/">핵의학과</option>
														<option class="op_cor5"
															value="https://www.snubh.org/dh/imh/">혈액종양내과</option>
														<option class="op_cor5"
															value="https://www.snubh.org/dh/imr/">호흡기내과</option>
														<option class="op_cor5"
															value="https://www.snubh.org/dh/ts/">흉부외과</option>
													</select> <input type="button" class="btn_go" value="바로가기"
														onclick="goLink();return false;">
												</fieldset>
											</form>
										</div>
									</div>
									/특성화센터/진료과 바로가기

									협진센터 바로가기
									<div class="select_form">
										<div>
											<form name="link_form1">
												<fieldset>
													<legend>협진센터/클리닉</legend>
													<select title="협진센터/클리닉" name="link">
														<option value="">협진센터/클리닉</option>
														<option class="op_cor2"
															value="https://www.snubh.org/dh/dcd1/">간암센터</option>
														<option class="op_cor2"
															value="https://www.snubh.org/dh/gkc">감마나이프센터</option>
														<option class="op_cor2"
															value="https://www.snubh.org/dh/dcd2/">갑상선암 센터</option>
														<option class="op_cor2"
															value="https://www.snubh.org/dh/dcd3/">근골격종양센터</option>
														<option class="op_cor2"
															value="https://www.snubh.org/dh/bcd8">뇌신경재활센터</option>
														<option class="op_cor2"
															value="https://www.snubh.org/dh/bcd2">뇌전증수면센터</option>
														<option class="op_cor2"
															value="https://www.snubh.org/dh/dcd4/">뇌종양센터</option>
														<option class="op_cor2"
															value="https://www.snubh.org/dh/bcd5/">뇌혈관센터</option>
														<option class="op_cor2"
															value="https://www.snubh.org/dh/bcd4">뇌혈관조영시술센터</option>
														<option class="op_cor2"
															value="https://www.snubh.org/dh/dcd5/">담도/췌장암센터</option>
														<option class="op_cor2"
															value="https://www.snubh.org/dh/dcd6/">대장암센터</option>
														<option class="op_cor2"
															value="https://www.snubh.org/dh/dcd7/">두경부암센터</option>
														<option class="op_cor2"
															value="https://www.snubh.org/dh/hairbish">모발센터</option>
														<option class="op_cor2"
															value="https://www.snubh.org/dh/vitibish">백반증센터</option>
														<option class="op_cor2"
															value="https://www.snubh.org/dh/dcd8/">부인암센터</option>
														<option class="op_cor2"
															value="https://www.snubh.org/dh/dcd9/">비뇨기전립선암센터</option>
														<option class="op_cor2"
															value="https://www.snubh.org/dh/dcd25/">비만대사수술센터</option>
														<option class="op_cor2"
															value="https://www.snubh.org/dh/bcd6/">소아뇌신경센터</option>
														<option class="op_cor2"
															value="https://www.snubh.org/dh/dcd10/">소아청소년
															혈액종양센터</option>
														<option class="op_cor2"
															value="https://www.snubh.org/dh/ncd17/">수면센터</option>
														<option class="op_cor2"
															value="https://www.snubh.org/dh/dcd11/">식도암센터</option>
														<option class="op_cor2"
															value="https://www.snubh.org/dh/bcd1">신경계중환자치료센터</option>
														<option class="op_cor2"
															value="https://www.snubh.org/dh/bcd7">신경인지행동센터</option>
														<option class="op_cor2"
															value="https://www.snubh.org/dh/dcd12/">암통합지지센터</option>
														<option class="op_cor2"
															value="https://www.snubh.org/dh/bcd9">어지럼증눈운동진활센터</option>
														<option class="op_cor2"
															value="https://www.snubh.org/dh/dcd13/">위암센터</option>
														<option class="op_cor2"
															value="https://www.snubh.org/dh/dcd14/">유방암센터</option>
														<option class="op_cor2"
															value="https://www.snubh.org/dh/dcd19">종양내과센터</option>
														<option class="op_cor2"
															value="https://www.snubh.org/dh/bcd10/">척수·신경근육센터</option>
														<option class="op_cor2"
															value="https://www.snubh.org/dh/dcd15/">척추종양센터</option>
														<option class="op_cor2"
															value="https://www.snubh.org/dh/ncd9">청각재활센터</option>
														<option class="op_cor2"
															value="https://www.snubh.org/dh/dcd21">치매경도인지장애센터</option>
														<option class="op_cor2"
															value="https://www.snubh.org/dh/bcd12">파킨슨센터</option>
														<option class="op_cor2"
															value="https://www.snubh.org/dh/dcd16/">폐암센터</option>
														<option class="op_cor2"
															value="https://www.snubh.org/dh/dcd18/">혈액암센터</option>
														<option class="op_cor3"
															value="https://www.snubh.org/dh/ncd14">당뇨족창상클리닉</option>
														<option class="op_cor3"
															value="https://www.snubh.org/dh/ncd16">대동맥류혈관클리닉</option>
														<option class="op_cor3"
															value="https://www.snubh.org/dh/dcd22">발달/자폐/사회성
															클리닉</option>
														<option class="op_cor3"
															value="https://www.snubh.org/dh/ncd6">슬관절클리닉</option>
														<option class="op_cor3"
															value="https://www.snubh.org/dh/sjc">어깨관절클리닉</option>
													</select> <input type="button" class="btn_go" value="바로가기"
														onclick="goLink1();return false;">
												</fieldset>
											</form>
										</div>
									</div>
									/협진센터 바로가기

									패밀리사이트
									<div class="select_form">
										<div>
											<form name="link_form2">
												<fieldset>
													<legend>패밀리사이트</legend>
													<select title="패밀리사이트" name="link">
														<option value="">패밀리사이트</option>
														<option class="op_cor4" value="http://medicine.snu.ac.kr/">서울대학교의과대학</option>
														<option class="op_cor4" value="http://www.snuh.org/pub/">서울대학교병원</option>
														<option class="op_cor4"
															value="https://www.brmh.org/index.do">서울특별시
															보라매병원</option>
														<option class="op_cor4"
															value="http://healthcare.snuh.org/home.do">서울대학교병원
															강남센터</option>
														<option class="op_cor3"
															value="https://msri.snubh.org/index.do">연구부문</option>
														<option class="op_cor3"
															value="https://www.snubh.org/dh/mc">공공의료사업단</option>
														<option class="op_cor3"
															value="https://www.snubh.org/dh/hcd7">발전후원회</option>
														<option class="op_cor3"
															value="https://www.snubh.org/dh/ihc">국제진료센터</option>
														<option class="op_cor3" value="https://hip.snubh.org/">헬스케어혁신파크</option>
														<option class="op_cor3"
															value="https://www.snubh.org/dh/rihp">정책연구기획센터</option>
													</select> <input type="button" class="btn_go" value="바로가기"
														onclick="goLink2();return false;">
												</fieldset>
											</form>
										</div>
									</div>
									/패밀리사이트

								</div>

								<div class="m_util_talk">
									<p>
										<a href="javascript:alert( '준비중입니다.' );" target="_blank"
											title="새창으로 열기"><img src="/front/images/main/icon.gif"
											alt="톡상담"></a>
									</p>
								</div>
								<div class="m_util_footer bh_mm_22">
									<a href="tel:1588-3369"><span>대표전화</span><strong>1588-3369</strong></a>
								</div>
								<ul class="m_util_footer fix">
									<li><a href="http://blog.naver.com/happy_snubh"
										target="_blank" title="새창으로 열기"><img
											src="/front/images/main/ico_mb1.png" alt="블로그"></a></li>
									<li><a href="https://www.facebook.com/SNUBundanghospital"
										target="_blank" title="새창으로 열기"><img
											src="/front/images/main/ico_mb2.png" alt="페이스북"></a></li>
									<li><a href="https://www.youtube.com/user/snubh"
										target="_blank" title="새창으로 열기"><img
											src="/front/images/main/ico_mb3.png" alt="유튜브"></a></li>
								</ul>

								<address>
									13620 경기도 성남시 분당구 구미로 173번길 82 법인명(단체명):분당서울대학교병원 대표자명:전상훈 <br>
									사업자등록번호:129-82-06989 대표전화:1588-3369<br> Copyright
									©분당서울대학교병원 ALL RIGHT RESERVED<br>
								</address>
							</div>

							<div>
								<h4 class="skip">분당서울대학교병원 인증기관</h4>
								<ul class="ij_ul fix">
									<li><a target="_blank" title="새창으로 열기"
										href="http://www.webwatch.or.kr/Situation/WA_Situation.html?MenuCD=110"><img
											src="/front/images/main/ico_wa.png"
											alt="과학기술정보통신부 WEB ACCESSIBILITY 마크 (웹 접근성 품질인증 마크)"></a></li>
									<li><img src="/front/images/main/ico_ij1.gif"
										alt="보건복지부 의료기관 인증"></li>
									<li><img src="/front/images/main/ico_ij2.gif"
										alt="13년 연속 브랜드 파워1위"></li>
									<li><img src="/front/images/main/ico_ij3.gif"
										alt="미국외 세계최초 EMR 7단계 인증"></li>
									<li><img src="/front/images/main/ico_ij4.gif"
										alt="개인정보보호 우수사이트"></li>
									<li><img src="/front/images/main/ico_ij5.gif"
										alt="인터넷사이트 안전마크"></li>
								</ul>
							</div>
						</div>

					</div>

				</div>

			</div> -->
			<!--/footer_wrapper-->
		</div>
		<!--/common_wrapper-->

	</div>
</body>
</html>