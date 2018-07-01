package entry;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import DAO.DBCon;

public class book {
	String bookname;
	float price;
	String type;
	String pic;
	int storage;
	String status;
	public void setbook(
			String bookname,
			float price,
			String type,
			String pic,
			int storage,
			String status,
			String detail) throws ClassNotFoundException, SQLException{
		DBCon a=new DBCon();
		String sql ="insert into book (bookname,price,type,pic,storage,status,detail)"
				+ " VALUES ('"+bookname+"','"+price+"','"+type+"','"+pic+"','"+storage+"','已上架','"+detail+"')";
		Statement stmt = a.getCon().createStatement();
		stmt.executeUpdate(sql);
		stmt.close();
	}
	public void updatebook( //更改图书信息，关键是取得bookid
			int bookid,
			String bookname,
			float price,
			String type,
			String pic,
			int storage,
			String status,
			String detail) throws ClassNotFoundException, SQLException{
		DBCon a=new DBCon();

		String sql ="update book set bookname='"+bookname+"',"
				+ "price='"+price+"',"
						+ "pic='"+pic+"',"
								+ "storage='"+storage+"',"
										+ "status='"+status+"',"
												+ "detail='"+detail+""
														+ "where bookid='"+bookid+"'";
				
		Statement stmt = a.getCon().createStatement();
		stmt.executeUpdate(sql);
		stmt.close();
}
	public ResultSet getbook(int bookid) throws ClassNotFoundException, SQLException{
		//通过bookid获得一本书的信息，如果能实现，下面一堆get都可以不要了
		DBCon a=new DBCon();
		String sql="select * from book where bookid='"+bookid+"'";
		Statement stmt = a.getCon().createStatement();
		stmt.executeQuery(sql);
		ResultSet rs=stmt.executeQuery(sql);rs.next();
		return rs;
	}
	public String getbookname(int bookid) throws ClassNotFoundException, SQLException{
		DBCon a=new DBCon();
		String sql="select bookname from book where bookid='"+bookid+"'";
		Statement stmt = a.getCon().createStatement();
		stmt.executeQuery(sql);
		ResultSet rs=stmt.executeQuery(sql);rs.next();
		return rs.getString(1);
	}
	public int getbookprice(int bookid) throws ClassNotFoundException, SQLException{
		DBCon a=new DBCon();
		String sql="select price from book where bookid='"+bookid+"'";
		Statement stmt = a.getCon().createStatement();
		stmt.executeQuery(sql);
		ResultSet rs=stmt.executeQuery(sql);rs.next();
		return rs.getInt(1);
	}
	public String getbooktype(int bookid) throws ClassNotFoundException, SQLException{
		DBCon a=new DBCon();
		String sql="select type from book where bookid='"+bookid+"'";
		Statement stmt = a.getCon().createStatement();
		stmt.executeQuery(sql);
		ResultSet rs=stmt.executeQuery(sql);rs.next();
		return rs.getString(1);
	}
	public String getbookpic(int bookid) throws ClassNotFoundException, SQLException{
		DBCon a=new DBCon();
		String sql="select pic from book where bookid='"+bookid+"'";
		Statement stmt = a.getCon().createStatement();
		stmt.executeQuery(sql);
		ResultSet rs=stmt.executeQuery(sql);
		rs.next();
		return rs.getString(1);
	}
	public int getbookstorage(int bookid) throws ClassNotFoundException, SQLException{
		DBCon a=new DBCon();
		String sql="select storage from book where bookid='"+bookid+"'";
		Statement stmt = a.getCon().createStatement();
		stmt.executeQuery(sql);
		ResultSet rs=stmt.executeQuery(sql);rs.next();
		return rs.getInt(1);
	}
	public String getbookstatus(int bookid) throws ClassNotFoundException, SQLException{
		DBCon a=new DBCon();
		String sql="select status from book where bookid='"+bookid+"'";
		Statement stmt = a.getCon().createStatement();
		stmt.executeQuery(sql);
		ResultSet rs=stmt.executeQuery(sql);rs.next();
		return rs.getString(1);
	}
	public String getbookdetail(int bookid) throws ClassNotFoundException, SQLException{
		DBCon a=new DBCon();
		String sql="select detail from book where bookid='"+bookid+"'";
		Statement stmt = a.getCon().createStatement();
		ResultSet rs=stmt.executeQuery(sql);rs.next();
		return rs.getString(1);
	}
	public int booknum() throws ClassNotFoundException, SQLException{
		DBCon a=new DBCon();
		String sql="select count(*) from book ";
		Statement stmt = a.getCon().createStatement();
		ResultSet rs=stmt.executeQuery(sql);
		rs.next();
		return rs.getInt(1);
	}
	public ResultSet selectbookbytype(String type) throws ClassNotFoundException, SQLException{
		String sql="select * from book where type='"+type+"'";
		DBCon a=new DBCon();
		Statement stmt = a.getCon().createStatement();
		ResultSet rs=stmt.executeQuery(sql);
		rs.next();
		return rs;
	}
	public List<Book1> getallbook() throws ClassNotFoundException, SQLException{
		DBCon a =new DBCon();
		String sql = "SELECT * FROM book";
		Statement stmt = a.getCon().createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		List<Book1> books = new ArrayList<Book1>();
		while(rs.next()){
			int bookid = rs.getInt("bookid");
			String bookname = rs.getString("bookname");
			int price  = rs.getInt("price");
			String type = rs.getString("type");
			String pic = rs.getString("pic");
			int storage = rs.getInt("storage");
			String status = rs.getString("status");
			String detail = rs.getString("detail");
			Book1 book = new Book1();
			book.setBookid(bookid);
			book.setBookname(bookname);
			book.setPrice(price);
			book.setType(type);
			book.setPic(pic);
			book.setStorage(storage);
			book.setStatus(status);
			book.setDetail(detail);
			books.add(book);
		}
		return books;
	}
	public void outbook(int bookid) throws ClassNotFoundException, SQLException{
		DBCon a=new DBCon();
		String sql="UPDATE book SET status='下架'  where bookid='"+bookid+"'";
		Statement stmt = a.getCon().createStatement();
		stmt.execute(sql);
		stmt.close();
	}
	public Book1 getbookbyname(String bookname) throws ClassNotFoundException, SQLException{
		DBCon a = new DBCon();
		Book1 bk = new Book1();
		String sql = "SELECT * FROM book WHERE bookname = ?";
		PreparedStatement pstmt = a.getCon().prepareStatement(sql);
		pstmt.setString(1, bookname);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()){
			bk.setBookid(rs.getInt("bookid"));
			bk.setBookname(rs.getString("bookname"));
			bk.setPic(rs.getString("pic"));
			bk.setPrice(rs.getInt("price"));
			bk.setType(rs.getString("type"));
			bk.setStorage(rs.getInt("storage"));
			bk.setStatus(rs.getString("status"));
		}
		return bk;
	}
}
