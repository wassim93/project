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

}
