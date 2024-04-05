package com.prada.crud.dtos;

import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
public class ProductReviewDTO {
    private int productId;
    private int reviewId;
    private String productName;
    private String reviewTitle;
    private String reviewDescription;
    private int reviewRating;
    private Date reviewDate;
}

