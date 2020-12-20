package util;

import java.io.IOException;

import javax.servlet.jsp.JspWriter;

public class FirstFunction {

	public static void srcGuGudan(JspWriter out) {
		
		try{
			out.println("<table border='1'>");
			for(int dan=2 ; dan<=9 ; dan++){
				out.println("	<tr>");
				for(int su=1 ; su<=9 ; su++){
					out.println("<td>"+dan+"*"+su+"="+(dan*su)+"</td>");
				}
				out.println("	</tr>");
			}
			out.println("</table>");
		}
		catch(IOException e){
			//내용없음
		}
	}
	
	//이거도 지우라네염...
	//Java(Java Resource)
	public void tempFunc(JspWriter out) {
		String str = "나는 문자열";
		try {
			out.println(str); //처음에 출력불가 ->JSP아니라서 JSP와 연결후 출력가능
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
}






