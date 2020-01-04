package com.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bean.Detail;
import com.bean.DetailList;
import com.bean.Sell;
import com.dao.InfDetailDao;
import com.util.DateBaseUtil;

public class ImplDetailDao implements InfDetailDao {
	private DateBaseUtil dbutil;
	private Connection conn;
	private PreparedStatement pstm;
	private ResultSet rs;
	public ImplDetailDao() {
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
	public int insertDetail(Detail d) {
		int num = 0;
		String sql = "insert into detail values(null,?,?,?)";
		init(sql);
		try {
			pstm.setInt(1, d.getS_id());
			pstm.setInt(2, d.getD_num());
			pstm.setInt(3, d.getC_id());
			num = pstm.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			dbutil.free(conn, pstm);
		}
		return num;
	}
	@Override
	public List<DetailList> selectDetailBySId(int s_id) {
		List<DetailList> list = new ArrayList<DetailList>();
		DetailList d = null;
		String sql = "select * from detail,cake where s_id = ? and detail.c_id = cake.c_id";
		init(sql);
		try {
			pstm.setInt(1, s_id);
			rs = pstm.executeQuery();
			while(rs.next()) {
				d = new DetailList(rs.getInt("d_id"), rs.getInt("s_id"), rs.getInt("d_num"), rs.getInt("c_id"), 
						rs.getString("c_image"), rs.getString("c_name"), rs.getFloat("c_price"));
				list.add(d);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			dbutil.free(conn, pstm,rs);
		}
		return list;
	}
	@Override
	public List<DetailList> selectDetailBySIdAndPaging(int s_id, int start, int num) {
		List<DetailList> list = new ArrayList<DetailList>();
		DetailList d = null;
		String sql = "select * from detail,cake where s_id = ? and detail.c_id = cake.c_id limit ?,?";
		init(sql);
		try {
			pstm.setInt(1, s_id);
			pstm.setInt(2, (start-1)*num);
			pstm.setInt(3, num);
			rs = pstm.executeQuery();
			while(rs.next()) {
				d = new DetailList(rs.getInt("d_id"), rs.getInt("s_id"), rs.getInt("d_num"), rs.getInt("c_id"), 
						rs.getString("c_image"), rs.getString("c_name"), rs.getFloat("c_price"));
				list.add(d);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			dbutil.free(conn, pstm,rs);
		}
		return list;
	}

}
