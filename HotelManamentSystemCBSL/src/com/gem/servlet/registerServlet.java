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
 * Servlet implementation class registerServlet
 */
//@WebServlet("/registerServlet")
public class registerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public registerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		request.setCharacterEncoding("utf-8");// 确定不会出现乱码
		response.setCharacterEncoding("utf-8");
		
		String name = request.getParameter("Rname");
		String username = request.getParameter("Rusername");
		String password = request.getParameter("Rpassword");
		String email = request.getParameter("Remail");
		String phone = request.getParameter("Rphone");
		
		
		User u = new User(name,username,password,email,phone);
		UserDao userDao = new UserDao();
		boolean isTrue = userDao.register(u);
		if(isTrue) {
			request.getRequestDispatcher("index.jsp").forward(request, response);
			//response.sendRedirect("index.jsp");
			//request.getSession().setAttribute("success", "注册成功");
		}else {
			response.sendRedirect("index.jsp");
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
