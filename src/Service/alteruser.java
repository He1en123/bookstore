package Service;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entry.*;

/**
 * Servlet implementation class alteruser
 */
@WebServlet("/alteruser")
public class alteruser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public alteruser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("userid");
		Users us = new Users();
		Users1 user = new Users1();
		try {
			ResultSet rs = us.usersinfo(id);
			while(rs.next()){
			String userid = rs.getString("userid");
			String username = rs.getString("username");
			String password = rs.getString("password");
			String tel = rs.getString("tel");
			String money = rs.getString("money");
			String address = rs.getString("address");
			request.setAttribute("userid", userid);
			request.setAttribute("username", username);
			request.setAttribute("password", password);
			request.setAttribute("tel", tel);
			request.setAttribute("money", money);
			request.setAttribute("address", address);
			request.getRequestDispatcher("/alteruser.jsp").forward(request, response);
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
