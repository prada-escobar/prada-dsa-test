package com.prada.crud.actions;

import com.opensymphony.xwork2.ActionSupport;
import com.prada.crud.models.Product;
import com.prada.crud.services.ProductService;

public class EditProductAction extends ActionSupport {
    private int productId;
    private Product product;
    private ProductService productService = new ProductService();

    private String mode;

    private String formAction;

    @Override
    public String execute() {
        try {
            // Buscar el producto por ID y asignarlo a la variable product
            product = productService.getProductById(productId);
            if (product == null) {
                addActionError("El producto no se encuentra disponible.");
                return ERROR;
            }
            return SUCCESS;
        } catch (Exception e) {
            addActionError("Error al obtener información del producto: " + e.getMessage());
            return ERROR;
        }
    }

    public String update() {
        try {

            System.out.println("El productId es: Update " + productId);
            productService.updateProduct(product);
            addActionMessage("Producto actualizado con éxito.");
            return SUCCESS;
        } catch (Exception e) {
            addActionError("Error al actualizar el producto: " + e.getMessage());
            return ERROR;
        }
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
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
