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
import entry.order;

/**
 * Servlet implementation class Order
 */
@WebServlet("/Order")
public class Order extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Order() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		String userid = (String) session.getAttribute("userid");
		order od = new order();
		
		List<Order1> orderlist = new ArrayList();
		try {
			ResultSet rs = od.getorderbyuserid(userid);
			while(rs.next()){
				Order1 od1 = new Order1();
				String orderid = rs.getString("orderid");
				System.out.println(orderid);
				String totalprice = rs.getString("totalprice");
				String address = rs.getString("address");
				String status =rs.getString("status");
				String bookname = rs.getString("bookname");
				od1.setBookname(bookname);
				od1.setAddress(address);
				od1.setOrderid(orderid);
				od1.setTotalprice(totalprice);
				od1.setStatus(status);
				orderlist.add(od1);
				for(int i=0;i<orderlist.size();i++)
				System.out.println(i+":"+orderlist.get(i).getOrderid());
				}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			for(int i=0;i<orderlist.size();i++){
				System.out.println(orderlist.get(i).getOrderid());
			}
			request.setAttribute("orderlist", orderlist);
			request.getRequestDispatcher("order.jsp").forward(request, response);
		}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
