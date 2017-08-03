package entity;

import javax.servlet.http.HttpServletRequest;

import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;

public class PDF {
	
	
	
	 public PdfPTable createFirstTable(HttpServletRequest request) {
	    	// a table with three columns
	        PdfPTable table = new PdfPTable(2);
	        table.setWidthPercentage(100f);
	        
	        // the cell object
	        PdfPCell cell,cell1,cell2,cell3,cell4,cell5,cell6,cell7,cell8,cell9,cell10,cell11,cell12,cell13;
	        
	        Phrase ph = new Phrase("Nº de la fiche: "+request.getParameter("num"));
	        
	        cell = new PdfPCell(ph);
	        cell.setColspan(1);
	        cell.setBorderColor(BaseColor.GRAY);
	        cell.setFixedHeight(30f);
	        


	        
	        //------------//
	        String s = request.getParameter("date");
	        String s1 = "";
	        int i =0;
	        while(i<10) {
	        	s1+=s.charAt(i);
	        	i++;
	        }
	        cell1 = new PdfPCell(new Phrase("Date: "+s1));
	        cell1.setBorderColor(BaseColor.GRAY);
	        cell1.setFixedHeight(30f);
	        
	        //-------------//
	        cell2 = new PdfPCell(new Phrase("Aéroport/Direction: "+request.getParameter("aero")));
	        cell2.setFixedHeight(30f);
	        cell2.setBorderColor(BaseColor.GRAY);

	        
	        
	        //------------//
	        cell3 = new PdfPCell(new Phrase("Processus: "+request.getParameter("processus")));
	        cell3.setBorderColor(BaseColor.GRAY);
	        cell3.setFixedHeight(30f);
	        
	        
	        //------------//
	        cell4 = new PdfPCell(new Phrase("Service: "+request.getParameter("service")));
	        cell4.setBorderColor(BaseColor.GRAY);
	        cell4.setFixedHeight(30f);
	        
	        //-------------//
	        
	        cell5 = new PdfPCell(new Phrase("Responsable: "+request.getParameter("resp")));
	        cell5.setBorderColor(BaseColor.GRAY);
	        cell5.setFixedHeight(30f);
	        	        
	        //------------//
	        cell6 = new PdfPCell(new Phrase("Nature:\n\n"+request.getParameter("nature")+"\n\n"));
	        cell6.setBorderColor(BaseColor.GRAY);
	        
	        //-------------//
	        cell7 = new PdfPCell(new Phrase("Actions:\n\n"+request.getParameter("action")+"\n\n"));
	        cell7.setBorderColor(BaseColor.GRAY);
	        
	        //-------------//
	        
	        cell8 = new PdfPCell(new Phrase("Causes:\n\n"+request.getParameter("cause")+"\n\n"));
	        cell8.setBorderColor(BaseColor.GRAY);
	        
	        //-------------//
	        
	        cell9 = new PdfPCell(new Phrase("Conséquences/Risques:\n\n"+request.getParameter("consequence")+"\n\n"));
	        cell9.setBorderColor(BaseColor.GRAY);
	        
	        //-------------//
	        
	        cell10 = new PdfPCell(new Phrase("Solution:\n\n"+request.getParameter("solution")+"\n\n"));
	        cell10.setBorderColor(BaseColor.GRAY);
	        
	        //-------------//
	        
	        cell11 = new PdfPCell(new Phrase("Echéances:\n\n"+request.getParameter("echeance")+"\n\n"));
	        cell11.setBorderColor(BaseColor.GRAY);
	        
	        //-------------//
	        
	        cell12 = new PdfPCell(new Phrase("Efficacités:\n\n"+request.getParameter("efficacite")+"\n\n"));
	        cell12.setBorderColor(BaseColor.GRAY);
	        cell12.setColspan(2);
	        
	        //-------------//
	   
	        table.addCell(cell);
	        table.addCell(cell1);
	        table.addCell(cell2);
	        table.addCell(cell3);
	        table.addCell(cell4);
	        table.addCell(cell5);
	        table.addCell(cell6);
	        table.addCell(cell7);
	        table.addCell(cell8);
	        table.addCell(cell9);
	        table.addCell(cell10);
	        table.addCell(cell11);
	        table.addCell(cell12);
	        
	        return table;
	    }


}
