<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta http-equiv="imagetoolbar" content="no">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="format-detection" content="telephone=no">
  <meta name="title" content="웹사이트">
  <meta name="description" content="웹사이트입니다.">
  <meta name="keywords" content="키워드,키워드,키워드">
  <meta property="og:title" content="웹사이트">
  <meta property="og:description" content="웹사이트입니다">
  <meta property="og:image" content="https://웹사이트/images/opengraph.png">
  <meta property="og:url" content="https://웹사이트">
  <title>홈</title>
  <link rel="stylesheet" href="../resources/css/setting.css">
  <link rel="stylesheet" href="../resources/css/plugin.css">
  <link rel="stylesheet" href="../resources/css/template.css">
  <link rel="stylesheet" href="../resources/css/common.css">
  <link rel="stylesheet" href="../resources/css/style.css">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <style>
    /* page-loading */
    #loading {
      width: 100%;
      height: 100%;
      top: 0;
      left: 0;
      position: fixed;
      display: block;
      opacity: 0.6;
      background: #e4e4e4;
      z-index: 99;
      text-align: center;
    }

    #loading>img {
      position: absolute;
      top: 40%;
      left: 45%;
      z-index: 100;
    }

    #loading>p {
      position: absolute;
      top: 57%;
      left: 43%;
      z-index: 101;
    }
    
    #blank_area{
    	height: 200px;
    }
    #keyword_area{
                display: flex;
                flex-direction: row;
                flex-wrap: wrap;
                justify-content: space-evenly;
                align-items: center
    }
    .keybox {
    	margin: 30px;
    }
    
    .keyword{
		box-shadow: -5px -5px 10px #fff, 5px 5px 8px #babebc;
		border-radius: 20px;
		border: none;
		outline: none;
		font-size: 13px;
		font-weight: bold;
		padding: 10px 30px;
		margin: 14px;
		letter-spacing: 1px;
		text-transform: uppercase;
		cursor: pointer;
		transition: transform 80ms ease-in;
		background-color: rgb(250, 250, 250);
    }
    
    .keyword:active {
		box-shadow: inset 1px 1px 2px #babebc, inset -1px -1px 2px #fff;
	}
	
	.key_title{
		box-shadow: -5px -5px 10px #fff, 5px 5px 8px #babebc;
		border-radius: 20px;
		border: none;
		outline: none;
		font-size: 13px;
		font-weight: bold;
		padding: 10px 30px;
		margin: 14px;
		letter-spacing: 1px;
		text-transform: uppercase;
		cursor: pointer;
		transition: transform 80ms ease-in;
		background-color: black;
		color:white;
	}
	
	#btn_click {
		box-shadow: -5px -5px 10px #fff, 5px 5px 8px #babebc;
		border-radius: 20px;
		border: none;
		outline: none;
		font-size: 13px;
		font-weight: bold;
		padding: 10px 30px;
		margin: 14px;
		letter-spacing: 1px;
		text-transform: uppercase;
		cursor: pointer;
		transition: transform 80ms ease-in;
		background-color: rgb(250, 250, 250);
	
	}
	#btn_click:active {
		box-shadow: inset 1px 1px 2px #babebc, inset -1px -1px 2px #fff;
	}


  </style>
  
</head>

<body data-aos-easing="ease" data-aos-duration="400" data-aos-delay="0">
  <!-- [S]hooms-N54 -->
  <div class="hooms-N54" data-bid="oClqA9Wim2" id="">
    <div class="header-inner">
      <div class="header-container container-lg">
        <div class="header-left">
          <h1 class="header-title">
            <a class="header-logo" href="javascript:void(0)" title="hooms"></a>
          </h1>
        </div>
        <div class="header-center">
          <ul class="header-gnblist">
            <li class="header-gnbitem">
              <a class="header-gnblink" href="javascript:void(0)">
                <span>ABOUT US</span>
              </a>
              
            </li>
            <li class="header-gnbitem">
              <a class="header-gnblink" href="javascript:void(0)">
                <span>PRODUCT</span>
              </a>
              
            </li>
            <li class="header-gnbitem">
              <a class="header-gnblink" href="javascript:void(0)">
                <span>SHOP</span>
              </a>
            </li>
            <li class="header-gnbitem">
              <a class="header-gnblink" href="javascript:void(0)">
                <span>NOTICE</span>
              </a>
            </li>
          </ul>
        </div>
        <div class="header-right">
          <div class="header-utils">
            <a href="javascript:void(0);" class="btn-profile header-utils-btn" title="profile"></a>
            <button class="btn-close header-utils-btn" title="close"></button>
          </div>
        </div>
        <div class="header-search-form">
          <div class="inputset inputset-line">
            <button class="icon-right icon-search btn" type="button" aria-label="아이콘">
            </button>
            <input type="text" class="inputset-input form-control" placeholder="검색어를 입력해주세요." aria-label="내용">
          </div>
        </div>
      </div>
    </div>
    <div class="header-fullmenu-dark fullmenu-top">
      <div class="fullmenu-head container-lg">
        <h4 class="fullmenu-title">
          <a class="fullmenu-logo" href="javascript:void(0)" title="hooms"></a>
        </h4>
        <button class="fullmenu-close"></button>
      </div>
    </div>
    <div class="header-dim"></div>
  </div>
  <!-- [E]hooms-N54 -->
  <main class="th-layout-main th-layout-side">
    <div class="th-layout-sideleft">
      <!-- [S]hooms-N42 -->
      <div class="hooms-N42" data-bid="hHLqA9wR9d" id="">
        <div class="contents-inner">
          <div class="contents-container container-md">
            <ul class="contents-list">
              <li class="contents-item">
                <h3 class="contents-tit">잠깐! 구매 전 꼭 읽어주세요</h3>
                <p class="contents-desc"> 고객님의 연락처가 정확하지 않을 경우 배송이 지연될 수 있습니다. </p>
                <p class="contents-desc"> 주문순서에 따라 배송일정 안내를 진행해드리며, 그 이후부터 배송 절차가 시작됩니다. </p>
              </li>
              <li class="contents-item">
              </li>
              <li class="contents-item">
              </li>
              <li class="contents-item">
              </li>
              <li class="contents-item">
              </li>
            </ul>
          </div>
        </div>
      </div>
      <!-- [E]hooms-N42 -->
    </div>
    
    <div class="th-layout-content">
    
    <div id="blank_area">
    </div>
     <div id="keyword_area">

     <form align="center">
     <div class = "keybox">
     	<span class="key_title">목적</span>
     	<span class="keyword">체중감소<input type="checkbox" name="checkbox" value="diet" class="checkbox"></span>
     	<span class="keyword">체중증가<input type="checkbox" name="checkbox" value="bulk" class="checkbox"></span>
     	<span class="keyword">비조리요리<input type="checkbox" name="checkbox" value="nocook" class="checkbox"></span>
     	<span class="keyword">저당식<input type="checkbox" name="checkbox" value="lowsugar" class="checkbox"></span>
     	<span class="keyword">저염식<input type="checkbox" name="checkbox" value="lowsalt" class="checkbox"></span>
     </div>
     <div class = "keybox">
     	<span class="key_title">피해야할 식재료</span>
     	<span class="keyword">카페인<input type="checkbox" name="checkbox" value="caffeine" class="checkbox"></span>
     	<span class="keyword">샐러리<input type="checkbox" name="checkbox" value="Celery" class="checkbox"></span>
     	<span class="keyword">갑각류<input type="checkbox" name="checkbox" value="nocook" class="checkbox"></span>
     	<span class="keyword">달걀<input type="checkbox" name="checkbox" value="lowsugar" class="checkbox"></span>
     	<span class="keyword">생선<input type="checkbox" name="checkbox" value="lowsalt" class="checkbox"></span>
     	<span class="keyword">글루텐<input type="checkbox" name="checkbox" value="lowsalt" class="checkbox"></span>
     	<span class="keyword">땅콩<input type="checkbox" name="checkbox" value="lowsalt" class="checkbox"></span>
     	<span class="keyword">우유<input type="checkbox" name="checkbox" value="lowsalt" class="checkbox"></span>
     </div>
      <div class = "keybox">
     	<span class="key_title">피해야할 식재료</span>
     	<span class="keyword">연체동물<input type="checkbox" name="checkbox" value="lowsalt" class="checkbox"></span>
		<span class="keyword">겨자<input type="checkbox" name="checkbox" value="lowsalt" class="checkbox"></span>
     	<span class="keyword">참깨<input type="checkbox" name="checkbox" value="lowsalt" class="checkbox"></span>
     	<span class="keyword">대두<input type="checkbox" name="checkbox" value="lowsalt" class="checkbox"></span>
     	<span class="keyword">견과<input type="checkbox" name="checkbox" value="lowsalt" class="checkbox"></span>
     	<span class="keyword">밀<input type="checkbox" name="checkbox" value="lowsalt" class="checkbox"></span>
     	<span class="keyword">유당<input type="checkbox" name="checkbox" value="lowsalt" class="checkbox"></span>
     	<span class="keyword">이스트<input type="checkbox" name="checkbox" value="lowsalt" class="checkbox"></span>
     </div>
     <div class = "keybox">
     	<span class="key_title">식단 스타일</span>
     	<span class="keyword">채식주의<input type="checkbox" name="checkbox" value="diet" class="checkbox"></span>
     	<span class="keyword">비건식<input type="checkbox" name="checkbox" value="diet" class="checkbox"></span>
     	<span class="keyword">키토제닉<input type="checkbox" name="checkbox" value="bulk" class="checkbox"></span>
     	<span class="keyword">유제품 미포함<input type="checkbox" name="checkbox" value="nocook" class="checkbox"></span>
     	<span class="keyword">저탄수화물<input type="checkbox" name="checkbox" value="lowsugar" class="checkbox"></span>
     	<span class="keyword">글루텐 프리<input type="checkbox" name="checkbox" value="lowsalt" class="checkbox"></span>
     </div>
     </form>
     <span>
     <input type="text" id="keywords" name="keywords" required />
		<button id="btn_click" onclick="chatGPT()">추천받기</button>
		<div id="result"></div>
			
		<div id="loading">
		<img src="https://studentrights.sen.go.kr/images/common/loading.gif">
		</div>
		
		
		<script>
		    $(document).ready(function () {
		        $('#loading').hide();
		    });
		
		    function chatGPT() {
		        const api_key = "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"  // <- API KEY 입력
		        const keywords = document.getElementById('keywords').value
		        $('#loading').show();
		
		        const messages = [
		            { role: 'system', content: 'You are a helpful assistant.' },
		            { role: 'user', content: keywords + '이것을 토대로 추천해줘.' },
		        ]
		
		        const data = {
		            model: 'gpt-3.5-turbo',
		            temperature: 0.5,
		            n: 1,
		            messages: messages,
		        }
		
		        $.ajax({
		            url: "https://api.openai.com/v1/chat/completions",
		            method: 'POST',
		            headers: {
		                Authorization: "Bearer " + api_key,
		                'Content-Type': 'application/json',
		            },
		            data: JSON.stringify(data),
		        }).then(function (response) {
		            $('#loading').hide();
		            console.log(response)
		            let result = document.getElementById('result')
		
		            // 이전 결과를 지우고 새로운 결과를 추가
		            result.innerHTML = ''; // 결과를 지움
		
		            let pre = document.createElement('pre')
		            pre.innerHTML = "\n\n" + response.choices[0].message.content
		            result.appendChild(pre)
		
		            document.getElementById('keywords').value = ''
		        });
		    }
		</script>
		
		
 			<!-- <script>
			    $(document).ready(function () {
			      $('#loading').hide();
			    });
			
			    function chatGPT() {
			      const api_key = "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"  // <- API KEY 입력
			      const keywords = document.getElementById('keywords').value
			      $('#loading').show();
			
			      const messages = [
			        { role: 'system', content: 'You are a helpful assistant.' },
			        { role: 'user', content: keywords + '이것을 토대로 추천해줘.' },
			      ]
			
			      const data = {
			        model: 'gpt-3.5-turbo',
			        temperature: 0.5,
			        n: 1,
			        messages: messages,
			      }
			
			      $.ajax({
			        url: "https://api.openai.com/v1/chat/completions",
			        method: 'POST',
			        headers: {
			          Authorization: "Bearer " + api_key,
			          'Content-Type': 'application/json',
			        },
			        data: JSON.stringify(data),
			      }).then(function (response) {
			        $('#loading').hide();
			        console.log(response)
			        let result = document.getElementById('result')
			        let pre = document.createElement('pre')
			
			        pre.innerHTML = "\n\n" + response.choices[0].message.content
			        result.appendChild(pre)
			
			        document.getElementById('keywords').value = ''
			      });
			    }
			  </script> -->
     </span>
     
    </div>
      <!-- [S]hooms-N17 -->
      <div class="hooms-N17" data-bid="UwLqa9WdPl">
        <div class="contents-inner" align="center">
        
        
        </div>
      </div>
      <!-- [E]hooms-N17 -->
    </div>

  </main>
  <!-- [S]hooms-N57 -->
  <div class="hooms-N57" data-bid="xpLQA9WWJd">
    <div class="footer-container container-lg">
      <div class="footer-top">
        <h1 class="footer-logo">
          <a href="javascript:void(0)">
            <img src="../resources/images/img_logo_gray.png" alt="로고">
          </a>
        </h1>
        <ul class="footer-menulist">
          <li class="footer-menuitem">
            <a href="javascript:void(0)">
              <span>이용약관</span>
            </a>
          </li>
          <li class="footer-menuitem">
            <a href="javascript:void(0)">
              <span>개인정보처리방침</span>
            </a>
          </li>
          <li class="footer-menuitem">
            <a href="javascript:void(0)">
              <span>푸터메뉴1</span>
            </a>
          </li>
          <li class="footer-menuitem">
            <a href="javascript:void(0)">
              <span>푸터메뉴2</span>
            </a>
          </li>
        </ul>
        <ul class="footer-snslist">
          <li class="footer-snsitem">
            <a class="footer-snslink" href="javascript:void(0)">
              <img src="../resources/icons/ico_instagram_lightgrey.svg" alt="인스타그램">
            </a>
          </li>
          <li class="footer-snsitem">
            <a class="footer-snslink" href="javascript:void(0)">
              <img src="../resources/icons/ico_youtube_lightgrey.svg" alt="유튜브">
            </a>
          </li>
          <li class="footer-snsitem">
            <a class="footer-snslink" href="javascript:void(0)">
              <img src="../resources/icons/ico_facebook_lightgrey.svg" alt="페이스북">
            </a>
          </li>
          <li class="footer-snsitem">
            <a class="footer-snslink" href="javascript:void(0)">
              <img src="../resources/icons/ico_kakao_lightgrey.svg" alt="카카오톡">
            </a>
          </li>
        </ul>
      </div>
      <div class="footer-bottom">
        <div class="footer-txt">
          <p> 서울시 영등포구 선유로70 우리벤처타운2 705호 </p>
          <p>
            <span>T. 070-8872-8874</span>
            <span>E. help@openfield.co.kr</span>
          </p>
        </div>
        <div class="footer-txt">
          <p>2022 BY TEMPLATEHOUSE. ALL RIGHTS RESEVED</p>
        </div>
      </div>
    </div>
  </div>
  <!-- [E]hooms-N57 -->
  <script src="../resources/js/setting.js"></script>
  <script src="../resources/js/plugin.js"></script>
  <script src="../resources/js/template.js"></script>
  <script src="../resources/js/common.js"></script>
  <script src="../resources/js/script.js"></script>
<!-- Code injected by live-server -->
<script>
	// <![CDATA[  <-- For SVG support
	if ('WebSocket' in window) {
		(function () {
			function refreshCSS() {
				var sheets = [].slice.call(document.getElementsByTagName("link"));
				var head = document.getElementsByTagName("head")[0];
				for (var i = 0; i < sheets.length; ++i) {
					var elem = sheets[i];
					var parent = elem.parentElement || head;
					parent.removeChild(elem);
					var rel = elem.rel;
					if (elem.href && typeof rel != "string" || rel.length == 0 || rel.toLowerCase() == "stylesheet") {
						var url = elem.href.replace(/(&|\?)_cacheOverride=\d+/, '');
						elem.href = url + (url.indexOf('?') >= 0 ? '&' : '?') + '_cacheOverride=' + (new Date().valueOf());
					}
					parent.appendChild(elem);
				}
			}
			var protocol = window.location.protocol === 'http:' ? 'ws://' : 'wss://';
			var address = protocol + window.location.host + window.location.pathname + '/ws';
			var socket = new WebSocket(address);
			socket.onmessage = function (msg) {
				if (msg.data == 'reload') window.location.reload();
				else if (msg.data == 'refreshcss') refreshCSS();
			};
			if (sessionStorage && !sessionStorage.getItem('IsThisFirstTime_Log_From_LiveServer')) {
				console.log('Live reload enabled.');
				sessionStorage.setItem('IsThisFirstTime_Log_From_LiveServer', true);
			}
		})();
	}
	else {
		console.error('Upgrade your browser. This Browser is NOT supported WebSocket for Live-Reloading.');
	}
	// ]]>
</script>
</body>
</html>