package entity;

public class Personnel {
	private int Cin;
	private String Nom;
	private String Prenom;
	private Service Service;
	private String Poste;
	private String Email;
	private String Password;

	public Personnel(int cin,String password, String nom, String prenom, Service service, String poste, String email) {
		super();
		Cin = cin;
		Password=password;
		Nom = nom;
		Prenom = prenom;
		Service = service;
		Poste = poste;
		Email = email;
	}
	
	public Personnel() {
		super();
	}

	
	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

	public String getNom() {
		return Nom;
	}
	public void setNom(String nom) {
		Nom = nom;
	}
	public String getPrenom() {
		return Prenom;
	}
	public void setPrenom(String prenom) {
		Prenom = prenom;
	}
	
	public int getCin() {
		return Cin;
	}

	public void setCin(int cin) {
		Cin = cin;
	}

	public Service getService() {
		return Service;
	}

	public void setService(Service service) {
		Service = service;
	}

	public String getPoste() {
		return Poste;
	}

	public void setPoste(String poste) {
		Poste = poste;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	@Override
	public String toString() {
		return "Personnel [Cin=" + Cin + ", Nom=" + Nom + ", Prenom=" + Prenom + ", Service=" + Service + ", Poste="
				+ Poste + ", Email=" + Email + "]";
	}
	
}
