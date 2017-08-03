package test;

import java.util.Iterator;
import java.util.List;

import entity.Aeroport;

public class testAero {
	public static void main(String[] args) {
		Aeroport a = new Aeroport();
		List<String> ls = a.getListnom();

		ls.remove("Tunis-Carthage");
		
		for(String s : ls ) {
			System.out.println(s);
		}
	}

}
