package com.cts.mindbenders.dao;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.cts.mindbenders.constants.DBQueryConstant;
import com.cts.mindbenders.dao.UserBeanRowMapper;
import com.cts.mindbenders.models.UserBean;
import com.cts.mindbenders.utils.AESUtil;
import com.cts.mindbenders.dao.LoginDAOImpl;

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
	public UserBean getActiveUserByCredential(UserBean user) throws Exception {
		logger.debug("Inside LoginDAO... validateUserCred method.");
		return  getJdbcTemplate().queryForObject(env.getProperty(DBQueryConstant.GET_VALID_USER), 
				new Object[]{user.getUserName(), AESUtil.encrypt(user.getPassword())}, 
				new UserBeanRowMapper()
		);
	
	}
}
