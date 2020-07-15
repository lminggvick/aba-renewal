<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>매물상세페이지 공인중개사</title>

    <link rel="icon" type="image/png" sizes="16x16" href="/img/favicon.ico">
    <link rel="stylesheet" type="text/css" href="/css/albery.css">
    <link rel="stylesheet" type="text/css" href="/scss/offer_detail.css">

    <%@include file="/WEB-INF/jsp/commons/header.jspf"%>
    <script src="/js/albery.js"></script>
</head>

<body>
<div class="main-container" id="main">
    <a href="#main" class="go-top">
        <i class="fas fa-arrow-alt-circle-up"></i>
    </a>
    <!-- 매물옵션 상단바 -->
    <div class="offer-header">
        <div class="header-warp">
            <ul>
                <li><a href="#offer-info">매물 정보</a></li>
                <li><a href="#offer-option">옵션</a></li>
                <li><a href="#offer-desc">상세 설명</a></li>
                <li><a href="#offer-location">매물 위치</a></li>
            </ul>
        </div>
    </div>

    <!-- 매물정보  -->
    <div class="offer-info container" id="offer-info">
        <!-- 매물정보 헤드부분 -->
        <div class="info-summary">
            <div class="top01">
                <h3>원룸</h3>
                <h4>월세 500/35 + <strong>3</strong></h4>
            </div>
            <div class="top02">
                <h3>매물번호 12340</h3>
                <h2>매물진행중</h2>
            </div>
            <div class="top03">
                <!-- 공인중개사 페이지 신고아이콘 부분 -->
                <div class="icon-wrap">
                    <div class="icon-group">
                        <a href="#">
                            <img src="/img/offer/detail_icon01.png" alt="정보변경신고">
                            <p>정보변경신고</p>
                        </a>
                        <a href="#">
                            <img src="/img/offer/detail_icon02.png" alt="거래완료신고">
                            <p>거래완료신고</p>
                        </a>
                        <a href="#">
                            <img src="/img/offer/detail_head_icon-01.png" alt="찜하기 아이콘">
                            <p>찜하기</p>
                        </a>
                    </div>
                </div>

                <!-- 매물번호 조회 검색창 -->
                <div class="search-warp">
                    <form class="search">
                        <input type="text" placeholder="매물번호 조회" class="search-box">
                        <button class="button">
                            <img src="/img/offer/detail_search.png" alt="검색하기 버튼">
                        </button>
                    </form>
                </div>
            </div>
        </div>

        <!-- 매물정보 표 -->
        <div class="info-table">
            <div class="table-wrap">
                <div class="row bb">
                    <p class="key">소재지</p>
                    <p class="value">경상남도 진주시 인사동 301-102 라임빌</p>
                    <p class="key">도로명</p>
                    <p class="value">경상남도 진주시 돗골로112번길 12-2</p>
                </div>
                <div class="row bb">
                    <p class="key">관리비</p>
                    <p class="value">0</p>
                    <p class="key">준공년도</p>
                    <p class="value">2010년</p>
                </div>
                <div class="row bb">
                    <p class="key">반려동물</p>
                    <p class="value">불가능</p>
                    <p class="key">주차</p>
                    <p class="value">가능</p>
                </div>
                <div class="row bb">
                    <p class="key">룸호실</p>
                    <p class="value">201호</p>
                    <p class="key">세입자</p>
                    <p class="value">유(즉)</p>
                </div>
                <div class="row">
                    <p class="key">단기임대</p>
                    <p class="value">정보없음</p>
                    <p class="key">중요위치</p>
                    <p class="value">이마트 부근</p>
                </div>
            </div>
        </div>
    </div>


    <!-- 슬라이드 배너 -->
    <section id="jquery-script-menu">
        <div class="container">
            <div class="albery-container">

                <div class="albery-wrapper">
                    <c:forEach begin="1"  end="10">
                    <div class="albery-item">
                        <img src="/img/offer/detail_slide01.jpg" alt="">
                    </div>
                    </c:forEach>
                </div>

                <div class="move-right">
                    <img src="/img/offer/detail_slide_next.png" alt="" id="rightArrow">
                </div>
                <div class="move-left">
                    <img src="/img/offer/detail_slide_prev.png" alt="" id="leftArrow">
                </div>

            </div>

            <div class="pagination-container">
                <div class="pagination-wrapper">
                    <div class="pagination-item" data-item="1">
                        <img src="/img/offer/detail_slide01.jpg" alt="">
                    </div>
                    <div class="pagination-item" data-item="2">
                        <img src="/img/offer/detail_slide02.jpg" alt="">
                    </div>
                    <div class="pagination-item" data-item="3">
                        <img src="/img/offer/detail_slide03.jpg" alt="">
                    </div>
                    <div class="pagination-item" data-item="4">
                        <img src="/img/offer/detail_slide04.jpg" alt="">
                    </div>
                    <div class="pagination-item" data-item="5">
                        <img src="/img/offer/detail_slide05.jpg" alt="">
                    </div>
                    <div class="pagination-item" data-item="6">
                        <img src="/img/offer/detail_slide06.jpg" alt="">
                    </div>
                    <div class="pagination-item" data-item="7">
                        <img src="/img/offer/detail_slide07.jpg" alt="">
                    </div>
                    <div class="pagination-item" data-item="8">
                        <img src="/img/offer/detail_slide08.jpg" alt="">
                    </div>
                    <div class="pagination-item" data-item="9">
                        <img src="/img/offer/detail_slide09.jpg" alt="">
                    </div>
                    <div class="pagination-item" data-item="10">
                        <img src="/img/offer/detail_slide10.jpg" alt="">
                    </div>
                </div>
            </div>
    </section>

    <!-- 이미지 슬라이드 밑 텍스트 상자 -->
    <div class="img-caption">
        <div class="caption-group">
            <div class="caption">
                <p>아바에서 직접 확인한 정보입니다<br>
                    매물상태 <strong>최종 확인일 2019-11-12 14:11:40</strong><br>
                    거래가능 여부는 시시각각 변하며, 방호수에 따라 구조, 옵션의 차이가<br>
                    있을 수 있으니 정확한 정보는 직접 문의를 통해 확인해주세요.
                </p>
            </div>
            <div class="download">
                <a href="#" class="btn">
                    <img src="/img/downicon-02.png" alt="">
                </a>
            </div>
        </div>
    </div>

    <!-- 옵션&관리비 항목 -->
    <div class="offer-option" id="offer-option">
        <div class="option">
            <div class="line"></div>
            <h3>옵션</h3>
            <ul class="list">
                <li>
                    <img src="/img/offer/option_air_conditioner.png" alt="에어컨">
                    <h2>에어컨</h2>
                </li>
                <li>
                    <img src="/img/offer/option_bed.png" alt="침대">
                    <h2>침대</h2>
                </li>
                <li>
                    <img src="/img/offer/option_closet.png" alt="옷장">
                    <h2>옷장</h2>
                </li>
                <li>
                    <img src="/img/offer/option_desk.png" alt="책상">
                    <h2>책상</h2>
                </li>
                <li>
                    <img src="/img/offer/option_doorlock.png" alt="도어락">
                    <h2>도어락</h2>
                </li>
                <li>
                    <img src="/img/offer/option_frige.png" alt="냉장고">
                    <h2>냉장고</h2>
                </li>
                <li>
                    <img src="/img/offer/option_gas_range.png" alt="가스레인지">
                    <h2>가스레인지</h2>
                </li>
            </ul>
        </div>
        <div class="management-category">
            <div class="line"></div>
            <h3>관리비 포함 항목</h3>
            <ul class="list">
                <li>
                    <img src="/img/offer/option_set_top_box.png" alt="셋톱박스">
                    <h2>셋톱박스</h2>
                </li>
                <li>
                    <img src="/img/offer/option_internet.png" alt="인터넷">
                    <h2>인터넷</h2>
                </li>
                <li>
                    <img src="/img/offer/option_wifi.png" alt="와이파이">
                    <h2>와이파이</h2>
                </li>
                <li>
                    <img src="/img/offer/option_desk.png" alt="책상">
                    <h2>책상</h2>
                </li>
                <li>
                    <img src="/img/offer/option_water.png" alt="수도세">
                    <h2>수도세</h2>
                </li>
            </ul>
        </div>
    </div>

    <!-- 상세설명 -->
    <div class="offer-desc" id="offer-desc">
        <div class="desc-wrap">
            <div class="line"></div>
            <h3>상세설명</h3>
            <div class="desc">
                <p>201호 세입자 010-2548-4546</p>
            </div>
        </div>
    </div>

    <!-- 매물위치 -->
    <div class="offer-location" id="offer-location">
        <div class="location-wrap">
            <div class="line"></div>
            <h3>매물 위치</h3>
            <div class="map">
                <h2>경상남도 진주시 인사동 </h2>
                <img src="/img/offer/detail_map.jpg" alt="매물 지도" class="map-img">
                <img src="/img/offer/detail_map_icon.png" alt="매물 위치 아이콘" class="map-icon">
                <p>본 매물의 위치는 반경 가로 100m x 세로 100m 의 임의 설정 값으로 정확한 위치가 아닙니다.</p>
            </div>
            <div class="road-map">
                <img src="/img/offer/roadview.jpg" alt="">
            </div>
        </div>
    </div>
</div>

<!-- footer -->
<%@include file="/WEB-INF/jsp/commons/footer.jspf"%>
</body>
</html>

<script type="text/javascript">

    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-36251023-1']);
    _gaq.push(['_setDomainName', 'jqueryscript.net']);
    _gaq.push(['_trackPageview']);

    (function() {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
    })();

    $(".albery-container").albery({
        speed: 500,
        imgWidth: 780,
    });
</script>