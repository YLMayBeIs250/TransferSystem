package com.mss.controllers;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.mss.models.Notice;
import com.mss.service.NoticeServiceInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("NoticeController")
public class NoticeController {
    @Autowired
    private NoticeServiceInterface service;

    @RequestMapping("addNotice.do")
    @ResponseBody
    public void addNotice(HttpServletRequest request,HttpServletResponse response){
        String noticetitle  = request.getParameter("noticetitle");
        String noticetime  = request.getParameter("noticetime");
        String noticebody  = request.getParameter("noticebody");
        Notice notice=new Notice();
        notice.setNoticetitle(noticetitle);
        notice.setNoticetime(noticetime);
        notice.setNoticebody(noticebody);
        service.addNewNotice(notice);
    }

    @RequestMapping("selectAllNotice.do")
    @ResponseBody
    public List<Notice> selectAllNotice(HttpServletResponse response, HttpServletRequest request){
        List<Notice> list=service.selectAllNotice();
        return list;
    }

    @RequestMapping("selectNoticeById.do")
    @ResponseBody
    public Notice selectNoticeById(HttpServletResponse response, HttpServletRequest request,HttpSession session,int noticeid){
        Notice notice=service.selectNoticeById(noticeid);
        session.setAttribute("notice",notice);
        return notice;
    }

    @RequestMapping("deleteNoticeById.do")
    @ResponseBody
    public void deleteNoticeById(HttpServletResponse response, HttpServletRequest request,int noticeid){
        service.deleteNoticeById(noticeid);
    }

    @RequestMapping("updateNoticeById.do")
    @ResponseBody
    public void updateNoticeById(HttpServletResponse response, HttpServletRequest request){
        int noticeid  = Integer.parseInt(request.getParameter("noticeid"));
        String noticetitle  = request.getParameter("noticetitle");
        String noticetime  = request.getParameter("noticetime");
        String noticebody  = request.getParameter("noticebody");
        Notice n=new Notice();
        n.setNoticeid(noticeid);
        n.setNoticetitle(noticetitle);
        n.setNoticetime(noticetime);
        n.setNoticebody(noticebody);
        service.updateNoticeById(n);
    }
}
