package com.bean;

import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.dao.CakeDao;
import com.dao.impl.CakeDaoImpl;

public class Cake2 {
	private CakeDao cDao = null;
	private Connection conn = null;
	private ResultSet rs = null;

	private int PAGESIZE = 4; // 每页显示的条目数
	private int PAGENUM = 0; // 页数
	private int PAGEID = 0; // 第?页
	private int num = 0;// 总记录条目数

	public Cake2() {
		cDao = new CakeDaoImpl();
		rs = cDao.getReadScrollResultSet();

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
	public List<Cake> getDataByPageNumber(int pageid) {
		List<Cake> list = new ArrayList<Cake>();
		Cake ck = null;
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
					ck = new Cake();
					ck.setC_id(rs.getInt("c_id"));
					ck.setC_name(rs.getString("c_name"));
					ck.setC_image(rs.getString("c_image"));
					ck.setC_price(rs.getFloat("c_price"));
					ck.setC_type(rs.getString("c_type"));
					ck.setC_weight(rs.getFloat("c_weight"));
					ck.setC_taste(rs.getString("c_taste"));
					ck.setC_color(rs.getString("c_color"));
					ck.setC_state(rs.getString("c_state"));
					list.add(ck);
					continue;
				}
				if (!rs.next()) {
					break;
				} else {
					ck = new Cake();
					ck.setC_id(rs.getInt("c_id"));
					ck.setC_name(rs.getString("c_name"));
					ck.setC_image(rs.getString("c_image"));
					ck.setC_price(rs.getFloat("c_price"));
					ck.setC_type(rs.getString("c_type"));
					ck.setC_weight(rs.getFloat("c_weight"));
					ck.setC_taste(rs.getString("c_taste"));
					ck.setC_color(rs.getString("c_color"));
					ck.setC_state(rs.getString("c_state"));
					list.add(ck);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}
}
