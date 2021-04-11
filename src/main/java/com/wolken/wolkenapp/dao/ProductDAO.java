package com.wolken.wolkenapp.dao;

import java.util.List;

import com.wolken.wolkenapp.entity.ProductEntity;

public interface ProductDAO {
	
	public String add(ProductEntity productEntity);   
	public List<ProductEntity> getBySearch(String p_cakeName);
}
