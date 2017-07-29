package test;

import entity.Personnel;
import entity.Service;
import implementation.PersonnelImp;
import interfaces.IPersonnel;

public class testPerso {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Service s = new Service(2);
		Personnel p = new Personnel(13435915,"1234","wass","ww",s,"tt","dfghj");
		IPersonnel pers = new PersonnelImp();
		//pers.RegisterPersonnel(p,s);
		//System.out.println(pers.loginPersonnel(13422937, "123"));
		
		
	}

}
