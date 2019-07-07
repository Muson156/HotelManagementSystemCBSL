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
 * Servlet implementation class addHotelServlet
 */
//@WebServlet("/addHotelServlet")
public class addHotelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addHotelServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		//获得输入框里输入的数据
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String name = request.getParameter("hName");
		String address = request.getParameter("hAddress");
		String principal =request.getParameter("hprincipal");
		String phone = request.getParameter("hPhoneNumber");
		String img = request.getParameter("hImg");
		
		Hotels h = new Hotels(name,address,principal,phone,img);
		//插入酒店信息
		HotelsDao hotelsDao = new HotelsDao();
		boolean isInsert = hotelsDao.addHotel(h);
		if(isInsert) {
			response.sendRedirect("hotels.jsp");
		}else {
			response.sendRedirect("addHotels.jsp");
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
