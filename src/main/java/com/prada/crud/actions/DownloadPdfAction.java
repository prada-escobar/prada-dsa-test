package com.prada.crud.actions;

import com.opensymphony.xwork2.ActionSupport;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;
import com.prada.crud.services.ProductService;
import com.prada.crud.services.ReviewService;
import com.prada.crud.utils.PdfReportGenerator;
import org.apache.struts2.ServletActionContext;
import com.prada.crud.models.Product;
import com.prada.crud.models.Review;
import java.util.List;

public class DownloadPdfAction extends ActionSupport {

    private ProductService productService = new ProductService();
    private ReviewService reviewService = new ReviewService();
    private int productId;

    @Override
    public String execute() throws Exception {
        Product product = productService.getProductById(productId);
        List<Review> reviews = reviewService.findReviewsByProductId(productId);

        HttpServletResponse response = ServletActionContext.getResponse();
        ServletContext context = ServletActionContext.getServletContext();

        response.setContentType("application/pdf");
        String fileName = "ProductReviewDetails"+productId+".pdf";
        response.setHeader("Content-Disposition", "attachment; filename=\"" + fileName + "\"");

        PdfReportGenerator generator = new PdfReportGenerator();
        generator.generateProductReviewReport(context, response.getOutputStream(), product, reviews);

        return NONE;
    }

    public void setProductService(ProductService productService) {
        this.productService = productService;
    }

    public void setReviewService(ReviewService reviewService) {
        this.reviewService = reviewService;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

}
