package com.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.bean.Cake;
import com.dao.CakeDao;
import com.dbu.DBUtil;

public class CakeDaoImpl implements CakeDao{

	@Override
	public ResultSet getReadScrollResultSet() {
		ResultSet rs=null;
		try{
			Connection conn=DBUtil.getConn();
			//创建操作句柄：标明结果集为只读的滚动结果集
			Statement pstm=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, 
					ResultSet.CONCUR_READ_ONLY);
			rs=pstm.executeQuery("select * from cake");
		}catch(Exception e){
			System.out.println(e);
		}
		return rs;
	}

	@Override
	public int addCakeInfo(Cake cake) {
		int number=0;
		Connection conn = DBUtil.getConn();
		PreparedStatement pstm = null;
		String sql="insert into cake values(null,?,?,?,?,?,?,?,?,?,?)";
		try{
			pstm=conn.prepareStatement(sql);
			pstm.setString(1, cake.getC_name());
			pstm.setString(2, cake.getC_image());
			pstm.setFloat(3, cake.getC_price());
			pstm.setString(4, cake.getC_type());
			pstm.setFloat(5, cake.getC_weight());
			pstm.setString(6, cake.getC_taste());
			pstm.setString(7, cake.getC_color());
			pstm.setString(8, cake.getC_introduce());
			pstm.setString(9, cake.getC_description());
			pstm.setString(10, cake.getC_state());
			number=pstm.executeUpdate();
		}catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.free(pstm, conn);
		}
		return number;
	}

	@Override
	public int removeCakeInfo(String cid) {
		int number=0;
		Connection conn = DBUtil.getConn();
		PreparedStatement pstm = null;
		String sql="delete from cake where c_id=?";
		try{
			pstm=conn.prepareStatement(sql);
			pstm.setString(1, cid);
			number=pstm.executeUpdate();
		}catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.free(pstm, conn);
		}
		return number;
	}

	@Override
	public int amendCakeInfo(Cake cake) {
		int number=0;
		Connection conn = DBUtil.getConn();
		PreparedStatement pstm = null;
		String sql="update cake set c_name=?,c_image=?,c_price=?,c_type=?,c_weight=?,c_taste=?,c_color=?,c_introduce=?,c_description=?,c_state=? where c_id=?";
		try{
			pstm=conn.prepareStatement(sql);
			pstm.setString(1, cake.getC_name());
			pstm.setString(2, cake.getC_image());
			pstm.setFloat(3, cake.getC_price());
			pstm.setString(4, cake.getC_type());
			pstm.setFloat(5, cake.getC_weight());
			pstm.setString(6, cake.getC_taste());
			pstm.setString(7, cake.getC_color());
			pstm.setString(8, cake.getC_introduce());
			pstm.setString(9, cake.getC_description());
			pstm.setString(10, cake.getC_state());
			pstm.setInt(11, cake.getC_id());
			number=pstm.executeUpdate();
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.free(pstm, conn);
		}
		return number;
	}

	@Override
	public Cake selectCakeById(String id) {
		Cake ck = null;
		Connection conn = DBUtil.getConn();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		String sql="select * from cake where c_id=?";
		try{
			pstm=conn.prepareStatement(sql);
			pstm.setInt(1, Integer.parseInt(id));
			rs=pstm.executeQuery();
			if(rs.next()) {
				ck = new Cake();
				ck.setC_id(rs.getInt("c_id"));
				ck.setC_name(rs.getString("c_name"));
				ck.setC_image(rs.getString("c_image"));
				ck.setC_price(rs.getFloat("c_price"));
				ck.setC_type(rs.getString("c_type"));
				ck.setC_weight(rs.getFloat("c_weight"));
				ck.setC_taste(rs.getString("c_taste"));
				ck.setC_color(rs.getString("c_color"));
				ck.setC_introduce(rs.getString("c_introduce"));
				ck.setC_description(rs.getString("C_description"));
				ck.setC_state(rs.getString("c_state"));
				
			}
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.free(rs, pstm, conn);
		}
		return ck;
	}

	@Override
	public int soldOutCake(Cake Cake) {
		int number=0;
		Connection conn = DBUtil.getConn();
		PreparedStatement pstm = null;
		String sql="update cake set  c_state = ? where c_id=?";
		try{
			pstm=conn.prepareStatement(sql);
			pstm.setString(1, Cake.getC_state());
			pstm.setInt(2, Cake.getC_id());
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
