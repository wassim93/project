package test;

import java.util.List;

import entity.Service;
import implementation.ServiceImp;
import interfaces.IService;

public class testService {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		IService is = new ServiceImp();
		List<Service> ls =  is.getNonActuelService("Acceptation");
		for(Service s : ls ) {
			System.out.println(s);
		}
	}

}
