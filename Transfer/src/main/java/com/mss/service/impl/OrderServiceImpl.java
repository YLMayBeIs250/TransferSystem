package com.mss.service.impl;


import com.mss.mappers.OrderMapper;
import com.mss.models.Order;
import com.mss.service.OrderServiceInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderServiceImpl implements OrderServiceInterface {
    @Autowired
    private OrderMapper mapper;

    public void addOrder(Order order) {
        // TODO Auto-generated method stub
        mapper.addOrder(order);
    }

    public Order selectOrderByOrderId(String s){
        // TODO Auto-generated method stub
        return mapper.selectOrderByOrderId(s);
    }

    public List<Order> selectOrderByCkId(int i){
        // TODO Auto-generated method stub
        return mapper.selectOrderByCkId(i);
    }

    public List<Order> selectOrderByUserId(int i){
        // TODO Auto-generated method stub
        return mapper.selectOrderByUserId(i);
    }

    public List<Order> selectAllOrder(){
        // TODO Auto-generated method stub
        return mapper.selectAllOrder();
    }

    public void deleteOrderByOrderId(String s){
        // TODO Auto-generated method stub
        mapper.deleteOrderByOrderId(s);
    }

    public void payOrderByOrderId(Order order){
        // TODO Auto-generated method stub
        mapper.payOrderByOrderId(order);
    }

    public Order selectPayOrderByOrderId(String s){
        // TODO Auto-generated method stub
        return mapper.selectPayOrderByOrderId(s);
    }

    public void addInfoIntoOrder(Order order){
        // TODO Auto-generated method stub
        mapper.addInfoIntoOrder(order);
    }
}
