package com.gem.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gem.dao.UserDao;
import com.gem.pojo.User;

/**
 * Servlet implementation class loginServlet
 */
//@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		request.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		String name =request.getParameter("username");// 获取登录界面的用户名参数
		String psw =request.getParameter("password");// 获取登录界面的密码参数
		UserDao userDao = new UserDao();
		User user = userDao.login(name, psw);
		if(user!=null){
	
			request.getSession().setAttribute("userId", user.getUid()); //保存用户id状态
			
			request.getSession().setAttribute("name", name);
			request.getRequestDispatcher("main.jsp").forward(request, response);
			//response.sendRedirect("main.jsp");
		}else {
			response.sendRedirect("index.jsp");
			//request.getSession().setAttribute("message", "用户名或密码错误");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
