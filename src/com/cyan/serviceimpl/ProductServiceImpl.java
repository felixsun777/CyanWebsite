package com.cyan.serviceimpl;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cyan.entity.Department;
import com.cyan.entity.DepartmentExample;
import com.cyan.entity.Picture;
import com.cyan.entity.PictureExample;
import com.cyan.entity.Product;
import com.cyan.entity.ProductExample;
import com.cyan.entity.ProductExample.Criteria;
import com.cyan.entity.Review;
import com.cyan.mapper.DepartmentMapper;
import com.cyan.mapper.PictureMapper;
import com.cyan.mapper.ProductMapper;
import com.cyan.mapper.ReviewMapper;
import com.cyan.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService{

	@Autowired
	private ProductMapper productMapper;
	
	@Autowired
	private ReviewMapper reviewMapper;

	@Autowired
	private ProductExample productExample;
	
	@Autowired
	private PictureExample pictureExample;
	
	@Autowired
	private PictureMapper pictureMapper;
	
	@Override
	public List<Product> retrieveAllProducts() {
		List<Product> products = productMapper.selectByExampleWithBLOBs(productExample);
		productExample.clear();
		return products;
	}

	@Override
	public boolean insertProduct(Product product) {
		int res = productMapper.insert(product);
		if (res > 0)
			return true;
		return false;
	}

	@Override
	public boolean deleteProduct(Integer productId) {
		if(productMapper.deleteByPrimaryKey(productId)>0) {
			return true;
		}
		return false;
	}

	@Override
	public boolean updateProduct(Product product) {
		if(productMapper.updateByPrimaryKeyWithBLOBs(product)>0) {
			return true;
		}
		return false;
	}

	@Override
	public List<Review> retrieveProductReviews(Integer productId) {
		return reviewMapper.selectByProductId(productId);
	}

	@Override
	public List<Product> searchProductsByName(String productName) {
		ProductExample.Criteria criteria = productExample.createCriteria();
		criteria.andProductNameLike(productName);
		List<Product> products = productMapper.selectByExampleWithBLOBs(productExample);
		productExample.clear();
		return products;
	}

	@Override
	public List<Product> getNewArrival() {
		productExample.setOrderByClause("product_id DESC");
		List<Product> products = productMapper.selectByExampleWithBLOBs(productExample);
		productExample.clear();
		return products.subList(0, 6);
	}

	@Override
	public List<Product> getMostPopular() {
		productExample.setOrderByClause("average_ranking DESC");
		List<Product> products = productMapper.selectByExampleWithBLOBs(productExample);
		productExample.clear();
		return products.subList(0, 12);
	}


	@Override
	public Product getProductById(Integer productId) {
		return productMapper.selectByPrimaryKey(productId);
	}

	@Override
	public List<Product> getSimilarProducts(Integer categoryId) {
		ProductExample.Criteria criteria = productExample.createCriteria();
		criteria.andCategoryIdEqualTo(categoryId);
		List<Product> products = productMapper.selectByExampleWithBLOBs(productExample);
		productExample.clear();
		return products;
	}

	@Override
	public List<Product> getProductsByIds(List<Integer> productIds) {
		ProductExample.Criteria criteria = productExample.createCriteria();
		criteria.andProductIdIn(productIds);
		List<Product> products = productMapper.selectByExampleWithBLOBs(productExample);
		productExample.clear();
		return products;
	}
	
	@Override
	public List<String> getPictures(Integer productId){
		PictureExample.Criteria criteria = pictureExample.createCriteria();
		criteria.andProductIdEqualTo(productId);
		List<Picture> pictures = pictureMapper.selectByExample(pictureExample);
		pictureExample.clear();
		return pictures.parallelStream().map( p -> p.getPath()).collect(Collectors.toList());
	}

	@Override
	public List<Product> searchProductsByDepartment(Integer departmentId) {
		return productMapper.selectByDepartment(departmentId);
	}

	@Override
	public List<String> getBrands() {
		return productMapper.getAllBrands();
	}

	@Override
	public List<Product> searchProductsByBrand(String brand) {
		ProductExample.Criteria criteria = productExample.createCriteria();
		criteria.andBrandEqualTo(brand);
		List<Product> products = productMapper.selectByExampleWithBLOBs(productExample);
		productExample.clear();
		return products;
	}

}
