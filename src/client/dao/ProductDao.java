package client.dao;

import client.domain.Product;

public interface ProductDao {

	//通过pid获取商品集合
	Product getProductByPid(Long pid);

}
