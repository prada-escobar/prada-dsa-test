package com.prada.crud.utils;

import com.itextpdf.io.font.constants.StandardFonts;
import com.itextpdf.io.image.ImageData;
import com.itextpdf.io.image.ImageDataFactory;
import com.itextpdf.kernel.colors.Color;
import com.itextpdf.kernel.colors.ColorConstants;
import com.itextpdf.kernel.colors.DeviceRgb;
import com.itextpdf.kernel.font.PdfFont;
import com.itextpdf.kernel.font.PdfFontFactory;
import com.itextpdf.kernel.pdf.PdfWriter;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.layout.Document;
import com.itextpdf.layout.element.Cell;
import com.itextpdf.layout.element.Image;
import com.itextpdf.layout.element.Paragraph;
import com.itextpdf.layout.element.Table;
import com.itextpdf.layout.property.HorizontalAlignment;
import com.itextpdf.layout.property.UnitValue;
import com.prada.crud.models.Product;
import com.prada.crud.models.Review;
import org.apache.commons.io.IOUtils;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.net.MalformedURLException;
import java.text.DecimalFormat;
import java.util.List;

import javax.servlet.ServletContext;
import java.io.InputStream;
import java.util.List;
public class PdfReportGenerator {
    public void generateProductReviewReport(ServletContext context, OutputStream dest, Product product, List<Review> reviews) throws IOException {
        InputStream logoStream = context.getResourceAsStream("/images/logo.png");
        ImageData imageData = ImageDataFactory.create(IOUtils.toByteArray(logoStream));
        logoStream.close();

        PdfWriter writer = new PdfWriter(dest);
        PdfDocument pdf = new PdfDocument(writer);
        Document document = new Document(pdf);

        PdfFont font = PdfFontFactory.createFont(StandardFonts.HELVETICA_BOLD);
        Color blueColor = new DeviceRgb(26,35,58);
        Color ligthBlueColor = new DeviceRgb(90,141,238);

        Image logo = new Image(imageData)
                .setMaxWidth(30)
                .setHorizontalAlignment(HorizontalAlignment.CENTER);
        document.add(logo);

        // Encabezado de sección de detalles del producto
        Paragraph productHeader = new Paragraph("Detalles del Producto")
                .setFont(font)
                .setFontSize(14)
                .setFontColor(ligthBlueColor)
                .setBackgroundColor(blueColor)
                .setPadding(5);
        document.add(productHeader);

        // Detalles del producto
        document.add(new Paragraph("Nombre: " + product.getName()).setFontSize(12));
        document.add(new Paragraph("Descripción: " + product.getDescription()).setFontSize(12));
        document.add(new Paragraph("Marca: " + product.getBrand()).setFontSize(12));
        document.add(new Paragraph("Precio: $" + new DecimalFormat("#,##0.00").format(product.getPrice())).setFontSize(12));

        document.add(new Paragraph("\n"));

        // Encabezado de la sección de reseñas
        Paragraph reviewHeader = new Paragraph("Reseñas del Producto")
                .setFont(font)
                .setFontSize(14)
                .setFontColor(ligthBlueColor)
                .setBackgroundColor(blueColor)
                .setPadding(5);
        document.add(reviewHeader);

        // Tabla de reseñas
        Table table = new Table(UnitValue.createPercentArray(new float[]{1, 3, 2})).useAllAvailableWidth();
        table.addHeaderCell(new Cell().add(new Paragraph("Rating").setFont(font).setFontColor(ColorConstants.WHITE).setBackgroundColor(blueColor)));
        table.addHeaderCell(new Cell().add(new Paragraph("Título").setFont(font).setFontColor(ColorConstants.WHITE).setBackgroundColor(blueColor)));
        table.addHeaderCell(new Cell().add(new Paragraph("Comentario").setFont(font).setFontColor(ColorConstants.WHITE).setBackgroundColor(blueColor)));


        for (Review review : reviews) {
            table.addCell(String.valueOf(review.getRating()));
            table.addCell(review.getTitle());
            table.addCell(review.getDescription());
        }

        document.add(table);
        document.close();
    }
}
