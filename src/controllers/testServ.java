package controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.Service;
import implementation.ServiceImp;
import interfaces.IService;

/**
 * Servlet implementation class testServ
 */
@WebServlet("/testServ")
public class testServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public testServ() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		IService s = new ServiceImp();
		List<Service> ls = s.getServiceName();
		request.setAttribute("list", ls);
		this.getServletContext().getRequestDispatcher("/WEB-INF/test.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	    
		String fi = request.getParameter("first");
		String la = request.getParameter("last");
		IService s = new ServiceImp();
		List<Service> ls = s.getServiceName();
		request.setAttribute("list", ls);

		request.setAttribute("f", fi);
		request.setAttribute("l", la);

		this.getServletContext().getRequestDispatcher("/WEB-INF/test.jsp").forward(request, response);


	}

}
