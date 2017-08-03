package implementation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import entity.Service;
import interfaces.IService;
import technique.Connexion;

public class ServiceImp implements IService {

	@Override
	public List<Service> getServiceName() {
		Connection cnx = Connexion.getConnection();
		List<Service> list =  new ArrayList<>();
		try {
			PreparedStatement ps = cnx.prepareStatement("SELECT * FROM service");
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				Service s = new Service(rs.getInt(1),rs.getString(2));
				list.add(s);
				
			}
			
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
		
	}

	@Override
	public int getServiceId(String nom) {
		Connection cnx = Connexion.getConnection();
		int id = 0;
		try {
			PreparedStatement ps = cnx.prepareStatement("SELECT id FROM service where nom = ?");
			ps.setString(1, nom);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				id = rs.getInt(1);
				
			}
			
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return id;
	}

	@Override
	public String getServiceName(int id) {
		// TODO Auto-generated method stub
		Connection cnx = Connexion.getConnection();
		String name = null;
		try {
			PreparedStatement ps = cnx.prepareStatement("SELECT nom FROM service where id = ?");
			ps.setInt(1, id);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				name = rs.getString(1);
				
			}
			
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return name;	}

	@Override
	public List<Service> getNonActuelService(String serviceActuel) {
		Connection cnx = Connexion.getConnection();
		List<Service> list =  new ArrayList<>();
		try {
			PreparedStatement ps = cnx.prepareStatement("SELECT * FROM service");
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				if (! rs.getString(2).equals(serviceActuel)) {
				Service s = new Service(rs.getInt(1),rs.getString(2));
				list.add(s);
				}
				
			}
			
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

}
