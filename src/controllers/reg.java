package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.Personnel;
import entity.Service;
import implementation.PersonnelImp;
import implementation.ServiceImp;
import interfaces.IPersonnel;
import interfaces.IService;

/**
 * Servlet implementation class register
 */
@WebServlet("/register")
public class reg extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public reg() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		IService s = new ServiceImp();
		List<Service> ls = s.getServiceName();
		request.setAttribute("list", ls);
		   request.setCharacterEncoding("UTF-8");

		this.getServletContext().getRequestDispatcher("/register.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// creer objet personnel
		Personnel p = new Personnel();

		// creer objet service
		Service s = new Service((request.getParameter("services")));
		//response.getWriter().println(s);

		p.setNom(request.getParameter("register-nom"));
		p.setPrenom(request.getParameter("register-prenom"));
		p.setCin(Integer.parseInt(request.getParameter("register-cin")));
		p.setPoste(request.getParameter("register-poste"));
		p.setService(s);
		p.setPassword(request.getParameter("register-password"));
		p.setEmail(request.getParameter("register-email"));

		// get id of chosen service
		IService is = new ServiceImp();
		int idservice = is.getServiceId(s.getNom());
		s.setId(idservice);

		IPersonnel ip = new PersonnelImp();

		RequestDispatcher rd = getServletContext().getRequestDispatcher("/register.jsp");
		
		boolean existe = ip.RegisterPersonnel(p, s);
		if (existe) {
			String success = "<div class=\"notify successbox\" style=\"display:-webkit-box;\">\r\n"
					+ "        <h1 style=text-align:center;>Success!</h1>\r<span class=\"alerticon\">"
					+ "<img src=\"assets/img/check.png\" alt=\"checkmark\" style=\"margin-left:42%;\" /></span>\r\n"
					+ "      </div>";
			request.setAttribute("success", success);
			request.setAttribute("existe", existe);
			rd.include(request, response);

		} else {
			// TODO Auto-generated catch block
			String error = "<div class=\"notify errorbox\" style=\"display:-webkit-box;\">\r\n"
					+ "        <h1>Attention!</h1>\r <span class=\"alerticon\"><img src=\"assets/img/error.png\" alt=\"error\" style=\"margin-left:42%;\"/></span>\r\n"
					+ "</div>" + "<span style=\"color:red;\">Vérifier votre Cin. Compte Existant</span>";
			request.setAttribute("error", error);
			rd.include(request, response);
		}

		IService s1 = new ServiceImp();
		List<Service> ls = s1.getServiceName();
		request.setAttribute("list", ls);
		request.setCharacterEncoding("UTF-8");

		this.getServletContext().getRequestDispatcher("/register.jsp").forward(request, response);

	}
}
