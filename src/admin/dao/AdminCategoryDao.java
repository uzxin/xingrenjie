package admin.dao;

import java.util.List;

import admin.domain.Category1;
import admin.domain.Category2;
import admin.domain.Category3;

public interface AdminCategoryDao {
	//获取一级分类列表
	List<Category1> getCategory_1();
	//获取二级分类列表
	List<Category2> getCategory_2();
	//获取三级分类列表
	List<Category3> getCategory_3();
	//添加一级分类
	void addCategory(Category1 category);
	//根据cid删除一级分类
	void delCategoryByCid(String cid);
	//根据cid查找一级分类
	Category1 findCategoryByCid(String cid);
	//更新一级分类名字
	void updateCategory(Category1 category);

}
