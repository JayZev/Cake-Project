package com.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.bean.Manage;
import com.dao.ManageDao;
import com.dbu.DBUtil;

public class ManageDaoImpl implements ManageDao{

	@Override
	public boolean validateNameAndPwd(String account, String pwd) {
		boolean bool = false;
		String sql = "select * from manage where m_account = ? and m_pwd = ?";
		Connection conn = DBUtil.getConn();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		try {
			pstm = conn.prepareStatement(sql);
			pstm.setString(1,account);
			pstm.setString(2,pwd);
			rs = pstm.executeQuery();
			bool = rs.next();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.free(rs, pstm, conn);
		}
		return bool;
	}

	@Override
	public Manage getAdminInfo(String account) {
		Manage mg = null;
		String sql = "select * from manage where m_account=?";
		Connection conn = DBUtil.getConn();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		try {
			pstm = conn.prepareStatement(sql);
			pstm.setString(1,account);
			rs = pstm.executeQuery();
			if(rs.next()){
				mg = new Manage();
				mg.setM_id(rs.getInt("m_id"));
				mg.setM_account(rs.getString("m_account"));
				mg.setM_pwd(rs.getString("m_pwd"));
				mg.setM_phone(rs.getNString("m_phone"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.free(rs, pstm, conn);
		} 
		return mg;
	}

	@Override
	public int settingManage(Manage manage) {
		int number=0;
		Connection conn = DBUtil.getConn();
		PreparedStatement pstm = null;
		String sql="update manage set m_pwd=? where m_account=?";
		try{
			pstm=conn.prepareStatement(sql);
			pstm.setString(1, manage.getM_pwd());
			pstm.setString(2,manage.getM_account());
			number=pstm.executeUpdate();
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.free(pstm, conn);
		}
		return number;
	}

}
