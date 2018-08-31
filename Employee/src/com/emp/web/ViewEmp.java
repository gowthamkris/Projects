package com.emp.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.emp.DataView;

/**
 * Servlet implementation class ViewEmp
 */
@WebServlet("/ViewEmp")
public class ViewEmp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewEmp() {
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
		DataView view=new DataView();
		String Age=request.getParameter("Age");
		String s=view.Dataview(Age);
		String a[]=s.split(" ");
		response.setContentType("text/html");
		out.println("<center><h2 style='color:white;'>");
		out.println("Employee Details"+"</h2></center>");
		out.print("<div style='padding-top:100px;width:700px;height:400px;background-color: rgba(0,0,0,0.5);'>");
		out.print("<center><table style='margin-top:100px;border: 1px;border-color:white;border-radius:5px;width:400px;color:#006622;font-weight: bolder;font-family: fantasy;background-color:white;font-size:20px;'");
		for(int i=0;i<a.length;i++)
		{
		out.print("<tr>");
		out.print("<td style='padding-left:120px;border: 1px solid black;'>");
		out.print(a[i]);
		out.print("</td>");
		out.print("</tr>");
		}
		out.print("</table></center>");
		out.println("</div>");
		}

}
