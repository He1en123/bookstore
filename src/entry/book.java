package entry;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

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
	public String getbookprice(int bookid) throws ClassNotFoundException, SQLException{
		DBCon a=new DBCon();
		String sql="select price from book where bookid='"+bookid+"'";
		Statement stmt = a.getCon().createStatement();
		stmt.executeQuery(sql);
		ResultSet rs=stmt.executeQuery(sql);rs.next();
		return rs.getString(1);
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
	public String getbookstorage(int bookid) throws ClassNotFoundException, SQLException{
		DBCon a=new DBCon();
		String sql="select storage from book where bookid='"+bookid+"'";
		Statement stmt = a.getCon().createStatement();
		stmt.executeQuery(sql);
		ResultSet rs=stmt.executeQuery(sql);rs.next();
		return rs.getString(1);
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
}
