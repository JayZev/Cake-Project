package com.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.bean.User;
import com.dao.UserDao;
import com.util.DataBaseUtilSYL;

public class UserDaoImpl implements UserDao {
	private DataBaseUtilSYL dbutil = null;

	public UserDaoImpl() {
		dbutil = new DataBaseUtilSYL();
	}

	public User query(String name, String pwd) {
		User user = null;
		Connection conn = dbutil.getConnection();
		PreparedStatement pstat = null;
		ResultSet rs = null;
		String sql = "select * from user where u_appellation=? and u_pwd=?";
		try {
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, name);
			pstat.setString(2, pwd);
			rs = pstat.executeQuery();
			if (rs.next()) {
				user = new User(rs.getInt("u_id"), rs.getString("u_phone"), rs.getString("u_pwd"), 
						rs.getString("u_name"), rs.getString("u_sex"), rs.getString("u_address"), rs.getString("u_appellation"));
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			dbutil.closeConnection(conn, pstat, rs);
		}
		return user;
	}

	public int insert(String u_appellation, String pwd, String phone, String sex, String address, String name ) {
		int number = 0;
		Connection conn = dbutil.getConnection();
		PreparedStatement pstat = null;
		String sql = "insert into user VALUES (null,?,?,?,?,?,?)";
		try {
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, phone);
			pstat.setString(2, pwd);
			pstat.setString(3, name);
			pstat.setString(4, sex);
			pstat.setString(5, address);
			pstat.setString(6, u_appellation);
			number = pstat.executeUpdate();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			dbutil.closeConnection(conn, pstat);
		}
		return number;
	}

	public int update(User user) {
		int number = 0;
		Connection conn = dbutil.getConnection();
		PreparedStatement pstat = null;
		String sql = "update user set u_appellation=?,u_phone=?,u_pwd=?,u_name=?,u_sex=?,u_address=? where u_id = ?";
		try {
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, user.getU_appellation());
			pstat.setString(2, user.getU_phone());
			pstat.setString(3, user.getU_pwd());
			pstat.setString(4, user.getU_name());
			pstat.setString(5, user.getU_sex());
			pstat.setString(6, user.getU_address());
			pstat.setInt(7, user.getU_id());
			number = pstat.executeUpdate();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			dbutil.closeConnection(conn, pstat);
		}
		return number;
	}

	

}
