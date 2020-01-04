package com.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.bean.Feedback;
import com.dao.FeedbackDao;
import com.dbu.DBUtil;

public class FeedbackDaoImpl implements FeedbackDao{

	@Override
	public ResultSet getReadScrollResultSet() {
		ResultSet rs=null;
		try{
			Connection conn=DBUtil.getConn();
			//创建操作句柄：标明结果集为只读的滚动结果集
			Statement pstm=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, 
					ResultSet.CONCUR_READ_ONLY);
			rs=pstm.executeQuery("select * from feedback");
		}catch(Exception e){
			System.out.println(e);
		}
		return rs;
	}

	@Override
	public Feedback selectFeedbackById(String fid) {
		Feedback fk = null;
		Connection conn = DBUtil.getConn();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		String sql="select * from feedback where f_id=?";
		try{
			pstm=conn.prepareStatement(sql);
			pstm.setInt(1, Integer.parseInt(fid));
			rs=pstm.executeQuery();
			if(rs.next()) {
				fk = new Feedback();
				fk.setF_id(rs.getInt("f_id"));
				fk.setF_name(rs.getString("name"));;
				fk.setF_email(rs.getString("email"));
				fk.setF_telephone(rs.getNString("telephone"));
				fk.setF_content(rs.getString("f_content"));
				fk.setF_time(rs.getString("f_time"));
			}
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.free(rs, pstm, conn);
		}
		return fk;
	}

}
