package com.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.bean.Cake;
import com.dao.InfCakeDao;
import com.util.DateBaseUtil;

public class ImplCakeDao implements InfCakeDao {
	private DateBaseUtil dbutil;
	private Connection conn;
	private PreparedStatement pstm;
	private ResultSet rs;
	public ImplCakeDao() {
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
	public List<Cake> selectAllCake() {
		List<Cake> list = new ArrayList<Cake>();
		Cake c = null;
		String sql = "select * from cake where c_state='上架'";
		init(sql);
		try {
			rs = pstm.executeQuery();
			while(rs.next()) {
				c = new Cake();
				c.setC_id(rs.getInt("c_id"));
				c.setC_name(rs.getString("c_name"));
				c.setC_price(rs.getFloat("c_price"));
				c.setC_type(rs.getString("c_type"));
				c.setC_weight(rs.getFloat("c_weight"));
				c.setC_taste(rs.getString("c_taste"));
				c.setC_color(rs.getString("c_color"));
				c.setC_introduce(rs.getString("c_introduce"));
				c.setC_image(rs.getString("c_image"));
				c.setC_state(rs.getString("c_state"));
				c.setC_description(rs.getString("c_description"));
				list.add(c);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			dbutil.free(conn, pstm, rs);
		}
		return list;
	}
	@Override
	public List<Cake> selectCakeByCondition(Map<String, List<String>> map) {
		List<Cake> list = new ArrayList<Cake>();
		Cake c = null;
//		String sql = "select * from cake where ?";
		String sql = "select * from cake where ";
		String condition = "";
//		map.size();
		String key = "";
		for (Map.Entry<String, List<String>> m : map.entrySet()) {
			if (!key.equals("")) {
				condition += " and ";
			}
			key = m.getKey();
			List<String> l = m.getValue();
			for(int i = 0; i < l.size(); i++) {
				if (i != 0) {
					condition += " or ";
				}
				if (key.equals("c_weight")) {
					condition += key+"="+l.get(i);
				} else {
					condition += key+"='"+l.get(i)+"'";
				}
				
			}
			
		}
		init(sql+condition);
		try {
//			pstm.setString(1, condition);
			rs = pstm.executeQuery();
			while(rs.next()) {
				c = new Cake();
				c.setC_id(rs.getInt("c_id"));
				c.setC_name(rs.getString("c_name"));
				c.setC_price(rs.getFloat("c_price"));
				c.setC_type(rs.getString("c_type"));
				c.setC_weight(rs.getFloat("c_weight"));
				c.setC_taste(rs.getString("c_taste"));
				c.setC_color(rs.getString("c_color"));
				c.setC_introduce(rs.getString("c_introduce"));
				c.setC_image(rs.getString("c_image"));
				c.setC_state(rs.getString("c_state"));
				c.setC_description(rs.getString("c_description"));
				list.add(c);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			dbutil.free(conn, pstm, rs);
		}
		return list;
	}
	@Override
	public List<Cake> selectAllCakeByPaging(int index, int num) {
		List<Cake> list = new ArrayList<Cake>();
		Cake c = null;
		String sql = "select * from cake limit ?,?";
		init(sql);
		try {
			pstm.setInt(1, (index-1)*num);
			pstm.setInt(2, num);
			rs = pstm.executeQuery();
			while(rs.next()) {
				c = new Cake();
				c.setC_id(rs.getInt("c_id"));
				c.setC_name(rs.getString("c_name"));
				c.setC_price(rs.getFloat("c_price"));
				c.setC_type(rs.getString("c_type"));
				c.setC_weight(rs.getFloat("c_weight"));
				c.setC_taste(rs.getString("c_taste"));
				c.setC_color(rs.getString("c_color"));
				c.setC_introduce(rs.getString("c_introduce"));
				c.setC_image(rs.getString("c_image"));
				c.setC_state(rs.getString("c_state"));
				c.setC_description(rs.getString("c_description"));
				list.add(c);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			dbutil.free(conn, pstm, rs);
		}
		return list;
	}
	@Override
	public List<Cake> selectCakeByTypeAndPaging(String type,int index, int num) {
		List<Cake> list = new ArrayList<Cake>();
		Cake c = null;
		String sql = "select * from cake where c_type=? limit ?,?";
		init(sql);
		try {
			pstm.setString(1, type);
			pstm.setInt(2, (index-1)*num);
			pstm.setInt(3, num);
			rs = pstm.executeQuery();
			while(rs.next()) {
				c = new Cake();
				c.setC_id(rs.getInt("c_id"));
				c.setC_name(rs.getString("c_name"));
				c.setC_price(rs.getFloat("c_price"));
				c.setC_type(rs.getString("c_type"));
				c.setC_weight(rs.getFloat("c_weight"));
				c.setC_taste(rs.getString("c_taste"));
				c.setC_color(rs.getString("c_color"));
				c.setC_introduce(rs.getString("c_introduce"));
				c.setC_image(rs.getString("c_image"));
				c.setC_state(rs.getString("c_state"));
				c.setC_description(rs.getString("c_description"));
				list.add(c);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			dbutil.free(conn, pstm, rs);
		}
		return list;
	}
	@Override
	public List<Cake> selectCakeByConditionByPaging(Map<String, List<String>> map, int index, int num) {
		List<Cake> list = new ArrayList<Cake>();
		Cake c = null;
//		String sql = "select * from cake where ?";
		String sql = "select * from cake where ";
		String condition = "";
//		map.size();
		String key = "";
		for (Map.Entry<String, List<String>> m : map.entrySet()) {
			if (!key.equals("")) {
				condition += " and ";
			}
			key = m.getKey();
			List<String> l = m.getValue();
			for(int i = 0; i < l.size(); i++) {
				if (i != 0) {
					condition += " or ";
				}
				if (key.equals("c_weight")) {
					condition += key+"="+l.get(i);
				} else {
					condition += key+"='"+l.get(i)+"'";
				}
				
			}
			
		}
		init(sql+condition+" limit "+(index-1)*num+","+index*num);
		System.out.println(sql+condition+"limit "+(index-1)*num+","+index*num);
		try {
//			pstm.setString(1, condition);
			rs = pstm.executeQuery();
			while(rs.next()) {
				c = new Cake();
				c.setC_id(rs.getInt("c_id"));
				c.setC_name(rs.getString("c_name"));
				c.setC_price(rs.getFloat("c_price"));
				c.setC_type(rs.getString("c_type"));
				c.setC_weight(rs.getFloat("c_weight"));
				c.setC_taste(rs.getString("c_taste"));
				c.setC_color(rs.getString("c_color"));
				c.setC_introduce(rs.getString("c_introduce"));
				c.setC_image(rs.getString("c_image"));
				c.setC_state(rs.getString("c_state"));
				c.setC_description(rs.getString("c_description"));
				list.add(c);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			dbutil.free(conn, pstm, rs);
		}
		return list;
	}
	@Override
	public List<Cake> selectCakeByType(String type) {
		List<Cake> list = new ArrayList<Cake>();
		Cake c = null;
		String sql = "select * from cake where c_type=?";
		init(sql);
		try {
			pstm.setString(1, type);
			rs = pstm.executeQuery();
			while(rs.next()) {
				c = new Cake();
				c.setC_id(rs.getInt("c_id"));
				c.setC_name(rs.getString("c_name"));
				c.setC_price(rs.getFloat("c_price"));
				c.setC_type(rs.getString("c_type"));
				c.setC_weight(rs.getFloat("c_weight"));
				c.setC_taste(rs.getString("c_taste"));
				c.setC_color(rs.getString("c_color"));
				c.setC_introduce(rs.getString("c_introduce"));
				c.setC_image(rs.getString("c_image"));
				c.setC_state(rs.getString("c_state"));
				c.setC_description(rs.getString("c_description"));
				list.add(c);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			dbutil.free(conn, pstm, rs);
		}
		return list;
	}
	@Override
	public Cake selectCakeById(int c_id) {
		Cake c = null;
		String sql = "select * from cake where c_id=?";
		init(sql);
		try {
			pstm.setInt(1, c_id);
			rs = pstm.executeQuery();
			while(rs.next()) {
				c = new Cake();
				c.setC_id(rs.getInt("c_id"));
				c.setC_name(rs.getString("c_name"));
				c.setC_price(rs.getFloat("c_price"));
				c.setC_type(rs.getString("c_type"));
				c.setC_weight(rs.getFloat("c_weight"));
				c.setC_taste(rs.getString("c_taste"));
				c.setC_color(rs.getString("c_color"));
				c.setC_introduce(rs.getString("c_introduce"));
				c.setC_image(rs.getString("c_image"));
				c.setC_state(rs.getString("c_state"));
				c.setC_description(rs.getString("c_description"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			dbutil.free(conn, pstm, rs);
		}
		return c;
	}

}
