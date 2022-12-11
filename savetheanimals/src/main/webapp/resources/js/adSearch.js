var kindPre = '';

function Kind(id){
    //ani_kind, mainCity, subCity, ani_type
    var kind = document.getElementById(id);

    var kindValue = kind.options[kind.selectedIndex].value;
    var kindText = kind.options[kind.selectedIndex].text.replace("＋","")
    
    if(kindText.includes("롱")||kindText.includes("쇼트")){
      //쇼트나 롱이 있다면
      kindText = kindText.split(" ");
        kindText = kindText[0]+" "+kindText[1];
    }
    else if(kindText.includes(" ")){
        kindText = kindText.split(" ");
        kindText = kindText[1];
     }
     else{
           kindText = kindText.substr(0,2);
    }
    
    
    if(kindText!='전체'){
         kind.options[kind.selectedIndex].value = kindText;
    }
    else{
       kind.options[kind.selectedIndex].value ='';
    }
    
    //console.log(kind.options[kind.selectedIndex].value);
}
function SubCity(id) {
   var subCity = document.getElementById(id);
   var subOption = subCity.options[subCity.selectedIndex].text;
   
   //console.log(subCity.options[subCity.selectedIndex].value);
   
   if(subOption!="전체"){
      subCity.options[subCity.selectedIndex].value = subOption;
   }
   else
   {
      subCity.options[subCity.selectedIndex].value="";
   }

   return subOption;
}
function City(id,subid)
{       
    //도시
    var mainCity = document.getElementById(id);
    var mainOption = mainCity.options[mainCity.selectedIndex].text;
    var subCity = document.getElementById(subid);
    var subOptions = {
          
          all : ["전체"],
          
          seoul : ["전체","강남구","강동구","강북구","강서구","관악구","광진구","구로구","금천구","노원구",
              "도봉구","동대문구","동작구","마포구","서대문구","서초구","성동구","성북구","송파구",
              "양천구","영등포구","용산구","은평구","종로구","중구","중랑구"],
              
           busan :  ["전체","강서구","금정구","남구","동구","동래구","부산진구","북구","사상구",
              
              "사하구","서구","수영구","연제구","영도구","중구","해운대구","기장군"],
              
           deagu : ["전체","남구","달서구","동구","북구","서구","수성구","중구","달성군"],
           
          incheon : ["전체","계양구","남동구","동구","미추홀구","부평구","서구","연수구","중구","강화군","옹진군"],
          
          gwangju : ["전체","광산구","남구","동구","북구","서구"],
          
          deajeon : ["전체","대덕구","동구","서구","유성구","중구"],
          
          ulsan : ["전체","남구","동구","북구","중구","울주군"],
          
          gyeonggido : ["전체","가평군","고양시 덕양구","고양시 일산동구","고양시 일산서구","과천시",
              "광명시","광주시","구리시","군포시","김포시","남양주시","동두천시","부천시 원미구",
              "부천시 소사구","부천시 오정구","성남시 수정구","성남시 중원구","성남시 분당구",
              "수원시 장안구","수원시 권선구","수원시 팔달구","수원시 영통구","시흥시","안산시 단원구",
              "안산시 상록구","안양시 만안구","안양시 동안구","안성시","양주시","양평군","여주시","연천군",
              "오산시","용인시 처인구","용인시 기흥구","용인시 수지구","의왕시","의정부시","이천시","파주시",
              "평택시","포천시","하남시","화성시"],
           
          gangwondo : ["전체","춘천시", "원주시", "강충청남도릉시", "동해시", "태백시", "속초시", "삼척시", "홍천군", 
             "횡성군", "영월군", "평창군", "정선군", "철원군", "화천군", "양구군", "인제군", "고성군", "양양군" ],
           
          chungcheongbukdo : ["전체", "청주시 상당구", "청주시 서원구", "청주시 흥덕구", "청주시 청원구", "충주시", "제천시", 
             "보은군", "옥천군", "영동군", "증평군", "진천군", "괴산군", "음성군", "단양군" ],

         chungcheongnamdo : ["전체", "천안시 동남구", "천안시 서북구", "공주시", "보령시", "아산시", "서산시", "논산시", 
            "계룡시", "당진시", "금산군", "부여군", "서천군", "청양군", "홍성군", "예산군", "태안군" ],

         jeollabukdo: ["전체", "전주시 완산구", "전주시 덕진구", "군산시", "익산시", "정읍시", "남원시", "김제시",
            "완주군", "진안군", "무주군", "장수군", "임실군", "순창군", "고창군", "부안군" ],

         jeollanamdo :  ["전체", "목포시", "여수시", "순천시", "나주시", "광양시", "담양군", "곡성군", "구례군",
            "고흥군", "보성군", "화순군", "장흥군", "강진군", "해남군", "영암군", "무안군", "함평군", "영광군", "장성군", "완도군", "진도군", "신안군" ],
            
         gyeongsangbukdo : ["전체", "포항시 남구", "포항시 북구", "경주시", "김천시", "안동시", "구미시", "영주시", "영천시", 
            "상주시", "문경시", "경산시", "군위군", "의성군", "청송군", "영양군", "영덕군", "청도군", "고령군", "성주군", "칠곡군",
            "예천군", "봉화군", "울진군", "울릉군" ],
         
         gyeongsangnamdo : ["전체", "창원시 의창구", "창원시 성산구", "창원시 마산합포구", "창원시 마산회원구", "창원시 진해구", "진주시",
            "통영시", "사천시", "김해시", "밀양시", "거제시", "양산시", "의령군", "함안군", "창녕군", "고성군", "남해군", "하동군",
            "산청군", "함양군", "거창군", "합천군" ],

         sejong : ["전체"],
         
         jeju : ["전체", "서귀포시", "제주시" ]   

    }
    
    switch (mainOption) {
    case "전체":
      var subOption = subOptions.all;
      break;
   case "서울특별시":
      var subOption = subOptions.seoul;
      break;
   case "부산광역시":
      var subOption = subOptions.busan;
      break;
   case "대구광역시":
      var subOption = subOptions.deagu;
      break;
   case "인천광역시":
      var subOption = subOptions.incheon;
      break;
   case "광주광역시":
      var subOption = subOptions.gwangju;
      break;
   case "대전광역시":
      var subOption = subOptions.deajeon;
      break;
   case "울산광역시":
      var subOption = subOptions.ulsan;
      break;
   case "경기도":
      var subOption = subOptions.gyeonggido;
      break;
   case "강원도":
      var subOption = subOptions.gangwondo;
      break;
   case "충청북도":
      var subOption = subOptions.chungcheongbukdo;
      break;
   case "충청남도":
      var subOption = subOptions.chungcheongnamdo;
      break;
   case "전라북도":
      var subOption = subOptions.jeollabukdo;
      break;
   case "전라남도":
      var subOption = subOptions.jeollanamdo;
      break;
   case "경상북도":
      var subOption = subOptions.gyeongsangbukdo;
      break;
   case "경상남도":
      var subOption = subOptions.gyeongsangnamdo;
      break;
   case "세종특별자치시":
      var subOption = subOptions.sejong;
      break;
   case "제주특별자치도":
      var subOption = subOptions.jeju;
      break;

   default:
      break;
   }
    //도시 초기화
    subCity.options.length = 0;
    
    for(var i=0; i<subOption.length;i++){
       var option = document.createElement('option');
       if(subOption[i]!="전체"){
          option.value = subOption[i];
       }
       else{
          option.value = "";
       }
       option.innerText = subOption[i];
       subCity.append(option);
    }
    
    subOption= subCity.options[subCity.selectedIndex].value;

    //console.log("main"+mainCity.options[mainCity.selectedIndex].value+" sub:" + subOption);
    
    
    //return mainOption;
}

function Cate(ca) {
    var code = document.getElementById(ca);
    var codeValue = code.options[code.selectedIndex].value;
    var codeText = code.options[code.selectedIndex].text;
    
     
    
    //console.log(codeValue);
}
  function infoModal() {
	  Swal.fire(
			  '검색 총 0건',
			  '',
			  'info'
			)
}

function okModal() {
	  Swal.fire(
			  '등록완료',
			  '',
			  'info'
			)
}


