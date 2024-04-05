package com.prada.crud.actions;

import com.opensymphony.xwork2.ActionSupport;
import com.prada.crud.services.ReviewService;

public class DeleteReviewAction extends ActionSupport {

    private int reviewId;
    private ReviewService reviewService = new ReviewService();

    public String execute() {
        try {
            reviewService.deleteReview(reviewId);
            return SUCCESS;
        } catch (Exception e) {
            addActionError("No se pudo eliminar el review: " + e.getMessage());
            return ERROR;
        }
    }
    public void setReviewId(int reviewId) {
        this.reviewId = reviewId;
    }
}
