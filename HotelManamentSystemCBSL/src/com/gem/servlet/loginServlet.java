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
		String name =request.getParameter("username");// ��ȡ��¼������û�������
		String psw =request.getParameter("password");// ��ȡ��¼������������
		UserDao userDao = new UserDao();
		User user = userDao.login(name, psw);
		if(user!=null){
	
			request.getSession().setAttribute("userId", user.getUid()); //�����û�id״̬
			
			request.getSession().setAttribute("name", name);
			request.getRequestDispatcher("main.jsp").forward(request, response);
			//response.sendRedirect("main.jsp");
		}else {
			response.sendRedirect("index.jsp");
			//request.getSession().setAttribute("message", "�û������������");
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
