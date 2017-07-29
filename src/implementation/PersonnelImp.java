package implementation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entity.Personnel;
import entity.Service;
import interfaces.IPersonnel;
import technique.Connexion;

public class PersonnelImp implements IPersonnel{

	@Override
	public boolean RegisterPersonnel(Personnel p,Service s) {
		// TODO Auto-generated method stub
		boolean test = false;
		
		Connection cnx = Connexion.getConnection();
		try {
			PreparedStatement ps = cnx.prepareStatement("INSERT INTO personnel values (?,?,?,?,?,?,?)");
			ps.setInt(1,p.getCin());
			ps.setString(2,p.getPassword());
			ps.setString(3,p.getNom());
			ps.setString(4,p.getPrenom());
			ps.setInt(5,s.getId());
			ps.setString(6,p.getPoste());
			ps.setString(7,p.getEmail());
			ps.executeUpdate();
			ps.close();
			test = true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return test;
		
	}

	@Override
	public boolean loginPersonnel(int cin, String password) {
		Connection cnx = Connexion.getConnection();
		Personnel p = null;
		try {
			PreparedStatement ps = cnx.prepareStatement("SELECT * FROM personnel where cin=? and password = ?");
			ps.setInt(1, cin);
			ps.setString(2, password);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				p = new Personnel(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),new Service(rs.getInt(5)),rs.getString(6),rs.getString(7));
				
			}
			
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (p == null) {
		return false;
		}
		else {
			return true;
		}
	}
	

}
