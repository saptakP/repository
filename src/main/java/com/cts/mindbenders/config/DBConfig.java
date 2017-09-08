package com.cts.mindbenders.config;

import javax.sql.DataSource;

import org.apache.commons.dbcp2.BasicDataSource;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@EnableTransactionManagement
@PropertySource("classpath:config.properties")
public class DBConfig {
	@Value("${db.username}")
	private String userName;

	@Value("${db.password}")
	private String password;

	@Value("${db.host}")
	private String host;

	@Value("${db.port}")
	private String port;

	@Value("${db.name}")
	private String dbname;

	
	@Value("#{T(java.lang.Integer).parseInt('${db.pool.initialSize}')}")
	private Integer initialSize;
	
	@Value("#{T(java.lang.Integer).parseInt('${db.pool.maxTotal}')}")
	private int maxTotal;
	
	@Value("#{T(java.lang.Integer).parseInt('${db.pool.maxIdle}')}")
	private int maxIdle;
	
	@Bean
	public DataSource dataSource() {
		
		BasicDataSource dataSource = new BasicDataSource();
		// MySQL database
        StringBuilder urlBuilder = new StringBuilder("jdbc:mysql://").append(host).append(":")
                .append(port).append("/").append(dbname);
        dataSource.setUrl(urlBuilder.toString());
        dataSource.setDriverClassName("com.mysql.jdbc.Driver");
		dataSource.setUsername(userName);
		dataSource.setPassword(password);
		dataSource.setInitialSize(initialSize);
		dataSource.setMaxTotal(maxTotal);
		dataSource.setMaxIdle(maxIdle);
		dataSource.setDefaultAutoCommit(false);
		dataSource.setEnableAutoCommitOnReturn(true);
		return dataSource;
	}
	
		
	@Bean
    public JdbcTemplate jdbcTemplate(DataSource dataSource) {
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
        jdbcTemplate.setResultsMapCaseInsensitive(true);
        return jdbcTemplate;
    }
	
	@Bean
    public PlatformTransactionManager txManager() {
        return new DataSourceTransactionManager(dataSource());
    }
}
