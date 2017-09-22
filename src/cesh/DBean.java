package cesh;
import java.sql.*;
public class DBean 
{
	private String driverStr = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
	private String connStr = "jdbc:sqlserver://localhost:1433;DatabaseName=jm";
	private String dbusername = "sa";
	private String dbpassword = "sql";
	private Connection conn = null;
	private Statement stmt = null;

	public DBean() 
	{
		try {
			Class.forName(driverStr);
			conn = DriverManager.getConnection(connStr, dbusername, dbpassword);
			stmt = conn.createStatement();
		} 
		catch (Exception ex) {
			System.out.println("�޷�ͬ���ݿ⽨������");
		}
	}

	public int executeUpdate(String s) 
	{
		int result = 0;
		try {
			result = stmt.executeUpdate(s);//ִ�з��ظ��µ�������
		} 
		catch (Exception ex) {
			System.out.println(ex.getMessage());
		}
		return result;
	}

	public ResultSet executeQuery(String s) {
		ResultSet rs = null;
		try {
			rs = stmt.executeQuery(s);
		} 
		catch (Exception ex) {
			System.out.println("ִ�в�ѯ����");
		}
		return rs;
	}

	public void close() 
	{//�ر����ݿ�
		try 
		{
			stmt.close();//�رղ��������ã�
			conn.close();//�ر�����
		} 
		catch (Exception e) 
		{
		}
    }
}