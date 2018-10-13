package com.dataEntry.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (request.getRequestURI().endsWith("/Login")) {
			String userName = request.getParameter("userName");
			String userType = request.getParameter("gridRadios");

			if (null != userName && userType.equals("adminRadio")) {
				request.getSession(true).setAttribute("UserName", userName);
				RequestDispatcher rd = request.getRequestDispatcher("admin.jsp");
				rd.forward(request, response);
			} else if (null != userName && userType.equals("userRadio")) {
				request.getSession(true).setAttribute("UserName", userName);
				RequestDispatcher rd = request.getRequestDispatcher("user.jsp");
				rd.forward(request, response);
			} else {
				request.getSession().invalidate();
				RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
				rd.forward(request, response);
			}

		}
	}
}
