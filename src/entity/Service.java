package entity;

public class Service {
 private int Id;
 private String Nom;
public Service(int id, String nom) {
	super();
	Id = id;
	Nom = nom;
}
public Service() {
	super();
}

public Service(int id) {
	super();
	Id = id;
}
public Service(String nom) {
	super();
	Nom = nom;
}
public int getId() {
	return Id;
}
public void setId(int id) {
	Id = id;
}
public String getNom() {
	return Nom;
}
public void setNom(String nom) {
	Nom = nom;
}
@Override
public String toString() {
	return "Service [Id=" + Id + ", Nom=" + Nom + "]";
}
 
}
