---
jdbc连接字符串
---  
> mysql,5.1.41驱动连接字符串  
```java
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
	private static final String URL = "jdbc:mysql://127.0.0.1:3306/test?useUnicode&amp;characterEncoding=utf-8";
	private static final String USER = "root";
	private static final String PASSWORD = "1qaz2wsx";

	private static Connection conn = null;

	static {
		try {
			Class.forName("com.mysql.jdbc.Driver");//加载驱动
			conn = DriverManager.getConnection(URL, USER, PASSWORD);//创建数据库连接字符串
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static Connection getConn()
	{
		return conn;
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Connection conn=DBUtil.getConn();
		if(conn!=null)
		{
			System.out.println("连接成功~");
		}else{
			System.out.println("连接失败~");
		}
	}
}
```
