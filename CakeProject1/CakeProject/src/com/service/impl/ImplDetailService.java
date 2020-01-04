package com.service.impl;

import java.util.List;

import com.bean.Detail;
import com.bean.DetailList;
import com.dao.InfDetailDao;
import com.dao.impl.ImplDetailDao;
import com.service.InfDetailService;


public class ImplDetailService implements InfDetailService{
	private InfDetailDao detailDao;
	public ImplDetailService() {
		detailDao = new ImplDetailDao();
	}
	@Override
	public int insertDetail(Detail d) {
		// TODO Auto-generated method stub
		return detailDao.insertDetail(d);
	}
	@Override
	public List<DetailList> selectDetailBySId(int s_id) {
		// TODO Auto-generated method stub
		return detailDao.selectDetailBySId(s_id);
	}
	@Override
	public List<DetailList> selectDetailBySIdAndPaging(int s_id, int start, int num) {
		// TODO Auto-generated method stub
		return detailDao.selectDetailBySIdAndPaging(s_id, start, num);
	}
	@Override
	public int selectTotalDetailBySId(int s_id) {
		// TODO Auto-generated method stub
		return selectDetailBySId(s_id).size();
	}
	

}
