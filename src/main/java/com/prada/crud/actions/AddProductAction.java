package com.prada.crud.actions;

import com.opensymphony.xwork2.ActionSupport;
import com.prada.crud.models.Product;
import com.prada.crud.services.ProductService;

public class AddProductAction extends ActionSupport {
    private Product product;
    private ProductService productService = new ProductService();

    @Override
    public String execute() {
        try {
            productService.addProduct(product);
            return SUCCESS;
        } catch (Exception e) {
            addActionError("Error al agregar producto: " + e.getMessage());
            return ERROR;
        }
    }

    // Getters y setters
    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }
}
