package com.gem.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gem.dao.HotelsDao;
import com.gem.pojo.Hotels;

/**
 * Servlet implementation class updateHotelServlet
 */
//@WebServlet("/updateHotelServlet")
public class updateHotelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateHotelServlet() {
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
		
		
		int hid = Integer.parseInt(request.getParameter("hid")) ;
		
		System.out.print(hid);
		
		String hName =request.getParameter("hname");
		System.out.println(hName);
		String hAddress = request.getParameter("hAddress");
		System.out.println(hAddress);
		String Principal = request.getParameter("hprincipal");
		String hPhoneNumber = request.getParameter("hPhoneNumber");
		System.out.println(hPhoneNumber);
		String Img  = request.getParameter("hImg");
		
		
		
		Hotels hotel = new Hotels(hid,hName,hAddress,Principal,hPhoneNumber,Img);
		HotelsDao Dao = new HotelsDao();
		boolean isTrue =Dao.update(hid, hotel);
		if(isTrue) {
			response.sendRedirect("hotelsInfo.jsp");
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
