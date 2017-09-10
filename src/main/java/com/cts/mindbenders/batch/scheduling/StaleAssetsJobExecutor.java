package com.cts.mindbenders.batch.scheduling;

import java.util.Set;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.cts.mindbenders.batch.helper.StaleAssetsJobExecutorHelper;
import com.cts.mindbenders.utils.MailUtil;

@Component
public class StaleAssetsJobExecutor {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(StaleAssetsJobExecutor.class);
	
	@Autowired
	StaleAssetsJobExecutorHelper staleAssetsExecutorHelper;

	
	//@Scheduled(fixedDelay=10000)
	@Scheduled(cron = "30 13 22 ? * *")
	public void execute() {
		LOGGER.info("I am called by Spring scheduler");
		Set<String> hotelCodes = staleAssetsExecutorHelper.executeStaleJob();
		LOGGER.info("I am called by Spring scheduler : success");
		
		//send mail to hotel owners 
		if(!hotelCodes.isEmpty()){
			MailUtil.notifiyAdminBatch(hotelCodes);
		}else{
			LOGGER.info("Mail not sent...");
		}
	}

}
