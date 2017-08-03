package controllers;

import java.io.Console;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.crypto.AEADBadTagException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entity.Aeroport;
import entity.Personnel;
import entity.Processus;
import entity.Service;
import implementation.PersonnelImp;
import implementation.ServiceImp;
import interfaces.IPersonnel;
import interfaces.IService;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class log extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public log() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/login.jsp");
		response.sendRedirect("/gestion1/login.jsp");

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int cin = Integer.parseInt(request.getParameter("cin"));
		String password = request.getParameter("password");
		IPersonnel p = new PersonnelImp();
		// get all infos of personnel into object to store them in session
		Personnel pr = p.getPersonnelInfos(cin);
		pr.setCin(cin);
		   request.setCharacterEncoding("UTF-8");

		if(p.loginPersonnel(cin, password)) {
			
			// creating sessions for user data , services,aeroport and processus
			HttpSession session = request.getSession(true);
			HttpSession session1 = request.getSession();
			HttpSession session2 = request.getSession();
			HttpSession session3 = request.getSession();

			session.setAttribute("userSession", pr);
			//get all the service infos 
			IService is = new ServiceImp();
			List<Service> ls =  is.getNonActuelService(pr.getService().getNom());
			
			session.setAttribute("serviceSes", ls);
			
			
			Aeroport a = new Aeroport();
			session2.setAttribute("aeroSes", a.getListnom());
			
			Processus pro = new Processus();
			session3.setAttribute("proSes", pro.getListpro());
			
			
		
			

			RequestDispatcher rd = getServletContext().getRequestDispatcher("/profil.jsp");
			   request.setCharacterEncoding("UTF-8");

			response.sendRedirect("/gestion1/profil.jsp");

		}
		else {
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/login.jsp");
			String error = "<font color=red style=\"margin-left:8%;\">Identifiant ou mot de passe incorrects.</font><br><br>";
			request.setAttribute("error", error);

			rd.include(request, response);
		}

		}
		
	}


