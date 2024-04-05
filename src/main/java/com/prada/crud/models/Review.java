package com.prada.crud.models;

import lombok.Getter;
import lombok.Setter;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;
import java.util.Date;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Review {
    private int reviewId;
    private int productId;
    private int userId;
    private int rating;
    private String title;
    private String description;
    private Date reviewDate;
}
