package entry;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import DAO.DBCon;
public class mycart {
	String userid;
	int bookid;
	int booknum;
	public void addmycart(
			String userid,
			int bookid,
			int booknum) throws ClassNotFoundException, SQLException{
		DBCon a=new DBCon();
		String sql ="insert into mycart (userid,bookid,booknum)"
				+ " VALUES ('"+userid+"','"+bookid+"','"+booknum+"')";
		Statement stmt = a.getCon().createStatement();
		stmt.executeUpdate(sql);
		stmt.close();
	}
	public ResultSet checkmycart(String userid) throws ClassNotFoundException, SQLException{
		
		DBCon a=new DBCon();
		String sql="select * from mycart where userid='"+userid+"'";
		Statement stmt = a.getCon().createStatement();
		ResultSet rs=stmt.executeQuery(sql);
		return rs;
	}
	public void deletemycart(String userid,int bookid,int booknum)throws ClassNotFoundException, SQLException{
		
		DBCon a=new DBCon();
		String sql="delete from mycart where userid='"+userid+"'and bookid='"+bookid+"'and booknum='"+booknum+"'";
		Statement stmt = a.getCon().createStatement();
		stmt.executeUpdate(sql);
		stmt.close();
	}
}
