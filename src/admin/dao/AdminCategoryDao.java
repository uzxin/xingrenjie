package admin.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import admin.domain.Category;
import admin.utils.DataSourceUtils;

public class AdminCategoryDao {

	//查询所有商品分类
	public List<Category> findAllCategory() throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from category_1";
		return runner.query(sql, new BeanListHandler<Category>(Category.class));
	}
	//添加商品分类
	public void addCategory(Category category) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "insert into category_1 values(?,?)";
		runner.update(sql, category.getCid(),category.getCname());
	}
	//删除分类
	public void delCategoryByPid(String cid) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "delete from category_1 where cid=?";
		runner.update(sql, cid);
	}
	//根据cid查找分类对象
	public Category findCategoryByCid(String cid) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from category_1 where cid=?";
		return runner.query(sql, new BeanHandler<Category>(Category.class),cid);
	}
	//更新商品信息
	public void updateCategory(Category category) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "update category_1 set cname=? where cid=?";
		runner.update(sql, category.getCname() ,category.getCid());
	}

}
