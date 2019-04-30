package client.service;

import client.domain.Product;

public interface ProductService {

	//通过pid获取商品集合
	Product getProductByPid(Long pid);

}
