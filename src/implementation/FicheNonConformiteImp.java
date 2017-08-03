package implementation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entity.FicheNonConformite;
import entity.Personnel;
import entity.Service;
import interfaces.IFicheNonConformite;
import interfaces.IService;
import technique.Connexion;

public class FicheNonConformiteImp implements IFicheNonConformite {

	@Override
	public boolean AddFiche(FicheNonConformite f) {
		// TODO Auto-generated method stub

		Connection cnx = Connexion.getConnection();
		boolean test = false;
		try {
			PreparedStatement ps = cnx.prepareStatement(
					"INSERT INTO `fichenonconformite`(`Num`, `Date`, `Aeroport`, `Processus`, `Service`, `Nature`, `Cause`, `Consequence`, `Action`, `Solution`, `Responsable`, `Echeance`, `MesEfficacite`) values (?,?,?,?,?,?,?,?,?,?,?,?,?)");
			ps.setInt(1, f.getNum());
			ps.setString(2, f.getDate());
			ps.setString(3, f.getAeroport());
			ps.setString(4, f.getProcessus());
			ps.setInt(5, f.getService());
			ps.setString(6, f.getNature());
			ps.setString(7, f.getCause());
			ps.setString(8, f.getConsequence());
			ps.setString(9, f.getAction());
			ps.setString(10, f.getSolution());
			ps.setString(11, f.getResponsable());
			ps.setString(12, f.getEcheance());
			ps.setString(13, f.getMesEfficacite());
			ps.executeUpdate();
			test = true;
			ps.close();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return test;
	}

	@Override
	public void DeleteFiche(int Num) {
		// TODO Auto-generated method stub

		Connection cnx = Connexion.getConnection();
		try {
			PreparedStatement ps = cnx.prepareStatement("DELETE FROM `fichenonconformite`WHERE Num=?");
			ps.setInt(1, Num);
			ps.executeUpdate();
			ps.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	@Override
	public List<FicheNonConformite> ConsultFiche(Service s) {
		// TODO Auto-generated method stub
		Connection cnx = Connexion.getConnection();
		List<FicheNonConformite> list = new ArrayList<>();
		try {
			PreparedStatement ps = cnx.prepareStatement("SELECT id FROM service WHERE Nom=?");
			ps.setString(1, s.getNom());
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				PreparedStatement ps1 = cnx.prepareStatement("SELECT * FROM fichenonconformite WHERE Service=?");
				ps1.setInt(1, rs.getInt(1));
				ResultSet rs1 = ps1.executeQuery();

				while (rs1.next()) {
					FicheNonConformite f = new FicheNonConformite();
					f.setNum(rs1.getInt(1));
					f.setDate(rs1.getString(2));
					f.setAeroport(rs1.getString(3));
					f.setProcessus(rs1.getString(4));
					f.setService(rs1.getInt(5));
					f.setNature(rs1.getString(6));
					f.setCause(rs1.getString(7));
					f.setConsequence(rs1.getString(8));
					f.setAction(rs1.getString(9));
					f.setSolution(rs1.getString(10));
					f.setResponsable(rs1.getString(11));
					f.setEcheance(rs1.getString(12));
					f.setMesEfficacite(rs1.getString(13));
					list.add(f);
				}

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;

	}

	@Override
	public List<FicheNonConformite> getAllFiches() {
		Connection cnx = Connexion.getConnection();
		List<FicheNonConformite> list = new ArrayList<>();
		try {

			PreparedStatement ps1 = cnx.prepareStatement("SELECT * FROM fichenonconformite");
			ResultSet rs1 = ps1.executeQuery();
			IService is = new ServiceImp();

			while (rs1.next()) {
				FicheNonConformite f = new FicheNonConformite();
				f.setNum(rs1.getInt(1));
				f.setDate(rs1.getString(2));
				f.setAeroport(rs1.getString(3));
				f.setProcessus(rs1.getString(4));
				f.setService(rs1.getInt(5));
				f.setNature(rs1.getString(6));
				f.setCause(rs1.getString(7));
				f.setConsequence(rs1.getString(8));
				f.setAction(rs1.getString(9));
				f.setSolution(rs1.getString(10));
				f.setResponsable(rs1.getString(11));
				f.setEcheance(rs1.getString(12));
				f.setMesEfficacite(rs1.getString(13));
				list.add(f);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public boolean ModifFiche(FicheNonConformite f) {
		// TODO Auto-generated method stub
	boolean test = false;
		
		Connection cnx = Connexion.getConnection();
		try {
			PreparedStatement ps = cnx.prepareStatement("update fichenonconformite set Date=?, Aeroport=?, Processus=?, Service=?, Nature=?, Cause=?, Consequence=?, Action=?, Solution=?, Responsable=?, Echeance=?, MesEfficacite=? where Num =?");
			ps.setString(1,f.getDate());
			ps.setString(2,f.getAeroport());
			ps.setString(3,f.getProcessus());
			ps.setInt(4,f.getService());
			ps.setString(5,f.getNature());
			ps.setString(6,f.getCause());
			ps.setString(7,f.getConsequence());
			ps.setString(8,f.getAction());
			ps.setString(9,f.getSolution());
			ps.setString(10,f.getResponsable());
			ps.setString(11,f.getEcheance());
			ps.setString(12,f.getMesEfficacite());
			ps.setInt(13, f.getNum());
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
	public FicheNonConformite getFichebyNum(int num) {
		// TODO Auto-generated method stub
		Connection cnx = Connexion.getConnection();
		FicheNonConformite f = null;
		try {
			PreparedStatement ps = cnx.prepareStatement("SELECT * FROM fichenonconformite where Num=?");
			ps.setInt(1,num);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				
				f = new FicheNonConformite(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getInt(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9),rs.getString(10),rs.getString(11),rs.getString(12),rs.getString(13));
				
			}
			
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return f;
	}

}
