package detailpage.command;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import detailpage.beans.FileDAO;
import detailpage.beans.WriteDAO;

public class DeleteCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		int cnt = 0;
		WriteDAO dao = new WriteDAO();
		FileDAO fileDao = new FileDAO();  //  첨부파일 
		
		int uid = Integer.parseInt(request.getParameter("uid"));
		
		try {
			
			fileDao.deleteByWrUid(uid, request);
			
			cnt = dao.deleteByUid(uid);
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
		request.setAttribute("result", cnt);
	}

}
