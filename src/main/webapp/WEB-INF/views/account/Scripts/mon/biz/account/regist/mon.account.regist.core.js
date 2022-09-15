



        //--------------------------------
        // 공통 유효성 검사 
        //--------------------------------
        var validator = {
            //특수문자 체크
            str_check: function (input) {
                var val = input;
                var pattern = /[^(가-힣ㄱ-ㅎㅏ-ㅣa-zA-Z/\s/g)]/gi;

                if (pattern.test(val)) {
                    return false;
                } else {
                    return true;
                }
            },

            //특수문자 체크 숫자도 포함
            str_check2: function (input) {
                var val = input;
                var pattern = /[^(가-힣ㄱ-ㅎㅏ-ㅣa-zA-Z 0-9)]/gi;

                if (pattern.test(val)) {
                    return false;
                } else {
                    return true;
                }
            },

            //특수문자 체크 숫자도 포함
            str_check3: function (input) {
                var val = input;
                if (val.indexOf("(") > -1 || val.indexOf(")") > -1) {
                    return false;
                } else {
                    return true;
                }
            },

            // 한글/영문 포함 체크
            str_check4: function (input) {
                var val = input;
                var pattern = /[^가-힣ㄱ-ㅎㅏ-ㅣa-zA-Z ]/gi;

                if (pattern.test(val)) {
                    return false;
                } else {
                    return true;
                }
            },

            // 한글/영문 포함 체크2 (띄어쓰기, 특문 불가)
            str_check5: function (input) {
                var pattern = /^[가-힣ㄱ-ㅎㅏ-ㅣa-zA-Z]+$/;
                return (pattern.test(input)) ? true : false;
            },

            //숫자 포함 여부확인
            check_number: function (argVal) {
                var val = argVal;
                var pattern = /[^(0-9)]/gi;

                if (pattern.test(val)) {
                    return false;
                }
                else {
                    return true;
                }
            },

            //외국인번호 유효성검사
            isRegNo_fgnno: function (srcNumeric) {
                if (srcNumeric.Number == NaN) return false;
                var ForeginGbn = parseInt(srcNumeric.substring(6, 7));
                if (!(ForeginGbn >= 5 && ForeginGbn <= 8) || srcNumeric.length < 13) {
                    return false;
                }
                return true;
            },

            id_check: function (input) {
                var err_cnt = 0
                for (var i = 0; i < input.length; i++) {
                    var val = input.charAt(i);
                    if (!((val >= "0" && val <= "9") || (val >= "a" && val <= "z") || (val >= "A" && val <= "Z")))
                        err_cnt++
                }
                if (err_cnt == 0) return true;
                else return false;
            },

            isCapital: function (id) {
                var str = /[^a-z0-9]/;

                if (id.search(str) == -1) {
                    return true;
                }
                else {
                    return false;
                }
            },

            input_character_check_result_address: function (obj) {
                var result = true;
                var input_str = obj.value;
                var cnt = 0;
                for (var i = 0; i < input_str.length; i++) {
                    if ((input_str.charCodeAt(i) == 58) || //		:
                        (input_str.charCodeAt(i) == 59) || //		;
                        (input_str.charCodeAt(i) == 60) || //		<
                        (input_str.charCodeAt(i) == 62)) { // 	>

                        obj.value = obj.value.replace(input_str.charAt(i), "");
                        result = false;
                    }
                    else {
                        ;
                    }
                }

                return result;
            },

            check_phone_num: function (num) {
                var result = true;
                for (var i = 0; i < num.length; i++) {
                    var codenum = num.charCodeAt(i);
                    if ((codenum > 57 || codenum < 48) && (codenum != 45) && (codenum != 40) && (codenum != 41) && (codenum != 44)) {
                        result = false;
                    }
                }
                return result;
            },

            // 문자열 길이 체크 알파뉴메릭(1자리), 한글(2자리)
            getStringLength: function (str) {
                var retCode = 0;
                var strLength = 0;

                for (var i = 0; i < str.length; i++) {
                    var code = str.charCodeAt(i)
                    var ch = str.substr(i, 1).toUpperCase()

                    code = parseInt(code)

                    if ((ch < "0" || ch > "9") && (ch < "A" || ch > "Z") && ((code > 255) || (code < 0)))
                        strLength = strLength + 2;
                    else
                        strLength = strLength + 1;
                }
                return strLength;
            },
            // 비밀번호 체크
            checkPwd: function (gu_id, pwd_id, id_id, birth_id, num_id, post_id) {
                var level = 0;

                var check_pwd = document.getElementById(pwd_id).value;
                var check_id = document.getElementById(id_id).value;
                var check_bir = "00000000";
                var check_num = "0000";
                var check_post = "000000";
                var alertLevel = function (level) {
                    var msg;

                    var levelText = "";
                    if (String(level).length >= 1) {
                        levelText = " (안전도 등급 ";
                        switch (String(level).substr(0, 1)) {
                            case "1":
                            case "2":
                                levelText = levelText + "낮음)";
                                break;
                            case "3":
                                levelText = levelText + "적정)";
                                break;
                            case "4":
                                levelText = levelText + "높음)";
                                break;
                            default:
                                levelText = "";
                                break;
                        }
                    }

                    switch (level) {
                        case 201: //3자리 이상 동일한 문자 또는 숫자  -  aaa
                        case 202: //3자리 이상 연속된 문자 또는 숫자  -  123

                        case 204: //msg = "3자리 이상 키보드 배열 패턴 사용된 경우"; break;
                        case 211: //msg = "생일이 포함된 경우"; break;
                        case 212: //msg = "핸드폰번호 뒷자리 포함된 경우"; break;
                        case 213: //msg = "우편번호 포함된 경우"; break;
                        case 214: //msg = "아이디 포함된 경우"; break;		
                        case 215: //msg = "아이디와 비밀번호가 같은경우"; break;	
                            msg = "사용하실 수 있는 비밀번호입니다." + levelText; break;

                        case 100: msg = "비밀번호를 입력해주세요."; break;
                        case 101: //msg = "8자리 미만의 비밀번호는 사용할 수 없습니다."; break;
                        case 105: //msg = "숫자,영문자,특수문자로 조합되지 않은 경우 사용할수 없습니다."; break;
                            msg = "8~16자의 영문, 숫자, 특수문자만 사용 가능합니다."; break;
                        case 102: msg = "아이디와 비밀번호가 같습니다. \n보안상의 이유로 아이디와 같은 비밀번호는 허용하지 않습니다."; break;
                        case 103: msg = "한 문자나 숫자로 연속된 비밀번호는 사용할 수 없습니다."; break;
                        case 104: msg = "비밀번호 내 공백은 사용할수 없습니다."; break;
                        case 106: msg = "사용 가능한 특수문자는 ! \" # $ % & ( ) * + , - . / : ; ? @ [ ] ^ _ { } ~ 입니다."; break;
                        //case 105 : msg = "3자리 이상 동일한 문자 또는 숫자는 사용할수 없습니다."; break;   //201   aaa		
                        default: msg = "사용하실 수 있는 비밀번호입니다." + levelText; break;
                    }

                    return msg;
                };

                if (birth_id != null) check_bir = document.getElementById(birth_id).value;
                if (num_id != null) check_num = document.getElementById(num_id).value + check_num;
                if (post_id != null) check_post = document.getElementById(post_id).value + check_post;
                if (check_pwd.length == 0) {
                    level = 100;
                } else if (check_pwd.indexOf(" ") >= 0) {
                    level = 104;//공백
                } else if (this.checkPermit(check_pwd) > 0) {
                    level = 106;   //비허용문자 사용                    
                } else if (check_pwd.length < 8) {
                    level = 101;	// 8자리미만
                } else if (check_pwd == check_id) {
                    level = 102;	// 아이디 동일
                } else if (check_pwd.indexOf(check_id) > -1 && check_id != "") {
                    level = 215;	// 아이디 포함
                } else if (this.isSingle(check_pwd)) {
                    level = 103;	// 한문자/숫자 사용	
                } else if (this.isSame(check_pwd, 3)) {
                    level = 201;	// 3자리 이상 동일한 문자,숫자
                } else if (this.isContinued(check_pwd, 3)) {
                    level = 202;	// 3자리 이상 연속된 문자,숫자	
                    //} else if (this.isKeyPattern(check_pwd)) {
                    //	level = 204;	// 	키보드 배열패턴 사용
                    //} else if (check_pwd.indexOf(check_bir)>=0 || check_pwd.indexOf(check_bir.substr(2, 6))>=0 || check_pwd.indexOf(check_bir.substr(4, 4))>=0) {
                    //	level = 211;	// 생일사용
                    //} else if (check_pwd.indexOf(check_num.substr(0, 4))>=0) {
                    //	level = 212;	// 핸드폰번호 뒷자리 사용
                    //} else if (check_pwd.indexOf(check_post.substr(0, 6))>=0) {
                    //	level = 213;	// 우편번호 사용	
                    //} else if (check_pwd.indexOf(check_id)>=0) {
                    //	level = 214;	// 아이디가 포함된 경우

                } else {
                    var ret = this.checkMix(check_pwd);
                    if (ret >= 3) {
                        level = 400;	// 숫자,문자,특수문자 조합 세가지 이상
                    } else if (ret == 2) {
                        level = 300;	// 숫자,문자,특수문자 조합 두가지
                    } else {
                        level = 105;	// 숫자,문자,특수문자 조합 한가지
                    }
                }

                if (level === 202 || level === 201) {
                    var ret = this.checkMix(check_pwd);
                    if (ret <= 1) {
                        level = 105;	// 숫자,문자,특수문자 조합 한가지
                    }
                }

                var pwdLevel = level;
                if (gu_id == "show") {
                    var result = false;
                    if (parseInt(pwdLevel, 0) >= 200) {
                        $("#PwdSafeResult").removeClass("txtN").addClass("txtY");
                        result = true;
                    } else {
                        $("#PwdSafeResult").removeClass("txtY").addClass("txtN");
                    }
                    document.getElementById("PwdSafeResult").innerHTML = alertLevel(level);

                    return result;
                } else {

                    var lv = String(level).substr(0, 1);
                    if (lv == "1") {
                        alert(alertLevel(level));
                        return false;
                    } else {
                        return true;
                    }

                }
            },

            isSingle: function (val) {
                var cnt = 1;
                for (var i = 0; i <= val.length; i++) {
                    if (val.charAt(0) == val.charAt(i + 1)) {
                        cnt++;
                    }
                }

                if (val.length == cnt) {
                    return true;
                } else {
                    return false;
                }
            },
            isSame: function (val, cnt) {
                var ret = false;
                var checkStr = ""; // 같은 반복문자 체크(예: aaaa)

                for (var z = 1; z < cnt; z++) {
                    checkStr += "val.charAt(i) == val.charAt(i + " + z + ")";
                    if (z < cnt - 1) {
                        checkStr += " && ";
                    }
                }

                for (var i = 0; i < val.length; i++) {
                    if (eval(checkStr)) {
                        ret = true;
                        break;
                    }
                }

                return ret;
            },
            isContinued: function (val, cnt) {
                var ret = false;
                var checkAsc = ""; // 연속된 오름차순 숫자 혹은 문자(예: abcde)
                var checkDesc = ""; // 연속된 내림차순 숫자 혹은 문자(예: edcba)

                for (var z = 1; z < cnt; z++) {
                    checkAsc += "(val.charCodeAt(i) + " + z + ") == val.charCodeAt(i + " + z + ")";
                    checkDesc += "(val.charCodeAt(i) - " + z + ") == val.charCodeAt(i + " + z + ")";
                    if (z < cnt - 1) {
                        checkAsc += " && ";
                        checkDesc += " && ";
                    }
                }

                for (var i = 0; i < val.length; i++) {
                    if (eval(checkAsc) || eval(checkDesc)) {
                        ret = true;
                        break;
                    }
                }

                return ret;
            },
            isKeyPattern: function (val) {
                var pt1 = "asdfghjkl";
                var pt2 = "lkjhgfdsa";
                var pt3 = "qwertyuiop";
                var pt4 = "poiuytrewq";
                var pt5 = "zxcvbnm";
                var pt6 = "mnbvcxz";

                if (pt1.indexOf(val) >= 0 || pt2.indexOf(val) >= 0 || pt3.indexOf(val) >= 0 || pt4.indexOf(val) >= 0 || pt5.indexOf(val) >= 0 || pt6.indexOf(val) >= 0) {
                    return true;
                } else {
                    return false;
                }
            },
            checkPermit: function (str) {
                var ret = 0;
                var expStr = /^[0-9a-zA-Z!"#$%&()*+,-./:;?@^_{}~\[\]]$/;

                var arrString = new Array();
                var cntEtc = 0;

                for (var i = 0; i < str.length; i++) {
                    arrString[i] = str.substring(i, i + 1);

                    if (!expStr.test(arrString[i])) {
                        cntEtc++;
                    }
                }
                return cntEtc;
            },
            checkMix: function (str) {
                var ret = 0;
                var expNum = /^[0-9]$/;
                var expStr = /^[a-zA-Z]$/;
                var expStr2 = /^[!"#$%&()*+,-./:;?@^_{}~\[\]]$/;

                var arrString = new Array();
                var cntString = 0;
                var cntString2 = 0;
                var cntNumber = 0;
                var cntEtc = 0;

                if (str.indexOf(">") == -1 && str.indexOf("<") == -1) {
                    for (var i = 0; i < str.length; i++) {
                        arrString[i] = str.substring(i, i + 1);

                        if (expNum.test(arrString[i])) {
                            cntNumber++;
                        } else if (expStr.test(arrString[i])) {
                            cntString++;
                        } else if (expStr2.test(arrString[i])) {
                            cntString2++;
                        } else {
                            cntEtc++;
                        }
                    }
                }
                //alert("cntNumber : " + cntNumber + " , cntString : " + cntString + " , cntString2 : " + cntString2 + " , cntEtc : " + cntEtc);
                if (cntString > 0) { ret++; }
                if (cntString2 > 0) { ret++; }
                if (cntNumber > 0) { ret++; }
                //if (cntEtc > 0) { ret++; }                
                return ret;
            },

            // 유효한 메일주소형식인지 체크
            mail_check: function (mail) {
                var mailAddr = mail + "";
                if (mailAddr.length < 5) return false;
                else if (mailAddr.indexOf(".") != -1 && mailAddr.indexOf("@") != -1) {
                    var ck = true;
                    for (var i = 0; i < mailAddr.length; i++) {
                        if ((mailAddr.charAt(i) == '_' || mailAddr.charAt(i) == '-') ||
                            (mailAddr.charAt(i) >= '0' && mailAddr.charAt(i) <= '9') ||
                            (mailAddr.charAt(i) >= 'A' && mailAddr.charAt(i) <= 'Z') ||
                            (mailAddr.charAt(i) >= 'a' && mailAddr.charAt(i) <= 'z') ||
                            (mailAddr.charAt(i) == '.' || mailAddr.charAt(i) == '@'))
                            ;
                        else {
                            ck = false;
                            break;
                        }
                    }
                    return ck;
                }
            },
            // 분리형 이메일 입력 체크 함수
            mail_check_sp: function (mail) {
                if (mail == null) { return false; }
                var mailAddr = mail.split(" ").join();
                if (mailAddr == "") { return false; }

                var ck = false;
                for (var i = 0; i < mailAddr.length; i++) {
                    if ((mailAddr.charAt(i) == '_' || mailAddr.charAt(i) == '-' || mailAddr.charAt(i) == '.') || (mailAddr.charAt(i) >= '0' && mailAddr.charAt(i) <= '9') || (mailAddr.charAt(i) >= 'A' && mailAddr.charAt(i) <= 'Z') || (mailAddr.charAt(i) >= 'a' && mailAddr.charAt(i) <= 'z')) {
                        ck = true;
                    } else {
                        ck = false;
                        break;
                    }
                }
                return ck;
            },
            //숫자, 영문자(대), 영문자(소), 한글 허용된특수문자
            subject_check: function (input_str) {
                var result = true;
                var nonchar = " -+#%()[]&,.'㈜㈔"; //허용된 특수문자 (넣고 테스트요망)
                var cnt = 0;
                for (var i = 0; i < input_str.length; i++) {
                    if ((input_str.charAt(i) >= 'A' && input_str.charAt(i) <= 'Z') || //대문자
                        (input_str.charAt(i) >= 'a' && input_str.charAt(i) <= 'z') || //소문자
                        (input_str.charAt(i) >= 'ㄱ' && input_str.charAt(i) <= '힣') || //한글
                        (input_str.charAt(i) >= '0' && input_str.charAt(i) <= '9') || //숫자
                        (nonchar.indexOf(input_str.substring(i, i + 1)) > 0) || 	//혀용특수문자
                        (input_str.charCodeAt(i) == 32) || //		space
                        (input_str.charCodeAt(i) == 39) || //		'
                        (input_str.charCodeAt(i) == 47)) {
                        ; //	/
                    }
                    else {
                        result = false;
                    }
                }
                return result
            },
            //숫자, 영문자(대), 영문자(소), 한글
            textcheck: function (input_str) {
                var result = true;
                for (var i = 0; i < input_str.length; i++) {
                    if ((input_str.charAt(i) >= 'A' && input_str.charAt(i) <= 'Z') || //대문자
                        (input_str.charAt(i) >= 'a' && input_str.charAt(i) <= 'z') || //소문자
                        (input_str.charAt(i) >= 'ㄱ' && input_str.charAt(i) <= '힣') || //한글
                        (input_str.charAt(i) >= '0' && input_str.charAt(i) <= '9')) {
                        ; //	/
                    }
                    else {
                        result = false;
                    }
                }
                return result
            },
            //0~9 + -  만 입력 가능
            checkPhoneSelf: function (input_str) {
                var result = true;
                var nonchar = " +-"; //허용된 특수문자 (넣고 테스트요망)
                var cnt = 0;
                for (var i = 0; i < input_str.length; i++) {
                    if ((input_str.charAt(i) >= '0' && input_str.charAt(i) <= '9') || //숫자
                        (nonchar.indexOf(input_str.substring(i, i + 1)) > 0)) 	//혀용특수문자
                    { }
                    else {
                        result = false;
                    }
                }
                return result
            },
            //전화번호 체크 정규식
            checkPhoneExp: function (phoneN) {
                var regExp = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;
                if (!regExp.test(phoneN)) {
                    alert("휴대폰번호만 입력 가능합니다.");
                    return false
                } else {
                    return true;
                }
            },
            //전화번호 체크 정규식2
            chkCertPhone: function (Certphone) {
                var cert_flag = false;
                Certphone = Certphone.replace(/-/gi, "");
                if (num_check(Certphone)) {
                    if (Certphone.length > 8) {
                        var regExp = /^([0-9]{2,3})-?([0-9]{3,4})-?([0-9]{4})$/;
                        if (regExp.test(Certphone)) {
                            var regExp = /^(02|031|032|033|041|042|043|044|051|052|053|054|055|061|062|063|064|010|011|016|017|018|019|050|030|0130|060|070|080)/;
                            if (regExp.test(Certphone)) {
                                cert_flag = true;
                            }
                        }
                    } else {
                        if (Certphone.length < 8) {
                        } else {
                            cert_flag = true;
                        }
                    }
                }
                return cert_flag;
            }
        };

        //--------------------------------
        // SNS 코어 변수 선언
        //--------------------------------
        var SnsCore;
        var $sns = SnsCore = {
            instanceName: "SnsCore"
            , vars: {
                naver_id_login: null,
                naverCallback: ""
            }
            , browser: {}
            , urls: {}
            , doms: {}
            , lib: {}
            , init: function () {

            }
        };

        //--------------------------------
        // 라이브러리 추가
        //--------------------------------
        // common
        $sns.lib.common = {
            // PC용 서버구분 정보 가져오기
            getPcServerName: function () {
                var url = document.domain.toLowerCase();
                if (url.indexOf(".albamon.com") > 0) {
                    if (url.indexOf("dev") == 0) {
                        return "local";
                    } else if (url.indexOf("test-www") == 0 || url.indexOf("jts") == 0) {
                        return "test";
                    } else if (url.indexOf("www19") == 0 || url.indexOf("www146") == 0 || url.indexOf("stg") == 0) {
                        return "pre";
                    }
                }
                return "real";
            },
            // 모바일용 서버구분 정보 가져오기
            getMobileServerName: function () {
                var url = document.domain.toLowerCase();
                if (url.indexOf(".albamon.com") > 0) {
                    if (url.indexOf("dev") == 0) {
                        return "local";
                    } else if (url.indexOf("test-m") == 0 || url.indexOf("mts") == 0) {
                        return "test";
                    } else if (url.indexOf("m19") == 0 || url.indexOf("stg") == 0) {
                        return "pre";
                    }
                }
                return "real";
            },
            // PC용 도메인 정보 호출
            getPcDomain: function () {
                var serverName = $sns.lib.common.getPcServerName();
                if (serverName == "local") {
                    return "dev-www.albamon.com";
                } else if (serverName == "test") {
                    return "jts" + mon.util.domain.getSlotNumber() + ".albamon.com";
                } else if (serverName == "pre") {
                    return "stg" + mon.util.domain.getSlotNumber() + "-www.albamon.com";
                }

                return "www.albamon.com";
            },
            // 모바일용 도메인 정보 호출
            getMobileDomain: function () {
                var serverName = $sns.lib.common.getMobileServerName();
                if (serverName == "local") {
                    return "dev-m.albamon.com";
                } else if (serverName == "test") {
                    return "mts" + mon.util.domain.getSlotNumber() + ".albamon.com";
                } else if (serverName == "pre") {
                    return "stg" + mon.util.domain.getSlotNumber() + "-m.albamon.com";
                }

                return "m.albamon.com";
            },
            // 오류 시 페이지 이동 처리
            errRedirect: function () {
                //if ($("#login_pop").val() == "Y") {
                if (opener != null) {
                    window.close();
                } else {
                    document.location.href = "/";
                }
            },
            // 오류 시 페이지 새로고침
            errReload: function () {
                //if ($("#login_pop").val() == "Y") {
                if (opener != null) {
                    window.close();
                    document.location.reload();
                } else {
                    document.location.reload();
                }
            },
            errEnd: function () {
                if (opener != null) {
                    window.close();
                }
                return false;
            },
            // url 쿼리스트링 정보 가져오기
            getParams: function () {
                var p = [], hash;
                var hashes = (String(window.location.href).toLowerCase()).slice(window.location.href.indexOf('?') + 1).split('&');
                for (var i = 0; i < hashes.length; i++) {
                    hash = hashes[i].split('=');
                    p.push(hash[0]);
                    p[hash[0]] = hash[1];
                }
                return p;
            },
            getSnsServiceName: function (scType) {
                var name = '';

                switch (scType) {
                    case 'FB':
                        name = '페이스북';
                        break;
                    case 'NV':
                        name = '네이버';
                        break;
                    case 'GL':
                        name = '구글';
                        break;
                    case 'KA':
                        name = '카카오';
                        break;
                    case 'AP':
                        name = '애플';
                        break;
                    default:
                        name = 'SNS';
                }
                return name;
            },
            isValidSnsType: function (scType) {
                var isValid= false;

                switch (scType) {
                    case 'FB':
                    case 'NV':
                    case 'GL':
                    case 'KA':
                    case 'AP':
                        isValid = true;
                        break;
                }
                return isValid;
            }
        };

        $sns.lib.cookie = {
            //쿠키값 얻기
            getCookie: function (name) {
                var nameStr = name + "=";
                var nameLen = nameStr.length;
                var cookieLen = document.cookie.length;		//쿠기값이 없을시 기본적으로 45이다.  document.cookie.length >= 45

                //a로 지정시 : document.cookie ==> lucya=a; ASPSESSIONIDQGQQGLDC=GKDDHCPDJBOBAONCMJLHBCCN
                var i = 0;
                while (i < cookieLen) {
                    var j = i + nameLen;
                    if (document.cookie.substring(i, j) == nameStr) {
                        var end = document.cookie.indexOf(";", j); // ;의 위치 	
                        if (end == -1) end = document.cookie.length;
                        return unescape(document.cookie.substring(j, end)); //쿠키값 반환
                    }
                    i = document.cookie.indexOf(" ", i) + 1;
                    if (i == 0) {
                        break;
                    }
                }
            },
            //쿠키값 저장
            setCookie: function (name, value) {
                var expires = new Date();
                var path, domain, secure;

                //호출하는 인수의 배열 setCookie.arguments[0] ~ [setCookie.arguments.length-1]
                var argv = $sns.lib.cookie.setCookie.arguments;

                //호출한함수의 인수 -  setCookie.arguments.length = arguments.length와 값이 같음!!, 
                //대조 : setCookie.length 호출당하는 인수 갯수 
                var argc = $sns.lib.cookie.setCookie.arguments.length;

                if (argc > 2 && argv[2] != null) {
                    expires.setTime(expires.getTime() + (1000 * 60 * argv[2]));	// argv[2]분동안 쿠키 유효
                }
                else {
                    expires = null;
                }

                path = (argc > 3) ? argv[3] : null;
                domain = (argc > 4) ? argv[4] : null;
                secure = (argc > 5) ? argv[5] : false;

                document.cookie = name + "=" + escape(value) +
                    ((expires == null) ? "" : (";expires=" + expires.toGMTString())) +
                    ((path == null) ? "" : (";path=" + path)) +
                    ((domain == null) ? "" : (";domain=" + domain)) +
                    ((secure == true) ? " ;secure" : "");
            },
            //쿠키삭제
            delCookie: function (name) {
                var today = new Date();
                var path, domain;
                today.setTime(today.getTime() - 1);

                var argv = $sns.lib.cookie.delCookie.arguments;
                var argc = $sns.lib.cookie.delCookie.arguments.length;

                if (argc > 1 && argv[1] != null) {
                    path = argv[1];
                }
                if (argc > 2 && argv[2] != null) {
                    domain = argv[2];
                }

                var value = $sns.lib.cookie.getCookie(name);
                if (value != null) {
                    var vv = name + "=" + escape(value) + ("; expires=" + today.toGMTString());
                    if (path != "") {
                        vv += "; path=" + path;
                    }
                    if (domain != "") {
                        vv += "; domain=" + domain;
                    }
                    document.cookie = vv;	//쿠키삭제	
                    return (value + " 삭제완료");
                }
                else {
                    return ("존재하지 않음");
                }
            }
        };

        // facebook
        $sns.lib.fb = {
            // 초기화
            init: function (selector, callback, validate) {
                // 페이스북 SDK를 비동기적으로 호출
                (function (d) {
                    var js, id = 'facebook-jssdk', ref = d.getElementsByTagName('script')[0];
                    if (d.getElementById(id)) { return; }
                    js = d.createElement('script'); js.id = id; js.async = true;
                    js.src = "//connect.facebook.net/ko_KR/all.js";
                    ref.parentNode.insertBefore(js, ref);
                }(document));

                var _appId;
                var serverName = $sns.lib.common.getPcServerName();
                if (serverName == "test" || serverName == "local") {
                    _appId = "1719919908272442";
                } else if (serverName == "pre") {
                    _appId = "134496986975414";
                } else {
                    _appId = "134496986975414";
                }

                window.fbAsyncInit = function () {  //페이스북
                    FB.init({
                        appId: _appId,
                        status: true,   // 로그인 상태를 확인 
                        cookie: true,   // 쿠키가 세션을 참조할 수 있도록 허용
                        xfbml: true,    // 소셜 플러그인이 있으면 처리  
                        version: 'v3.2' // 페이스북 API 버전
                    });
                };

                // 선택자 클릭 바인딩
                $(selector).off().on('click',function (e) {
                    try {
                        e.preventDefault();
                        var isValid = true;
                        if (typeof (validate) == 'function') {
                            isValid = validate();
                        }
                        if (isValid) {
                            // 자바스크립트 SDK를 초기화 후 FB.getLoginStatus() 호출
                            FB.getLoginStatus(function (response) {
                                // 콜백함수 호출
                                if (typeof (callback) != 'undefined') {
                                    callback(response);
                                }
                            });
                        }

                    } catch (e) {
                        alert('SNS 연결중 입니다. 잠시 후 다시 시도해 주시기 바랍니다.');
                        return $sns.lib.common.errEnd();
                    }
                });
            }
        };

        // naver
        $sns.lib.nv = {
            // 초기화
            init: function (selector, callback, callbackUrl, validate) {

                var me = this;
                var re_url = $sns.lib.common.getParams()['re_url'] || "";
                if (re_url == "") {
                    re_url = $("#re_url").val() || "";
                }
                var error = $sns.lib.common.getParams()['error'] || "";
                if (error == "access_denied") {
                    window.close();
                }
                if (re_url) {
                    re_url = "?re_url=" + encodeURIComponent(re_url);
                }

                callbackUrl = callbackUrl + (callbackUrl.indexOf('?') < 0 ? "?" : "&") + re_url;

                var _appId; // 네이버에선 clientID라고 지칭
                var serverName = $sns.lib.common.getPcServerName();
                if (serverName == "test" || serverName == "local") {
                    _appId = "1MWbCDjD1nN1IWVC2vzx";
                } else if (serverName == "pre") {
                    _appId = "ovzmNP5M7x1KrCouu7iW";
                } else {
                    _appId = "oWhZHNjI5ybGlUfERBlH";
                }

                // 네이버 라이브러리 호출
                $sns.vars.naver_id_login = new naver_id_login(_appId, callbackUrl);
                var state = $sns.vars.naver_id_login.getUniqState();
                $sns.vars.naver_id_login.setButton("white", 3, 40);
                $sns.vars.naver_id_login.setDomain(".albamon.com");
                $sns.vars.naver_id_login.setState(state);
                $sns.vars.naver_id_login.setPopup();
                if ($sns.vars.naver_id_login.getAccessToken()) {
                    $sns.vars.naver_id_login.get_naver_userprofile(callback);
                }

                // 선택자 클릭 바인딩
                $(selector).off().on('click',function (e) {
                    e.preventDefault();
                    var isValid = true;
                    if (typeof (validate) == 'function') {
                        isValid = validate();
                    }
                    if (isValid) {
                        $sns.vars.naver_id_login.login();
                    }
                });
            }
        };

        // google
        $sns.lib.gl = {
            // 초기화
            init: function (selector, callback, validate) {
                // 선택자 클릭 바인딩
                $(selector).off().on('click',function (e) {
                    e.preventDefault();
                    var isValid = true;
                    if (typeof (validate) == 'function') {
                        isValid = validate();
                    }

                    if (isValid) {
                        gapi.load('auth2', function () {
                            auth2 = gapi.auth2.init({
                                client_id: '224259147573-obs4uvo8upkupf18oq7c0m5kg3upr21l.apps.googleusercontent.com',
                                fetch_basic_profile: true,
                                cookiepolicy: 'single_host_origin',
                                scope: 'profile'
                            });

                            // Sign the user in, and then retrieve their ID.
                            auth2.signIn().then(function () {
                                if (typeof (callback) != 'undefined') {
                                    callback(auth2);
                                }
                            });
                        });
                    }

                });

            }
        };

        // kakaotalk
        $sns.lib.ka = {
            // 초기화
            init: function (selector, callback, validate) {
                //Kakao.init('911f651055536da735bfddfcb22259f6');                

                // 선택자 클릭 바인딩
                $(selector).off().on('click',function (e) {
                    e.preventDefault();
                    var isValid = true;
                    if (typeof (validate) == 'function') {
                        isValid = validate();
                    }

                    // 콜백함수 호출
                    if (typeof (callback) != 'undefined' && isValid) {
                        callback();
                    }
                });
            }
        };

        //apple login
        $sns.lib.ap = {
            init: function (selector, callback, directJoinCode, validate) {
                window.directJoinCode = directJoinCode;

                var _clientId;
                var serverName = $sns.lib.common.getPcServerName();
                if (serverName == "test" || serverName == "local") {
                    _clientId = "com.albamon.testLogin";
                } else if (serverName == "pre") {
                    _clientId = "com.albamon.login";
                } else {
                    _clientId = "com.albamon.login";
                }
                var _redirectURI = "https://" + $sns.lib.common.getPcDomain();

                try {

                    AppleID.auth.init({
                        clientId: _clientId,
                        scope: 'name email',
                        redirectURI: _redirectURI,
                        state: 'origin:web',
                        usePopup: true //or false defaults to false  
                    });

                    document.removeEventListener('AppleIDSignInOnSuccess', mon.account.regist.core.sns.lib.ap.appleIDSignInOnSuccess);
                    document.removeEventListener('AppleIDSignInOnFailure', mon.account.regist.core.sns.lib.ap.appleIDSignInOnFailure);

                    document.addEventListener('AppleIDSignInOnSuccess', mon.account.regist.core.sns.lib.ap.appleIDSignInOnSuccess, false);
                    document.addEventListener('AppleIDSignInOnFailure', mon.account.regist.core.sns.lib.ap.appleIDSignInOnFailure, false);
                } catch (error) {

                }

                // 선택자 클릭 바인딩
                $(selector).off('click').on('click', function (e) {
                    e.preventDefault();
                    var isValid = true;
                    if (typeof (validate) == 'function') {
                        isValid = validate();
                    }

                    //콜백함수 호출
                    if (typeof (callback) != 'undefined' && isValid) {
                        callback();
                    }
                });
            },
            appleIDSignInOnSuccess: function (data) {
                setTimeout(function () {
                    var id_token = data.detail.authorization.id_token;
                    var response = $sns_login.lib.ap.parseJwt(id_token);
                    var userNm = '';
                    if (data.detail.user !== undefined) {
                        userNm = data.detail.user.name.lastName + data.detail.user.name.firstName;
                    }
                    response.username = userNm;
                    response.token = id_token;
                    $sns_login.lib.account.loginGate('AP', response, window.directJoinCode);
                }, 100);

                //alert("success - " + getJson.sub);
                //alert(JSON.stringify(AppleIDSignInOnSuccess))
            },
            appleIDSignInOnFailure: function (error) {
                return false;
            }
        };

        //  SNS 로그인 관련 스크립트
        //  sns-core.js 기반 제작
        //  [2016.10.14] 유철호, 최초 생성
        //  dummy time : 14:22:11

        //--------------------------------
        // SNS 로그인 변수 선언
        //--------------------------------
        var SnsLogin;
        var $sns_login = SnsLogin = {
            instanceName: "SnsLogin"
            , vars: {
                isJoin: false
            }
            , browser: {}
            , urls: {
                welcome: "/account/regist/welcome-m"
            }
            , doms: {}
            , lib: {}
            , init: function () {

            }
        };

        //--------------------------------
        // 라이브러리 추가
        //--------------------------------
        // account
        $sns_login.lib.account = {
            // 공통 로그인 진입 처리
            // directJoinCode: 동일 메일 개인회원 안내 없이 바로 신규 가입 처리
            loginGate: function (scType, response, directJoinCode) {
                try {
                    if (!response) {
                        alert('SNS 정보를 가져오지 못했습니다. 잠시 후 다시 시도해 주십시오.');
                        return $sns.lib.common.errEnd();
                    }

                    var snsServiceName = "SNS";
                    var snsId, snsEmail, token, join;

                    switch (scType) {
                        case 'FB':
                            snsServiceName = "페이스북";
                            snsId = response.authResponse.userID !== undefined ? response.authResponse.userID : "";
                            snsEmail = response.email !== undefined ? response.email : ""; response.email;
                            token = response.authResponse.accessToken !== undefined ? response.authResponse.accessToken : "";
                            join = $sns_login.lib.fb.join;
                            //alert(response);
                            //alert("birthday - " + response.birthday);
                            //alert("education - " + response.education);
                            //alert("work - " + response.work);
                            break;
                        case 'NV':
                            snsServiceName = "네이버";
                            snsId = (response.getProfileData('id') !== undefined) ? response.getProfileData('id') : "";
                            snsEmail = (response.getProfileData('email') !== undefined) ? response.getProfileData('email') : ""; response.getProfileData('email');
                            token = encodeURIComponent(response.getAccessToken()) !== undefined ? encodeURIComponent(response.getAccessToken()) : "";
                            join = $sns_login.lib.nv.join;
                            break;
                        case 'GL':
                            snsServiceName = "구글";
                            var profile = response.currentUser.get().getBasicProfile();
                            snsId = (profile.getId() !== undefined) ? profile.getId() : "";
                            if (profile.getEmail() !== undefined) {
                                if (profile.getEmail().length > 0) {
                                    snsEmail = profile.getEmail();
                                }
                            }
                            token = response.currentUser.get().getAuthResponse().access_token !== undefined ? response.currentUser.get().getAuthResponse().access_token : "";
                            join = $sns_login.lib.gl.join;
                            break;
                        case 'KA':  // 카카오는 이메일정보가 없음
                            snsServiceName = "카카오";
                            snsId = (response.id !== undefined) ? response.id : "";
                            snsEmail = (response.kakao_account.has_email) ? response.kakao_account.email : "";
                            token = response.token !== undefined ? response.token : "";
                            join = $sns_login.lib.ka.join;
                            break;
                        case 'AP':  //애플로그인
                            snsServiceName = "애플";
                            snsId = (response.sub !== undefined) ? response.sub : "";
                            snsEmail = (response.email) ? response.email : "";
                            token = response.token !== undefined ? response.token : "";
                            join = $sns_login.lib.ap.join;
                    }

                    if (!snsId) {
                        alert(snsServiceName + ' 아이디를 가져오지 못했습니다.');
                        return $sns.lib.common.errEnd();
                    }

                    $sns_login.lib.account.authSns(scType, snsId, snsEmail, token, directJoinCode, response);

                } catch (e) {
                    if ($sns.lib.common.getPcServerName() != "real") {
                        alert("로그인하지 못했습니다. 다시 로그인 해 주세요. - loginGate try err:" + e);
                    } else {
                        alert("로그인하지 못했습니다. 다시 로그인 해 주세요.");
                    }
                    $sns.lib.common.errRedirect();
                }
            },
            //소셜로그인 정보 인증
            authSns: function (scType, snsId, snsEmail, token, directJoinCode, response) {

                directJoinCode == undefined ? "" : directJoinCode;
                var isAgree = 0;
                if ($('#dev_IsAgree').length > 0) {
                    isAgree = $('#dev_IsAgree').val();
                }

                $.ajax({
                    type: "POST",
                    url: "/account/auth/sns-" + scType,
                    cache: false,
                    data: { "snsId": snsId, "snsEmail": snsEmail, "token": token },
                    dataType: "json",
                    async: false,
                    success: function (result) {
                        if (typeof (result) !== 'object') {
                            alert("오류가 발생하였습니다. 잠시 후 다시 시도해 주십시오.");
                            return $sns.lib.common.errEnd();
                        }
                        if (result.rc == "10") {
                            alert("파라메터 오류입니다.");
                            return $sns.lib.common.errEnd();
                        } else if (result.rc == "11") {
                            // 로그인 중이면 처리 불가                        
                            alert("현재 알바몬 회원으로 로그인되어 있습니다. 로그인 중에는 소셜로그인이 불가능 하므로 로그아웃 후 다시 시도해주시기 바랍니다.");
                            if ($("#hid_naver_call_pop").val() == "ie11") {
                                window.close();
                                return;
                            } else {
                                return $sns.lib.common.errEnd();
                            }
                        } else if (result.rc == "00") {
                            // 신규회원
                            if (isAgree == '1') {
                                $sns_login.lib.account.join(scType, response);
                            } else {
                                $sns_login.lib.account.goAgree(scType, result.rd);
                            }
                        } else if (result.rc == "20" || result.rc == "21") {
                            // 간편로그인 연결 또는 소셜가입중. 로그인 처리
                            $sns_login.lib.account.login(scType, result.rd, snsId, result.rs);
                        } else if (result.rc == "01") {

                            if (isAgree == '1') {
                                $sns_login.lib.account.join(scType, response);
                            } else {
                                if ($("#dev_ie11Stat").val() == "ie11") { directJoinCode = "new"; }
                                if (directJoinCode !== undefined && directJoinCode != "") {
                                    if (directJoinCode == "new" || $("#dev_ie11Stat").val() == "ie11") {
                                        // 동일 이메일로 가입된 개인회원 안내 페이지에서 소셜 신규로 가입하기로 넘어온 경우. 회원가입 처리 - 약관동의 페이지로 이동
                                        $sns_login.lib.account.goAgree(scType, result.rd);
                                    }
                                } else {
                                    // 동일 이메일로 가입된 개인회원 존재. 이메일 가입 페이지이동
                                    $sns_login.lib.account.goEmailJoin(scType, result.rd, 1);
                                }
                            }


                        } else {
                            alert("잘못 된 접근 입니다.");
                            return $sns.lib.common.errEnd();
                        }
                    },
                    error: function (e) {
                        alert('오류가 발생하였습니다. 잠시 후 다시 시도해 주십시오.');
                        return $sns.lib.common.errEnd();
                    }
                });
            },
            // 공통 로그인 처리
            login: function (scType, mid, snsId, simple) {
                try {
                    if (mid == '' || snsId == '') {
                        alert("로그인 정보가 충분하지 않습니다. 잠시 후 다시 시도해 주십시오.");
                        return $sns.lib.common.errEnd();
                    }

                    var giHomeURL = "https://" + $sns.lib.common.getPcDomain() + "/corp/mon_gi_home.asp";
                    var ggHomeURL = "https://" + $sns.lib.common.getPcDomain() + "/mem/mon_gg_home.asp";

                    // create hidden form
                    var html = "";
                    html += "<span id=\"dev_Social_Login_Box\">";
                    html += "   <form name=\"SocialLoginForm\" id=\"frmSocialLoginForm\" method=\"post\" action=\"/login/login_social.asp\">";
                    html += "   <input type=\"hidden\" name=\"DB_Name\" id=\"dev_socialDbName\" \>";
                    html += "   <input type=\"hidden\" name=\"M_ID\" id=\"dev_socialMid\" \>";
                    html += "   <input type=\"hidden\" name=\"re_url\" id=\"dev_socialReUrl\" \>";
                    html += "   <input type=\"hidden\" name=\"scNo\" id=\"dev_socialNo\" \>";
                    html += "   <input type=\"hidden\" name=\"simple\" id=\"dev_simple\" \>";
                    html += "   <input type=\"hidden\" name=\"login_pop\" id=\"dev_login_pop\" \>";
                    html += "   <input type=\"hidden\" name=\"devHidTeenStat\" id=\"dev_hidTeenStat\" \>";
                    html += "   </form>";
                    html += "</span>";
                    $("body").append(html);

                    // set values
                    $("#dev_socialMid").val(mid);
                    $("#dev_socialDbName").val("GG");
                    $("#dev_socialNo").val(snsId);
                    $("#dev_simple").val(simple);
                    $("#dev_login_pop").val($("#login_pop").val());
                    $("#dev_hidTeenStat").val($("#devHidTeenStat").val());
                    // re_url이 기업홈일 경우 개인홈으로 이동
                    if ($("#re_url").val() == $.trim(giHomeURL)) {
                        $("#re_url").val(ggHomeURL);
                    }

                    // for naver. 네이버는 콜백을 팝업인 경우
                    if ($("#hid_naver_call_pop").val() == "Y") {
                        // opener nv (for naver. 네이버는 콜백을 팝업으로 받아서 opener를 확인)
                        if (opener != null) {
                            if (opener.$("#login_pop").val() == "Y") {
                                // 팝업 값 끌어올리기
                                $("#dev_login_pop").val(opener.$("#login_pop").val());
                                $("#dev_hidTeenStat").val(opener.$("#devHidTeenStat").val());

                                if ($sns_login.vars.isJoin) {
                                    $("#dev_socialReUrl").val("https://" + $sns.lib.common.getPcDomain() + "/etc/loginpop_close.asp?mv=social_join");
                                } else {
                                    // 이력서 지원 로그인을 위한 re_url 분기 처리
                                    if (document.referrer.indexOf("Naver-Pass") >= 0) {
                                        $("#dev_socialReUrl").val($("#re_url").val());
                                    } else {
                                        $("#dev_socialReUrl").val("https://" + $sns.lib.common.getPcDomain() + "/etc/loginpop_close.asp");
                                    }
                                }
                            } else {
                                // 팝업로그인이 아닌 경우 opener명을 부여
                                opener.name = "albamon";
                                if ($sns_login.vars.isJoin) {
                                    $("#dev_socialReUrl").val($sns_login.urls.welcome);
                                } else {
                                    $("#dev_socialReUrl").val(opener.$("#re_url").val());
                                }
                            }
                            document.SocialLoginForm.target = opener.window.name;
                            document.SocialLoginForm.submit();
                            setTimeout(function () { window.close(); }, 200);
                            return false;
                        } else {
                            alert('부모창을 찾을 수 없습니다. 다시 시도해 주십시오.');
                            $sns.lib.common.errRedirect();
                            return false;
                        }
                    }

                    // 회원가입시 완료 페이지로 이동
                    if ($sns_login.vars.isJoin) {
                        if ($("#login_pop").val() == "Y") {
                            if (opener != null) {
                                $("#dev_socialReUrl").val("https://" + $sns.lib.common.getPcDomain() + "/etc/loginpop_close.asp?mv=social_join");
                            } else {
                                $("#dev_socialReUrl").val($sns_login.urls.welcome);
                            }
                        } else {
                            $("#dev_socialReUrl").val($sns_login.urls.welcome);
                        }
                    } else {
                        $("#dev_socialReUrl").val($("#re_url").val());
                    }

                    // facebook, google, kakaotalk
                    document.SocialLoginForm.submit();
                } catch (e) {
                    if ($sns.lib.common.getPcServerName() != "real") {
                        alert("로그인하지 못했습니다. 다시 로그인 해 주세요. - login try err:" + e);
                    } else {
                        alert("로그인하지 못했습니다. 다시 로그인 해 주세요.");
                    }
                    $sns.lib.common.errRedirect();
                }
            },
            joinProc: function (snsData, agreeParam, response) {
                var snsServiceName = $sns.lib.common.getSnsServiceName(snsData.scType);

                $.ajax({
                    type: "POST",
                    url: "/Account/Auth/Reg-" + snsData.scType,
                    cache: false,
                    data: {
                        "scId": snsData.scId,
                        "Acstkn": snsData.token,
                        "ScName": snsData.name,
                        "ScEmail": snsData.email,
                        "ScGender": snsData.gender,
                        "ScBorn": snsData.fbAddInfo_Born,
                        "ScEducation": snsData.fbAddInfo_Education,
                        "ScWork": snsData.fbAddInfo_Work,
                        "Agree": encodeURIComponent(JSON.stringify(agreeParam))
                    },
                    async: false,
                    success: function (result) {
                        if (result.rc == "1") {
                            if (window._dslog) {
                                window._dslog.clearVal();
                                window._dslog.clearType();
                                window._dslog.registType("_n_evt1", "개인회원가입수");
                                window._dslog.registVal("_n_var4", snsServiceName);
                                window._dslog.dispatch();
                            }


                            // GA
                            GA_Virtual("홈>회원/로그인>회원가입>개인회원가입완료>" + snsServiceName, 'https://' + location.hostname + "/virtual/RegistComplete/Social/" + snsData.scType.toUpperCase());

                            setTimeout(function () {
                                $sns_login.vars.isJoin = true;  // 회원가입여부 true 처리
                                $sns_login.lib.account.authSns(snsData.scType, snsData.scId, snsData.email, snsData.token, '', response);
                            }, 100);
                        } else {
                            if (result.message && result.message != "") {
                                alert(result.message);
                            } else {
                                alert(snsServiceName + " 회원가입에 실패하였습니다.");
                            }
                            $sns.lib.common.errRedirect();
                        }
                    },
                    error: function (e) {
                        alert(snsServiceName + " 회원가입에 실패하였습니다.- err");
                        $sns.lib.common.errRedirect();
                    }
                });
            },
            // 공통 회원가입 처리
            join: function (scType, response) {
                try {
                    if (!response) {
                        alert('SNS 정보를 가져오지 못했습니다. 잠시 후 다시 시도해 주십시오.');
                        return $sns.lib.common.errEnd();
                    }
                    var snsServiceName = "SNS";
                    var vo = { id: "", token: "", email: "", gender: "", name: "이름없음" };
                    var fbAddInfo_Born = "", fbAddInfo_Education = "", fbAddInfo_Work = "";
                    switch (scType) {
                        case 'FB':
                            snsServiceName = "페이스북";
                            vo.id = response.authResponse.userID !== undefined ? response.authResponse.userID : "";
                            vo.token = response.authResponse.accessToken !== undefined ? response.authResponse.accessToken : "";
                            vo.name = response.name !== undefined && response.name != "" ? response.name.substring(0, 12) : "이름없음";
                            vo.email = response.email !== undefined ? response.email : "";
                            vo.gender = response.gender !== undefined ? response.gender : "";
                            if (vo.gender != "" && vo.gender != undefined) {
                                vo.gender = vo.gender == "male" ? "0" : "1";
                            }

                            //-------------------
                            // 만15세 미만 체크.
                            //-------------------
                            var birthday = response.birthday;
                            if (birthday !== undefined) {
                                if (birthday.length === 10) {
                                    var today = new Date();
                                    var nowMM = ("0" + today.getMonth()); nowMM = nowMM.substr(nowMM.length - 2, nowMM.length);
                                    var nowDD = ("0" + today.getDate()); nowDD = nowDD.substr(nowDD.length - 2, nowDD.length);
                                    var chkday = new Date(today.getFullYear() - 15, parseInt(nowMM), parseInt(nowDD));

                                    var birthdayDate = new Date(birthday);
                                    // 날짜형식일 경우만 처리
                                    if (Object.prototype.toString.call(birthdayDate) === '[object Date]') {
                                        //만 15세 미만인 경우 생년월일 정보 저장하지 않음
                                        if (birthdayDate <= chkday) {
                                            fbAddInfo_Born = response.birthday;
                                        }
                                    }
                                }
                            }

                            fbAddInfo_Education = "";//response.education;
                            fbAddInfo_Work = "";//response.work;

                            break;
                        case 'NV':
                            snsServiceName = "네이버";
                            vo.id = response.getProfileData('id') !== undefined ? response.getProfileData('id') : "";
                            vo.token = encodeURIComponent(response.getAccessToken()) !== undefined ? encodeURIComponent(response.getAccessToken()) : "";
                            vo.name = response.getProfileData('name') !== undefined && response.getProfileData('name') != "" ? response.getProfileData('name').substring(0, 12) : "이름없음";
                            vo.email = response.getProfileData('email') !== undefined ? response.getProfileData('email') : "";
                            vo.gender = response.getProfileData('gender') !== undefined ? response.getProfileData('gender') : "";
                            vo.gender = vo.gender == "M" ? "0" : "1";
                            break;
                        case 'GL':
                            snsServiceName = "구글";
                            var profile = response.currentUser.get().getBasicProfile();
                            vo.id = profile.getId() !== undefined ? profile.getId() : "";
                            vo.token = response.currentUser.get().getAuthResponse().access_token !== undefined ? response.currentUser.get().getAuthResponse().access_token : "";
                            vo.name = profile.getName() !== undefined && profile.getName() != "" ? profile.getName() : "이름없음";
                            if (profile.getEmail() !== undefined) {
                                if (profile.getEmail().length > 0) {
                                    vo.email = profile.getEmail();
                                }
                            }
                            vo.gender = "";
                            break;
                        case 'KA':
                            snsServiceName = "카카오";
                            vo.id = response.id !== undefined ? response.id : "";
                            vo.token = response.token !== undefined ? response.token : "";
                            vo.name = response.properties !== undefined ? response.properties.nickname != "" ? response.properties.nickname : "이름없음" : "이름없음";
                            vo.email = (response.kakao_account.has_email) ? response.kakao_account.email : "";
                            vo.gender = (response.kakao_account.has_gender) ? response.kakao_account.gender : "";
                            if (vo.gender != "" && vo.gender != undefined) {
                                vo.gender = vo.gender == "male" ? "0" : "1";
                            }
                            break;
                        case 'AP':
                            snsServiceName = "애플";
                            vo.id = response.sub !== undefined ? response.sub : "";
                            vo.token = response.token !== undefined ? response.token : "";
                            vo.name = response.username !== undefined ? response.username != "" ? response.username : "이름없음" : "이름없음";
                            vo.email = (response.email !== undefined) ? response.email : "";
                            vo.gender = "";
                            break;
                    }
                    //return;
                    if (!vo.id) {
                        alert(snsServiceName + ' 고유 아이디를 가져오지 못했습니다.');
                        return $sns.lib.common.errEnd();
                    }

                    // 약관동의페이지로 submit
                    var joinData = {
                        scType: scType,
                        scId: vo.id,
                        token: vo.token,
                        name: vo.name,
                        email: vo.email,
                        gender: vo.gender,
                        fbAddInfo_born: fbAddInfo_Born,
                        fbAddInfo_Education: fbAddInfo_Education,
                        fbAddInfo_Work: fbAddInfo_Work
                    };
                    var agreeData = {
                        Agree1: $('#agreeChk_0').is(':checked') ? 'on' : '',
                        Agree2: $('#agreeChk_1').is(':checked') ? 'on' : '',
                        Agree3: $('#agreeChk_2').is(':checked') ? 'on' : '',
                        Agree4: $('#agreeChk_3').is(':checked') ? 'on' : '',
                        Agree5: $('#agreeChk_5').is(':checked') ? 'on' : ''
                    };
                    this.joinProc(joinData, agreeData, response);

                } catch (e) {
                    if ($sns.lib.common.getPcServerName() != "real") {
                        alert(snsServiceName + " 회원가입에 실패하였습니다. - join try err" + e);
                    } else {
                        alert(snsServiceName + " 회원가입에 실패하였습니다.");
                    }
                    $sns.lib.common.errRedirect();
                }


            },
            goAgree: function (scType, rd) {
                $sns_login.lib.account.goEmailJoin(scType, rd, 2);
            },
            // 이메일 안내 이동
            goEmailJoin: function (scType, rd, destinationType) {
                destinationType = destinationType == undefined || destinationType == null ? 1 : destinationType;
                var destinationUrl = ''
                switch (destinationType) {
                    case 1:
                        destinationUrl = '/login/login_social_email.asp';
                        break;
                    case 2:
                        destinationUrl = '/account/regist';
                        break;
                }

                if (rd == '' && destinationType == 1) {
                    alert("필수정보가 충분하지 않습니다. 잠시 후 다시 시도해 주십시오.");
                    return $sns.lib.common.errEnd();
                }

                var ggHomeURL = "https://" + $sns.lib.common.getPcDomain() + "/mem/mon_gg_home.asp";

                // create hidden form
                var html = "";
                html += "<span id=\"dev_email_join_wrap\">";
                html += "   <form name=\"frmEmailJoin\" id=\"frmEmailJoin\" method=\"POST\" action=\"" + destinationUrl + "\">";
                html += "   <input type=\"hidden\" name=\"re_url\" id=\"dev_socialReUrl\" \>";
                html += "   <input type=\"hidden\" name=\"sc_type\" id=\"hid_sc_type\" \>";
                html += "   <input type=\"hidden\" name=\"mov_param\" id=\"mov_param\" \>";
                html += "   <input type=\"hidden\" name=\"mov_url\" id=\"mov_url\" \>";
                html += "   </form>";
                html += "</span>";

                // for naver. 네이버는 콜백을 팝업인 경우
                if ($("#hid_naver_call_pop").val() == "Y") {
                    // opener nv (for naver. 네이버는 콜백을 팝업으로 받아서 opener를 확인)
                    if (opener != null) {
                        // 로그인 팝업 cross domain 문제로 쿠키로 처리
                        $sns.lib.cookie.setCookie("Mon%5FSc%5FRd", rd, null, '/login', 'albamon.com');

                        if (opener.$("#login_pop").val() == "Y") {
                            opener.$("body").append(html);

                            // set values
                            opener.$("#hid_sc_type").val(scType);
                            opener.$("#dev_socialReUrl").val($("#re_url").val());
                            if (opener.$("#dev_socialReUrl").val().indexOf("loginpop_close.asp") >= 0) {
                                opener.$("#dev_socialReUrl").val(ggHomeURL);
                            }

                            opener.$("#mov_param").val("n");
                            opener.$("#mov_url").val(destinationUrl + "?sc_type=" + scType + "&re_url=" + encodeURIComponent(opener.$("#dev_socialReUrl").val()));
                            opener.$("#frmEmailJoin").attr("action", "//" + $sns.lib.common.getPcDomain() + "/etc/loginpop_close.asp");
                            opener.document.frmEmailJoin.submit();

                            setTimeout(function () { window.close(); }, 200);
                            return false;
                        } else {
                            $("body").append(html);

                            // set values
                            $("#hid_sc_type").val(scType);
                            $("#dev_socialReUrl").val($("#re_url").val());
                            if ($("#dev_socialReUrl").val().indexOf("loginpop_close.asp") >= 0) {
                                $("#dev_socialReUrl").val(ggHomeURL);
                            }

                            // 팝업로그인이 아닌 경우 opener명을 부여
                            opener.name = "albamon";
                        }
                        document.frmEmailJoin.target = opener.window.name;
                        document.frmEmailJoin.submit();
                        setTimeout(function () { window.close(); }, 200);
                        return false;
                    } else {
                        alert('부모창을 찾을 수 없습니다. 다시 시도해 주십시오.');
                        $sns.lib.common.errRedirect();
                        return false;
                    }
                }

                $("body").append(html);

                // set values
                $("#hid_sc_type").val(scType);
                $("#dev_socialReUrl").val($("#re_url").val());
                if ($("#dev_socialReUrl").val().indexOf("loginpop_close.asp") >= 0) {
                    $("#dev_socialReUrl").val(ggHomeURL);
                }

                if ($("#login_pop").val() == "Y") {
                    // no login & close popup & go url
                    $("#mov_param").val("n");
                    $("#mov_url").val(destinationUrl + "?sc_type=" + scType + "&re_url=" + encodeURIComponent($("#dev_socialReUrl").val()));
                    $("#frmEmailJoin").attr("action", "https://" + $sns.lib.common.getPcDomain() + "/etc/loginpop_close.asp");
                }

                // 로그인 팝업 cross domain 문제로 쿠키로 처리
                $sns.lib.cookie.setCookie("Mon%5FSc%5FRd", rd, null, '/login', 'albamon.com');
                // facebook, google, kakaotalk
                document.frmEmailJoin.submit();
            }
        };

        // facebook
        $sns_login.lib.fb = {
            callback: function (response, directJoinCode) {
                var agent = navigator.userAgent.toLowerCase();
                var isShowNoti = false;
                if ((navigator.appName == 'Netscape' && navigator.userAgent.search('Trident') != -1) || (agent.indexOf("msie") != -1) || (agent.indexOf("edge") != -1)) {
                    isShowNoti = true;
                }

                if (isShowNoti) {
                    alert("사용 중인 브라우저에서 작동하지 않습니다.\n크롬, 네이버 웨일 등 다른 브라우저를 사용해 주세요.");
                    return;
                } else {
                    var uid = "";
                    var token = "";
                    var appsecretCode = "";
                    // response(connected: 앱과 페이스북에 로그인중, not_authorized:페이스북 로그인중이고 앱은 비로그인중, unknown: 로그아웃중)
                    if (response.status === 'connected') {
                        uid = response.authResponse.userID;
                        token = response.authResponse.accessToken;
                        appsecretCode = $sns_login.lib.fb.secretProof(token);
                        // facebook API 호출
                        FB.api('/me', 'get', { access_token: token, appsecret_proof: appsecretCode, scope: 'public_profile, email, user_birthday, user_gender', fields: 'id, name, birthday, email, gender' }, function (result) {
                            var data = result;
                            data.authResponse = { userID: uid, accessToken: token };
                            $sns_login.lib.account.loginGate('FB', data, directJoinCode);
                        });
                    } else {
                        // SDK로 페이스북 로그인 다이얼로그 띄움
                        FB.login(function (response) {
                            if (response.status === 'connected') {
                                try {
                                    uid = response.authResponse.userID;
                                    token = response.authResponse.accessToken;
                                    appsecretCode = $sns_login.lib.fb.secretProof(token);
                                    // facebook API 호출
                                    FB.api('/me', 'get', { access_token: token, appsecret_proof: appsecretCode, scope: 'public_profile, email, user_birthday, user_gender', fields: 'id, name, birthday, email, gender' }, function (result) {
                                        var data = result;
                                        data.authResponse = { userID: uid, accessToken: token };
                                        $sns_login.lib.account.loginGate('FB', data, directJoinCode);
                                    });
                                } catch (e) {
                                    $("#btnFbLogin").click();
                                }

                            }
                        }, { scope: 'public_profile, email, user_birthday, user_gender' });
                    }
                }
            },
            // 회원가입 처리
            join: function (response) {
                var uid = response.authResponse.userID || "";
                var token = response.authResponse.accessToken || "";
                var appsecretCode = $sns_login.lib.fb.secretProof(token);
                // facebook API 호출
                FB.api('/me', 'get', { access_token: token, appsecret_proof: appsecretCode, scope: 'public_profile, email, user_birthday, user_gender', fields: 'id, name, birthday, email, gender' }, function (result) {
                    var data = result;
                    data.authResponse = { userID: uid, accessToken: token };

                    // 회원가입
                    $sns_login.lib.account.join('FB', data);
                });
            },
            secretProof: function (token) {
                var appSecretProof = '';
                $.ajax({
                    url: '/api/sns/appsecretproof',
                    cache: false,
                    async: false,
                    method: 'GET',
                    data: { accessToken: token }
                }).done(function (key) {
                    appSecretProof = key;
                }).error(function (err) {
                });
                return appSecretProof;
            }
        };

        // naver
        $sns_login.lib.nv = {
            callback: function (directJoinCode) {
                $sns_login.lib.account.loginGate('NV', $sns.vars.naver_id_login, directJoinCode);
            },
            // 회원가입 처리
            join: function (response) {
                $sns_login.lib.account.join('NV', response);
            }
        };

        // google
        $sns_login.lib.gl = {
            callback: function (response, directJoinCode) {
                if (!response) {
                    alert('SNS 정보를 가져오지 못했습니다. 잠시 후 다시 시도해 주십시오.');
                    return $sns.lib.common.errEnd();
                }

                if (response.isSignedIn.get()) {
                    $sns_login.lib.account.loginGate('GL', response, directJoinCode);
                }
            },
            // 회원가입 처리
            join: function (response) {
                $sns_login.lib.account.join('GL', response);
            }
        };

        // kakaotalk
        $sns_login.lib.ka = {
            //callback: function (directJoinCode) {
            //    Kakao.Auth.login({
            //        success: function (response) {
            //            Kakao.API.request({
            //                url: '/v2/user/me',
            //                success: function (result) {
            //                    var data = result;
            //                    data.token = response.access_token;
            //                    $sns_login.lib.account.loginGate('KA', data, directJoinCode);
            //                },
            //                fail: function (e) {
            //                    alert("잘못 된 접근 입니다. - " + JSON.stringify(e));
            //                    return $sns.lib.common.errEnd();
            //                }
            //            });
            //        },
            //        fail: function (e) {
            //            alert("잘못 된 접근 입니다. - " + JSON.stringify(e));
            //            return $sns.lib.common.errEnd();
            //        }
            //    });
            //},
            // 회원가입 처리
            join: function (response) {
                $sns_login.lib.account.join('KA', response);
            },
            callback: function () {
                window.open("/Account/Auth/KakaoLogin-M", "KakaoLogin", "status=no, scrollbars=no, width=400, height=550, left=10, top=10");
            },
            getCode: function (_code) {
                setTimeout(function () {
                    if (_code.length > 0) {
                        $.ajax({
                            url: "/Account/Auth/Kakao-API",
                            type: "POST",
                            cache: false,
                            async: false,
                            dataType: "json",
                            data: {
                                code: _code
                            },
                            success: function (data) {
                                if (data.result == "OK") {
                                    if (data.kakaoObj != null) {
                                        var kobj = JSON.parse(data.kakaoObj);
                                        kobj.token = _code;
                                        $sns_login.lib.account.loginGate('KA', kobj);
                                    }
                                } else {
                                    alert("잘못된 데이터를 요청하셨습니다.");
                                    return false;
                                }
                            },
                            error: function () {
                                alert("네트워크 오류입니다. 다시 시도해주세요.");
                                return false;
                            }
                        });
                    } else {
                        alert("잘못된 호출입니다.");
                        return false;
                    }
                }, 100);
            }
        };

        // apple
        $sns_login.lib.ap = {
            callback: function (directJoinCode) {
                try {
                    const data = AppleID.auth.signIn()
                        .then(function (response) { return; })
                        .catch(function (err) { return; });

                } catch (error) {
                    alert("사용 중인 브라우저에서 작동하지 않습니다.\n크롬, 네이버 웨일 등 다른 브라우저를 사용해 주세요.");
                }
            },
            // 회원가입 처리
            join: function (response) {
                $sns_login.lib.account.join('AP', response);
            },
            parseJwt: function (token) {
                var base64Url = token.split('.')[1];
                var base64 = base64Url.replace(/-/g, '+').replace(/_/g, '/');
                var jsonPayload = decodeURIComponent(atob(base64).split('').map(function (c) {
                    return '%' + ('00' + c.charCodeAt(0).toString(16)).slice(-2);
                }).join(''));

                return JSON.parse(jsonPayload);
            }
        };
        $sns.login = $sns_login;

        //--------------------------------
        // 폼 공통
        //--------------------------------
        var reg = {
            submitted: false,

            // 이메일 도메인 선택 바인딩
            emailChk1: function () {
                $("#dev_email_Cp").val("etc");
            },

            // 이메일 도메인 선택 바인딩2
            emailChk2: function () {
                var str_addr = $("#dev_email_Cp").val();
                var dev_mail_etc = $("#dev_mail_etc");
                if (str_addr == "etc") {
                    dev_mail_etc.val("").focus();
                }
                else {
                    dev_mail_etc.val(str_addr);
                }
            },

            // 생년월일 변경 바인딩
            dayBind: function (day) {
                var year = new Date($("#dev_born_year option:selected").val(), ($("#dev_born_month").val() == "") ? NaN : $("#dev_born_month").val(), '0').getDate();
                var html = "";
                var num = "";
                if (year == "" || year == null || isNaN(year)) {
                } else {
                    html = "<option value=\"\">일</option>"
                    for (var i = 1; i <= year; i++) {
                        num = "0" + i;
                        (num.length > 2) ? num = num.substring(1, num.length) : num = num;
                        if (day == num) {
                            html += "<option value=\"" + num + "\" selected=\"selected\">" + num + "일</option>";
                        } else {
                            html += "<option value=\"" + num + "\">" + num + "일</option>";
                        }
                    }
                    $("#dev_born_day").html(html);
                }
            },

            //주소검색 팝업
            searchAddress: function (nl, resType) {
                nl = (nl == undefined || nl == null) ? "" : nl;
                resType = (resType == undefined || resType == null) ? "" : resType;
                var url = "/etc/zipcode_search_road.asp?NL=" + nl + "&resType=" + resType;
                var addr_win = window.open(url, "addrPop", 'menubar=0,toolbar=0,location=0,directories=0,resizable=0,scrollbars=yes,status=0,width=500,height=320,left=300,top=200');
                if (addr_win.focus)
                    addr_win.focus();
            },

            // 폼체크
            checkForm: function () {
                /*
                if ($('#dev_idchk').val() == "") { alert('아이디를 입력해주세요.'); $('#dev_idchk').focus(); return false; }
                if (!validator.id_check($('#dev_idchk').val()) || !validator.isCapital($('#dev_idchk').val()) || $('#dev_idchk').val().length < 6 || $('#dev_idchk').val().length > 16) { alert('6~16자의 영소문자, 숫자만 사용 가능합니다.'); $('#dev_idchk').focus(); return false; }
                if ($("#dev_idchkStat").val() != "Y") { $('#dev_idchk').removeClass("txtY").addClass("txtN").html("사용 중인 아이디입니다. 다른 아이디를 입력해주세요."); alert('사용 중인 아이디입니다. 다른 아이디를 입력해주세요.'); $('#dev_idchk').focus(); return false; }
                if ($('#dev_pwdchkStat').val() != "Y") { alert('비밀번호를 확인해주세요.'); $('#dev_pwd1').focus(); return false; }
                if ($('#dev_namechkStat').val() != "Y") { alert('이름을 확인해주세요.'); $('#dev_u_name').focus(); return false; }
                if ($('#dev_birthChkStat').val() != "Y") { alert('생년월일을 확인해주세요.'); $('#dev_born_year').focus(); return false; }
                if ($('#txtGender').html() != "") { alert('성별을 선택해주세요.'); $('#sex_male').focus(); return false; }
                if ($('#dev_mailChkStat').val() != "Y") { alert('이메일을 확인해주세요.'); $('#dev_M_Email').focus(); return false; }
                if ($('#dev_phoneChkStat').val() != "Y") { alert('휴대폰 번호를 확인해주세요.'); $('#dev_hphone2').focus(); return false; }
                */
                var phone1 = "";

                if ($('#dev_hphone2').val() == "") {
                    alert("전화번호를 입력해 주세요.");
                    $('#dev_hphone2').focus();
                    return false;
                }
                if ($('#dev_hphone2').val().length < 3) {
                    alert("올바를 전화번호를 입력해 주세요.");
                    $('#dev_hphone2').focus();
                    return false;
                }
                if (!validator.check_number($('#dev_hphone2').val())) {
                    alert("숫자를 넣어주세요.");
                    $('#dev_hphone2').val("");
                    $('#dev_hphone2').focus();
                    return false;
                }
                if ($('#dev_hphone3').val() == "") {
                    alert("전화번호를 입력해 주세요.");
                    $('#dev_hphone3').val("");
                    $('#dev_hphone3').focus();
                    return false;
                }
                if ($('#dev_hphone3').val().length < 4) {
                    alert("올바를 전화번호를 입력해 주세요.");
                    $('#dev_hphone3').focus();
                    return false;
                }
                else if ($('#dev_hphone3').val() == "" || (!validator.check_number($('#dev_hphone3').val()))) {
                    alert("숫자를 넣어주세요.");
                    $('#dev_hphone3').val("");
                    $('#dev_hphone3').focus();
                    return false;
                }
                //else {
                //    var dev_u_ident = $('#dev_born_year option:selected').val() + $('#dev_born_month option:selected').val() + $('#dev_born_day option:selected').val();
                //    $('#dev_u_ident').val(dev_u_ident);    
                //}
                return true;
            }
        };

        //--------------------------------
        // 인증체크
        //--------------------------------
        var auth = {
            // 인증번호 받기
            getCertSms: function () {
                $.ajax({
                    url: "/account/regist/get-cert-sms",
                    cache: false,
                    type: "POST",
                    dataType: "json",
                    data: {
                        mid: $('#dev_idchk').val(),
                        name: escape($("#dev_u_name").val()),
                        //mail: $("#dev_M_Email").val() + "@" + $("#dev_mail_etc").val(),
                        phone: $("#dev_hphone1").val() + "-" + $("#dev_hphone2").val() + "-" + $("#dev_hphone3").val()
                        //ident: $("#dev_u_ident").val(),
                        //gender: $("input:radio[name=Gender]:checked").val()
                    },
                    success: function (data) {
                        if (data == null) return false;

                        if (data.result == "OK") {
                            alert('휴대폰으로 인증번호가 발송되었습니다.');
                            $('#dev_Ident_e').val(data.identE);
                            $('#txtCert').removeClass("txtY").addClass("txtN").html("휴대폰으로 인증번호가 발송되었습니다. 카카오톡으로 전달받은 인증번호를 입력해주세요.<br/>(실패 시 문자로 발송됨) 3분 이상 인증번호가 오지 않을 경우[인증번호 받기]를 다시 눌러주세요. ");
                        } else {
                            if (typeof (data.errorMsg) != 'undefined') {
                                alert(data.errorMsg);
                            } else {
                                alert('오류가 발생하였습니다. 잠시 후 다시 시도해 주십시오.');
                            }
                        }
                    },
                    error: function () {
                        alert('오류가 발생하였습니다. 잠시 후 다시 시도해 주십시오.');
                    }
                });
            },

            // 인증번호 확인
            certComfirm: function () {
                var certNo = $("#dev_CertNo").val();

                if ($('#dev_Ident_e').val() == "") {
                    alert("먼저 인증번호를 발급 받아 주십시오.");
                    return false;
                }

                if (certNo == "") {
                    $('#txtCert').removeClass("txtY").addClass("txtN").html("인증번호를 입력해 주세요.");
                    $("#dev_CertNo").focus();
                    return false;
                }

                $.ajax({
                    url: "/account/regist/confirm-cert-sms",
                    type: "POST",
                    cache: false,
                    dataType: "json",
                    data: {
                        identE: $("#dev_Ident_e").val(),
                        certPath: $("#dev_certGubun").val(),
                        certNo: certNo
                    },
                    success: function (data) {
                        if (data.result == "OK") {
                            alert("휴대폰 인증이 완료되었습니다.");
                            $('#dev_CertNo, #dev_hphone2, #dev_hphone3').unbind('keyup');
                            $("#dev_cert_idx").val(data.certIndex); //발송된 인증번호 테이블 idx
                            $('#dev_certChkStat').val('Y');
                            $('#dev_hphone2, #dev_hphone3, #dev_CertNo').attr('disabled', true);  //$('#dev_u_name, #dev_hphone2, #dev_hphone3, #dev_CertNo').attr('readonly', true).css('background', '#e8e8e8');
                            $('#dev_hphone1').attr('disabled', true);
                            $('#txtCert').removeClass("txtN").addClass("txtY").html("휴대폰 인증이 완료되었습니다.");
                            setCookie('IsCertPhone', 'Y');
                        }
                        else {
                            if (typeof (data.errorMsg) != 'undefined') {
                                $('#txtCert').removeClass("txtY").addClass("txtN").html(data.errorMsg);
                                $("#dev_CertNo").val("");
                                $("#dev_CertNo").focus();
                            } else {
                                alert('오류가 발생하였습니다. 잠시 후 다시 시도해 주십시오.');
                            }
                        }
                    },
                    error: function () {
                        alert('오류가 발생하였습니다. 잠시 후 다시 시도해 주십시오.');
                    }
                });
            },
            sendCertSmsCorp: function (name, mobileNo) {
                var result = false;
                var phoneRegExp = /^\d{3}-\d{3,4}-\d{4}$/;
                if (!phoneRegExp.test(mobileNo)) {
                    alert("휴대폰번호를 입력해 주세요.");
                    return false;
                }

                $.ajax({
                    url: "/account/cert/send-corp-mobile-cert-number",
                    type: "POST",
                    cache: false,
                    async: false,
                    dataType: "json",
                    data: { name: name, mobileNo: mobileNo },
                    success: function (data) {
                        if (data.result == "OK") {
                            alert("휴대폰으로 인증번호가 발송되었습니다. \n3분 이상 인증번호가 오지 않을 경우 [인증번호 받기]를 다시 눌러주세요.");
                            $('#MobileCertResult').val(1);
                            result = true;
                        }
                        else {
                            alert(data.errorMsg);
                        }
                    },
                    error: function () {
                        alert('오류가 발생하였습니다. 잠시 후 다시 시도해 주십시오.');
                    }
                });
                return result;
            },
            confirmCertSmsCorp: function (name, mobileNo, certNo) {
                if ($('#MobileCertResult').val() != "1") {
                    alert("먼저 인증번호를 발급 받아 주세요.");
                    return false;
                }
                if (certNo == "") {
                    alert("인증번호를 입력해 주세요.");
                    return false;
                }

                $.ajax({
                    url: "/account/cert/confirm-corp-mobile-cert-number",
                    type: "POST",
                    cache: false,
                    async: false,
                    dataType: "json",
                    data: { name: name, mobileNo: mobileNo, certNo: certNo },
                    success: function (data) {
                        if (data.result == "OK") {
                            alert("휴대폰 인증이 완료되었습니다.")
                            $('#MobileCertResult').val(2);
                            $('#CertStep').val(2);
                            $('div.dev_cert_area').hide();
                            $('#layer_cert_success').show();
                            $('#regform').find('[disabled]').prop('disabled', false);
                            $("#IpinCertIdx").val(data.certIndex);

                            if (data.IsBadCertPhone == true) {
                                $("#IpinMobileCertStat").attr("value", "bad");
                            }
                        }
                        else {
                            alert("인증번호를 정확히 입력해 주세요.")
                        }
                    },
                    error: function () {
                        alert('오류가 발생하였습니다. 잠시 후 다시 시도해 주십시오.');
                    }
                });
                return false;
            },

            //본인인증
            identifyMember: function (certType, certPahtType, returnUrl) {
                certType = (certType == undefined || certType == null) ? "" : certType;
                returnUrl = (returnUrl == undefined || returnUrl == null) ? "" : returnUrl;
                certType = certType.toLowerCase();
                certPahtType = (certPahtType == undefined || certPahtType == null) ? "" : certPahtType;
                var winName = "";

                if (certType == "ipin") {
                    winName = "IPINWindow_" + certPahtType
                    var IPIN_window = window.open('/account/cert/ipin-request?returnUrl=' + returnUrl + "&ParentWinName=" + window.name + "&CertPathType=" + certPahtType, winName, 'width=425, height=550, resizable=0, scrollbars=no, status=0, titlebar=0, toolbar=0, left=435, top=250');

                    if (IPIN_window == null) {
                        alert(" ※ 윈도우 XP SP2 또는 인터넷 익스플로러 7 사용자일 경우에는 \n    화면 상단에 있는 팝업 차단 알림줄을 클릭하여 팝업을 허용해 주시기 바랍니다. \n\n※ MSN,야후,구글 팝업 차단 툴바가 설치된 경우 팝업허용을 해주시기 바랍니다.");
                    }
                    else {
                        IPIN_window.focus();
                    }
                }
                else if (certType == "m") {
                    winName = "KMCISWindow_" + certPahtType;
                    var domain = window.location.hostname;
                    if (domain.indexOf('dev-') < 0 && domain.indexOf('test-') < 0 && domain.indexOf('www19') < 0 && domain.indexOf('www146') < 0) {
                        domain = "www.albamon.com";
                    }
                    var reqUrl = "";

                    reqUrl = domain + '/account/cert/kmcis-request?returnUrl=' + returnUrl + "&ParentWinName=" + window.name + "&CertPathType=" + certPahtType + "&retDomain=" + window.location.hostname;

                    if (window.location.hostname.indexOf('dev-') >= 0) {
                        reqUrl = "https://" + reqUrl;
                    } else {
                        reqUrl = "https://" + reqUrl;
                    }

                    var KMCIS_window = window.open(reqUrl, winName, 'width=425, height=550, resizable=0, scrollbars=no, status=0, titlebar=0, toolbar=0, left=435, top=250');

                    if (KMCIS_window == null) {
                        alert(" ※ 윈도우 XP SP2 또는 인터넷 익스플로러 7 사용자일 경우에는 \n    화면 상단에 있는 팝업 차단 알림줄을 클릭하여 팝업을 허용해 주시기 바랍니다. \n\n※ MSN,야후,구글 팝업 차단 툴바가 설치된 경우 팝업허용을 해주시기 바랍니다.");
                    }
                    else {
                        KMCIS_window.focus();
                    }
                }
            },
            certifyCorpRegNum: function (regnum, cName, cId, mail, phone, ipinCertPhoneNo) {
                var result = {
                    ResultCode: 0,
                    CompName: "",
                    RepName: "",
                    ResultMessage: ""
                };
                if (!auth.validateCorpRegNum(regnum)) {
                    result.ResultCode = -4;
                    return result;
                }
                $.ajax({
                    url: "/account/cert/certify-corporation",
                    type: "POST",
                    cache: false,
                    async: false,
                    dataType: "json",
                    data: {
                        sNumber: regnum,
                        cName: cName,
                        cId: cId,
                        mail: mail,
                        phone: phone,
                        ipinCertPhoneNo: ipinCertPhoneNo
                    },
                    success: function (data) {
                        if (data.ResponseResultCode == 0) {
                            if (data.CheckResultCode == "01") {
                                result.ResultCode = 1;
                                result.CompName = data.CompName;
                                result.RepName = data.RepName
                            } else if (data.CheckResultCode == "03") {
                                result.ResultCode = -5;
                            } else if (data.CheckResultCode == "05") {
                                result.ResultCode = -4;
                            } else if (data.CheckResultCode == "101") {
                                result.ResultCode = -3;
                                alert(data.ResultMessage);
                            } else if (data.CheckResultCode == "102") {
                                result.ResultCode = -101;
                                alert(data.ResultMessage);
                            }
                            else {
                                result.ResultCode = -100;
                            }
                        } else {
                            alert('오류가 발생하였습니다. 잠시 후 다시 시도해 주십시오.');
                        }
                    },
                    error: function () {
                        alert('오류가 발생하였습니다. 잠시 후 다시 시도해 주십시오.');
                    }
                });

                return result;
            },
            validateCorpRegNum: function (regnum) {
                var biz_value = new Array(10);
                var li_temp, li_lastid;
                if (regnum.length == 12) {
                    biz_value[0] = (parseFloat(regnum.substring(0, 1)) * 1) % 10;
                    biz_value[1] = (parseFloat(regnum.substring(1, 2)) * 3) % 10;
                    biz_value[2] = (parseFloat(regnum.substring(2, 3)) * 7) % 10;
                    biz_value[3] = (parseFloat(regnum.substring(4, 5)) * 1) % 10;
                    biz_value[4] = (parseFloat(regnum.substring(5, 6)) * 3) % 10;
                    biz_value[5] = (parseFloat(regnum.substring(7, 8)) * 7) % 10;
                    biz_value[6] = (parseFloat(regnum.substring(8, 9)) * 1) % 10;
                    biz_value[7] = (parseFloat(regnum.substring(9, 10)) * 3) % 10;
                    li_temp = parseFloat(regnum.substring(10, 11)) * 5 + "0";
                    biz_value[8] = parseFloat(li_temp.substring(0, 1)) + parseFloat(li_temp.substring(1, 2));
                    biz_value[9] = parseFloat(regnum.substring(11, 12));
                    li_lastid = (10 - ((biz_value[0] + biz_value[1] + biz_value[2] + biz_value[3] + biz_value[4] + biz_value[5] + biz_value[6] + biz_value[7] + biz_value[8]) % 10)) % 10;
                    if (biz_value[9] != li_lastid) {
                        return false;
                    }
                    else
                        return true;
                }
                else {
                    return false;
                }
            }
        };

        return {
            validator: validator,
            sns: $sns,
            reg: reg,
            auth: auth,
            sns_login: $sns_login
        }
 
