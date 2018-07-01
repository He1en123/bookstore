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

import entry.book;
import entry.mycart;
import entry.Cart1;

/**
 * Servlet implementation class cart
 */
@WebServlet("/cart")
public class cart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public cart() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		String userid = (String)session.getAttribute("userid");
		mycart a=new mycart();
		book b=new book();
		List<Cart1> cart = new ArrayList();
		ResultSet rs;
		try {
			rs = a.checkmycart(userid);
			while(rs.next()){
				Cart1 cart1 = new Cart1();
				int bookid = rs.getInt(2);
				String bookname = b.getbookname(bookid);
				int price = b.getbookprice(bookid);
				int booknum = rs.getInt(3);
				cart1.setBookname(bookname);
				cart1.setBookid(bookid);
				cart1.setBooknum(booknum);
				cart1.setPrice(price);
				cart.add(cart1);
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("cart", cart);
		request.getRequestDispatcher("cart.jsp").forward(request, response);
		
	}

	private void setbookname(String bookname) {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
