package test;

import java.sql.Date;
import java.util.List;

import entity.FicheNonConformite;
import entity.Service;
import implementation.FicheNonConformiteImp;
import interfaces.IFicheNonConformite;

public class testFiche {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//FicheNonConformite f = new FicheNonConformite(17,"05/05/2016", "aeroport", "processus",59, "nature", "cause", "consequence", "action", "solution", "responsable", "echeance", "mesEfficacite");
		IFicheNonConformite fich = new FicheNonConformiteImp();
		//System.out.println(f);
		
		//fich.DeleteFiche(16);	
		/*Service s = new Service("Acceptation");
		System.out.println(s);

		List<FicheNonConformite> ls = fich.getAllFiches();
		
		for (FicheNonConformite f:ls)
		{
			System.out.println(f);
		}
	*/
	 // FicheNonConformite f = new FicheNonConformite(17,"05/05/2016", "aeroport", "processus",1, "nature", "cause", "consequence", "action", "solution", "responsable", "echeance", "mesEfficacite");
	  /*fich.AddFiche(f);
	  f.setDate("20/07/2011");
	  fich.ModifFiche(f);*/
		FicheNonConformite f = fich.getFichebyNum(2);
		System.out.print(f);

}
}
