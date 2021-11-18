package time;

import java.util.Calendar;

public class Time_Java {

	//순수한 자바는 서버에서 실행
	public static void main(String[] args) {
		Calendar c = Calendar.getInstance(); // getInstance = > 싱클톤 /이 메소드 사용하면 캘린더의 모든 메소드 사용 가능 
		
		int hour = c.get(Calendar.HOUR_OF_DAY); // 대문자 = 고정상수
		int minute = c.get(Calendar.MINUTE);
		int second = c.get(Calendar.SECOND);
		
		System.out.println("서버의 시간 : " + hour + "/" +minute + "/" + second);
		

	}

}
