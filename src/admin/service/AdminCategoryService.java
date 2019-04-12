package admin.service;

import java.sql.SQLException;
import java.util.List;

import admin.dao.AdminCategoryDao;
import admin.domain.Category;

public class AdminCategoryService {

	//查询所有商品分类
	public List<Category> findAllCategory() throws SQLException {
		AdminCategoryDao dao = new AdminCategoryDao();
		return dao.findAllCategory();
	}
	//添加商品分类
	public void addCategory(Category category) throws SQLException {
		AdminCategoryDao dao = new AdminCategoryDao();
		dao.addCategory(category);
	}
	//删除分类
	public void delCategoryByPid(String cid) throws SQLException {
		AdminCategoryDao dao = new AdminCategoryDao();
		dao.delCategoryByPid(cid);
	}
	//根据cid查找分类对象
	public Category findCategoryByCid(String cid) throws SQLException {
		AdminCategoryDao dao = new AdminCategoryDao();
		return dao.findCategoryByCid(cid);
	}
	//更新分类信息
	public void updateCategory(Category category) throws SQLException {
		AdminCategoryDao dao = new AdminCategoryDao();
		dao.updateCategory(category);
	}

}
