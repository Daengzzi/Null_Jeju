package detailpage.command;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import detailpage.beans.WriteDAO;
import detailpage.beans.WriteDTO;


// viewcommand


public class DetailCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		WriteDAO dao = new WriteDAO(); 
		WriteDTO[] arr = null;
		
		try {
			arr = dao.select();
			request.setAttribute("list", arr);
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

}
