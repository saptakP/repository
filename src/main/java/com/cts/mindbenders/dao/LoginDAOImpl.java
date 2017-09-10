package com.cts.mindbenders.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.cts.mindbenders.constants.DBQueryConstant;
import com.cts.mindbenders.models.UserBean;
import com.cts.mindbenders.utils.AESUtil;

@Repository
@Qualifier("loginDAO")
@Configuration
@PropertySource(value="classpath:userdb.properties"/*, ignoreResourceNotFound=true*/)
public class LoginDAOImpl implements LoginDAO {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginDAOImpl.class);

	private JdbcTemplate jdbcTemplate;
	
	
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	@Autowired
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

		
	@Autowired
	private Environment env;
	

	@Override
	@Transactional(readOnly=true)
	public UserBean getActiveUserByCredential(UserBean user) {
		logger.debug("Inside LoginDAO... validateUserCred method.");
		try {
			return  getJdbcTemplate().queryForObject(env.getProperty(DBQueryConstant.GET_VALID_USER), 
					new Object[]{user.getUserName(), AESUtil.encrypt(user.getPassword())}, 
					new UserBeanRowMapper()
			);
		} catch (Exception e) {
			logger.error("Exception occured getActiveUserByCredential() : ", e);
			return new UserBean();
		}
	}

	@Override
	@Transactional(readOnly=true)
	public UserBean validateUserByRefKey(String refKey) {
		logger.debug("Inside LoginDAO... validateUserByRefKey method.");
		UserBean userBean = new UserBean();
		String dbQuery = "SELECT USER_ID,USERNAME,USER_TYPE,STATUS,REF_KEY FROM HTL_LOGIN WHERE REF_KEY='"+refKey+"' AND STATUS='A'";
		try {
			
			return (UserBean) jdbcTemplate.query(dbQuery, new ResultSetExtractor<UserBean>() {
	            public UserBean extractData(ResultSet rs) throws SQLException, DataAccessException {
	                if (rs.next()) {
	                	userBean.setUserId(rs.getInt("user_id"));
						userBean.setUserName(rs.getString("username"));
						userBean.setStatus(rs.getString("status"));
						userBean.setUserType(rs.getString("user_type"));
						userBean.setRefKey(rs.getString("ref_key"));
	                }
	                return userBean;
	            }
	        });
			
		} catch (Exception e) {
			logger.error("Exception occured validateUserByRefKey() : ", e);
			return new UserBean();
		}
		
	}
}
