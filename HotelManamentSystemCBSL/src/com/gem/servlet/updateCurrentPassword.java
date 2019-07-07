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
 * Servlet implementation class updateCurrentPassword
 */
//@WebServlet("/updateCurrentPassword")
public class updateCurrentPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateCurrentPassword() {
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
		
		String password = request.getParameter("password");
	
		
		int userId = Integer.parseInt(  request.getSession().getAttribute("userId").toString());
		
		System.out.println("修改的当前用户ID是"+userId);
		System.out.println("修改的当前密码是"+password);
		
		UserDao Dao = new UserDao();
		boolean isTrue =Dao.update(userId, password);
		
		request.getRequestDispatcher("hotels.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
