package com.mss.controllers;

import com.alibaba.fastjson.JSONArray;
import com.mss.models.Order;
import com.mss.service.OrderServiceInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("OrderController")
public class OrderController {
    @Autowired
    private OrderServiceInterface service;

    @RequestMapping("addOrder.do")
    @ResponseBody
    public void addOrder(HttpServletRequest request,HttpServletResponse response){
        String orderid  = request.getParameter("orderid");
        String orderhref  = request.getParameter("orderhref");
        int ckid  = Integer.parseInt(request.getParameter("ckid"));
        String ordermessage  = request.getParameter("ordermessage");
        int id  = Integer.parseInt(request.getParameter("id"));
        int orderstate  = Integer.parseInt(request.getParameter("orderstate"));
        String ordertime  = request.getParameter("ordertime");
        Order o=new Order();
        o.setOrderid(orderid);
        o.setOrderhref(orderhref);
        o.setCkid(ckid);
        o.setOrdermessage(ordermessage);
        o.setId(id);
        o.setOrderstate(orderstate);
        o.setOrdertime(ordertime);
        service.addOrder(o);
    }

    @RequestMapping("selectAllOrder.do")
    @ResponseBody
    public List<Order> selectAllOrder(HttpServletResponse response, HttpServletRequest request){
        List<Order> list =service.selectAllOrder();
        return list;
    }

    @RequestMapping("selectOrderByOrderId.do")
    @ResponseBody
    public Order selectOrderByOrderId(HttpServletResponse response, HttpServletRequest request,HttpSession session,String orderid){
        Order o =service.selectOrderByOrderId(orderid);
        session.setAttribute("order",o);
        return o;
    }

    @RequestMapping("deleteOrderByOrderId.do")
    @ResponseBody
    public void deleteOrderByOrderId(HttpServletResponse response, HttpServletRequest request,String orderid){
        service.deleteOrderByOrderId(orderid);
    }

    @RequestMapping("payOrderByOrderId.do")
    @ResponseBody
    public void payOrderByOrderId(HttpServletResponse response, HttpServletRequest request){
        String ds = request.getParameter("ds");
        JSONArray json=JSONArray.parseArray(ds);
        String orderid=(String)json.getJSONObject(0).get("orderid");
        int orderstate=Integer.parseInt((String)json.getJSONObject(0).get("orderstate"));
        Order o=new Order();
        o.setOrderid(orderid);
        o.setOrderstate(orderstate);
        service.payOrderByOrderId(o);
    }

    @RequestMapping("selectPayOrder.do")
    @ResponseBody
    public Order selectPayOrderByOrderId(HttpServletResponse response, HttpServletRequest request, HttpSession session,String orderid){
        Order o =service.selectPayOrderByOrderId(orderid);
        session.setAttribute("payorder",o);
        return o;
    }

    @RequestMapping("addInfoIntoOrder.do")
    public ModelAndView addInfoIntoOrder(HttpServletResponse response, HttpServletRequest request, HttpSession session,Order order){
        service.addInfoIntoOrder(order);
        ModelAndView andView = new ModelAndView();
        andView.setViewName("../pages/jsp/wuliu_admin.jsp");
        return andView;
    }
}
