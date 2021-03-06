package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.AddStaffVO;
import VO.AreaVO;
import VO.WardVO;
import VO.ZoneVO;

public class addareaDAO {

	
	public void insert(AreaVO v)
	{
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session= sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.save(v);
			tr.commit();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}	



public List search() {
	// TODO Auto-generated method stub
	
	
	try
	{
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session= sessionFactory.openSession();
		
		Query q = session.createQuery("from AreaVO");
		
		List ls = new ArrayList();
		
		ls = q.list();
		
		return ls;
	
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	
	return null;
}	
public List search456() {
	// TODO Auto-generated method stub
	
	
	try
	{
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session= sessionFactory.openSession();
		
		Query q = session.createQuery("from AddScheduleVO");
		
		List ls = new ArrayList();
		
		ls = q.list();
		
		return ls;
	
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	
	return null;
}	
public List edit(AreaVO v) {
	// TODO Auto-generated method stub
	
	
	try
	{
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session= sessionFactory.openSession();
		
		Query q = session.createQuery("from AreaVO where areaId='"+v.getAreaId()+"'");
		
		List ls = new ArrayList();
		
		ls = q.list();
		
		return ls;
	
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	
	return null;
}

public void delete(AreaVO v)
{
	try
	{
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session= sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		session.delete(v);
		tr.commit();
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
}



}

