package entity;

import java.util.ArrayList;
import java.util.List;

public class Aeroport {
	private List<String> listnom;

	public List<String> getListnom() {
		return listnom;
	}

	public void setListnom(List<String> listnom) {
		this.listnom = listnom;
	}

	public Aeroport() {
		super();
		listnom = new ArrayList<>();
		listnom.add("Tunis-Carthage");
		listnom.add("Djerba-Zarzis");
		listnom.add("Monastir");
		listnom.add("Gabes");
		listnom.add("Tozeur");
		listnom.add("Sfax");
		listnom.add("Tabarka");
		listnom.add("Gafsa");
	}

	@Override
	public String toString() {
		return "Aeroport [listnom=" + listnom + "]";
	}
	
	
	
	

}
