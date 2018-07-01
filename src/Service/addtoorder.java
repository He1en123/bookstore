package Service;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entry.Users;
import entry.book;
import entry.mycart;
import entry.order;

/**
 * Servlet implementation class addtoorder
 */
@WebServlet("/addtoorder")
public class addtoorder extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addtoorder() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int bookid=Integer.parseInt(request.getParameter("bookid"));
		int booknum = Integer.parseInt(request.getParameter("booknum"));
		HttpSession session = request.getSession();
		String userid = (String)session.getAttribute("userid");
		mycart a=new mycart();
		try {
			a.deletemycart(userid, bookid, booknum);
			order c=new order();
			book b=new book();
			Users user=new Users();
			ResultSet rs=user.usersinfo(userid);
			int bookprice=b.getbookprice(bookid);
			int totalprice=bookprice*booknum;
			String username=rs.getString(2);
			String address=rs.getString(5);
			String tel=rs.getString(4);
			String status="待付款";
			c.setorderwithoutorderid(userid,username,totalprice,address,tel,status);
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
