package com.wolken.wolkenapp.service;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wolken.wolkenapp.dao.ProductDAO;
import com.wolken.wolkenapp.dto.ProductDTO;
import com.wolken.wolkenapp.entity.ProductEntity;

@Service
public class ProductServiceImpl implements ProductService {

	Logger logger = Logger.getLogger("ProductServiceImpl");

	@Autowired
	ProductDAO productDAO;

	public String ValidateAndAdd(ProductDTO productDTO) {
		try {
			if (productDTO.getP_cakeId() > 0) {
				if (productDTO.getP_cakeName() != null) {
					if (productDTO.getP_cakePrice() > 0) {
						if (productDTO.getP_quantity() > 0) {
							if (productDTO.getP_rating() > 0) {
								ProductEntity productEntity = new ProductEntity();
								// productEntity=(ProductEntity)
								// productDAO.getBySearch(productDTO.getP_cakeName());
								// ProductEntity productEntity=new ProductEntity();
								// if(productEntity==null) {

								productEntity.setP_cakeId(productDTO.getP_cakeId());
								productEntity.setP_cakeName(productDTO.getP_cakeName());
								productEntity.setP_cakePrice(productDTO.getP_cakePrice());
								productEntity.setP_quantity(productDTO.getP_quantity());
								productEntity.setP_rating(productDTO.getP_rating());
								productDAO.add(productEntity);
							}

						} else {
							logger.info("quantity is invalid");
						}

					} else {
						logger.info("cake price is invalid");
					}

				} else {
					logger.info("cake name is invalid");
				}

			} else {
				logger.info(" product cake id is invalid");
			}

			return "product data saved";

			// return "product data saved";

		} catch (Exception e) {
			e.getMessage();
		}
		return "product data saved";
	}

	public List<ProductEntity> ValidateAndGet(String p_cakeName) {

		logger.info("inside validate and get by cake name");

		List<ProductEntity> productEntity = productDAO.getBySearch(p_cakeName);
		if (productEntity == null) {
			logger.info("the product data is null");
		} else {
			logger.info("product data exists");
			return productEntity;
		}
		return productEntity;
	}
}