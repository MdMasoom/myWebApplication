 package com.web.configuration;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;
import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

public class WebInitializer implements WebApplicationInitializer {
	public void onStartup(ServletContext servletContext) throws ServletException {
		
		AnnotationConfigWebApplicationContext container = new AnnotationConfigWebApplicationContext();
		container.register(WebConfiguration.class);
		container.setServletContext(servletContext);
		
		ServletRegistration.Dynamic servlet = servletContext.addServlet("spring", new DispatcherServlet(container));
		servlet.addMapping("/");
		servlet.setLoadOnStartup(3);
	}
}
