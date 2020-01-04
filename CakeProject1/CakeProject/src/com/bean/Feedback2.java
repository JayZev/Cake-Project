package com.bean;

import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.dao.FeedbackDao;
import com.dao.impl.FeedbackDaoImpl;


public class Feedback2 {
	private FeedbackDao fDao = null;
	private Connection conn = null;
	private ResultSet rs = null;

	private int PAGESIZE = 10; // 每页显示的条目数
	private int PAGENUM = 0; // 页数
	private int PAGEID = 0; // 第?页
	private int num = 0;// 总记录条目数

	public Feedback2() {
		fDao = new FeedbackDaoImpl();
		rs = fDao.getReadScrollResultSet();

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
	public List<Feedback> getDataByPageNumber(int pageid) {
		List<Feedback> list = new ArrayList<Feedback>();
		Feedback fk = null;
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
					fk = new Feedback();
					fk.setF_id(rs.getInt("f_id"));
					fk.setF_name(rs.getString("name"));
					fk.setF_email(rs.getString("email"));
					fk.setF_telephone(rs.getString("telephone"));
					fk.setF_content(rs.getString("f_content"));
					fk.setF_time(rs.getString("f_time"));
					list.add(fk);
					continue;
				}
				if (!rs.next()) {
					break;
				} else {
					fk = new Feedback();
					fk.setF_id(rs.getInt("f_id"));
					fk.setF_name(rs.getString("name"));
					fk.setF_email(rs.getString("email"));
					fk.setF_telephone(rs.getString("telephone"));
					fk.setF_content(rs.getString("f_content"));
					fk.setF_time(rs.getString("f_time"));
					list.add(fk);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}
}
