package com.wolken.wolkenapp.service;

import java.util.List;

import com.wolken.wolkenapp.dto.ProductDTO;
import com.wolken.wolkenapp.entity.ProductEntity;


public interface ProductService {
	
	public String ValidateAndAdd(ProductDTO productDTO);
	public List<ProductEntity> ValidateAndGet(String p_cakeName);


}
