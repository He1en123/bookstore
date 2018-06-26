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
<<<<<<< HEAD
		//鏌ヨ褰撳墠鏈夊灏戞潯璁㈠崟锛屽緢鏈夌敤鐨勬暟瀛楁潵鐨�
=======
		//查询当前有多少条订单，很有用的数字来的
>>>>>>> b6054cac5f843d0f11242395180fb4269850931a
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
<<<<<<< HEAD
		//鏍规嵁绫诲瀷鑾峰緱璁㈠崟绫诲瀷鐢紝杩斿洖resultset绫诲瀷
=======
		//根据类型获得订单类型用，返回resultset类型
>>>>>>> b6054cac5f843d0f11242395180fb4269850931a
		DBCon a=new DBCon();
		String sql ="selecet * from order where status ='"+status+"'";
		Statement stmt = a.getCon().createStatement();
		ResultSet rs=stmt.executeQuery(sql);
		return rs;
	};
	

	
	
	
	public void updateorderbyidandstatus(int orderid,String status)throws ClassNotFoundException, SQLException{
<<<<<<< HEAD
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
=======
		//根据当前订单号和订单状态修改订单状态
		DBCon a=new DBCon();
		Statement stmt = a.getCon().createStatement();
		if(status.equals("未付款"))
			{String sql ="update orderlist set status='已付款' where orderid='"+orderid+"'";
			stmt.executeUpdate(sql);
			stmt.close();
			}
		else if(status.equals("已付款"))
		{String sql ="update orderlist set status='已发货	'where orderid='"+orderid+"'";
		stmt.executeUpdate(sql);
		stmt.close();
		}
		else if(status.equals("已发货"))
		{String sql ="update orderlist set status='已签收	'where orderid='"+orderid+"'";
>>>>>>> b6054cac5f843d0f11242395180fb4269850931a
		stmt.executeUpdate(sql);
		stmt.close();
		}
		
	}
	public void givemymoneyback(int orderid)throws ClassNotFoundException, SQLException{
		DBCon a=new DBCon();
<<<<<<< HEAD
		String sql ="update orderlist set status='閫�涓� where orderid='"+orderid+"'";
=======
		String sql ="update orderlist set status='退款中' where orderid='"+orderid+"'";
>>>>>>> b6054cac5f843d0f11242395180fb4269850931a
		Statement stmt = a.getCon().createStatement();
		stmt.executeUpdate(sql);
		stmt.close();
	}
	public void givemymoneybackok(int orderid)throws ClassNotFoundException, SQLException{
		DBCon a=new DBCon();
<<<<<<< HEAD
		String sql ="update orderlist set status='閫�鎴愬姛' where orderid='"+orderid+"'";
=======
		String sql ="update orderlist set status='退款成功' where orderid='"+orderid+"'";
>>>>>>> b6054cac5f843d0f11242395180fb4269850931a
		Statement stmt = a.getCon().createStatement();
		stmt.executeUpdate(sql);
		stmt.close();
	}
	public void givemymoneybackrefused(int orderid)throws ClassNotFoundException, SQLException{
		DBCon a=new DBCon();
<<<<<<< HEAD
		String sql ="update orderlist set status='閫�澶辫触' where orderid='"+orderid+"'";
=======
		String sql ="update orderlist set status='退款失败' where orderid='"+orderid+"'";
>>>>>>> b6054cac5f843d0f11242395180fb4269850931a
		Statement stmt = a.getCon().createStatement();
		stmt.executeUpdate(sql);
		stmt.close();
	}
}
