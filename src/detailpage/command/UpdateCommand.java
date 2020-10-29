package detailpage.command;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import detailpage.beans.FileDAO;
import detailpage.beans.WriteDAO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.multipart.FileRenamePolicy;

public class UpdateCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		int cnt = 0;
		WriteDAO dao = new WriteDAO();
		
		
		
//------------------------------------------------------------------------------------
		
	      // 1. MultipartRequest 객체 생성 --> 파일 업로드 됨
	      ServletContext context = request.getServletContext();
	      
	      //서블릿 산의 upload폴더 경로 가져오기
	      String saveDirectory = context.getRealPath("upload");
	      System.out.println("업로드 경로: "+saveDirectory);
	      
	      int maxPostSize = 5 * 1024 * 1024; //최대 5M
	      String encoding = "UTF-8"; //인코딩
	      FileRenamePolicy policy = new DefaultFileRenamePolicy(); //중복 파일명에 대한 rename 정책
	      MultipartRequest multi = null;
	      
	      try {
	         multi = new MultipartRequest(
	               request,
	               saveDirectory,
	               maxPostSize,
	               encoding,
	               policy
	               );
	      } catch(IOException e) {
	         e.printStackTrace();
	      }
	      
	      //--------------------------------
	      // 2. 업로드된 파일의 '원본이름'과 '저장된 이름' 받아오기
	      List<String> originalFileNames = new ArrayList<String>();
	      List<String> fileSystemNames = new ArrayList<String>();
	      
	      Enumeration<String> names = multi.getFileNames(); //type='file' 요소 name들 추출
	      while(names.hasMoreElements()) {
	         String name = (String)names.nextElement();
	         String originalFileName = multi.getOriginalFileName(name);
	         String fileSystemName = multi.getFilesystemName(name);
	         
	         System.out.println("첨부파일: "+originalFileName+"->"+fileSystemName);
	         
	         if(originalFileName != null && fileSystemName != null) {
	            originalFileNames.add(originalFileName);
	            fileSystemNames.add(fileSystemName);
	         }
	      } // end while
	      
		
	      // --------------------------------------------
	      // 삭제될 첨부파일
	      
	      FileDAO fileDao = new FileDAO();
	      
	      String [] delFiles = multi.getParameterValues("delFile");
	      if(delFiles != null && delFiles.length > 0) { // 삭제
	    	  
	    	  int [] delFileUids = new int[delFiles.length];
	    	  
	    	  for (int i = 0; i < delFiles.length; i++) {
				delFileUids[i] = Integer.parseInt(delFiles[i]);
	    	  }
	    	  
	    	  try {
	    		  fileDao.deleteByUid(null, request); // 물리적 삭제 + DB 테이블 삭제 
	    	  } catch(SQLException e) {
	    		  e.printStackTrace();
	    	  }
	    	  
	      } // end if
		
		
		
		
		
		// parameter : MultiparRequest 객체에서 가져온다.
		int uid = Integer.parseInt(multi.getParameter("uid"));
		String subject = multi.getParameter("subject");
		String content = multi.getParameter("content");
		
		if(subject != null && subject.trim().length() > 0) {
			try {
				cnt = dao.update(uid, subject, content);
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
		
		
		// 추가된 첨부파일(들)
		fileDao = new FileDAO();
		try {
			fileDao.insert(uid, originalFileNames, fileSystemNames);
			
		}catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		
		request.setAttribute("uid", uid); // multi part 로 받은뒤 updateOk.jsp 로 넘겨야한다. 
		request.setAttribute("result", cnt);

	}

}
