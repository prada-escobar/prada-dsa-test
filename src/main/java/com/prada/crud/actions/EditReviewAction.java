package com.prada.crud.actions;

import com.opensymphony.xwork2.ActionSupport;
import com.prada.crud.models.Product;
import com.prada.crud.models.Review;
import com.prada.crud.services.ProductService;
import com.prada.crud.services.ReviewService;

import java.util.List;

public class EditReviewAction extends ActionSupport {
    private int reviewId;
    private Review review;
    private ProductService productService = new ProductService();
    private List<Product> productList;
    private ReviewService reviewService = new ReviewService();

    private String mode;

    private String formAction;

    @Override
    public String execute() {
        try {
            review = reviewService.getReviewById(reviewId);
            if (review == null) {
                addActionError("El review no se encuentra disponible.");
                return ERROR;
            }
            productList = productService.listProducts();
            if (productList == null) {
                addActionError("El listado no se encuentra disponible.");
                return ERROR;
            }

            return SUCCESS;
        } catch (Exception e) {
            addActionError("Error al obtener información del review: " + e.getMessage());
            return ERROR;
        }
    }

    public String update() {
        try {

            System.out.println("El productId es: Update " + reviewId);
            reviewService.updateReview(review);
            addActionMessage("Review actualizado con éxito.");
            return SUCCESS;
        } catch (Exception e) {
            addActionError("Error al actualizar el review: " + e.getMessage());
            return ERROR;
        }
    }

    public int getReviewId() {
        return reviewId;
    }

    public void setReviewId(int reviewId) {
        this.reviewId = reviewId;
    }

    public Review getReview() {
        return review;
    }

    public void setReview(Review review) {
        this.review = review;
    }

    public String getMode() {
        return mode;
    }

    public void setMode(String mode) {
        this.mode = mode;
    }

    public List<Product> getProductList() {
        return productList;
    }
    public String getFormAction() {
        return formAction;
    }

    public void setFormAction(String formAction) {
        this.formAction = formAction;
    }
}
