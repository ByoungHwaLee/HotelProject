<h1>FAQs</h1>
<dl id="faq">
  <dt><h3><span>▼</span>32비트와 64비트 버전 Windows의 차이점은 무엇인가요?</h3></dt>
  <dd>
    32비트 및 64비트라는 용어는 컴퓨터 프로세서(CPU라고도 함)가 정보를 처리하는 방식을 나타냅니다. 모든 장치에서 64비트 버전의 Windows를 실행할 수 있는 것은 아닙니다
  </dd>
  <dt><h3><span>▼</span>Windows 제품 키는 어떻게 찾을 수 있나요?</h3></dt>
  <dd>
    32비트 및트 시스템보다 더욱 효율적으로 처리합니다. 모든 장치에서 64비트 버전의 Windows를 실행할 수 있는 것은 아닙니다
  </dd>
  <dt><h3><span>▼</span>미디어가 부팅 가능한가요?</h3></dt>
  <dd>
    사이트의 미디어를 사용하여 복구 도구 액세스에 이용할 수 있는 부팅 가능 USB 드라이브 및 DVD를 만들 수 있습니다.
  </dd>
  <dt><h3><span>▼</span>ISO 파일을 다운로드했습니다. 이제 어떻게 해야 하나요?</h3></dt>
  <dd>
    Windows 8.1 컴퓨터에서 미디어를 만들 경우 ISO 파일을 마우스 오른쪽 단추로 클릭하고, 탑재를 선택하여 현재 장치 또는 USB 드라이브에 이미지를 탑재하거나 디스크 이미지 굽기를 선택하여 DVD를 구울 수 있습니다.
  </dd>

</dl>




$(function() {
	$("#faq > dt").click(showHide);
});

function showHide(e) {
	var $sbj = $(e.currentTarget);
  
  $sbj.prevAll("dd:visible").slideUp("fast", bulletChange);
  
  $sbj.next().nextAll("dd:visible").slideUp("fast", bulletChange);
  //이미닫은게 반응하면 안되서 한번 건너 뛰기 위해 .next를 한번 씀
  
  $sbj.next().slideToggle("fast", bulletChange);
  
  function bulletChange() {
    var $sbjBullet = $(this).prev().find('span'); 
    //하나 하나 찾아가야 문자가 열고닫을때 바뀐다
  	var curDisplay = $(this).css("display"); 
    // 여기서의this는 dd이다 
    if (curDisplay == "none") {
    	$sbjBullet.text("▼");
    } else {
    	$sbjBullet.text("▲");
    }
  }
}





#faq > dt {
  border-bottom: 1px solid #CCC;
}

#faq > dd {
  display: none;
  padding: 10px;
}
