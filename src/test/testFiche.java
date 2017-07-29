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
		//fich.AddFiche(f);
		//fich.DeleteFiche(16);	
		Service s = new Service("Acceptation");
		System.out.println(s);

		List<FicheNonConformite> ls = fich.ConsultFiche(s);
		
		for (FicheNonConformite f:ls)
		{
			System.out.println(f);
		}
		}

}
