package admin.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import admin.domain.Category;
import admin.domain.Condition;
import admin.domain.Product;
import admin.utils.DataSourceUtils;;

public class AdminProductDao {
	//获取商品列表
	public List<Product> findAllProduct() throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from product";
		List<Product> productList= runner.query(sql, new BeanListHandler<Product>(Product.class));
		return productList;
	}

	//获取分类列表
	public List<Category> findAllCategory() throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from category";
		List<Category> categoryList= runner.query(sql, new BeanListHandler<Category>(Category.class));
		return categoryList;
	}

	//添加商品
	public void addProduct(Product product) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "insert into product values(?,?,?,?,?,?,?,?,?,?)";
		runner.update(sql, product.getPid(),product.getPname(),product.getMarket_price(),
					product.getShop_price(),product.getPimage(),product.getPdate(),product.getIs_hot(),
					product.getPdesc(),product.getPflag(),product.getCid());
	}
	
	//根据pid查询商品对象
	public Product findProductByPid(String pid) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from product where pid=?";
		Product product = runner.query(sql, new BeanHandler<Product>(Product.class), pid);
		return product;
	}
	
	////更新商品
	public void updateProduct(Product product) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "update product set pname=?,market_price=?,shop_price=?,pimage=?,pdate=?,is_hot=?,pdesc=?,pflag=?,cid=? where pid=?";
		runner.update(sql,product.getPname(),product.getMarket_price(),
				product.getShop_price(),product.getPimage(),product.getPdate(),product.getIs_hot(),
				product.getPdesc(),product.getPflag(),product.getCid(),product.getPid());
	}
	
	//刪除商品
	public void delProductByPid(String pid) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "delete from product where pid=?";
		runner.update(sql, pid);
		
	}
	
	//根据条件查询商品列表
	public List<Product> findProductListByCondition(Condition condition) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		//定义一个存储实际参数的容器
		List<String> list = new ArrayList<String>();
		String sql = "select * from product where 1=1";
		if(condition.getPname()!=null&&!condition.getPname().trim().equals("")){
			sql+=" and pname like ? ";
			list.add("%"+condition.getPname().trim()+"%");
		}
		if(condition.getIsHot()!=null&&!condition.getIsHot().trim().equals("")){
			sql+=" and is_hot=? ";
			list.add(condition.getIsHot().trim());
		}
		if(condition.getCid()!=null&&!condition.getCid().trim().equals("")){
			sql+=" and cid=? ";
			list.add(condition.getCid().trim());
		}
		List<Product> productList = runner.query(sql, new BeanListHandler<Product>(Product.class) , list.toArray());
		return productList;
	}
}
