package com.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.bean.Cake;
import com.bean.Sell;
import com.dao.SellDao;
import com.dbu.DBUtil;

public class SellDaoImpl implements SellDao{

	@Override
	public ResultSet getReadScrollResultSet() {
		ResultSet rs=null;
		try{
			Connection conn=DBUtil.getConn();
			//创建操作句柄：标明结果集为只读的滚动结果集
			Statement pstm=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, 
					ResultSet.CONCUR_READ_ONLY);
			rs=pstm.executeQuery("select * from sell,cake,detail where s_condition='完成' and cake.c_id = detail.c_id and detail.s_id = sell.s_id order by s_time desc");
		}catch(Exception e){
			System.out.println(e);
		}
		return rs;
	}

	@Override
	public ResultSet getReadScrollResultSet2() {
		ResultSet rs=null;
		try{
			Connection conn=DBUtil.getConn();
			//创建操作句柄：标明结果集为只读的滚动结果集
			Statement pstm=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, 
					ResultSet.CONCUR_READ_ONLY);
			rs=pstm.executeQuery("select * from sell,cake,detail where s_condition='未完成' and cake.c_id = detail.c_id and detail.s_id = sell.s_id order by s_time desc");
		}catch(Exception e){
			System.out.println(e);
		}
		return rs;
	}

	@Override
	public int amendSellInfo(Sell sell) {
		int number=0;
		Connection conn = DBUtil.getConn();
		PreparedStatement pstm = null;
		String sql="update sell set  s_condition = '完成', s_actual = now() where s_id=?";
		try{
			pstm=conn.prepareStatement(sql);
			pstm.setInt(1, sell.getS_id());
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
	public List<Sell> moneySellInfo(String time1, String time2) {
		List<Sell> list = null;
		list = new ArrayList<Sell>();
		Sell sell = null;
		Connection conn = DBUtil.getConn();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		String sql = "select sum(s_money) from sell where s_time >= ? and s_time <= ? group by date_format(s_time,'%Y-%m-%d') order by s_time asc";
		try {
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, time1);
			pstm.setString(2, time2);
			rs = pstm.executeQuery();
			while (rs.next()) {
				sell = new Sell();
				sell.setS_money(rs.getFloat("sum(s_money)"));
				list.add(sell);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<Sell> annualSales(int time) {
		List<Sell> list = null;
		list = new ArrayList<Sell>();
		Sell sell = null;
		Connection conn = DBUtil.getConn();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		String sql = "select sum(s_money) from sell where date_format(s_time,'%Y') = ?  group by date_format(s_time,'%m') order by date_format(s_time,'%m') asc";
		try {
			pstm = conn.prepareStatement(sql);
			pstm.setInt(1, time);
			rs = pstm.executeQuery();
			while (rs.next()) {
				sell = new Sell();
				sell.setS_money(rs.getFloat("sum(s_money)"));
				list.add(sell);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	

}
