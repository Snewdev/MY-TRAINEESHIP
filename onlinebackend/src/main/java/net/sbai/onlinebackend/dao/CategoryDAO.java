package net.sbai.onlinebackend.dao;

import java.util.List;

import net.sbai.onlinebackend.dto.Category;

public interface CategoryDAO {

	List<Category> list();
	Category get(int id);
	
}
