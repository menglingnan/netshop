package ex14;

import java.util.List;

import entity.Product;

public interface ProductIf {
	public List searchAll();  //获得图书列表
	public Product searchProductById(int id);
}
