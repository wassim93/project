package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sun.xml.internal.bind.v2.schemagen.xmlschema.List;

import entity.Personnel;
import entity.Service;
import implementation.PersonnelImp;
import implementation.ServiceImp;
import interfaces.IPersonnel;
import interfaces.IService;

/**
 * Servlet implementation class pro
 */
@WebServlet("/profil")
public class pro extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public pro() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		RequestDispatcher rd = getServletContext().getRequestDispatcher("/profil.jsp");

		response.sendRedirect("/gestion1/profil.jsp");

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Personnel p = new Personnel();

		// creer objet service
		Service s = new Service((request.getParameter("service")));
		// get id of chosen service
				IService is = new ServiceImp();
				int idservice = is.getServiceId(s.getNom());
				s.setId(idservice);
        HttpSession session = request.getSession(false);


        //response.getWriter().println(s);
		

		p.setNom(request.getParameter("nom"));
		p.setPrenom(request.getParameter("prenom"));

		p.setCin(((Personnel) session.getAttribute("userSession")).getCin());
		p.setPoste(request.getParameter("poste"));
		p.setService(s);
		if(request.getParameter("password") == p.getPassword()) {
			if(request.getParameter("newPassword") == request.getParameter("newPasswordConf"))	{
				p.setPassword(request.getParameter("newPassword"));
				}
			}
		else {
			p.setPassword(request.getParameter("password"));

		}
		p.setEmail(request.getParameter("email"));
		p.setAdresse(request.getParameter("adresse"));
		if(request.getParameter("age") == "" ){
			p.setAge(0);

		}
		else {
			p.setAge(Integer.parseInt(request.getParameter("age")));

		}
		p.setSexe(request.getParameter("radio"));
		p.setBio(request.getParameter("bio"));
		
		session.setAttribute("userSession", p);
		
		IPersonnel ip = new PersonnelImp();
		boolean test = ip.updateInfos(p);

		
		if(test) {
			
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/profil.jsp");
			String success = "<div class=\"alert-box success\">Modification Success</div>\r\n";
			request.setAttribute("success", success);
			rd.forward(request, response);


		}
		
       







	}

}
