package com.cyan.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cyan.entity.Review;
import com.cyan.entity.ReviewExample;
import com.cyan.mapper.ReviewMapper;
import com.cyan.service.ReviewService;


@Service
public class ReviewServiceImpl implements ReviewService {

	@Autowired
	private ReviewMapper reviewMapper;
	
	@Autowired
	private ReviewExample reviewExample;
	
	@Override
	public boolean checkExist(Review review) {
		ReviewExample.Criteria criteria = reviewExample.createCriteria();
		criteria.andUserIdEqualTo(review.getUserId());
		criteria.andProductIdEqualTo(review.getProductId());
		List<Review> reviews = reviewMapper.selectByExample(reviewExample);
		reviewExample.clear();
		if(reviews.size()>0) {
			return true;
		}
		return false;
	}

	@Override
	public void updateReview(Review review) {
		ReviewExample.Criteria criteria = reviewExample.createCriteria();
		criteria.andUserIdEqualTo(review.getUserId());
		criteria.andProductIdEqualTo(review.getProductId());
		reviewMapper.updateByExampleSelective(review, reviewExample);
		reviewExample.clear();
	}

	@Override
	public void insertReview(Review review) {
		reviewMapper.insert(review);
	}

	@Override
	public List<Review> getReviewsByUser(Integer userId) {
		ReviewExample.Criteria criteria = reviewExample.createCriteria();
		criteria.andUserIdEqualTo(userId);
		List<Review> reviews = reviewMapper.selectByExampleWithBLOBs(reviewExample);
		reviewExample.clear();
		return reviews;
	}

	@Override
	public List<Review> getReviewsByProduct(Integer productId) {
		List<Review> reviews = reviewMapper.selectByProductId(productId);
		return reviews;
	}

}
