/**
 * 공고 js
 */
 
   function successModal() {
	  Swal.fire(
			  '공고 등록 완료!',
			  '',
			  'success'
			)
}
  function errorModal() {
	  Swal.fire(
			  '공고 등록 실패!',
			  '',
			  'error'
			)
}

   (function() {
      'use strict';
      window.addEventListener('load', function() {
         var forms = document.getElementsByClassName('needs-validation');
         var validation = Array.prototype.filter.call(forms, function(form) {
            form.addEventListener('submit', function(event) {
               if (form.checkValidity() === false) {
                  event.preventDefault();
                  event.stopPropagation();
               }
               form.classList.add('was-validated');
            }, false);
         });
      }, false);
   })();
   
	function oneGender(checkbox) {
         var checkgender = document.getElementsByName('gender')
         checkgender.forEach((item) => {
           if (item !== checkbox) item.checked = false
         })
       }

	function oneType(checkbox) {
		var checktype = document.getElementsByName('type')
			checktype.forEach((item) => {
				if (item !== checkbox) item.checked = false
				})
		}

       function oneNeutered(checkbox) {
         var checkneutered = document.getElementsByName('neutered')
         checkneutered.forEach((item) => {
           if (item !== checkbox) item.checked = false
         })
       }
       
       
       function kind(id)
{       
    //도시
    var kind = document.getElementById(id);
    var kindOption = kind.value;
    var subkind = document.getElementById("ani_kind");
    var subOptions = {
          dog : ["품종","믹스견","기타견종","골든 리트리버","그레이트 덴","그레이트 피레니즈","그레이하운드",
        	  "닥스훈트","달마시언","도베르만","도사","동경견","라사 압소","라이카","래브라도 리트리버",
        	  "로트바일러","말티즈","미니어쳐 핀셔","바셋 하운드","버니즈 마운틴 독","베들링턴 테리어",
        	  "벨지언 세퍼드 독","보더 콜리","보르조이","보스턴 테리어","복서","불 테리어","불독",
        	  "브리터니 스패니얼","비글","비숑 프리제","사모예드","삽살개","샤 페이","세인트 버나드 독",
        	  "셔틀랜드 쉽독","슈나우저","스코티쉬 테리어","시 츄","시바","시베리안 허스키","아메리칸 코커 스패니얼",
        	  "아메리칸 핏 불 테리어","아키타","아프간 하운드","알래스칸 맬러뮤트","오스트레일리언 실키 테리어",
        	  "올드 잉글리시 쉽독","요크셔 테리어","웨스트 하이랜드 화이트 테리어","웰시 코기","이탈리언 코로소 독",
        	  "잉글리시 세터","잉글리시 코커 스패니얼","잭 러셀 테리어","저먼 세퍼드 독","제퍼니즈 스피츠",
        	  "제퍼니즈 친", "진돗개","차우 차우","치와와","캐리 블루 테리어","캐벌리어 킹 찰스 스패니얼",
        	  "코튼 드 툴리어","콜리","티베튼 스패니얼","파피용","퍼그","페키니즈","페터데일 테리어",
        	  "포메라니언","포인터(포인팅 독)","폭스 테리어","푸들","풀리","풍산개","프랜치 불독",
        	  "휘펫"],
              
          cat :  ["품종","믹스묘", "기타묘종","나폴레옹","나폴레옹 롱 헤어","네벨룽","노르웨이지안 포레스트 캣",
        	  "데본 렉스","돈스코이","라펌","라펌 쇼트 헤어","래그돌","러시안 블루","망스","먼치킨","먼치킨 롱 헤어",
        	  "메인 쿤","민스킨","발리니즈","버만","버미즈","버밀라","벵갈 캣","봄베이","브라질리안 쇼트 헤어",
        	  "브리티시 롱 헤어","브리티시 쇼트 헤어","사바나","샤우지","샤트룩스","샴","세렝게티","세루빔",
        	  "셀키릭 랙스","셀키릭 렉스 롱 헤어","소말리","소코키","스노우슈","스코티시 폴드","스키프 토이 밥테일",
        	  "스털링","스핑크스","시베리안","싱가푸라","아메리칸 밥테일","아메리칸 밥테일 쇼트 헤어","아메리칸 쇼트 헤어",
        	  "아메리칸 와이어헤어","아메리칸 컬","아메리칸 컬 롱 헤어","아비시니안","아시안 세미롱 헤어","아시안 쇼트 헤어",
        	  "오리엔탈 롱 헤어","오리엔탈 쇼트 헤어","오스트레일리안 미스트","오조스 아줄리스","오조스 아줄리스 롱 헤어",
        	  "옥시켓","요크 쵸코렛","유럽피언 쇼트 헤어","이그저틱 쇼트 헤어","이집션 마우","자바니즈",
        	  "재패니스 밥테일 롱 헤어","저먼 렉스","제퍼니즈 밥테일","찬틸리/티파니 캣","친칠라 캣",
        	  "카호마니","칼라포인스 쇼트 헤어","캘리포니아 스팽글드 캣","코니시 렉스","코렛","코리아 롱 헤어",
        	  "코리아 쇼트 헤어","쿠릴리안 밥테일 롱 헤어","쿠릴리안 밥테일 쇼트 헤어","킴릭","타이","터키시 밴",
        	  "터키시 앙고라","토이거","통키니즈","페르시안","피터볼드","픽시밥 롱 헤어","핏시-밥","하바나 브라운",
        	  "하이랜더","하이랜드 쇼트 헤어","히말라얀"],
             
          unknown : ["전체"]
    }
    
    switch (kindOption) {
    case "개":
      var subOption = subOptions.dog;
      break;
   	case "고양이":
      var subOption = subOptions.cat;
      break;
   	case "미상":
   	  var subOption = subOptions.unknown;
   	  break;
   }
    //도시 초기화
    subkind.options.length = 0;
    var len = subOption.length;
    for(var i=0; i<len;i++){
       var option = document.createElement('option');
       option.innerText = subOption[i];
       subkind.append(option);
    }
    subOption= subkind.options[subkind.selectedIndex].text;
    
    console.log(kindOption);
    return kindOption;
}
function SubCity() {
	   var subCity = document.getElementById('ani_kind');
	   var subOption = subCity.options[subCity.selectedIndex].text;
	   
	   console.log(subCity.options[subCity.selectedIndex].text);
	   
	   if(subOption!="품종"){
	      subCity.options[subCity.selectedIndex].value = subOption;
	   }
	   else
	   {
	      subCity.options[subCity.selectedIndex].value="";
	   }

	   return subOption;
	}
