package register;

import java.sql.*;

public class JDBCBean {
	//定义驱动程序和数据库连接串，假定使用Mysql
	private String driverStr="com.mysql.jdbc.Driver";
	private String coonStr="jdbc:MySQL://localhost:3306/testreg?user=root&password=000000";
	private Connection connection=null;
	private Statement stmt=null;
	private ResultSet rs=null;
	//加载驱动程序
	public JDBCBean()
	{
		try
		{
			Class.forName(driverStr);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	//建立于数据库的连接
	private Connection getConnection()
	{
		try
		{
			connection=DriverManager.getConnection(coonStr);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return connection;
	}
	//创建语句对象
	private Statement createStatement()
	{
		try
		{
			stmt=this.getConnection().createStatement();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return stmt;
	}
	//执行查询操作，返回结果集对象
	public ResultSet executeQuery(String sql)
	{
		try
		{
			rs=this.createStatement().executeQuery(sql);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return rs;
	}
	//执行更新操作
	public int executeUpdate(String sql)
	{
		int result=0;
		try
		{
			result=this.createStatement().executeUpdate(sql);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return result;
	}
	//执行关闭操作
	public void close()
	{
		try
		{
			if(rs!=null)
			{
				rs.close();
			}
			if(stmt!=null)
			{
				stmt.close();
			}
			if(connection!=null)
			{
				connection.close();
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	public static void main(String[] as)
	{
		JDBCBean jd=new JDBCBean();
		jd.executeQuery("select * from users");
	}
}
