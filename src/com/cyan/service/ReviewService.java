package com.cyan.service;

import java.util.List;

import com.cyan.entity.Review;

public interface ReviewService {

	boolean checkExist(Review review);

	void updateReview(Review review);

	void insertReview(Review review);
	
	List<Review> getReviewsByUser(Integer userId);
	
	List<Review> getReviewsByProduct(Integer productId);

}
