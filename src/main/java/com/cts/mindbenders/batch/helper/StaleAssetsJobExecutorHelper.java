package com.cts.mindbenders.batch.helper;

import java.util.Set;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cts.mindbenders.batch.dao.StaleAssetsJobExecutorDAO;

@Component
public class StaleAssetsJobExecutorHelper {
	private static final Logger LOGGER = LoggerFactory.getLogger(StaleAssetsJobExecutorHelper.class);
	
	@Autowired
	StaleAssetsJobExecutorDAO staleBatchDAO;
	
	public Set<String> executeStaleJob() {
		return staleBatchDAO.executeStaleJob();
		
	}

}
