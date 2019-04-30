package admin.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import admin.dao.AdminProductDao;
import admin.domain.Category3;
import admin.domain.Condition;
import admin.domain.Product;
import admin.utils.DataSourceUtils;
import admin.utils.HibernateUtils;

public class AdminProductDaoImpl implements AdminProductDao {

	//获取所有分类列表
	public List<Category3> findAllCategory() {
		Criteria criteria = HibernateUtils.getCurrentSession().createCriteria(Category3.class);
		return criteria.list();
	}

	//获取所有商品列表
	public List<Product> findAllProduct() {
		Criteria criteria = HibernateUtils.getCurrentSession().createCriteria(Product.class);
		return criteria.list();
	}

	//添加商品
	public void addProduct(Product product) {
		HibernateUtils.getCurrentSession().save(product);
	}

	//删除商品
	public void delProductByPid(String pid) {
		Session session = HibernateUtils.getCurrentSession();
		Product product = session.get(Product.class, pid);
		session.delete(product);
	}

	//根据pid查找商品
	public Product findProductByPid(String pid) {
		Criteria criteria = HibernateUtils.getCurrentSession().createCriteria(Product.class);
		criteria.add(Restrictions.eq("pid", pid));
		return (Product) criteria.uniqueResult();
	}

	//更新商品信息
	public void updateProduct(Product product) {
		Session session = HibernateUtils.getCurrentSession();
		Product p = session.get(Product.class, product.getPid());
		p.setPname(product.getPname());
		p.setIs_hot(product.getIs_hot());
		p.setPimage(product.getPimage());
		p.setShop_price(product.getShop_price());
		p.setCid(product.getCid());
		p.setPdesc(product.getPdesc());
		session.update(p);
	}

	//根据条件筛选商品列表
	public List<Product> findProductListByCondition(Condition condition) {
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
		List<Product> productList = null;
		try {
			productList = runner.query(sql, new BeanListHandler<Product>(Product.class) , list.toArray());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return productList;
	}

}
