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
		//查询当前有多少条订单，很有用的数字来的
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
		//根据类型获得订单类型用，返回resultset类型
		DBCon a=new DBCon();
		String sql ="selecet * from order where status ='"+status+"'";
		Statement stmt = a.getCon().createStatement();
		ResultSet rs=stmt.executeQuery(sql);
		return rs;
	};
	

	
	
	
	public void updateorderbyidandstatus(int orderid,String status)throws ClassNotFoundException, SQLException{
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
		stmt.executeUpdate(sql);
		stmt.close();
		}
		
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
}
