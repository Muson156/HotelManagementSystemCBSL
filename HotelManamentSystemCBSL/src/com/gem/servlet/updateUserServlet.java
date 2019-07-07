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
 * Servlet implementation class updateUserServlet
 */
//@WebServlet("/updateUserServlet")
public class updateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		request.setCharacterEncoding("utf-8");// 确定不会出现乱码
		response.setCharacterEncoding("utf-8");
		
		
        int userId = Integer.parseInt(request.getParameter("userId")) ;
		
        String uName =request.getParameter("uName");
		String userName =request.getParameter("userName");

		String password = request.getParameter("password");

		String email = request.getParameter("email");
		String uPhoneNumber = request.getParameter("userPhoneNumber");
		
		User user = new User(userId,uName,userName,password,email,uPhoneNumber);
		UserDao Dao = new UserDao();
		boolean isTrue =Dao.update(userId, user);
		if(isTrue) {
			response.sendRedirect("user.jsp");
			//request.getSession().setAttribute("success", "注册成功！跳转至登录页面");
		}else {
			//response.sendRedirect("register.jsp");
			//request.getSession().setAttribute("failse", "注册失败！用户名已存在");
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
