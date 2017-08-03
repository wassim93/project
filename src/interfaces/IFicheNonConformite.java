package interfaces;

import java.util.List;

import entity.FicheNonConformite;
import entity.Service;

public interface IFicheNonConformite {
	
	public boolean AddFiche(FicheNonConformite f);
	public void DeleteFiche(int Num);
	public List<FicheNonConformite> ConsultFiche(Service s);
	public List<FicheNonConformite> getAllFiches();
	public FicheNonConformite getFichebyNum(int num);
	public boolean ModifFiche(FicheNonConformite f);
	

}
