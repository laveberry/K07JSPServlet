package controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.FileUtil;

public class DownloadCtrl extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//폼값 받기
		String filename = req.getParameter("filename");
		String idx = req.getParameter("idx");
		
		/*
		방법1 : 서버에 저장된 파일명 그대로 다운로드.
			파일명을 변경할 필요가 없으므로 파일명에 관련된 파라미터는 1개만 있다.
		 */
		//FileUtil.download(req, resp, "/Upload", filename);
		/*
		방법2 : 서버에 저장된 파일을 다운로드 할때는 원본파일명으로
			변경하여 다운로드 한다. 이때는 저장된 파일명과 원본파일명이
			각각 테이블에 저장되어 있어야 한다. 여기서 파일명 변경에
			대해서만 확인해본다.
		FileUtil.download(requset객체, response객체, 디렉토리명, 서버에저장된파일명, 원본파일명);
		
		-인코딩처리는 FileUtil에서 다 진행함
		 */
		FileUtil.download(req, resp, "/Upload", filename, "원본파일명.jpg");
		
		//커넥션풀로 DAO생성
		//DAO생성 및 파일다운로드 카운트 증가시킴
		DataroomDAO dao = new DataroomDAO();
		dao.downCountPlus(idx);
		dao.close();
	}
	
}
