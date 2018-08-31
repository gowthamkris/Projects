package com.emp.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.emp.DataInput;

/**
 * Servlet implementation class CreateEmp
 */
@WebServlet("/CreateEmp")
public class CreateEmp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateEmp() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		PrintWriter out=response.getWriter();
		DataInput data=new DataInput();
		String Name=request.getParameter("Name");
		String Age=request.getParameter("Age");
		String Dob=request.getParameter("Dob");
		String Address=request.getParameter("Address");
		String Salary=request.getParameter("Salary");
		String Description=request.getParameter("Desc");
		String Email=request.getParameter("Email");
		String Phone=request.getParameter("Phone");
		if(data.insertData(Name,Age,Dob,Address,Salary,Description,Email,Phone))
		{
		out.println("<script type="+"text/javascript"+">alert('Employee Created Successfully')</script>");
		}
	}

}
