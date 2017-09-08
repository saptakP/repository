package com.cts.mindbenders.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;

@Configuration
@ComponentScan(basePackages = "com.cts.mindbenders")
@PropertySource(value={"classpath:config.properties"}/*, ignoreResourceNotFound = true*/)
public class PropertyPlaceHolderConfig {
	 @Bean
	  public static PropertySourcesPlaceholderConfigurer propertyConfigurer() {
	      return new PropertySourcesPlaceholderConfigurer();
	  }
}
