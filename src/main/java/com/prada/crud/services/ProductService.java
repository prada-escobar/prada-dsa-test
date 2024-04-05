package com.prada.crud.services;

import com.prada.crud.dtos.ProductReviewCountDTO;
import com.prada.crud.mappers.ProductMapper;
import com.prada.crud.models.Product;
import com.prada.crud.utils.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;
import java.util.List;

public class ProductService {

    public Product addProduct(Product product) {
        try (SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession()) {
            ProductMapper mapper = session.getMapper(ProductMapper.class);
            mapper.insert(product);
            session.commit();
            return product;
        } catch (Exception e) {
            throw new RuntimeException("Failed to add product", e);
        }
    }

    public List<Product> listProducts() {
        try (SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession()) {
            ProductMapper mapper = session.getMapper(ProductMapper.class);
            return mapper.findAll();
        } catch (Exception e) {
            // Handle exception
            throw new RuntimeException("Failed to list products", e);
        }
    }

    public Product getProductById(Integer productId) {
        try (SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession()) {
            ProductMapper mapper = session.getMapper(ProductMapper.class);
            return mapper.findById(productId);
        } catch (Exception e) {
            throw new RuntimeException("Failed to find product by Id "+productId, e);
        }
    }

    public Product updateProduct(Product product) {
        try (SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession()) {
            ProductMapper mapper = session.getMapper(ProductMapper.class);
            mapper.update(product);
            session.commit();
            return product;
        } catch (Exception e) {
            throw new RuntimeException("Failed to update product "+product.getProductId(), e);
        }
    }

    public void deleteProduct(Integer productId) {
        try (SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession()) {
            ProductMapper mapper = session.getMapper(ProductMapper.class);
            mapper.delete(productId);
            session.commit();
        } catch (Exception e) {
            throw new RuntimeException("Failed to delete product "+productId, e);
        }
    }

    public List<ProductReviewCountDTO> listProductsReviewsStats() {
        try (SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession()) {
            ProductMapper mapper = session.getMapper(ProductMapper.class);
            return mapper.findAllProductsWithReviewStats();
        } catch (Exception e) {
            throw new RuntimeException("Failed to list products", e);
        }
    }

}
