package com.bean;

import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.dao.SellDao;
import com.dao.impl.SellDaoImpl;


public class Sell2 {
	private SellDao sDao = null;
	private Connection conn = null;
	private ResultSet rs = null;

	private int PAGESIZE = 15; // 每页显示的条目数
	private int PAGENUM = 0; // 页数
	private int PAGEID = 0; // 第?页
	private int num = 0;// 总记录条目数

	public Sell2() {
		sDao = new SellDaoImpl();
		rs = sDao.getReadScrollResultSet();

		try {
			// 将游标移动到结果集最后一条记录[遍历一次结果集]
			rs.last();
			// 将结果集中的数据条目数交给 - num[总记录条目数]
			num = rs.getRow();
			// 将游标移动到结果集第一一条记录
			rs.first();
			// 根据 总记录条目数 确定 页数
			this.PAGENUM = num / PAGESIZE + (num % PAGESIZE > 0 ? 1 : 0);
		} catch (Exception e) {

		}
	}

	// 获取当前第?页
	public int getPageID() {
		return this.PAGEID;
	}

	// 获取总共多少页
	public int getPageNum() {
		return this.PAGENUM;
	}

	// 获取每页显示的条目数
	public int getPageSize() {
		return this.PAGESIZE;
	}

	// 获取总记录条目数
	public int getNum() {
		return this.num;
	}

	// 获取参数指定页对应的记录条目
	public List<SellList> getDataByPageNumber(int pageid) {
		List<SellList> list = new ArrayList<SellList>();
		SellList slist = null;
		if (pageid < 1) {// 保证 往上 最终页 为第一页
			pageid = 1;
		} else if (pageid > PAGENUM) {// 保证 往下 最终页 为最后一页
			pageid = PAGENUM;
		}
		try {
			this.PAGEID = pageid;
			if (!rs.first()) {
				return list;
			}
			for (int i = 0; i < (pageid - 1) * PAGESIZE; i++) {// 跑空前几页[如传入2 跑空第1页]
				rs.next();
			}
			// 读当前页记录
			for (int i = 0; i < PAGESIZE; i++) {
				if (i == 0) {
					slist = new SellList();
					slist.setS_id(rs.getInt("s_id"));
					slist.setS_consignee(rs.getString("s_consignee"));
					slist.setS_sex(rs.getString("s_sex"));
					slist.setS_address(rs.getString("s_address"));
					slist.setS_time(rs.getString("s_time"));
					slist.setC_name(rs.getString("c_name"));
					slist.setD_num(rs.getInt("d_num"));
					slist.setS_money(rs.getFloat("s_money"));
					slist.setS_phone(rs.getString("s_phone"));
					slist.setS_predict(rs.getString("s_predict"));
					slist.setS_actual(rs.getString("s_actual"));
					slist.setS_condition(rs.getString("s_condition"));
					list.add(slist);
					continue;
				}
				if (!rs.next()) {
					break;
				} else {
					slist = new SellList();
					slist.setS_id(rs.getInt("s_id"));
					slist.setS_consignee(rs.getString("s_consignee"));
					slist.setS_sex(rs.getString("s_sex"));
					slist.setS_address(rs.getString("s_address"));
					slist.setS_time(rs.getString("s_time"));
					slist.setC_name(rs.getString("c_name"));
					slist.setD_num(rs.getInt("d_num"));
					slist.setS_money(rs.getFloat("s_money"));
					slist.setS_phone(rs.getString("s_phone"));
					slist.setS_predict(rs.getString("s_predict"));
					slist.setS_actual(rs.getString("s_actual"));
					slist.setS_condition(rs.getString("s_condition"));
					list.add(slist);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}
	
}
