package entry;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import DAO.DBCon;

public class order {
	int orderid;
	String userid;
	String username;
	float totalprice;
	String address;
	int tel;
	String status;
	public int getorderid() throws ClassNotFoundException, SQLException{ 
		//鏌ヨ褰撳墠鏈夊灏戞潯璁㈠崟锛屽緢鏈夌敤鐨勬暟瀛楁潵鐨�
		DBCon a=new DBCon();
		Statement stmt = a.getCon().createStatement();
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
			int tel,
			String status) throws ClassNotFoundException, SQLException{
		DBCon a=new DBCon();
		String sql ="insert into orderlist (orderid,userid,username,totalprice,address,tel,status)"
				+ " VALUES ('"+orderid+"','"+userid+"','"+username+"','"+totalprice+"','"+address+"','tel','"+status+"')";
		Statement stmt = a.getCon().createStatement();
		stmt.executeUpdate(sql);
		stmt.close();
	}
	public ResultSet getorderbystatus(String status) throws ClassNotFoundException, SQLException{ 
		//鏍规嵁绫诲瀷鑾峰緱璁㈠崟绫诲瀷鐢紝杩斿洖resultset绫诲瀷
		DBCon a=new DBCon();
		String sql ="selecet * from order where status ='"+status+"'";
		Statement stmt = a.getCon().createStatement();
		ResultSet rs=stmt.executeQuery(sql);
		return rs;
	};
	

	
	
	
	public void updateorderbyidandstatus(int orderid,String status)throws ClassNotFoundException, SQLException{
		//鏍规嵁褰撳墠璁㈠崟鍙峰拰璁㈠崟鐘舵�淇敼璁㈠崟鐘舵�
		DBCon a=new DBCon();
		Statement stmt = a.getCon().createStatement();
		if(status.equals("鏈粯娆�))
			{String sql ="update orderlist set status='宸蹭粯娆� where orderid='"+orderid+"'";
			stmt.executeUpdate(sql);
			stmt.close();
			}
		else if(status.equals("宸蹭粯娆�))
		{String sql ="update orderlist set status='宸插彂璐�'where orderid='"+orderid+"'";
		stmt.executeUpdate(sql);
		stmt.close();
		}
		else if(status.equals("宸插彂璐�))
		{String sql ="update orderlist set status='宸茬鏀�'where orderid='"+orderid+"'";
		stmt.executeUpdate(sql);
		stmt.close();
		}
		
	}
	public void givemymoneyback(int orderid)throws ClassNotFoundException, SQLException{
		DBCon a=new DBCon();
		String sql ="update orderlist set status='閫�涓� where orderid='"+orderid+"'";
		Statement stmt = a.getCon().createStatement();
		stmt.executeUpdate(sql);
		stmt.close();
	}
	public void givemymoneybackok(int orderid)throws ClassNotFoundException, SQLException{
		DBCon a=new DBCon();
		String sql ="update orderlist set status='閫�鎴愬姛' where orderid='"+orderid+"'";
		Statement stmt = a.getCon().createStatement();
		stmt.executeUpdate(sql);
		stmt.close();
	}
	public void givemymoneybackrefused(int orderid)throws ClassNotFoundException, SQLException{
		DBCon a=new DBCon();
		String sql ="update orderlist set status='閫�澶辫触' where orderid='"+orderid+"'";
		Statement stmt = a.getCon().createStatement();
		stmt.executeUpdate(sql);
		stmt.close();
	}
}
