package com.cn.sxzx.jdteam.javaBean.vo;

public class ProductImg {
    private String image1;
    private String image2;
    private String image3;

    public ProductImg( String image1, String image2, String image3) {
        this.image1 = image1;
        this.image2 = image2;
        this.image3 = image3;
    }

    public ProductImg() {
    }

    public String getImage1() {
        return image1;
    }

    public void setImage1(String image1) {
        this.image1 = image1;
    }

    public String getImage2() {
        return image2;
    }

    public void setImage2(String image2) {
        this.image2 = image2;
    }

    public String getImage3() {
        return image3;
    }

    public void setImage3(String image3) {
        this.image3 = image3;
    }


    @Override
    public String
    toString() {
        return "ProductImg{" +
                ", image1='" + image1 + '\'' +
                ", image2='" + image2 + '\'' +
                ", image3='" + image3 + '\'' +
                '}';
    }
}
