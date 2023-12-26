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
  <title>캘린더</title>
  <link rel="stylesheet" href="../resources/css/setting.css">
  <link rel="stylesheet" href="../resources/css/plugin.css">
  <link rel="stylesheet" href="../resources/css/template.css">
  <link rel="stylesheet" href="../resources/css/common.css">
  <link rel="stylesheet" href="../resources/css/style.css">
</head>

<body data-aos-easing="ease" data-aos-duration="400" data-aos-delay="0">
  <!-- [S]hooms-N54 -->
   <header class="hooms-N55" data-bid="uClqa8c34N" id="">
    <div class="header-container container-lg">
      <div class="header-left">
        <h1 class="header-title">
          <a class="header-logo" href="Gomain.do" title="hooms"></a>
        </h1>
      </div>
      <div class="header-center">
        <ul class="header-gnblist">
                            <li class="header-gnbitem">
                                <a class="header-gnblink" href="Gocalendar.do">
                                    <span>캘린더</span>
                                </a>

                            </li>
                            <li class="header-gnbitem">
                                <a class="header-gnblink" href="Gomain.do">
                                    <span>AI 식단 추천</span>
                                </a>

                            </li>
                            <li class="header-gnbitem">
                                <a class="header-gnblink" href="Goboard.do">
                                    <span>레시피 저장소</span>
                                </a>
                            </li>
                            <li class="header-gnbitem">
                                <a class="header-gnblink" href="Goyoutube.do">
                                    <span>레시피 영상</span>
                                </a>
                            </li>
                        </ul>
      </div>
      <div class="header-right">
        <div class="header-utils">
          <a href="Gomypage.do" class="btn-profile header-utils-btn" title="마이페이지"></a>
          <button class="btn-close header-utils-btn" title="close"></button>
        </div>
       <div class="header-utils">
          <a href="Logout.do" class="btn-search header-utils-btn" title="로그아웃"></a>
          <button class="btn-close header-utils-btn" title="close"></button>
        </div>
      </div>
      
    </div>
   
    <div class="header-dim"></div>
  </header>
  <!-- [E]hooms-N54 -->
  <main class="th-layout-main ">
    <!-- [S]hooms-N32 -->
    <div class="hooms-N32" data-bid="eOLqA9CiBF" id="">
      <div class="contents-inner">
        <div class="contents-container container-md">
          <div class="textset textset-h2">
            <h2 class="textset-tit">Calendar</h2>
          </div>
          <div class="contents-group">
          </div>
          <div class="contents-cardlist contents-cardlist-active">
            <a href="javascript:void(0)" class="cardset">
              <figure class="cardset-figure">
			    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/main.css">
			
				<script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/main.js"></script>
				<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.min.js"></script>
				<script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/locales-all.js"></script>
			
				<div id='calendar'></div>
			
				<script>
					document.addEventListener('DOMContentLoaded', function () {
						var calendarEl = document.getElementById('calendar');
						var calendar = new FullCalendar.Calendar(calendarEl, {
							initialView: 'dayGridMonth', // 초기 로드 될때 보이는 캘린더 화면(기본 설정: 달)
							headerToolbar: { // 헤더에 표시할 툴 바
								start: 'prev next today',
								center: 'title',
								end: 'dayGridMonth,dayGridWeek,dayGridDay'
							},
							titleFormat: function (date) {
								return date.date.year + '년 ' + (parseInt(date.date.month) + 1) + '월';
							},
							//initialDate: '2021-07-15', // 초기 날짜 설정 (설정하지 않으면 오늘 날짜가 보인다.)
							selectable: true, // 달력 일자 드래그 설정가능
							droppable: true,
							editable: true,
							nowIndicator: true, // 현재 시간 마크
							locale: 'ko' // 한국어 설정
						});
						calendar.render();
					});
				</script>
              </figure>
            </a>
          </div>
         
        </div>
      </div>
    </div>
    <!-- [E]hooms-N32 -->
    <!-- [S]hooms-N2 -->
    <div class="hooms-N2" data-bid="qklQa88OMk" id="">
      
    </div>
    <!-- [E]hooms-N2 -->
    <!-- [S]hooms-N58 -->
    <div class="hooms-N58" data-bid="gnlQa88oN3" id="">
      <div class="contents-container container-md">
        <div class="tabset tabset-solid">
        </div>
      </div>
    </div>
    <!-- [E]hooms-N58 -->
    <!-- [S]hooms-N32 -->
    <div class="hooms-N32" data-bid="Hylqa88oNP" id="">
    </div>
    <!-- [E]hooms-N32 -->
  </main>
  <!-- [S]hooms-N57 -->
  
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