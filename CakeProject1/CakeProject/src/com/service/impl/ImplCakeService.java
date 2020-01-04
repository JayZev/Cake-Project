package com.service.impl;

import java.util.List;
import java.util.Map;

import com.bean.Cake;
import com.dao.InfCakeDao;
import com.dao.impl.ImplCakeDao;
import com.service.InfCakeService;

public class ImplCakeService implements InfCakeService {
	private InfCakeDao cakeDao;
	public ImplCakeService() {
		cakeDao = new ImplCakeDao();
	}
	@Override
	public List<Cake> getAllCake() {
		// TODO Auto-generated method stub
		return cakeDao.selectAllCake();
	}
	@Override
	public List<Cake> queryCakeByCondition(Map<String, List<String>> map) {
		// TODO Auto-generated method stub
		return cakeDao.selectCakeByCondition(map);
	}
	@Override
	public List<Cake> queryAllCakeByPaging(int index, int num) {
		// TODO Auto-generated method stub
		return cakeDao.selectAllCakeByPaging(index, num);
	}
	@Override
	public List<Cake> selectCakeByTypeAndPaging(String type, int index, int num) {
		// TODO Auto-generated method stub
		return cakeDao.selectCakeByTypeAndPaging(type, index, num);
	}
	@Override
	public List<Cake> queryCakeByConditionByPaging(Map<String, List<String>> map, int index, int num) {
		// TODO Auto-generated method stub
		return cakeDao.selectCakeByConditionByPaging(map, index, num);
	}
	@Override
	public List<Cake> selectCakeByType(String type) {
		// TODO Auto-generated method stub
		return cakeDao.selectCakeByType(type);
	}
	@Override
	public Cake selectCakeById(int c_id) {
		// TODO Auto-generated method stub
		return cakeDao.selectCakeById(c_id);
	}
}
