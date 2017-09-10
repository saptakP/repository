package com.cts.mindbenders.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;
import com.cts.mindbenders.models.UserBean;

public class UserBeanRowMapper implements RowMapper<UserBean> {

	@Override
	public UserBean mapRow(ResultSet rs, int rowNum) throws SQLException {
		UserBean userBean = new UserBean();
		userBean.setUserId(rs.getInt("user_id"));
		userBean.setUserName(rs.getString("username"));
		userBean.setStatus(rs.getString("status"));
		userBean.setUserType(rs.getString("user_type"));
		userBean.setRefKey(rs.getString("ref_key"));
		return userBean;
	}
	

}
