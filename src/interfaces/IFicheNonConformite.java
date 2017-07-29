package interfaces;

import java.util.List;

import entity.FicheNonConformite;
import entity.Service;

public interface IFicheNonConformite {
	
	public void AddFiche(FicheNonConformite f);
	public void DeleteFiche(int Num);
	public List<FicheNonConformite> ConsultFiche(Service s);

}
