package com.wolken.wolkenapp.dao;

import java.util.List;

import org.apache.log4j.Logger;
import org.apache.taglibs.standard.tag.common.xml.ForEachTag;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Component;
import com.wolken.wolkenapp.entity.ProductEntity;

@Component
public class ProductDAOImpl  implements ProductDAO{
	
Logger logger = Logger.getLogger("ProductDAOImpl");
	
	@Autowired
	LocalSessionFactoryBean bean;
	
	public String add(ProductEntity productEntity) {
		logger.info("inside add product");
		SessionFactory factory = bean.getObject();
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		session.save(productEntity);
		transaction.commit();
		session.close();
		return "product data added";
	}
	
	public List<ProductEntity> getBySearch(String p_cakeName){
		logger.info("inside search by cake name ");
		SessionFactory factory = bean.getObject();
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();                                        
		Query query = session.createQuery(" from ProductEntity pe where pe.p_cakeName= :pcname");
		query.setParameter("pcname", p_cakeName);
		List<ProductEntity> productEntity = query.list();
		//productEntity.forEach(System.out::print);	
		//query.executeUpdate();
		logger.info("details by cake name ");
		//transaction.commit();
		//session.close();
		return  productEntity;
		
	}

}
