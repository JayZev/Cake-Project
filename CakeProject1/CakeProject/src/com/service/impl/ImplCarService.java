package com.service.impl;

import java.util.List;

import com.bean.Car;
import com.bean.CartList;
import com.dao.InfCarDao;
import com.dao.impl.ImplCarDao;
import com.service.InfCarService;

public class ImplCarService implements InfCarService {
	private InfCarDao carDao;
	public ImplCarService() {
		carDao = new ImplCarDao();
	}
	@Override
	public int insertCake(Car c) {
		// TODO Auto-generated method stub
		return carDao.insertCake(c);
	}
	@Override
	public List<CartList> selectCarByUId(int u_id) {
		// TODO Auto-generated method stub
		return carDao.selectCarByUId(u_id);
	}
	@Override
	public boolean updateCarByCarId(int car_id, int num) {
		// TODO Auto-generated method stub
		return carDao.updateCarByCarId(car_id, num) > 0 ? true : false;
	}
	@Override
	public boolean delteCarByCarId(int car_id) {
		// TODO Auto-generated method stub
		return carDao.delteCarByCarId(car_id) > 0 ? true : false;
	}
	@Override
	public List<Integer> selectCarTop(int top) {
		// TODO Auto-generated method stub
		return carDao.selectCarTop(top);
	}
	@Override
	public boolean addCarNumByCarId(int car_id, int num) {
		// TODO Auto-generated method stub
		return carDao.addCarNumByCarId(car_id, num) > 0 ? true : false;
	}
	@Override
	public Car selectCarByCarId(int car_id) {
		// TODO Auto-generated method stub
		return carDao.selectCarByCarId(car_id);
	}
	@Override
	public Car selectCakeByUIdAndCId(int u_id, int c_id) {
		// TODO Auto-generated method stub
		return carDao.selectCakeByUIdAndCId(u_id, c_id);
	}
	@Override
	public int updateCakeByUIdAndCid(int u_id, int c_id, int car_num) {
		// TODO Auto-generated method stub
		return carDao.updateCakeByUIdAndCid(u_id, c_id, car_num);
	}

}
