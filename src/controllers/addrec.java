package controllers;

import java.io.IOException;
import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.coyote.RequestGroupInfo;

import entity.FicheNonConformite;
import entity.Service;
import implementation.FicheNonConformiteImp;
import implementation.ServiceImp;
import interfaces.IFicheNonConformite;
import interfaces.IService;

/**
 * Servlet implementation class addrec
 */
@WebServlet("/addrec")
public class addrec extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addrec() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
			//HttpSession session = (HttpSession) request.getAttribute("userSession");
			//HttpSession session1 = (HttpSession) request.getAttribute("serviceSes");
			//RequestDispatcher rd = getServletContext().getRequestDispatcher("/addrec.jsp");
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/addRec.jsp");

		response.sendRedirect("/addRec.jsp");

			
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		FicheNonConformite f = new FicheNonConformite();
		f.setNum(Integer.parseInt(request.getParameter("num")));
		f.setDate(request.getParameter("date"));
		f.setAeroport(request.getParameter("aero"));
		f.setProcessus(request.getParameter("processus"));
		IService s = new ServiceImp();
		f.setService(s.getServiceId(request.getParameter("service")));
		f.setResponsable(request.getParameter("resp"));
		f.setNature(request.getParameter("nature"));
		f.setConsequence(request.getParameter("consequence"));
		f.setCause(request.getParameter("cause"));
		f.setSolution(request.getParameter("solution"));
		f.setAction(request.getParameter("action"));
		f.setEcheance(request.getParameter("echeance"));
		f.setMesEfficacite(request.getParameter("efficacite"));
		
		HttpSession session = request.getSession();
		session.setAttribute("ficheSes", f);
		
		

		
		IFicheNonConformite fiche= new FicheNonConformiteImp();
		boolean test = fiche.AddFiche(f);
		if (test)
		{

			String success = "<div class=\"alert-box success\">Réclamation ajouté avec success</div>\r\n";

			
			request.setAttribute("success", success);
			request.setAttribute("test", test);
			response.sendRedirect("/gestion1/list");
			request.setCharacterEncoding("UTF-8");



		}
		else {
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/addRec.jsp");

			String error = "<div class=\"alert-box failure\">Fiche existe deja</div>\r\n";
			request.setAttribute("error", error);
			request.setAttribute("test", test);
			request.setCharacterEncoding("UTF-8");
			rd.forward(request, response);


			
		}
		


		
		
	}

}
