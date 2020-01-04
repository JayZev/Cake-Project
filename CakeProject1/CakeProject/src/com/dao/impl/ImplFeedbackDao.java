package com.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.bean.Feedback;
import com.dao.InfFeedbackDao;
import com.util.DateBaseUtil;

public class ImplFeedbackDao implements InfFeedbackDao{
	private DateBaseUtil dbutil;
	private PreparedStatement pstm;
	private ResultSet rs;
	
	public ImplFeedbackDao() {
		dbutil = new DateBaseUtil();
	}
	
	
	public int addMessage(Feedback feedback) {
		int number=0;
		Connection conn=dbutil.getConnection();
		PreparedStatement pstat=null;
		String sql="insert into feedback values(null,?,?,?,?,now())";
		try{
			pstat=conn.prepareStatement(sql);
			pstat.setString(1, feedback.getF_name());
			pstat.setString(2, feedback.getF_email());
			pstat.setString(3, feedback.getF_telephone());
			pstat.setString(4, feedback.getF_content());
			number=pstat.executeUpdate();
		}catch(Exception e){
			System.out.println(e.getMessage());
		}finally {
			dbutil.free(conn, pstm, rs);
		}
		return number;
	}

}
