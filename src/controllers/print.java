package controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.Font.FontFamily;
import com.itextpdf.text.Image;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.Rectangle;
import com.itextpdf.text.pdf.PdfName;
import com.itextpdf.text.pdf.PdfNumber;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfPage;
import com.itextpdf.text.pdf.PdfPageEventHelper;
import com.itextpdf.text.pdf.PdfWriter;

import entity.Aeroport;
import entity.FicheNonConformite;
import entity.PDF;
import entity.Processus;
import entity.Service;
import implementation.FicheNonConformiteImp;
import implementation.ServiceImp;
import interfaces.IFicheNonConformite;
import interfaces.IService;

/**
 * Servlet implementation class print
 */
@WebServlet("/print")
public class print extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public print() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		IService s = new ServiceImp();

		IFicheNonConformite fich = new FicheNonConformiteImp();
		FicheNonConformite f = fich.getFichebyNum(Integer.parseInt(request.getParameter("print")));

		request.setCharacterEncoding("UTF-8");

		request.setAttribute("update", f);
		// send service name checked
		request.setAttribute("serv", s.getServiceName(f.getService()));
		this.getServletContext().getRequestDispatcher("/print.jsp").forward(request, response);
		}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 response.setContentType("application/pdf");
         response.setHeader("Content-disposition","attachment; filename=fiche.pdf");

		 PDF pdf = new PDF();
	        try {
	            // step 1
	            Document document = new Document(PageSize.A4.rotate());
	            // step 2
	            PdfWriter.getInstance(document, response.getOutputStream());
	            // step 3
	            document.open();
	            // step 4
	            Font f = new Font(FontFamily.TIMES_ROMAN, 16, Font.BOLD, BaseColor.BLACK);
	            Paragraph p = new Paragraph("Fiche Non Conformité \n\n",f);
	            p.setAlignment(Element.ALIGN_CENTER);
	            String relativeWebPath = "/csindex/images/logo.png";
	            String absoluteDiskPath = getServletContext().getRealPath(relativeWebPath);
	            Image img = Image.getInstance(absoluteDiskPath);
	            img.scaleToFit(150,150);
	            img.setAbsolutePosition(20f, 500f);



	            document.add(p);
	            document.add(img);

	            document.add(pdf.createFirstTable(request));
	            document.addCreationDate();
	            document.addSubject("fiche reclamation");
	            document.addTitle("Rec Nº"+request.getParameter("num"));	            

	            // step 5
	            document.close();

	        } catch (DocumentException de) {
	            throw new IOException(de.getMessage());
	        }	
	        }
	
	
}
