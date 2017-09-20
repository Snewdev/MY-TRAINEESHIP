package net.sbai.onlinebackend.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import net.sbai.onlinebackend.dao.CategoryDAO;
import net.sbai.onlinebackend.dto.Category;

@Repository("categoryDAO")

public class CategoryDAOImpl implements CategoryDAO {

	private static List<Category> categories = new ArrayList<>();
	
	static {
		Category category = new Category();
		category.setId(1);
		category.setName("portable");
		category.setDescription("cc");
		category.setImageURL("cat.png");
		categories.add(category);
		
	 category = new Category();
		category.setId(2);
		category.setName("service");
		category.setDescription("cc");
		category.setImageURL("cat.png");
		categories.add(category);
	}
	
	
	@Override
	public List<Category> list() {
		// TODO Auto-generated method stub
		return categories;
	}

	@Override
	public Category get(int id) {
		for (Category category : categories) {
			if (category.getId() == id)
				return category;
		}
		return null;
	}

}
