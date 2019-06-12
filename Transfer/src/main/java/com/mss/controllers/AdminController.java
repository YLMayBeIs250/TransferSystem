package com.mss.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mss.models.Admin;
import com.mss.service.AdminServiceInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;


@Controller
@RequestMapping("AdminController")
public class AdminController {
	@Autowired
	private AdminServiceInterface service;

	@RequestMapping("selectAdmin.do")
	public ModelAndView selectAllAdmin(HttpServletRequest request, HttpSession session){
		//接值
		String userName = request.getParameter("username");
		String password = request.getParameter("password");
		//查询数据库
		List<Admin> list =service.selectAllAdmin();
		ModelAndView andView = new ModelAndView();
		boolean flag = false;
		//比较
		for(int i=0;i<list.size();++i){
			Admin temp = list.get(i);
			if(temp.getCkname().equals(userName)&&temp.getCkpassword().equals(password)){
				//temp中的信息全，故将temp存入session中用于显示
				session.setAttribute("admin",temp);
				//跳回主页面
				andView.setViewName("../pages/jsp/Wuliu_index_special.jsp");
				flag=true;
				break;
			}
		}
		//没找到对应的用户
		if(!flag){
			andView.setViewName("../test/error.jsp");
		}
		return andView;
	}

    @RequestMapping("selectAllAdmin.do")
    @ResponseBody
    public List<Admin> selectAllCkAdmin(HttpServletResponse response,HttpServletRequest request){
        List<Admin> list =service.selectAllCkAdmin();
        return list;
	}


	@RequestMapping("selectAdminById.do")
	public ModelAndView selectAdminById(HttpServletRequest request, HttpSession session,int i){
		ModelAndView andView = new ModelAndView();
		service.selectAdminById(i);
		return andView;
	}

	@RequestMapping("logout.do")
	public String logout(HttpServletRequest request){
		HttpSession session = request.getSession();
		session.removeAttribute("admin");
		return "../pages/jsp/index.jsp";
	}

}

