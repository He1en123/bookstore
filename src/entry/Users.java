package entry;
import java.sql.*;

import DAO.DBCon;

public class Users {
	String userid;
	String username;
	String password;
	int tel;
	String address;
	float money;
	String role;
	
	public void setusers(String userid,//注册用户
							String username,
							String password,
							String tel,
							String address,
							String money,
							String role) throws ClassNotFoundException, SQLException{
		DBCon a=new DBCon();
		String sql ="insert into users (userid,username,password,tel,address,money,role)"
				+ " VALUES ('"+userid+"','"+username+"','"+password+"','"+tel+"','"+address+"','"+money+"','"+role+"')";
		Statement stmt = a.getCon().createStatement();
		stmt.executeUpdate(sql);
		stmt.close();
	}
	public int checkusers(String userid,String password)//判断用户存在与否,登录使用
			throws ClassNotFoundException, SQLException{
		DBCon a=new DBCon();
		String sql="select * from users where "
				+ "userid=?  and password=? ";
		PreparedStatement pstmt = a.getCon().prepareStatement(sql);
		pstmt.setString(1, userid);
		pstmt.setString(2, password);
		ResultSet rs = pstmt.executeQuery();
		if(rs.next())
			return 1;
		else 
			return 0;//存在返回1
	}
	
	public ResultSet usersinfo(String userid) throws SQLException, ClassNotFoundException{
		//返回关于用户信息的结果集	
		DBCon a=new DBCon();
			String sql="select * from users where "
					+ "userid=? ";
			PreparedStatement pstmt = a.getCon().prepareStatement(sql);
			pstmt.setString(1, userid);
			ResultSet rs = pstmt.executeQuery();
			return rs;//似乎需要rs.next();
	}
	public ResultSet allusersinfo() throws SQLException, ClassNotFoundException{
		//返回关于用户信息的结果集	
		DBCon a=new DBCon();
			String sql="select * from users where ";
			PreparedStatement pstmt = a.getCon().prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			return rs;//似乎需要rs.next();
	}
}
