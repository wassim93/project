package controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entity.Aeroport;
import entity.FicheNonConformite;
import entity.Personnel;
import entity.Processus;
import entity.Service;
import implementation.FicheNonConformiteImp;
import implementation.PersonnelImp;
import implementation.ServiceImp;
import interfaces.IFicheNonConformite;
import interfaces.IPersonnel;
import interfaces.IService;

/**
 * Servlet implementation class update
 */
@WebServlet("/update")
public class update extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public update() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		IService s = new ServiceImp();

		HttpSession session = request.getSession();

		IFicheNonConformite fich = new FicheNonConformiteImp();
		FicheNonConformite f = fich.getFichebyNum(Integer.parseInt(request.getParameter("update")));

		// create aeroport object to get list of aeroport
		Aeroport a = new Aeroport();
		List<String> lsa = a.getListnom();
		// removing selected aeroport from list
		lsa.remove(f.getAeroport());
		// sending list of aeroport to jsp
		request.setAttribute("listaero", lsa);
		//--------------------------------------------//
		// create processus object to get list of processu
		Processus p = new Processus();
		List<String> lsp = p.getListpro();
		// removing selected processus from list
		lsp.remove(f.getProcessus());
		// sending list of processus to jsp
		request.setAttribute("listpro", lsp);
		//-------------------------------------------//
		// list for consequence attribute
		List<String> listCons = new ArrayList<>();
		// populate list with value different to selected consequence
		if (f.getConsequence().equals("Qualité de service")) {
			listCons.add("Sécurité");
			listCons.add("Sûreté");
		} else if (f.getConsequence().equals("Sécurité")) {
			listCons.add("Qualité de service");
			listCons.add("Sûreté");
		} else {
			listCons.add("Qualité de service");
			listCons.add("Sécurité");
		}

		List<Service> ls = s.getNonActuelService(s.getServiceName(f.getService()));
		session.setAttribute("ficheSes", ls);
		request.setCharacterEncoding("UTF-8");

		request.setAttribute("update", f);
		request.setAttribute("listCon", listCons);
		// send service name checked
		request.setAttribute("serv", s.getServiceName(f.getService()));
		this.getServletContext().getRequestDispatcher("/update.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		FicheNonConformite f = new FicheNonConformite();

		//

		f.setAction(request.getParameter("action"));
		f.setAeroport(request.getParameter("aero"));
		f.setCause(request.getParameter("cause"));
		f.setConsequence(request.getParameter("consequence"));
		f.setDate(request.getParameter("date"));
		f.setEcheance(request.getParameter("echeance"));
		f.setMesEfficacite(request.getParameter("efficacite"));
		f.setNature(request.getParameter("nature"));
		f.setNum(Integer.parseInt(request.getParameter("num")));
		f.setProcessus(request.getParameter("processus"));
		f.setResponsable(request.getParameter("resp"));
		IService is = new ServiceImp();
		f.setService(is.getServiceId(request.getParameter("service")));
		f.setSolution(request.getParameter("solution"));

		IFicheNonConformite ifc = new FicheNonConformiteImp();

		if (ifc.ModifFiche(f)) {

			response.sendRedirect("/gestion1/list");

		}
	}

}
