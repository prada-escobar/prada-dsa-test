package com.prada.crud.actions;

import com.opensymphony.xwork2.ActionSupport;

public class AddProductFormAction extends ActionSupport {

    private String mode;
    private String formAction;

    @Override
    public String execute() {
        return SUCCESS;
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
