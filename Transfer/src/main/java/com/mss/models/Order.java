package com.mss.models;

import java.util.Date;

public class Order {
    private String orderid;
    private String orderhref;
    private int ckid;
    private int id;
    private int orderstate;
    private double orderweight;
    private double orderprice;
    private String ordertime;
    private String ordermessage;

    public String getOrderid() {
        return orderid;
    }

    public void setOrderid(String orderid) {
        this.orderid = orderid;
    }

    public String getOrderhref() {
        return orderhref;
    }

    public void setOrderhref(String orderhref) {
        this.orderhref = orderhref;
    }

    public int getOrderstate() {
        return orderstate;
    }

    public void setOrderstate(int orderstate) {
        this.orderstate = orderstate;
    }

    public int getCkid() {
        return ckid;
    }

    public void setCkid(int ckid) {
        this.ckid = ckid;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public double getOrderweight() {
        return orderweight;
    }

    public void setOrderweight(double orderweight) {
        this.orderweight = orderweight;
    }

    public double getOrderprice() {
        return orderprice;
    }

    public void setOrderprice(double orderprice) {
        this.orderprice = orderprice;
    }

    public String getOrdertime() {
        return ordertime;
    }

    public void setOrdertime(String ordertime) {
        this.ordertime = ordertime;
    }

    public String getOrdermessage() {
        return ordermessage;
    }

    public void setOrdermessage(String ordermessage) {
        this.ordermessage = ordermessage;
    }

    @Override
    public String toString() {
        return "Order [orderid=" + orderid + ", ckid=" + ckid + ", id="
                + id + ", orderweight=" + orderweight
                +", orderprice=" + orderprice +", ordertime=" + ordertime+", ordermessage=" + ordermessage+"]";
    }
}
