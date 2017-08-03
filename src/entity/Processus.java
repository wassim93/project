package entity;

import java.util.ArrayList;
import java.util.List;

public class Processus {
	
	private List<String> listpro;
	
	

	public Processus() {
		super();
		listpro = new ArrayList<>();
		listpro.add("pro1");
		listpro.add("pro2");
		listpro.add("pro3");
		listpro.add("pro4");
		listpro.add("pro5");

	}

	public List<String> getListpro() {
		return listpro;
	}

	public void setListpro(List<String> listpro) {
		this.listpro = listpro;
	}

	@Override
	public String toString() {
		return "Processus [listpro=" + listpro + "]";
	}
	
	

	

}
