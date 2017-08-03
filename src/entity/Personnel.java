package entity;

public class Personnel {
	private int Cin;
	private String Password;
	private String Nom;
	private String Prenom;
	private Service Service;
	private String Poste;
	private String Email;
	private String Adresse;
	private int age;
	private String sexe;
	private String bio;

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
	

	public Personnel(int cin, String password) {
		super();
		Cin = cin;
		Password = password;
	}

	


	public Personnel(int cin, String password, String nom, String prenom, entity.Service service, String poste,
			String email, String adresse, int age, String sexe, String bio) {
		super();
		Cin = cin;
		Password = password;
		Nom = nom;
		Prenom = prenom;
		Service = service;
		Poste = poste;
		Email = email;
		Adresse = adresse;
		this.age = age;
		this.sexe = sexe;
		this.bio = bio;
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
	
	

	public String getAdresse() {
		return Adresse;
	}

	public void setAdresse(String adresse) {
		Adresse = adresse;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getSexe() {
		return sexe;
	}

	public void setSexe(String sexe) {
		this.sexe = sexe;
	}

	public String getBio() {
		return bio;
	}

	public void setBio(String bio) {
		this.bio = bio;
	}

	@Override
	public String toString() {
		return "Personnel [Cin=" + Cin + ", Password=" + Password + ", Nom=" + Nom + ", Prenom=" + Prenom + ", Service="
				+ Service + ", Poste=" + Poste + ", Email=" + Email + ", Adresse=" + Adresse + ", age=" + age
				+ ", sexe=" + sexe + ", bio=" + bio + "]";
	}

	
	
	
}
