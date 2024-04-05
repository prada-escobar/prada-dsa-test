package com.prada.crud.actions;

import com.opensymphony.xwork2.ActionSupport;
import com.prada.crud.models.Review;
import com.prada.crud.services.ReviewService;

public class AddReviewAction extends ActionSupport {
    private Review review;
    private ReviewService reviewService = new ReviewService();

    @Override
    public String execute() {
        try {
            reviewService.addReview(review);
            return SUCCESS;
        } catch (Exception e) {
            addActionError("Error al agregar review: " + e.getMessage());
            return ERROR;
        }
    }

    // Getters y setters
    public Review getReview() {
        return review;
    }

    public void setReview(Review review) {
        this.review = review;
    }
}
