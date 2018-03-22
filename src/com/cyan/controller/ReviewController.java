package com.cyan.controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cyan.entity.Customer;
import com.cyan.entity.Review;
import com.cyan.service.ReviewService;

@Controller
public class ReviewController {
	
	@Autowired
	private ReviewService reviewService;
	
	@RequestMapping("/review/{productId}")
	public void reviewPage(@PathVariable Integer productId,Review review,HttpSession session,
			HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		
		Integer userId = ((Customer)session.getAttribute("user")).getUserId();
		review.setUserId(userId);
		review.setReviewDate(new Date());
		if(reviewService.checkExist(review)) {
			reviewService.updateReview(review);
		}else {
			reviewService.insertReview(review);
		}
		
		request.getRequestDispatcher("/order/list").forward(request, response);
		
	}
	
	
}
