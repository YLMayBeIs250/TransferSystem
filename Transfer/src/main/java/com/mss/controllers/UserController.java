package com.mss.controllers;

import com.mss.models.User;
import com.mss.service.UserServiceInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("UserController")
public class UserController {
	@Autowired
	private UserServiceInterface service;

	@RequestMapping("addUser.do")
	public String addUser(User user){
		service.addUser(user);
		return "../pages/jsp/email.jsp";
	}

	@RequestMapping("addAddress.do")
	public String addAddress(User user){
		service.addAddress(user);
		return "../pages/jsp/personal-info.jsp";
	}

	@RequestMapping("deleteAddress.do")
	public String deleteAddress(User user){
		service.deleteAddress(user);
		return "../pages/jsp/personal-info.jsp";
	}

	@RequestMapping("selectUser.do")
	public ModelAndView selectAllUser(HttpServletRequest request, HttpSession session){
		//接值
		String userEmail = request.getParameter("useremail");
		String password = request.getParameter("password");
		//查询数据库
		List<User> list =service.selectAllUser();
		ModelAndView andView = new ModelAndView();
		boolean flag = false;
		//比较
		for(int i=0;i<list.size();++i){
			User temp = list.get(i);
			if(temp.getUseremail().equals(userEmail)&&temp.getPassword().equals(password)){
				//temp中的信息全，故将temp存入session中用于显示
				session.setAttribute("user",temp);
				//跳回主页面
				andView.setViewName("../pages/jsp/User_index_special.jsp");
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

	@RequestMapping("logout.do")
	public String logout(HttpServletRequest request){
		HttpSession session = request.getSession();
		session.removeAttribute("user");
		return "../pages/jsp/index.jsp";
	}

	@RequestMapping("updateUserInfo.do")
	public String updateUserInfo(HttpServletRequest request,User user){
	    int i=Integer.parseInt(request.getParameter("id"));
		service.updateUserInfo(user);
        User user1=service.selectUserById(i);
        HttpSession session = request.getSession();
        session.setAttribute("user",user1);
		return "../pages/jsp/user_index.jsp";
	}

	@RequestMapping("selectUserById.do")
	@ResponseBody
	public User selectOrderByOrderId(HttpServletResponse response, HttpServletRequest request, HttpSession session, int id){
		User u =service.selectUserById(id);
		session.setAttribute("user",u);
		return u;
	}

	@RequestMapping("selectAllUser.do")
	@ResponseBody
	public List<User> selectAllUsers(HttpServletResponse response, HttpServletRequest request){
		List<User> list =service.selectAllUser();
		return list;
	}
}
