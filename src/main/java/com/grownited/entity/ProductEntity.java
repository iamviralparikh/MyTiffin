package com.grownited.entity;

import java.security.Timestamp;
import java.util.Locale.Category;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="product")

public class ProductEntity {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long productId;

    //@Column(nullable = false, length = 100)
    private String productName;

    //@ManyToOne
    //@JoinColumn(name = "categoryId")
    //private Category category;

    //@ManyToOne
    //@JoinColumn(name = "subCategoryId")
    //private SubCategory subCategory;

    //@Column(nullable = false)
    private Double basePrice;

    private Double offerPrice;
    private Double offerPercentage;
    private String productDetail;

    private String productImageURL1;
    private String productImageURL2;
    private String productImageURL3;

    //@Column(nullable = false)
    private Integer quantity;

    //@CreationTimestamp
    private Timestamp createdAt;

	public Long getProductId() {
		return productId;
	}

	public void setProductId(Long productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public Double getBasePrice() {
		return basePrice;
	}

	public void setBasePrice(Double basePrice) {
		this.basePrice = basePrice;
	}

	public Double getOfferPrice() {
		return offerPrice;
	}

	public void setOfferPrice(Double offerPrice) {
		this.offerPrice = offerPrice;
	}

	public Double getOfferPercentage() {
		return offerPercentage;
	}

	public void setOfferPercentage(Double offerPercentage) {
		this.offerPercentage = offerPercentage;
	}

	public String getProductDetail() {
		return productDetail;
	}

	public void setProductDetail(String productDetail) {
		this.productDetail = productDetail;
	}

	public String getProductImageURL1() {
		return productImageURL1;
	}

	public void setProductImageURL1(String productImageURL1) {
		this.productImageURL1 = productImageURL1;
	}

	public String getProductImageURL2() {
		return productImageURL2;
	}

	public void setProductImageURL2(String productImageURL2) {
		this.productImageURL2 = productImageURL2;
	}

	public String getProductImageURL3() {
		return productImageURL3;
	}

	public void setProductImageURL3(String productImageURL3) {
		this.productImageURL3 = productImageURL3;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public Timestamp getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Timestamp createdAt) {
		this.createdAt = createdAt;
	}


}

