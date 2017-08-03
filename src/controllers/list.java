package controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.FicheNonConformite;
import implementation.FicheNonConformiteImp;
import interfaces.IFicheNonConformite;

/**
 * Servlet implementation class list
 */
@WebServlet("/list")
public class list extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public list() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
	
		
		IFicheNonConformite f=new FicheNonConformiteImp();
		List<FicheNonConformite> ls = f.getAllFiches();
		request.setAttribute("liste", ls);
		   request.setCharacterEncoding("UTF-8");

		this.getServletContext().getRequestDispatcher("/list.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		IFicheNonConformite f=new FicheNonConformiteImp();
		f.DeleteFiche(Integer.parseInt(request.getParameter("delete")));
		   request.setCharacterEncoding("UTF-8");

		doGet(request, response);

		
	}

}
