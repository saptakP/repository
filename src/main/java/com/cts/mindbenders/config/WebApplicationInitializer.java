package com.cts.mindbenders.config;

import org.springframework.core.annotation.Order;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

@Order(1)
public class WebApplicationInitializer extends AbstractAnnotationConfigDispatcherServletInitializer  {

	@Override
	protected Class<?>[] getRootConfigClasses() {
		// TODO Auto-generated method stub
		return new Class<?>[] {PropertyPlaceHolderConfig.class};
	}
	
	@Override
	protected Class<?>[] getServletConfigClasses() {
		return new Class<?>[] {WebApplicationConfig.class};
	}
	

	@Override
	protected String[] getServletMappings() {
		// TODO Auto-generated method stub
		return new String[] {"/"};
	}

	

	

}
