/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author daoho
 */
public class ProductDetail {
    private int id;
    private int productid;
    private String img;
    private String descriptation;
    public ProductDetail() {
    }

    public ProductDetail(int id, int productid, String img, String descriptation) {
        this.id = id;
        this.productid = productid;
        this.img = img;
        this.descriptation = descriptation;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getProductid() {
        return productid;
    }

    public void setProductid(int productid) {
        this.productid = productid;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getDescriptation() {
        return descriptation;
    }

    public void setDescriptation(String descriptation) {
        this.descriptation = descriptation;
    }
    
}
