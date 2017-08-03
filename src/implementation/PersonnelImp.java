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
import interfaces.IService;
import technique.Connexion;

public class PersonnelImp implements IPersonnel{

	@Override
	public boolean RegisterPersonnel(Personnel p,Service s) {
		// TODO Auto-generated method stub
		boolean test = false;
		
		Connection cnx = Connexion.getConnection();
		try {
			PreparedStatement ps = cnx.prepareStatement("INSERT INTO personnel (`Cin`, `password`, `Nom`, `Prenom`, `Service`, `Poste`, `Email`) values (?,?,?,?,?,?,?)");
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

	@Override
	public Personnel getPersonnelInfos(int cin) {
		Connection cnx = Connexion.getConnection();
		Personnel p = null;
		try {
			PreparedStatement ps = cnx.prepareStatement("SELECT * FROM personnel where cin=?");
			ps.setInt(1, cin);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				Service s = new Service();
				IService is = new ServiceImp();
				
				s.setNom(is.getServiceName(rs.getInt(5)));
				s.setId(rs.getInt(5));
				
				p = new Personnel(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),s,rs.getString(6),rs.getString(7),rs.getString(8),rs.getInt(9),rs.getString(10),rs.getString(11));
				
			}
			
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return p;
	}

	@Override
	public boolean updateInfos(Personnel p) {
		boolean test = false;
		
		Connection cnx = Connexion.getConnection();
		try {
			PreparedStatement ps = cnx.prepareStatement("update personnel set password =?,nom =?,prenom=?,service=?,poste=?,email=?,adresse=?,age=?,sexe=?,bio=? where cin =?");
			ps.setString(1,p.getPassword());
			ps.setString(2,p.getNom());
			ps.setString(3,p.getPrenom());
			ps.setInt(4,p.getService().getId());
			ps.setString(5,p.getPoste());
			ps.setString(6,p.getEmail());
			ps.setString(7,p.getAdresse());
			ps.setInt(8,p.getAge());
			ps.setString(9,p.getSexe());
			ps.setString(10,p.getBio());
			ps.setInt(11, p.getCin());
			ps.executeUpdate();
			ps.close();
			test = true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return test;
		
	}
	

}
