package com.util;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
/**
 * 连接数据库的工具类
 */
public class DateBaseUtil {
	/**
	 * url	连接地址
	 * user	用户名
	 * pwd	密码
	 */
	private static Properties prop=null;
	private static String driver=null;
	private static String url=null;
	private static String user=null;
	private static String password=null;
	//加载数据库驱动
	static {
		//1.获取配置文件信息
				prop=new Properties();
				try {
					//replace("%20", " ") - 处理路径中空格问题
					String path=Thread.currentThread().getContextClassLoader().
							getResource("JdbcConfig.properties").getPath().replace("%20", " ");
					prop.load(new FileInputStream(path));
					driver=prop.getProperty("driver");
					url=prop.getProperty("url");
					user=prop.getProperty("user");
					password=prop.getProperty("password");
				}catch(FileNotFoundException e){
					e.printStackTrace();
				}catch(IOException e){
					e.printStackTrace();
				}finally{
					//2.加载驱动到JVM
					try{
						Class.forName(driver);
					}catch(ClassNotFoundException e){
						e.printStackTrace();
					}
				}
	}
	/**
	 * 获得与数据库连接的方法
	 * @return	数据库连接的引用
	 */
	public Connection getConnection() {
		Connection conn = null;
		try {
			conn = DriverManager.getConnection(url, user, password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}
	/**
	 * 释放连接资源的方法
	 * @param conn	数据库连接
	 */
	private void close(Connection conn) {
		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				conn = null;
				e.printStackTrace();
			}
		}
	}
	/**
	 * 释放预操作句柄资源的方法
	 * @param pstm	预操作句柄
	 */
	private void close(PreparedStatement pstm) {
		if (pstm != null) {
			try {
				pstm.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				pstm = null;
				e.printStackTrace();
			}
		}
	}
	/**
	 * 释放结果集资源的方法
	 * @param rs	结果集
	 */
	private void close(ResultSet rs) {
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				rs = null;
				e.printStackTrace();
			}
		}
	}
	/**
	 * 释放连接对象和预操作句柄的方法
	 * @param conn	连接对象
	 * @param pstm	预操作句柄
	 */
	public void free(Connection conn, PreparedStatement pstm) {
		close(pstm);
		close(conn);
	}
	/**
	 * 释放连接对象、预操作句柄和结果集的方法
	 * @param conn	连接对象
	 * @param pstm	预操作句柄
	 * @param rs	结果集
	 */
	public void free(Connection conn, PreparedStatement pstm, ResultSet rs) {
		close(rs);
		close(pstm);
		close(conn);
	}
	
}
