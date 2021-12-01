<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<script type="text/javascript">
// 년과 달을 받아서 마지막 일 알아내기 
function getDay(year, month){
	var lastMon = new Array(31,29,31,30,31,30,31,31,30,31,30,31); // 말일 
	//2월은 4년마다 29일
	if(year%4 == 0) 
		var mon2 = true;
	else mon2 = false;
	
	lastMon[1] = mon2 ? 29 : 28; // 
	return lastMon[month];
}	

var digit =  1 ; // 달력의 시작일 (1일)
var curCell = 1; // 첫번째 셀 (달의 1일이 어디서 시작할지 모르니까 )
//테이블을 이용해서 달력 만들기 
//첫날 마지막날 오늘날짜(date) 년도 월
function drawCal(firstDay, lastDay, date, year,monthName) {
	var text = ""; // 뭔지는 모르겠지만 문자열로 하겠다 
	text +="<center><table><th colspan = 7 bgcolor = black>" // 테이블 가운데로,  2021년 11월 부분 7열 합해서 백그라운드 컬러는 fofo, 
	text +="<font color = orange size=+3>" // 사이즈는 기본타입보다 3배 크게 
	text +=year+"년"+(monthName+1)+"월"; // 2021년 11월
	text += "</font></th>";
	
		//시작하는 요일을 일요일로 할지 계산 필요 , 일요일은 0으로 시작 
		var week = new Array('일', '월', '화', '수','목','금','토'); // 요일
		text +="<tr align = center valign = center>"; // 글자가 가운데 오게 
	
			
		var openCol = "<td bgcolor = black width = 45 height = 40>"; //요일칸
			openCol += "<font color = white>"; // 글자 컬러 등 서식 
		var closeCal = "</font></td>";
			
		for(var dayNum = 0; dayNum <= 6; dayNum++){ // dayNum이 6보다 작으면 반벅 7줄 (0~6)
			text += openCol + week[dayNum]+closeCal;
		}
		text +="</tr>";
		
		//달력의 표를 만들기 (1,2,3,45 ...일 테이블) 
		//( 30+1-1/7 )= 30/7 = 4.n = ceil로 올림되서 5가 됨, 5줄(5행)이 되어야 1행에 7개씩 1~30까지 칸을 만들수잇어 //=>  5번 실행
		for(var row=1; row < Math.ceil(lastDay+firstDay-1/7); row++){ // 행
			text +="<tr align = center valign = top bgcolor=white>"; // 글자가 오른쪽 위에 있고 배경색 지정 
			
			//여기서 부터 하나의 줄
			for(var col = 1; col<=7; col++){ // 시작일~말일 for문으로 출력 
				if(digit > lastDay) break; // 시작하는 날이 마지막 날보다 크면 브레이크// digit가 달의 마지막 수행 후 31 >30(11월) 이렇게 되면 for문장 반복문장을 빠져나옴 
				if(curCell < firstDay){ // 현재 셀이 시작 하는 날보다 작으면(이부분은 성립되지않으므로 무조건 비워짐) 비워둠  (달의 1일이 어디서 시작할지 모르니까 조건 지정 ) 
					//if(curCell < firstDay) => 만족하지 않으면 	if문 밖의 digit++;가 실행됨 
					text += "<td>&nbsp;</td>"; //공백 = &nbdp; 안써주면 칸 안생김 
					curCell ++;
					}else {
						if("일"){// 달력의 시작일이 오늘이면 
						text += "<td height=40 font color=red>"; // 컬러는 레드 
						text += digit; 
						text += "</font><br>";
						text += "</td>";
						}else{
							text +="<td height=40>" + digit + "</td>";// 달력의 시작일이 오늘이 아니면 달력의 높이는 40px, 날짜계속 진행 1~2~3~4
						  
					}
					digit++;
				}
				
			} 
			text +="</tr>";
		} 
		
		text += "</table>"; 
		text += "</center>";
		
		return text; 
}



//현재 년 월 일 구하기 
var now = new Date();
var year = now.getFullYear(); //var year = now.getFullYear()+1900; //121 // 1900+121 = 2021
var month = now.getMonth();	
var date = now.getDate();

//현재월 1일의 요일 
var firstDayInstance = new Date(year, month,1); // 시작하는 날의 년월일을 firstDayInstance 변수가 담음 
var firstDay = firstDayInstance.getDay()+1;// 요일 시작일 출력 (월2 화3 수4) //왜 2야 curCelldl 1이라 ??? 두번쨰칸에서 시작 ?????  // 0부터 시작해서 일요일이니까 시작하는 날짜가 어느 요일이냐 //
console.log("firstDay : " + firstDay );

//마지막 일자
var days = getDay(year,month);// 달의 마지막 일을 출력 // 함수호출

//테이블 만들기
var my_Text = drawCal(firstDay, days, date, year,month);//함수호출 // 첫날 마지막날 날짜 년 월 // 2,30,26,,2021,11
document.write(my_Text);


</script>



</body>
</html>