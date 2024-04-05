package com.prada.crud.actions;

import com.opensymphony.xwork2.ActionSupport;
import com.prada.crud.dtos.ProductReviewCountDTO;
import com.prada.crud.models.Product;
import com.prada.crud.services.ProductService;
import java.util.List;

public class ListProductsAction extends ActionSupport {
    private List<ProductReviewCountDTO> products;
    public ListProductsAction() {
        super();
    }
    private ProductService productService = new ProductService();

    public String execute() {
        try {
            products = productService.listProductsReviewsStats();
            return SUCCESS;
        } catch (Exception e) {
            addActionError("Error al listar productos: " + e.getMessage());
            return ERROR;
        }
    }

    public List<ProductReviewCountDTO> getProducts() {
        return products;
    }

    public void setProducts(List<ProductReviewCountDTO> products) {
        this.products = products;
    }
}
