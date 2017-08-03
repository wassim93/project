package interfaces;

import java.util.List;

import entity.Service;

public interface IService {
	
	public List<Service> getServiceName();
	public int getServiceId(String nom);
	public String getServiceName(int id);
	public List<Service> getNonActuelService(String serviceActuel);

}
