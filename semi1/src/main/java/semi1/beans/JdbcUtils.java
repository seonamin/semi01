package semi1.beans;

import java.sql.Connection;
import java.sql.DriverManager;

public class JdbcUtils {

	// 드라이버와 연결을 모듈화 
	// - 계정이름과 비밀번호는 바뀔 수 있는 정보이므로 고려하여 모듈화 한다
	//Class.forName("oracle.jdbc.OracleDriver");
	//System.out.println("드라이버 설치 완료");
	//Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","kh","kh");
	//System.out.println("계정 로그인 성공");
	//con.close();
	
	//연결생성 메소드 : 편하게 불러서 사용할 거기 때문에 접근제한자 public을 사용한다. 
	//				탈객체로 객체를 생성하지 않고 불어오도록 만든다
	//				반환형은 Connection이다
	//				매게변수:필요한 정보 = 계정이름,비밀번호
	//				종료는 포함하지 않는다
	public static Connection connect(String username, String password) throws Exception {
		Class.forName("oracle.jdbc.OracleDriver");
		Connection con = DriverManager.getConnection(
						"jdbc:oracle:thin:@localhost:1521:xe",username, password);

		return con;
	}
	
}
