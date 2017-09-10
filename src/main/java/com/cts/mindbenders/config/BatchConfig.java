package com.cts.mindbenders.config;

import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.SchedulingConfigurer;
import org.springframework.scheduling.config.ScheduledTaskRegistrar;

import com.cts.mindbenders.batch.scheduling.StaleAssetsJobExecutor;

@Configuration
@EnableScheduling
public class BatchConfig implements SchedulingConfigurer {

	@Bean
	public StaleAssetsJobExecutor bean() {
		return new StaleAssetsJobExecutor();
	}

    @Override
    public void configureTasks(ScheduledTaskRegistrar taskRegistrar) {
        taskRegistrar.setScheduler(taskExecutor());
    }

    @Bean(destroyMethod="shutdown")
    public Executor taskExecutor() {
        return Executors.newScheduledThreadPool(10);
    }

}
