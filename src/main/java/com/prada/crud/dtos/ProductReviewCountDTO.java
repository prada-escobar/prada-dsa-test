package com.prada.crud.dtos;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ProductReviewCountDTO {
    private int productId;
    private String name;
    private String brand;
    private String description;
    private int reviewCount;
    private double reviewAverage;
    private double price;
}

