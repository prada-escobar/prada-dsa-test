package com.prada.crud.actions;

import com.opensymphony.xwork2.ActionSupport;
import com.prada.crud.models.Product;
import com.prada.crud.services.ProductService;

import java.util.List;

public class AddReviewFormAction extends ActionSupport {
    private ProductService productService = new ProductService();
    private List<Product> productList;
    private String mode;
    private String formAction;

    @Override
    public String execute() throws Exception {
        productList = productService.listProducts();

        if (productList == null) {
            addActionError("No se pudo obtener la lista de productos.");
            return ERROR;
        }

        return SUCCESS;
    }

    public List<Product> getProductList() {
        return productList;
    }

    public void setProductList(List<Product> productList) {
        this.productList = productList;
    }

    public String getMode() {
        return mode;
    }

    public void setMode(String mode) {
        this.mode = mode;
    }

    public String getFormAction() {
        return formAction;
    }

    public void setFormAction(String formAction) {
        this.formAction = formAction;
    }
}
