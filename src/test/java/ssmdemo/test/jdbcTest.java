package ssmdemo.test;

import static org.junit.Assert.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.apache.log4j.Logger;
import org.junit.Before;
import org.junit.Test;

//这个例子是通常JDBC的执行方式
public class jdbcTest {

	@Before
	public void setUp() throws Exception {
	}

	@Test
	public void test() throws SQLException {
		Connection conn = null;
		String sql;
		// MySQL的JDBC URL编写方式：jdbc:mysql://主机名称：连接端口/数据库的名称?参数=值
		// 避免中文乱码要指定useUnicode和characterEncoding
		// 执行数据库操作之前要在数据库管理系统上创建一个数据库，名字自己定，
		// 下面语句之前就要先创建javademo数据库
		String url = "jdbc:mysql://localhost:3306/webucation?"
				+ "user=root&password=ssy&useUnicode=true&characterEncoding=UTF8&useSSL=true";
		try {
			// 之所以要使用下面这条语句，是因为要使用MySQL的驱动，所以我们要把它驱动起来，
			// 可以通过Class.forName把它加载进去，也可以通过初始化来驱动起来，下面三种形式都可以
			// 动态加载mysql驱动
			Class.forName("com.mysql.jdbc.Driver");
			// or:
			// com.mysql.jdbc.Driver driver = new com.mysql.jdbc.Driver();
			// or：
			// new com.mysql.jdbc.Driver();
			final Logger logger = Logger.getLogger("");
			logger.warn("hahah,log4j的使用!");
			System.out.println("成功加载MySQL驱动程序");
			// 一个Connection代表一个数据库连接
			conn = DriverManager.getConnection(url);
			// Statement里面带有很多方法，比如executeUpdate可以实现插入，更新和删除等
			Statement stmt = conn.createStatement();
			sql = "select * from USER";
			ResultSet rs = stmt.executeQuery(sql);// executeQuery会返回结果的集合，否则返回空值
			System.out.println("用户名\t密码");
			while (rs.next()) {
				System.out.println(rs.getString(1) + "\t" + rs.getString(2));// 入如果返回的是int类型可以用getInt()
			}
			System.out.println("测试成功。");
		} catch (SQLException e) {
			System.out.println("MySQL操作错误");
			e.printStackTrace();
			fail("SQLException.");
		} catch (Exception e) {
			e.printStackTrace();
			fail("Exception");
		} finally {
			conn.close();
		}
	}

}
