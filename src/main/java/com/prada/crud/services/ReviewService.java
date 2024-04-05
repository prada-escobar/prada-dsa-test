package com.prada.crud.services;

import com.prada.crud.dtos.ProductReviewDTO;
import com.prada.crud.mappers.ReviewMapper;
import com.prada.crud.models.Review;
import com.prada.crud.utils.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;
import java.util.List;

public class ReviewService {

    public Review addReview(Review review) {
        try (SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession()) {
            ReviewMapper mapper = session.getMapper(ReviewMapper.class);
            mapper.insertReview(review);
            session.commit();
            return review;
        } catch (Exception e) {
            throw new RuntimeException("Failed to add review", e);
        }
    }

    public List<ProductReviewDTO> listProductsReviews() {
        try (SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession()) {
            ReviewMapper mapper = session.getMapper(ReviewMapper.class);
            return mapper.findAllReviews();
        } catch (Exception e) {
            throw new RuntimeException("Failed to list reviews", e);
        }
    }

    public Review getReviewById(int reviewId) {
        try (SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession()) {
            ReviewMapper mapper = session.getMapper(ReviewMapper.class);
            return mapper.findReviewById(reviewId);
        } catch (Exception e) {
            throw new RuntimeException("Failed to find review by Id " + reviewId, e);
        }
    }

    public Review updateReview(Review review) {
        try (SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession()) {
            ReviewMapper mapper = session.getMapper(ReviewMapper.class);
            mapper.updateReview(review);
            session.commit();
            return review;
        } catch (Exception e) {
            throw new RuntimeException("Failed to update review " + review.getReviewId(), e);
        }
    }

    public void deleteReview(int reviewId) {
        try (SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession()) {
            ReviewMapper mapper = session.getMapper(ReviewMapper.class);
            mapper.deleteReview(reviewId);
            session.commit();
        } catch (Exception e) {
            throw new RuntimeException("Failed to delete review " + reviewId, e);
        }
    }

    public List<Review> findReviewsByProductId(int productId) {
        try (SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession()) {
            ReviewMapper mapper = session.getMapper(ReviewMapper.class);
            return mapper.findReviewsByProductId(productId);
        } catch (Exception e) {
            throw new RuntimeException("Failed to list reviews for product " + productId, e);
        }
    }


}
