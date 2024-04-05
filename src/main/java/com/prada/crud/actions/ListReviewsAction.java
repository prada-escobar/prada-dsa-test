package com.prada.crud.actions;

import com.opensymphony.xwork2.ActionSupport;
import com.prada.crud.dtos.ProductReviewDTO;
import com.prada.crud.services.ReviewService;

import java.util.List;

public class ListReviewsAction extends ActionSupport {
    private List<ProductReviewDTO> reviews;
    public ListReviewsAction() {
        super();
    }
    private ReviewService reviewService = new ReviewService();

    public String execute() {
        try {
            reviews = reviewService.listProductsReviews();
            return SUCCESS;
        } catch (Exception e) {
            addActionError("Error al listar reviews: " + e.getMessage());
            return ERROR;
        }
    }

    public List<ProductReviewDTO> getReviews() {
        return reviews;
    }

    public void setProducts(List<ProductReviewDTO> reviews) {
        this.reviews = reviews;
    }
}
