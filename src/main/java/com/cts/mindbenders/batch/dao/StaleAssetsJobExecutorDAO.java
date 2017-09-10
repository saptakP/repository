package com.cts.mindbenders.batch.dao;

import java.util.Set;

import org.springframework.stereotype.Component;

@Component
public interface StaleAssetsJobExecutorDAO {

	public Set<String> executeStaleJob();
}
