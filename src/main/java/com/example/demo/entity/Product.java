package com.example.demo.entity;

public class Product {

    private Integer pid;
    private Integer itemRecordNo;
    private Integer itemNo;
    private String itemName;
    private Integer stockId;
    private float price;
    private float discount;
    private String gmodel;
    private Integer country;
    private Integer unit;
    private String pdesc;
    private String pimages;

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public Integer getItemRecordNo() {
        return itemRecordNo;
    }

    public void setItemRecordNo(Integer itemRecordNo) {
        this.itemRecordNo = itemRecordNo;
    }

    public Integer getItemNo() {
        return itemNo;
    }

    public void setItemNo(Integer itemNo) {
        this.itemNo = itemNo;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public Integer getStockId() {
        return stockId;
    }

    public void setStockId(Integer stockId) {
        this.stockId = stockId;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public float getDiscount() {
        return discount;
    }

    public void setDiscount(float discount) {
        this.discount = discount;
    }

    public String getGmodel() {
        return gmodel;
    }

    public void setGmodel(String gmodel) {
        this.gmodel = gmodel;
    }

    public Integer getCountry() {
        return country;
    }

    public void setCountry(Integer country) {
        this.country = country;
    }

    public Integer getUnit() {
        return unit;
    }

    public void setUnit(Integer unit) {
        this.unit = unit;
    }

    public String getPdesc() {
        return pdesc;
    }

    public void setPdesc(String pdesc) {
        this.pdesc = pdesc;
    }

    public String getPimages() {
        return pimages;
    }

    public void setPimages(String pimages) {
        this.pimages = pimages;
    }

    @Override
    public String toString() {
        return "Product{" +
                "pid=" + pid +
                ", itemRecordNo=" + itemRecordNo +
                ", itemNo=" + itemNo +
                ", itemName='" + itemName + '\'' +
                ", stockId=" + stockId +
                ", price=" + price +
                ", discount=" + discount +
                ", gmodel='" + gmodel + '\'' +
                ", country=" + country +
                ", unit=" + unit +
                ", pdesc='" + pdesc + '\'' +
                ", pimages='" + pimages + '\'' +
                '}';
    }
}
