package com.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.bean.User;
import com.dao.InfUserDao;
import com.util.DateBaseUtil;

public class ImplUserDao implements InfUserDao {
	private DateBaseUtil dbutil;
	private Connection conn;
	private PreparedStatement pstm;
	private ResultSet rs;
	public ImplUserDao() {
		dbutil = new DateBaseUtil();
	}
	//初始换属性的方法
	private void init(String sql) {
		conn = dbutil.getConnection();
		try {
			pstm = conn.prepareStatement(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	@Override
	public User selectUserById(int u_id) {
		User user = null;
		String sql = "select * from user where u_id = ?";
		init(sql);
		try {
			pstm.setInt(1, u_id);
			rs = pstm.executeQuery();
			if(rs.next()) {
				user = new User(rs.getInt("u_id"), rs.getString("u_phone"), rs.getString("u_pwd"), rs.getString("u_name"), rs.getString("u_sex"), rs.getString("u_address"), rs.getString("u_appellation"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			dbutil.free(conn, pstm, rs);
		}
		return user;
	}
	@Override
	public int updateUserById(User user) {
		int num = 0;
		String sql = "update user set u_phone=?,u_name=?,u_sex=?,u_address=?,u_appellation=? where u_id = ?";
		init(sql);
		try {
			pstm.setString(1, user.getU_phone());
			pstm.setString(2, user.getU_name());
			pstm.setString(3, user.getU_sex());
			pstm.setString(4, user.getU_address());
			pstm.setString(5, user.getU_appellation());
			pstm.setInt(6, user.getU_id());
			num = pstm.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			dbutil.free(conn, pstm);
		}
		return num;
	}

}
