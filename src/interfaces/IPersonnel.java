package interfaces;

import java.sql.SQLException;

import entity.Personnel;
import entity.Service;

public interface IPersonnel {

	public boolean RegisterPersonnel(Personnel p,Service s);
	public boolean loginPersonnel(int cin,String password);
}
