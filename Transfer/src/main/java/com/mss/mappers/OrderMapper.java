package com.mss.mappers;

import com.mss.models.Order;

import java.util.List;

public interface OrderMapper {
    public void addOrder(Order order);
    public Order selectOrderByOrderId(String s);
    public List<Order> selectOrderByCkId(int i);
    public List<Order> selectOrderByUserId(int i);
    public List<Order> selectAllOrder();
    public void deleteOrderByOrderId(String s);
    public void payOrderByOrderId(Order order);
    public Order selectPayOrderByOrderId(String s);
    public void addInfoIntoOrder(Order order);
}
