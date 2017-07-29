package controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import implementation.PersonnelImp;
import interfaces.IPersonnel;

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
		// TODO Auto-generated method stub
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
		if(p.loginPersonnel(cin, password)) {
			
			//Cookie loginCookie = new Cookie("user",password);
			//setting cookie to expiry in 30 mins
			//loginCookie.setMaxAge(30*60);
			//response.addCookie(loginCookie);
			this.getServletContext().getRequestDispatcher("profil.jsp").forward(request, response);
		}
		else {
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/login.jsp");
			PrintWriter out= response.getWriter();
			String error = "<font color=red>Identifiant ou mot de passe incorrects.</font>";
			request.setAttribute("error", error);
			rd.include(request, response);
		}

		}
		
	}


