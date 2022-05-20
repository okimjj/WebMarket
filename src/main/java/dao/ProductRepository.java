package dao;

import java.util.ArrayList;
import java.util.List;

import dto.Product;

public class ProductRepository { 	//productRepository는 상품 데이터를 저장한 저장소.
	private List<Product> products = new ArrayList<>();
	private static ProductRepository instance = new ProductRepository();
	
	public static ProductRepository getInstance() {
		return instance;
	}
	
	public ProductRepository() {
		Product phone = new Product("P1234", "iPhone 6s", 800000);
		phone.setDescription("4.7-inch, 1234 X 750 Retina HD display, ok");
		phone.setCategory("Smart Phone");
		phone.setManufacturer("Apple");
		phone.setUnitsInStock(1000);
		phone.setCondition("New");
		
		Product notebook = new Product("P1235", "LG PC 그램", 1500000);
		notebook.setDescription("4.7-inch, 1234 X 750 Retina HD display, ok");
		notebook.setCategory("Notebook");
		notebook.setManufacturer("LG");
		notebook.setUnitsInStock(1000);
		notebook.setCategory("Refurbished");
		
		Product tablet = new Product("P1236", "Galaxy Tab S", 900000);
		tablet.setDescription("4.7-inch, 1234 X 750 Retina HD display, ok");
		tablet.setCategory("Smart Phone");
		tablet.setManufacturer("Samsung");
		tablet.setUnitsInStock(1000);
		tablet.setCategory("Old");
		
		products.add(phone);
		products.add(notebook);
		products.add(tablet);
	}
	
	public List<Product> getAllProducts() {
		return products;
	}
	
	//id로 상품 찾기
	public Product getProductById(String productId) {
		return products.stream() //상품 3개 흘러갑니당,,
				.filter((product) -> product.getProductId().equals(productId)) //필요한 것 거르기
				.findFirst() //그 중 첫번째 거
				.get(); //얻어
	}
	
	public void addProduct(Product product) {
		products.add(product);
	}
}
