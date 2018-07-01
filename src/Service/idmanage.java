package Service;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entry.Order1;
import entry.Users;
import entry.Users1;

/**
 * Servlet implementation class idmanage
 */
@WebServlet("/idmanage")
public class idmanage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public idmanage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Users us = new Users();
		List<Users1> userslist = new ArrayList();
		try {
			ResultSet rs = us.allusersinfo();
			while(rs.next()){
				Users1 users = new Users1();
				String userid = rs.getString("userid");
				String username = rs.getString("username");
				String password = rs.getString("password");
				String tel = rs.getString("tel");
				String money = rs.getString("money");
				String address = rs.getString("address");
				users.setAddress(address);
				users.setMoney(money);
				users.setPassword(password);
				users.setTel(tel);
				users.setUserid(userid);
				users.setUsername(username);
				userslist.add(users);
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("userslist", userslist);
		request.getRequestDispatcher("idmanage.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
