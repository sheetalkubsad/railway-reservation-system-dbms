package rails;
import java.sql.*;

public class log {
	public static void main(String args[])
	{
		Connection conn;
		try {
			conn=DriverManager.getConnection("jdbc:mysql://localhost/loginuser","root","sheetal");
			if(conn!=null)
			{
				System.out.println("connected");
			}
		}
		catch(Exception e)
		{
			System.out.println("not connected");
		}
	}

}
