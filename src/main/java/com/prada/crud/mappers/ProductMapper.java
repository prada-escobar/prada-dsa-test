package com.prada.crud.mappers;

import com.prada.crud.dtos.ProductReviewCountDTO;
import com.prada.crud.models.Product;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface ProductMapper {

    @Insert("INSERT INTO Product (name, description, brand, price) " +
            "VALUES (#{name}, #{description}, #{brand}, #{price})")
    @Options(useGeneratedKeys = true, keyProperty = "productId", keyColumn = "productId")
    void insert(Product product);

    @Update("UPDATE Product SET name=#{name}, description=#{description}, " +
            "brand=#{brand}, price=#{price} WHERE productId=#{productId}")
    void update(Product product);

    @Delete("DELETE FROM Product WHERE productId=#{productId}")
    void delete(int productId);

    @Select("SELECT * FROM Product WHERE productId=#{productId}")
    Product findById(int productId);

    @Select("SELECT * FROM Product")
    List<Product> findAll();

    @Select("SELECT P.PRODUCTID, P.NAME, P.BRAND, P.DESCRIPTION, P.PRICE, COUNT(R.PRODUCTID) AS reviewCount, " +
            "COALESCE(AVG(R.RATING),0) AS reviewAverage " +
            "FROM PRODUCT P LEFT JOIN REVIEW R ON P.PRODUCTID = R.PRODUCTID " +
            "GROUP BY P.PRODUCTID, P.NAME, P.BRAND, P.DESCRIPTION, P.PRICE")
    @Results({
            @Result(property = "productId", column = "PRODUCTID"),
            @Result(property = "name", column = "NAME"),
            @Result(property = "brand", column = "BRAND"),
            @Result(property = "description", column = "DESCRIPTION"),
            @Result(property = "price", column = "PRICE"),
            @Result(property = "reviewCount", column = "reviewCount"),
            @Result(property = "reviewAverage", column = "reviewAverage")

    })
    List<ProductReviewCountDTO> findAllProductsWithReviewStats();
}
