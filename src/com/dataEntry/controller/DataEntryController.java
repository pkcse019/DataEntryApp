package com.dataEntry.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.eclipse.jdt.core.compiler.InvalidInputException;

import com.dataEntry.entity.DataEntry;
import com.dataEntry.service.DataEntryService;

/**
 * Servlet implementation class DataEntryController
 */
@WebServlet("/DataEntryController")
public class DataEntryController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DataEntryController() {
		super();

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

		if (request.getRequestURI().endsWith("/dataEntry")) {
			
			String sku =request.getParameter("sku");
			String productName =request.getParameter("productName");
			String productIdType =request.getParameter("productIdType");
			String productId = request.getParameter("productId");
			String shortDescription =request.getParameter("shortDescription");
			String keyFeatures =request.getParameter("keyFeatures");
			String unitsPerConsumerUnit = request.getParameter("unitsPerConsumerUnit");
			String brand =request.getParameter("brand");
			String manufacturer =request.getParameter("manufacturer");
			String manufacturerPartNumber =request.getParameter("manufacturerPartNumber");
			String modelNumber = request.getParameter("modelNumber");
			String msrp =request.getParameter("msrp");
			String flavor =request.getParameter("flavor");
			String isReadyToEat =request.getParameter("isReadyToEat");
			String count =request.getParameter("count");
			String size =request.getParameter("size");
			
			DataEntry entry = new DataEntry(sku, productName, productIdType, productId, shortDescription, keyFeatures, unitsPerConsumerUnit, brand, manufacturer, manufacturerPartNumber, modelNumber, msrp, flavor, isReadyToEat, count, size);
			DataEntryService entryService = new DataEntryService();			
					
			try {
				entryService.addData(entry);
				
				RequestDispatcher rd = request.getRequestDispatcher("successPage.jsp");
				rd.forward(request, response);
				
			} catch (InvalidInputException e) {
				
				e.printStackTrace();
			}
			
			
			
		}
	}

}
