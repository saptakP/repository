package com.cts.mindbenders.batch.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.core.BatchPreparedStatementSetter;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.cts.mindbenders.constants.DBQueryConstant;
import com.cts.mindbenders.models.StalableAsset;

@Repository
@Qualifier("staleBatchDAO")
@Configuration
@PropertySource(value="classpath:batchdb.properties"/*, ignoreResourceNotFound=true*/)
public class StaleAssetsJobExecutorDAOImpl implements StaleAssetsJobExecutorDAO {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(StaleAssetsJobExecutorDAOImpl.class);
	
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
	@Transactional(readOnly=false)
	public Set<String> executeStaleJob() {
		
		List<StalableAsset> staleAssets = getJdbcTemplate().query(env.getProperty(DBQueryConstant.GET_STALE_ASSET), new RowMapper<StalableAsset>() {

			@Override
			public StalableAsset mapRow(ResultSet rs, int rowNum) throws SQLException {
				StalableAsset details = new StalableAsset();
				details.setAssetDetailsId(rs.getInt("da_details_id"));
				details.setDigitalAssetId(rs.getInt("digital_asset_id"));
				details.setAssetName(rs.getString("asset_name"));
				details.setAssetLocation(rs.getString("digital_asset_location"));
				details.setLastRefreshDate(rs.getDate("last_refresh_date"));
				details.setStatus(rs.getString("status"));
				details.setHotelCode(rs.getString("hotel_code"));
				details.setCreated(rs.getDate("created"));
				details.setUpdated(rs.getDate("updated"));
				return details;
			}
			
		});
		
		//System.out.println("Stale Assets : " + staleAssets.toString());
		
		Set<String> hotelCodes = new HashSet<>();
		
		for(StalableAsset sa : staleAssets){
			String hotelCode = sa.getHotelCode();
			hotelCodes.add(hotelCode);
		}
		
		//System.out.println(distHotelCodes);
		
		int num[] = getJdbcTemplate().batchUpdate(env.getProperty(DBQueryConstant.UPDATE_STALE_STATUS), new BatchPreparedStatementSetter() {
			
			@Override
			public void setValues(PreparedStatement ps, int i) throws SQLException {
				StalableAsset asset = staleAssets.get(i);
				ps.setInt(1, asset.getAssetDetailsId());
			}
			
			@Override
			public int getBatchSize() {
				// TODO Auto-generated method stub
				int fixedSize = 50;
				int batchSize = staleAssets.size();
				if(batchSize < fixedSize){
					batchSize = 1;
				}
				return batchSize;
			}
		});
		
		/*for(int i : num){
			System.out.println("results :" + i);
		}*/
		
				
		return hotelCodes;
	}

	
}
