package com.prada.crud.actions;

import com.opensymphony.xwork2.ActionSupport;
import com.prada.crud.services.ProductService;

public class DeleteProductAction  extends ActionSupport {

    private int productId;
    private ProductService productService = new ProductService();

    public String execute() {
        try {
            productService.deleteProduct(productId);
            return SUCCESS;
        } catch (Exception e) {
            addActionError("No se pudo eliminar el producto: " + e.getMessage());
            return ERROR;
        }
    }
    public void setProductId(int productId) {
        this.productId = productId;
    }
}
