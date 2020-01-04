package com.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bean.Sell;
import com.dao.InfSellDao;
import com.util.DateBaseUtil;

public class ImplSellDao implements InfSellDao {
	private DateBaseUtil dbutil;
	private Connection conn;
	private PreparedStatement pstm;
	private ResultSet rs;
	public ImplSellDao() {
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
	public int insertSell(Sell sell) {
		int num = 0;
		String sql = "insert into sell values(null,?,now(),'未完成',?,?,?,?,?,?,?,null,null,null)";
		init(sql);
		try {
			pstm.setInt(1, sell.getU_id());
			pstm.setString(2, sell.getS_consignee());
			pstm.setString(3, sell.getS_address());
			pstm.setFloat(4, sell.getS_money());
			pstm.setFloat(5, sell.getS_freight());
			pstm.setString(6, sell.getS_sex());
			pstm.setString(7, sell.getS_phone());
			pstm.setString(8, sell.getS_predict());
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
	public int selectMaxSId() {
		int num = 0;
		String sql = "select max(s_id) from sell";
		init(sql);
		try {
			rs = pstm.executeQuery();
			if (rs.next()) {
				num = rs.getInt("max(s_id)");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			dbutil.free(conn, pstm,rs);
		}
		return num;
	}
	@Override
	public List<Sell> selectSellByUId(int u_id) {
		List<Sell> list = new ArrayList<Sell>();
		Sell s = null;
		String sql = "select * from sell where u_id = ? order by s_time desc";
		init(sql);
		try {
			pstm.setInt(1, u_id);
			rs = pstm.executeQuery();
			while(rs.next()) {
				s = new Sell(rs.getInt("s_id"), rs.getInt("u_id"), rs.getString("s_time"), 
						rs.getString("s_condition"), rs.getString("s_consignee"), rs.getString("s_address"), 
						rs.getFloat("s_money"), rs.getFloat("s_freight"), rs.getString("s_sex"), 
						rs.getString("s_phone"), rs.getString("s_predict"), rs.getString("s_actual"));
				
				list.add(s);
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
	public Sell selectSellBySId(int s_id) {
		Sell s = null;
		String sql = "select * from sell where s_id = ?";
		init(sql);
		try {
			pstm.setInt(1, s_id);
			rs = pstm.executeQuery();
			if(rs.next()) {
				s = new Sell(rs.getInt("s_id"), rs.getInt("u_id"), rs.getString("s_time"), 
						rs.getString("s_condition"), rs.getString("s_consignee"), rs.getString("s_address"), 
						rs.getFloat("s_money"), rs.getFloat("s_freight"), rs.getString("s_sex"), 
						rs.getString("s_phone"), rs.getString("s_predict"), rs.getString("s_actual"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			dbutil.free(conn, pstm,rs);
		}
		return s;
	}
	@Override
	public int addSellByVisit(Sell sell) {
		int num = 0;
		String sql = "insert into sell(u_id,s_time,s_condition,s_money,s_freight,s_phone,s_predict) values(?,now(),'未完成',?,0,?,?)";
		init(sql);
		try {
			pstm.setInt(1, sell.getU_id());
			pstm.setFloat(2, sell.getS_money());
			pstm.setString(3, sell.getS_phone());
			pstm.setString(4, sell.getS_predict());
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
	public List<Sell> selectSellByUIdAndPaging(int u_id, int start, int num) {
		List<Sell> list = new ArrayList<Sell>();
		Sell s = null;
		String sql = "select * from sell where u_id = ? order by s_time desc limit ?,?";
		init(sql);
		try {
			pstm.setInt(1, u_id);
			pstm.setInt(2, (start-1)*num);
			pstm.setInt(3, num);
			rs = pstm.executeQuery();
			while(rs.next()) {
				s = new Sell(rs.getInt("s_id"), rs.getInt("u_id"), rs.getString("s_time"), 
						rs.getString("s_condition"), rs.getString("s_consignee"), rs.getString("s_address"), 
						rs.getFloat("s_money"), rs.getFloat("s_freight"), rs.getString("s_sex"), 
						rs.getString("s_phone"), rs.getString("s_predict"), rs.getString("s_actual"));
				list.add(s);
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
