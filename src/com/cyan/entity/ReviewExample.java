package com.cyan.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.springframework.stereotype.Component;

@Component
public class ReviewExample {
    /**
	 * This field was generated by MyBatis Generator. This field corresponds to the database table review
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	protected String orderByClause;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database table review
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	protected boolean distinct;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database table review
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	protected List<Criteria> oredCriteria;

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table review
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	public ReviewExample() {
		oredCriteria = new ArrayList<Criteria>();
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table review
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	public void setOrderByClause(String orderByClause) {
		this.orderByClause = orderByClause;
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table review
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	public String getOrderByClause() {
		return orderByClause;
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table review
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	public void setDistinct(boolean distinct) {
		this.distinct = distinct;
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table review
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	public boolean isDistinct() {
		return distinct;
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table review
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	public List<Criteria> getOredCriteria() {
		return oredCriteria;
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table review
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	public void or(Criteria criteria) {
		oredCriteria.add(criteria);
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table review
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	public Criteria or() {
		Criteria criteria = createCriteriaInternal();
		oredCriteria.add(criteria);
		return criteria;
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table review
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	public Criteria createCriteria() {
		Criteria criteria = createCriteriaInternal();
		if (oredCriteria.size() == 0) {
			oredCriteria.add(criteria);
		}
		return criteria;
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table review
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	protected Criteria createCriteriaInternal() {
		Criteria criteria = new Criteria();
		return criteria;
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table review
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	public void clear() {
		oredCriteria.clear();
		orderByClause = null;
		distinct = false;
	}

	/**
	 * This class was generated by MyBatis Generator. This class corresponds to the database table review
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	protected abstract static class GeneratedCriteria {
		protected List<Criterion> criteria;

		protected GeneratedCriteria() {
			super();
			criteria = new ArrayList<Criterion>();
		}

		public boolean isValid() {
			return criteria.size() > 0;
		}

		public List<Criterion> getAllCriteria() {
			return criteria;
		}

		public List<Criterion> getCriteria() {
			return criteria;
		}

		protected void addCriterion(String condition) {
			if (condition == null) {
				throw new RuntimeException("Value for condition cannot be null");
			}
			criteria.add(new Criterion(condition));
		}

		protected void addCriterion(String condition, Object value, String property) {
			if (value == null) {
				throw new RuntimeException("Value for " + property + " cannot be null");
			}
			criteria.add(new Criterion(condition, value));
		}

		protected void addCriterion(String condition, Object value1, Object value2, String property) {
			if (value1 == null || value2 == null) {
				throw new RuntimeException("Between values for " + property + " cannot be null");
			}
			criteria.add(new Criterion(condition, value1, value2));
		}

		protected void addCriterionForJDBCDate(String condition, Date value, String property) {
			if (value == null) {
				throw new RuntimeException("Value for " + property + " cannot be null");
			}
			addCriterion(condition, new java.sql.Date(value.getTime()), property);
		}

		protected void addCriterionForJDBCDate(String condition, List<Date> values, String property) {
			if (values == null || values.size() == 0) {
				throw new RuntimeException("Value list for " + property + " cannot be null or empty");
			}
			List<java.sql.Date> dateList = new ArrayList<java.sql.Date>();
			Iterator<Date> iter = values.iterator();
			while (iter.hasNext()) {
				dateList.add(new java.sql.Date(iter.next().getTime()));
			}
			addCriterion(condition, dateList, property);
		}

		protected void addCriterionForJDBCDate(String condition, Date value1, Date value2, String property) {
			if (value1 == null || value2 == null) {
				throw new RuntimeException("Between values for " + property + " cannot be null");
			}
			addCriterion(condition, new java.sql.Date(value1.getTime()), new java.sql.Date(value2.getTime()), property);
		}

		public Criteria andReviewIdIsNull() {
			addCriterion("review_id is null");
			return (Criteria) this;
		}

		public Criteria andReviewIdIsNotNull() {
			addCriterion("review_id is not null");
			return (Criteria) this;
		}

		public Criteria andReviewIdEqualTo(Integer value) {
			addCriterion("review_id =", value, "reviewId");
			return (Criteria) this;
		}

		public Criteria andReviewIdNotEqualTo(Integer value) {
			addCriterion("review_id <>", value, "reviewId");
			return (Criteria) this;
		}

		public Criteria andReviewIdGreaterThan(Integer value) {
			addCriterion("review_id >", value, "reviewId");
			return (Criteria) this;
		}

		public Criteria andReviewIdGreaterThanOrEqualTo(Integer value) {
			addCriterion("review_id >=", value, "reviewId");
			return (Criteria) this;
		}

		public Criteria andReviewIdLessThan(Integer value) {
			addCriterion("review_id <", value, "reviewId");
			return (Criteria) this;
		}

		public Criteria andReviewIdLessThanOrEqualTo(Integer value) {
			addCriterion("review_id <=", value, "reviewId");
			return (Criteria) this;
		}

		public Criteria andReviewIdIn(List<Integer> values) {
			addCriterion("review_id in", values, "reviewId");
			return (Criteria) this;
		}

		public Criteria andReviewIdNotIn(List<Integer> values) {
			addCriterion("review_id not in", values, "reviewId");
			return (Criteria) this;
		}

		public Criteria andReviewIdBetween(Integer value1, Integer value2) {
			addCriterion("review_id between", value1, value2, "reviewId");
			return (Criteria) this;
		}

		public Criteria andReviewIdNotBetween(Integer value1, Integer value2) {
			addCriterion("review_id not between", value1, value2, "reviewId");
			return (Criteria) this;
		}

		public Criteria andUserIdIsNull() {
			addCriterion("user_id is null");
			return (Criteria) this;
		}

		public Criteria andUserIdIsNotNull() {
			addCriterion("user_id is not null");
			return (Criteria) this;
		}

		public Criteria andUserIdEqualTo(Integer value) {
			addCriterion("user_id =", value, "userId");
			return (Criteria) this;
		}

		public Criteria andUserIdNotEqualTo(Integer value) {
			addCriterion("user_id <>", value, "userId");
			return (Criteria) this;
		}

		public Criteria andUserIdGreaterThan(Integer value) {
			addCriterion("user_id >", value, "userId");
			return (Criteria) this;
		}

		public Criteria andUserIdGreaterThanOrEqualTo(Integer value) {
			addCriterion("user_id >=", value, "userId");
			return (Criteria) this;
		}

		public Criteria andUserIdLessThan(Integer value) {
			addCriterion("user_id <", value, "userId");
			return (Criteria) this;
		}

		public Criteria andUserIdLessThanOrEqualTo(Integer value) {
			addCriterion("user_id <=", value, "userId");
			return (Criteria) this;
		}

		public Criteria andUserIdIn(List<Integer> values) {
			addCriterion("user_id in", values, "userId");
			return (Criteria) this;
		}

		public Criteria andUserIdNotIn(List<Integer> values) {
			addCriterion("user_id not in", values, "userId");
			return (Criteria) this;
		}

		public Criteria andUserIdBetween(Integer value1, Integer value2) {
			addCriterion("user_id between", value1, value2, "userId");
			return (Criteria) this;
		}

		public Criteria andUserIdNotBetween(Integer value1, Integer value2) {
			addCriterion("user_id not between", value1, value2, "userId");
			return (Criteria) this;
		}

		public Criteria andProductIdIsNull() {
			addCriterion("product_id is null");
			return (Criteria) this;
		}

		public Criteria andProductIdIsNotNull() {
			addCriterion("product_id is not null");
			return (Criteria) this;
		}

		public Criteria andProductIdEqualTo(Integer value) {
			addCriterion("product_id =", value, "productId");
			return (Criteria) this;
		}

		public Criteria andProductIdNotEqualTo(Integer value) {
			addCriterion("product_id <>", value, "productId");
			return (Criteria) this;
		}

		public Criteria andProductIdGreaterThan(Integer value) {
			addCriterion("product_id >", value, "productId");
			return (Criteria) this;
		}

		public Criteria andProductIdGreaterThanOrEqualTo(Integer value) {
			addCriterion("product_id >=", value, "productId");
			return (Criteria) this;
		}

		public Criteria andProductIdLessThan(Integer value) {
			addCriterion("product_id <", value, "productId");
			return (Criteria) this;
		}

		public Criteria andProductIdLessThanOrEqualTo(Integer value) {
			addCriterion("product_id <=", value, "productId");
			return (Criteria) this;
		}

		public Criteria andProductIdIn(List<Integer> values) {
			addCriterion("product_id in", values, "productId");
			return (Criteria) this;
		}

		public Criteria andProductIdNotIn(List<Integer> values) {
			addCriterion("product_id not in", values, "productId");
			return (Criteria) this;
		}

		public Criteria andProductIdBetween(Integer value1, Integer value2) {
			addCriterion("product_id between", value1, value2, "productId");
			return (Criteria) this;
		}

		public Criteria andProductIdNotBetween(Integer value1, Integer value2) {
			addCriterion("product_id not between", value1, value2, "productId");
			return (Criteria) this;
		}

		public Criteria andReviewDateIsNull() {
			addCriterion("review_date is null");
			return (Criteria) this;
		}

		public Criteria andReviewDateIsNotNull() {
			addCriterion("review_date is not null");
			return (Criteria) this;
		}

		public Criteria andReviewDateEqualTo(Date value) {
			addCriterionForJDBCDate("review_date =", value, "reviewDate");
			return (Criteria) this;
		}

		public Criteria andReviewDateNotEqualTo(Date value) {
			addCriterionForJDBCDate("review_date <>", value, "reviewDate");
			return (Criteria) this;
		}

		public Criteria andReviewDateGreaterThan(Date value) {
			addCriterionForJDBCDate("review_date >", value, "reviewDate");
			return (Criteria) this;
		}

		public Criteria andReviewDateGreaterThanOrEqualTo(Date value) {
			addCriterionForJDBCDate("review_date >=", value, "reviewDate");
			return (Criteria) this;
		}

		public Criteria andReviewDateLessThan(Date value) {
			addCriterionForJDBCDate("review_date <", value, "reviewDate");
			return (Criteria) this;
		}

		public Criteria andReviewDateLessThanOrEqualTo(Date value) {
			addCriterionForJDBCDate("review_date <=", value, "reviewDate");
			return (Criteria) this;
		}

		public Criteria andReviewDateIn(List<Date> values) {
			addCriterionForJDBCDate("review_date in", values, "reviewDate");
			return (Criteria) this;
		}

		public Criteria andReviewDateNotIn(List<Date> values) {
			addCriterionForJDBCDate("review_date not in", values, "reviewDate");
			return (Criteria) this;
		}

		public Criteria andReviewDateBetween(Date value1, Date value2) {
			addCriterionForJDBCDate("review_date between", value1, value2, "reviewDate");
			return (Criteria) this;
		}

		public Criteria andReviewDateNotBetween(Date value1, Date value2) {
			addCriterionForJDBCDate("review_date not between", value1, value2, "reviewDate");
			return (Criteria) this;
		}

		public Criteria andStarRankingIsNull() {
			addCriterion("star_ranking is null");
			return (Criteria) this;
		}

		public Criteria andStarRankingIsNotNull() {
			addCriterion("star_ranking is not null");
			return (Criteria) this;
		}

		public Criteria andStarRankingEqualTo(Integer value) {
			addCriterion("star_ranking =", value, "starRanking");
			return (Criteria) this;
		}

		public Criteria andStarRankingNotEqualTo(Integer value) {
			addCriterion("star_ranking <>", value, "starRanking");
			return (Criteria) this;
		}

		public Criteria andStarRankingGreaterThan(Integer value) {
			addCriterion("star_ranking >", value, "starRanking");
			return (Criteria) this;
		}

		public Criteria andStarRankingGreaterThanOrEqualTo(Integer value) {
			addCriterion("star_ranking >=", value, "starRanking");
			return (Criteria) this;
		}

		public Criteria andStarRankingLessThan(Integer value) {
			addCriterion("star_ranking <", value, "starRanking");
			return (Criteria) this;
		}

		public Criteria andStarRankingLessThanOrEqualTo(Integer value) {
			addCriterion("star_ranking <=", value, "starRanking");
			return (Criteria) this;
		}

		public Criteria andStarRankingIn(List<Integer> values) {
			addCriterion("star_ranking in", values, "starRanking");
			return (Criteria) this;
		}

		public Criteria andStarRankingNotIn(List<Integer> values) {
			addCriterion("star_ranking not in", values, "starRanking");
			return (Criteria) this;
		}

		public Criteria andStarRankingBetween(Integer value1, Integer value2) {
			addCriterion("star_ranking between", value1, value2, "starRanking");
			return (Criteria) this;
		}

		public Criteria andStarRankingNotBetween(Integer value1, Integer value2) {
			addCriterion("star_ranking not between", value1, value2, "starRanking");
			return (Criteria) this;
		}
	}

	/**
	 * This class was generated by MyBatis Generator. This class corresponds to the database table review
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	public static class Criterion {
		private String condition;
		private Object value;
		private Object secondValue;
		private boolean noValue;
		private boolean singleValue;
		private boolean betweenValue;
		private boolean listValue;
		private String typeHandler;

		public String getCondition() {
			return condition;
		}

		public Object getValue() {
			return value;
		}

		public Object getSecondValue() {
			return secondValue;
		}

		public boolean isNoValue() {
			return noValue;
		}

		public boolean isSingleValue() {
			return singleValue;
		}

		public boolean isBetweenValue() {
			return betweenValue;
		}

		public boolean isListValue() {
			return listValue;
		}

		public String getTypeHandler() {
			return typeHandler;
		}

		protected Criterion(String condition) {
			super();
			this.condition = condition;
			this.typeHandler = null;
			this.noValue = true;
		}

		protected Criterion(String condition, Object value, String typeHandler) {
			super();
			this.condition = condition;
			this.value = value;
			this.typeHandler = typeHandler;
			if (value instanceof List<?>) {
				this.listValue = true;
			} else {
				this.singleValue = true;
			}
		}

		protected Criterion(String condition, Object value) {
			this(condition, value, null);
		}

		protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
			super();
			this.condition = condition;
			this.value = value;
			this.secondValue = secondValue;
			this.typeHandler = typeHandler;
			this.betweenValue = true;
		}

		protected Criterion(String condition, Object value, Object secondValue) {
			this(condition, value, secondValue, null);
		}
	}

	/**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table review
     *
     * @mbg.generated do_not_delete_during_merge Sun Jan 28 18:44:57 EST 2018
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }
}