package entry;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import DAO.DBCon;

public class order {
	int orderid;
	String userid;
	String username;
	float totalprice;
	String address;
	int tel;
	String status;
	public Connection conn = null;
	
	public int getorderid() throws ClassNotFoundException, SQLException{ 
		//查询当前有多少条订单，很有用的数字来的
		conn =new DBCon().getCon();
		Statement stmt = conn.createStatement();
		String countid="select * from orderlist";
		ResultSet rs=stmt.executeQuery(countid);
		rs.last();
		int orderid=rs.getRow();
		
		return orderid;};
	
	public void setorder(
			int orderid,
			String userid,
			String username,
			float totalprice,
			String address,
			String tel,
			String status) throws ClassNotFoundException, SQLException{
		conn =new DBCon().getCon();
		String sql ="insert into orderlist (orderid,userid,username,totalprice,address,tel,status)"
				+ " VALUES ('"+orderid+"','"+userid+"','"+username+"','"+totalprice+"','"+address+"','tel','"+status+"')";
		Statement stmt = conn.createStatement();
		stmt.executeUpdate(sql);
		stmt.close();
	}
	public void setorderwithoutorderid(
			String userid,
			String username,
			float totalprice,
			String address,
			String tel,
			String status) throws ClassNotFoundException, SQLException{
		conn =new DBCon().getCon();
		String sql ="insert into orderlist (userid,username,totalprice,address,tel,status)"
				+ " VALUES ('"+userid+"','"+username+"','"+totalprice+"','"+address+"','tel','"+status+"')";
		Statement stmt = conn.createStatement();
		stmt.execute(sql);
		stmt.close();
	}
	public ResultSet getorderbyuserid(String userid) throws ClassNotFoundException, SQLException{ 
		//根据userid获得订单类型，返回resultset类型
		conn =new DBCon().getCon();
		String sql ="select book.bookname,orderlist.address,orderlist.`status`,orderlist.totalprice,orderlist.orderid from book,orderbook,orderlist WHERE book.bookid=orderbook.bookid and orderbook.orderid=orderlist.orderid AND orderlist.userid=?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, userid);
		ResultSet rs=pstmt.executeQuery();
		return rs;
	};
	public ResultSet getmyorderdetail(String orderid) throws ClassNotFoundException, SQLException{
		conn =new DBCon().getCon();
		String sql = "select * from orderbook,book where orderbook.orderid = ? and orderbook.bookid=book.bookid";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, orderid);
		ResultSet rs = pstmt.executeQuery();
		return rs;
	}
	

	
	
	
	public void updateorderbyidandstatus(int orderid,String status)throws ClassNotFoundException, SQLException{
		//根据当前订单号和订单状态修改订单状态
		conn = new DBCon().getCon();
		Statement stmt = conn.createStatement();
		String sql ="update orderlist set status='待发货' where orderid='"+orderid+"'";
		stmt.execute(sql);
		stmt.close();
		
	}
	public void givemymoneyback(int orderid)throws ClassNotFoundException, SQLException{
		DBCon a=new DBCon();
		String sql ="update orderlist set status='退款中' where orderid='"+orderid+"'";
		Statement stmt = a.getCon().createStatement();
		stmt.executeUpdate(sql);
		stmt.close();
	}
	public void givemymoneybackok(int orderid)throws ClassNotFoundException, SQLException{
		DBCon a=new DBCon();
		String sql ="update orderlist set status='退款成功' where orderid='"+orderid+"'";
		Statement stmt = a.getCon().createStatement();
		stmt.executeUpdate(sql);
		stmt.close();
	}
	public void givemymoneybackrefused(int orderid)throws ClassNotFoundException, SQLException{
		DBCon a=new DBCon();
		String sql ="update orderlist set status='退款失败' where orderid='"+orderid+"'";
		Statement stmt = a.getCon().createStatement();
		stmt.executeUpdate(sql);
		stmt.close();
	}
	public List<Order1> orderinfo() throws ClassNotFoundException, SQLException{
		DBCon a =new DBCon();
		conn = a.getCon();
		List<Order1> order = new ArrayList<Order1>();
		String sql = "select book.bookname,orderlist.address,orderlist.totalprice,orderlist.`status`,orderlist.orderid from book,orderbook,orderlist WHERE book.bookid=orderbook.bookid and orderbook.orderid=orderlist.orderid";
		Statement stmt = conn.createStatement();
		java.sql.ResultSet rs = stmt.executeQuery(sql);
		while (rs.next()) {
			String orderid = rs.getString("orderid");
			String totalprice =rs.getString("totalprice");
			String address = rs.getString("address");
			String bookname = rs.getString("bookname");
			String status = rs.getString("status");
			Order1 od = new Order1();
			od.setStatus(status);
			od.setAddress(address);
			od.setOrderid(orderid);
			od.setTotalprice(totalprice);
			od.setBookname(bookname);
			order.add(od);
		}
		return order;
	}
	public void send(String orderid) throws ClassNotFoundException, SQLException{
		DBCon a=new DBCon();
		Statement stmt = a.getCon().createStatement();
		String sql ="update orderlist set status='未收货'where orderid='"+orderid+"'";
		stmt.executeUpdate(sql);
		stmt.close();
	}
	public void settoorderbook(int bookid,int booknum) throws ClassNotFoundException, SQLException{
		DBCon a=new DBCon();
		String sql ="insert into orderbook (bookid,booknum) values (?,?)";
		PreparedStatement pstmt = a.getCon().prepareStatement(sql);
		pstmt.setInt(1, bookid);
		pstmt.setInt(2, booknum);
		pstmt.execute();
	}
	public void receive(String orderid) throws ClassNotFoundException, SQLException{
		DBCon a=new DBCon();
		Statement stmt = a.getCon().createStatement();
		String sql ="update orderlist set status='已签收'where orderid='"+orderid+"'";
		stmt.executeUpdate(sql);
		stmt.close();
	}
}
