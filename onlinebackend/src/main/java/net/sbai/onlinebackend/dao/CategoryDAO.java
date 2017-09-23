package net.sbai.onlinebackend.dao;

import java.util.List;

import net.sbai.onlinebackend.dto.Category;

public interface CategoryDAO {

	Category get(int id);

	List<Category> list();

	boolean add(Category category);

	
}
