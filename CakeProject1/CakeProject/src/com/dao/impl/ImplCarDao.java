package com.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bean.Cake;
import com.bean.Car;
import com.bean.CartList;
import com.dao.InfCarDao;
import com.util.DateBaseUtil;

public class ImplCarDao implements InfCarDao {
	private DateBaseUtil dbutil;
	private Connection conn;
	private PreparedStatement pstm;
	private ResultSet rs;
	public ImplCarDao() {
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
	public int insertCake(Car c) {
		String sql = "insert into car values(null,?,?,?)";
		int num = 0;
		init(sql);
		try {
			pstm.setInt(1, c.getU_id());
			pstm.setInt(2, c.getC_id());
			pstm.setInt(3, c.getCar_num());
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
	public List<CartList> selectCarByUId(int u_id) {
		List<CartList> list = new ArrayList<CartList>();
		CartList cart = null;
		String sql = "select * from car,cake where car.c_id=cake.c_id and car.u_id = ?";
		init(sql);
		try {
			pstm.setInt(1, u_id);
			rs = pstm.executeQuery();
			while(rs.next()) {
				cart = new CartList(rs.getInt("car_id"), rs.getString("c_image"), rs.getString("c_name"), rs.getInt("car_num"), rs.getFloat("c_price"), rs.getInt("c_id"));
				list.add(cart);
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
	public int updateCarByCarId(int car_id, int num) {
		String sql ="update car set car_num = ? where car_id = ?";
		init(sql);
		int index = 0;
		try {
			pstm.setInt(1, num);
			pstm.setInt(2, car_id);
			index = pstm.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			dbutil.free(conn, pstm);
		}
		return index;
	}
	@Override
	public int delteCarByCarId(int car_id) {
		String sql ="delete from car where car_id = ?";
		init(sql);
		int index = 0;
		try {
			pstm.setInt(1, car_id);
			index = pstm.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			dbutil.free(conn, pstm);
		}
		return index;
	}
	@Override
	public List<Integer> selectCarTop(int top) {
		// select sum(car_num),c_id from car group by c_id ORDER BY sum(car_num) desc limit 0,3;
		List list = new ArrayList();
		String sql = "select sum(car_num),c_id from car group by c_id ORDER BY sum(car_num) desc limit 0,?";
		init(sql);
		try {
			pstm.setInt(1, top);
			rs = pstm.executeQuery();
			while(rs.next()) {
				list.add(rs.getInt("c_id"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			dbutil.free(conn, pstm);
		}
		return list;
	}
	@Override
	public int addCarNumByCarId(int car_id, int num) {
		String sql ="update car set car_num = car_num+? where car_id = ?";
		init(sql);
		int index = 0;
		try {
			pstm.setInt(1, num);
			pstm.setInt(2, car_id);
			index = pstm.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			dbutil.free(conn, pstm);
		}
		return index;
	}
	@Override
	public Car selectCarByCarId(int car_id) {
		String sql = "select * from car where car_id = ?";
		Car c = null;
		init(sql);
		try {
			pstm.setInt(1, car_id);
			rs = pstm.executeQuery();
			if (rs.next()) {
				c = new Car(rs.getInt("car_id"), rs.getInt("u_id"), rs.getInt("c_id"), rs.getInt("car_num"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			dbutil.free(conn, pstm, rs);
		}
		return c;
	}
	@Override
	public Car selectCakeByUIdAndCId(int u_id, int c_id) {
		String sql = "select * from car where u_id = ? and c_id = ?";
		Car c = null;
		init(sql);
		try {
			pstm.setInt(1, u_id);
			pstm.setInt(2, c_id);
			rs = pstm.executeQuery();
			if (rs.next()) {
				c = new Car(rs.getInt("car_id"), rs.getInt("u_id"), rs.getInt("c_id"), rs.getInt("car_num"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			dbutil.free(conn, pstm, rs);
		}
		return c;
	}
	@Override
	public int updateCakeByUIdAndCid(int u_id, int c_id, int car_num) {
		String sql = "update car set car_num = car_num+? where u_id = ? and c_id = ?";
		int num = 0;
		init(sql);
		try {
			pstm.setInt(1, car_num);
			pstm.setInt(2, u_id);
			pstm.setInt(3, c_id);
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
