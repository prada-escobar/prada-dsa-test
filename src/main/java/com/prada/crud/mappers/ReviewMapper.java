package com.prada.crud.mappers;

import com.prada.crud.dtos.ProductReviewDTO;
import com.prada.crud.models.Review;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface ReviewMapper {

    @Insert("INSERT INTO Review (ProductID, Title, UserID, Rating, Description) VALUES (#{productId}, #{title}, #{userId}, #{rating}, #{description})")
    @Options(useGeneratedKeys = true, keyProperty = "reviewId", keyColumn = "reviewId")
    void insertReview(Review review);

    @Select("SELECT * FROM Review WHERE ProductID = #{productId}")
    List<Review> findReviewsByProductId(int productId);

    @Select("SELECT * FROM Review WHERE ReviewID = #{reviewId}")
    Review findReviewById(int reviewId);

    @Update("UPDATE Review SET ProductID = #{productId}, UserID = #{userId}, Rating = #{rating}, " +
            "Description = #{description}, Title = #{title} WHERE ReviewID = #{reviewId}")
    void updateReview(Review review);

    @Delete("DELETE FROM Review WHERE ReviewID = #{reviewId}")
    void deleteReview(int reviewId);

    @Select("SELECT R.PRODUCTID, R.REVIEWID, P.NAME, R.TITLE, R.DESCRIPTION, R.RATING, R.REVIEWDATE " +
            "FROM REVIEW R INNER JOIN PRODUCT P ON R.PRODUCTID = P.PRODUCTID")
    @Results({
            @Result(property = "productId", column = "PRODUCTID"),
            @Result(property = "reviewId", column = "REVIEWID"),
            @Result(property = "productName", column = "NAME"),
            @Result(property = "reviewTitle", column = "TITLE"),
            @Result(property = "reviewDescription", column = "DESCRIPTION"),
            @Result(property = "reviewRating", column = "RATING"),
            @Result(property = "reviewDate", column = "REVIEWDATE")
    })
    List<   ProductReviewDTO> findAllReviews();


}
