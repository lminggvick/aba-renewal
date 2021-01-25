<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<section class="form-control mt-0" hidden>
    <div class="form-label">
        <i class="fas fa-circle"></i>
        <span>소재지</span>
    </div>
    <div class="input-group p-1 check-area">
        <input autofocus readonly type="text" class="middle" id="jibun" placeholder="지번주소" name="offerAddress.jibun" value="${offer.offerAddress.jibun}">
        <p class="short">/</p>
        <input autofocus readonly type="text" class="middle" id="road" placeholder="도로명주소" name="offerAddress.road" value="${offer.offerAddress.road}">
        <p class="icon addr" onclick="getAddress()"><i class="fas fa-search"></i></p>
        <div class="error-box"></div>
    </div>

    <div class="input-group p-1 check-area">
        <input type="text" class="middle" placeholder="예) 아바아파트, 아바빌, 아바빌딩" name="offerAddress.buildingName" value="${offer.offerAddress.buildingName}"
               pattern="^[가-힣A-Za-z0-9() ]{1,15}" onkeyup="formValidatorWithRegex($(this))">
        <p class="icon-with-check" onclick="noneAction($(this))"><i class="fas">없음</i></p>
        <div class="error-box"></div>
    </div>

    <div class="form-label">
        <i class="fas fa-circle"></i>
        <span>호실 정보</span>
    </div>
    <div class="input-group p-1 check-area">
        <input type="hidden" id="latitude" name="offerAddress.latitude" value="${offer.offerAddress.latitude}">
        <input type="hidden" id="longitude" name="offerAddress.longitude" value="${offer.offerAddress.longitude}">
        <p class="icon"><i class="fas">동</i></p>
        <input type="text" class="short" placeholder="예) 3동" name="offerAddress.dong" id="dong" value="${offer.offerAddress.dong}"
               pattern="^[0-9]{1,4}" onkeyup="formValidatorWithRegex($(this))">
        <p class="short"></p>
        <p class="icon"><i class="fas">호실</i></p>
        <input type="text" class="middle" id="ho" placeholder="예) 102호, 103호" name="offerAddress.ho" value="${offer.offerAddress.ho}"
               pattern="^[0-9, 호]{1,20}" onkeyup="formValidatorWithRegex($(this))">
        <div class="error-box"></div>
    </div>
    <ul class="checkbox-container p-0 w-half">
        <li class="checkbox-list w-65">
            <input type="checkbox" class="check" id="isExistDong" onclick="dongTrigger($('#dong'))">
            <label for="isExistDong">등본에 동 정보가 없습니다</label>
        </li>
    </ul>

    <div class="form-label">
        <i class="fas fa-circle"></i>
        <span>해당층</span>
    </div>
    <div class="input-group p-1 check-area">
        <ul class="checkbox-container p-0 w-half">
            <li class="checkbox-list w-25">
                <input type="radio" class="check" id="floorUp" name="none" checked
                       onchange="floorTrigger()"
                >
                <label for="floorUp">지상</label>
            </li>
            <li class="checkbox-list w-25">
                <input type="radio" class="check" id="floorUnder" name="none"
                       onchange="floorTrigger()"
                >
                <label for="floorUnder">반지하</label>
            </li>
            <li class="checkbox-list w-25">
                <input type="radio" class="check" id="floorTop" name="none"
                       onchange="floorTrigger()"
                >
                <label for="floorTop">옥탑방</label>
            </li>
        </ul>
        <input type="text" class="short" placeholder="예) 3층" name="offerAddress.floor" id="floor" value="${offer.offerAddress.floor}"
               pattern="^[0-9]{1,2}" onkeyup="formValidatorWithRegex($(this))">
        <p class="icon"><i class="fas">층</i></p>
        <div class="error-box"></div>
    </div>

    <div class="form-label">
        <i class="fas fa-circle"></i>
        <span>입구 / 호실 비밀번호</span>
    </div>
    <div class="input-group p-1 check-area">
        <input type="text" class="short" placeholder="123* 또는 전화문의" name="offerAddress.entrance" id="entrance" value="${offer.offerAddress.entrance}"
               pattern="^[가-힣#*0-9]{1,8}" onkeyup="formValidatorWithRegex($(this))">
        <p class="icon-with-check" onclick="noneAction($(this))"><i class="fas">없음</i></p>
        <p class="short">/</p>
        <input type="text" class="short" placeholder="1234* 또는 전화문의" name="offerAddress.door" id="door" value="${offer.offerAddress.door}"
               pattern="^[가-힣#*0-9]{1,8}" onkeyup="formValidatorWithRegex($(this))">
        <p class="icon-with-check" onclick="noneAction($(this))"><i class="fas">없음</i></p>
        <div class="error-box"></div>
    </div>

    <div class="form-label">
        <i class="fas fa-circle"></i>
        <span>주요 위치</span>
    </div>
    <div class="input-group p-1 check-area">
        <input type="text" class="short" placeholder="예) 아바경찰서" name="offerAddress.nearLocation" value="${offer.offerAddress.nearLocation}"
               pattern="^[가-힣 ]{1,7}" onkeyup="formValidatorWithRegex($(this))">
        <p class="icon"><i class="fas">부근</i></p>
        <div class="error-box"></div>
    </div>
</section>
