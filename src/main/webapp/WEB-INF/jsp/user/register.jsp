<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>회원가입</title>
    <link rel="icon" type="image/png" sizes="16x16" href="/img/favicon.ico">

    <link rel="stylesheet" type="text/css" href="/scss/component/form.css">

    <%@include file="/WEB-INF/jsp/commons/header.jspf"%>
</head>
<body>
<div class="main-container">
    <article class="content-wrap">
        <div class="content-name" id="top">
            <h3>
                <span class="aba">아바</span>
                <span class="header mini">회원가입</span>
            </h3>
        </div>

        <section class="form-control" id="agree-area">
            <%-- Agree --%>
            <form id="agree-form">
            <c:forEach begin="0" end="3" varStatus="status">
                <div class="form-warp">
                    <div class="form-label">
                        <i class="fas fa-circle"></i>
                        <span>${keys[status.index]}</span>
                    </div>
                    <div class="form-category agree">
                        <c:import url="/WEB-INF/jsp/agree/${values[status.index]}.jsp" />
                    </div>
                    <ul class="checkbox-container agree">
                        <li>
                            <input id="agree${status.index}" type="checkbox" name="a${status.index}" value="" class="check">
                            <label for="agree${status.index}"">
                                <span class="aba">'${keys[status.index]}'</span> 에 동의합니다.
                            </label>
                        </li>
                    </ul>
                </div>
            </c:forEach>
            </form>
            <button class="login-button" type="submit" onclick="agreeChecker()">가입하기</button>
        </section>

        <section class="form-control" id="register-area" hidden>
            <%-- Form --%>
            <form action="/user/create" method="post">
                <div class="form-warp">
                    <div class="form-label">
                        <i class="fas fa-circle"></i>
                        <span>기본항목</span>
                    </div>
                    <div class="form-category">
                        <div class="form-label">
                            <span class="form-label mini">
                                <i class="fas fa-users"></i>
                                회원유형
                            </span>
                        </div>
                        <ul class="checkbox-container form">
                            <li class="checkbox-list">
                                <input id="qq" type="radio" name="userType" value="" class="check">
                                <label for="qq">집주인</label>
                            </li>
                            <li class="checkbox-list">
                                <input id="ww" type="radio" name="userType" value="" class="check">
                                <label for="ww">공인중개사</label>
                            </li>
                            <li class="checkbox-list">
                                <input id="ee" type="radio" name="userType" value="" class="check">
                                <label for="ee">중개보조원</label>
                            </li>
                        </ul>
                        <input required autofocus type="text" placeholder="아이디" name="username"
                               pattern="^([A-Za-z0-9])+"
                               oninvalid="this.setCustomValidity(`공백, 특수문자 또는 한글이 포함되네요 :(`)"
                               oninput="this.setCustomValidity(''); this.checkValidity()"
                        >
                        <input required autofocus type="password" placeholder="비밀번호" name="password"
                               oninvalid="this.setCustomValidity(`비밀번호를 입력해주세요 :)`)"
                               oninput="this.setCustomValidity(''); this.checkValidity()"
                        >
                        <input required autofocus type="password" placeholder="비밀번호 확인" name="password"
                               oninvalid="this.setCustomValidity(`비밀번호를 입력해주세요 :)`)"
                               oninput="this.setCustomValidity(''); this.checkValidity()"
                        >
                        <input required autofocus type="text" placeholder="닉네임" name="">
                        <p class="error" hidden>
                            <i class="fas fa-exclamation-circle">
                            Error Message
                            </i>
                        </p>
                    </div>
                </div>
                <div class="form-warp">
                    <div class="form-label">
                        <i class="fas fa-circle"></i>
                        <span>개인정보</span>
                    </div>
                    <div class="form-category">
                        <input required autofocus type="text" placeholder="이름" name="">
                        <div class="input-group">
                            <input required autofocus type="text" class="middle" placeholder="이메일" name="">
                            <p class="mail"><i class="fas fa-at"></i></p>
                            <input required autofocus type="text" class="middle" placeholder="도메인" name="">
                        </div>
                        <div class="input-group">
                            <input required autofocus type="text" class="short" placeholder="010" name="">
                            <p class="short">-</p>
                            <input required autofocus type="text" class="short" placeholder="####" name="">
                            <p class="short">-</p>
                            <input required autofocus type="text" class="short" placeholder="####" name="">
                        </div>
                        <div class="input-group">
                            <input required autofocus type="text" class="middle" placeholder="주소" name="">
                            <p class="addr"><i class="fas fa-search"></i></p>
                        </div>
                        <div class="input-group">
                            <input required autofocus type="text" class="middle" placeholder="아바아파트 3동" name="">
                            &nbsp;
                            <input required autofocus type="text" class="short" placeholder="510호" name="">
                        </div>
                        <p class="error" hidden>
                            <i class="fas fa-exclamation-circle">
                                Error Message
                            </i>
                        </p>
                    </div>
                </div>
                <div class="form-warp">
                    <div class="form-label">
                        <i class="fas fa-circle"></i>
                        <span>추가정보</span>
                    </div>
                    <div class="form-category">
                        <ul class="checkbox-container form">
                            <li class="checkbox-list">
                                <input id="1" type="checkbox" name="isEmailReception" value="" class="check">
                                <label for="1">이메일 수신 동의하기</label>
                            </li>
                            <li class="checkbox-list">
                                <input id="2" type="checkbox" name="isSmsReception" value="" class="check">
                                <label for="2">
                                    SMS 수신 동의하기
                                </label>
                            </li>
                            <li class="checkbox-list">
                                <input id="3" type="checkbox" name="isProfileOpen" value="" class="check">
                                <label for="3">
                                    프로필 공개 동의
                                </label>
                            </li>
                        </ul>
                    </div>
                </div>
                <button class="login-button" type="submit">회원가입</button>
            </form>
        </section>
    </article>
</div>

<%-- footer --%>
<%@include file="/WEB-INF/jsp/commons/footer.jspf"%>
</body>
</html>

<script>
    function getErrorBox() {
        var errorBox = new Document();
    }

    function agreeChecker() {
        let selector;

        for(let i = 0; i < 4; i++) {
            selector = $('#agree' + i);

            selector.click(function() {
                selector.next().removeClass('invalid');
                console.log(selector.si)
                selector.parent().siblings('.error').remove();
            });

            if( ! selector.is(':checked')) {
                selector.next().addClass("invalid");
                $('html, body').animate({
                    scrollTop: selector.parent().offset().top - 15
                }, 500);

                selector.parents('ul')
                    .append(
                        '<p class="error agree">' +
                        '<i class="fas fa-exclamation-circle">' +
                        '</i> 항목에 동의해주세요 :)</p>'
                    );

                return
            }
        }

        $('#agree-area').hide();
        $("#register-area").show();

        $('html, body').animate({
            scrollTop: $("#top").offset().top
        }, 500);
    }
</script>
