package entity;

import java.sql.*;
public class FicheNonConformite {
	 private int Num;
	 private String Date;
	 private String Aeroport;
	 private String Processus;
	 private int Service;
	 private String Nature;
	 private String Cause;
	 private String Consequence;
	 private String Action;
	 private String Solution;
	 private String Responsable;
	 private String Echeance;
	 private String MesEfficacite;
	
	
	public FicheNonConformite(int num, String date, String aeroport, String processus, int service,
			String nature, String cause, String consequence, String action, String solution, String responsable,
			String echeance, String mesEfficacite) {
		Num = num;
		Date = date;
		Aeroport = aeroport;
		Processus = processus;
		Service = service;
		Nature = nature;
		Cause = cause;
		Consequence = consequence;
		Action = action;
		Solution = solution;
		Responsable = responsable;
		Echeance = echeance;
		MesEfficacite = mesEfficacite;
	}
	public FicheNonConformite() {
	}
	public int getNum() {
		return Num;
	}
	public void setNum(int num) {
		Num = num;
	}

	
	public String getDate() {
		return Date;
	}
	public void setDate(String date) {
		Date = date;
	}
	public String getAeroport() {
		return Aeroport;
	}
	public void setAeroport(String aeroport) {
		Aeroport = aeroport;
	}

	public String getProcessus() {
		return Processus;
	}
	public void setProcessus(String processus) {
		Processus = processus;
	}
	public int getService() {
		return Service;
	}
	public void setService(int service) {
		Service = service;
	}
	public String getNature() {
		return Nature;
	}
	public void setNature(String nature) {
		Nature = nature;
	}
	public String getCause() {
		return Cause;
	}
	public void setCause(String cause) {
		Cause = cause;
	}
	public String getConsequence() {
		return Consequence;
	}
	public void setConsequence(String consequence) {
		Consequence = consequence;
	}
	public String getAction() {
		return Action;
	}
	public void setAction(String action) {
		Action = action;
	}
	public String getSolution() {
		return Solution;
	}
	public void setSolution(String solution) {
		Solution = solution;
	}
	public String getResponsable() {
		return Responsable;
	}
	public void setResponsable(String responsable) {
		Responsable = responsable;
	}
	public String getEcheance() {
		return Echeance;
	}
	public void setEcheance(String echeance) {
		Echeance = echeance;
	}
	public String getMesEfficacite() {
		return MesEfficacite;
	}
	public void setMesEfficacite(String mesEfficacite) {
		MesEfficacite = mesEfficacite;
	}
	@Override
	public String toString() {
		return "FicheNonConformite [Num=" + Num + ", Date=" + Date + ", Aeroport=" + Aeroport + ", Processus="
				+ Processus + ", Service=" + Service + ", Nature=" + Nature + ", Cause=" + Cause + ", Consequence="
				+ Consequence + ", Action=" + Action + ", Solution=" + Solution + ", Responsable=" + Responsable
				+ ", Echeance=" + Echeance + ", MesEfficacite=" + MesEfficacite + "]";
	}
	
	
}
