package ex14;

import java.util.List;

import entity.Product;

public interface ProductIf {
	public List searchAll();  //���ͼ���б�
	public Product searchProductById(int id);
}
