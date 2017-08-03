package test;

import entity.Personnel;
import entity.Service;
import implementation.PersonnelImp;
import interfaces.IPersonnel;

public class testPerso {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Service s = new Service(2);
		Personnel p = new Personnel(13435915,"123","wass","ww",s,"tt","dfghj","tunis",18,"homme","mybio");
		IPersonnel pers = new PersonnelImp();
		//pers.RegisterPersonnel(p,s);
		//System.out.println(pers.loginPersonnel(11, "123"));
		//System.out.println(pers.getPersonnelInfos(11));
		System.out.println(pers.updateInfos(p));

		
		
	}

}
