package com.entities;

import org.hibernate.*;
import org.hibernate.cfg.Configuration;

public class FactoryProvider {
	
  public static SessionFactory factory ;
  
  public static SessionFactory getFactory() {
	 
	  if(factory == null) {
		  Configuration config = new Configuration();
		  config.configure("hibernate.cfg.xml");
		  factory = config.buildSessionFactory();
	  }
	  return factory;
  }
  
  public void closeFactory() {
	  if(factory.isOpen()) {
		  factory.close();
	  }
  }
  
  
}
