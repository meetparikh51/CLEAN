package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.AddScheduleVO;
import VO.ZoneVO;

public class scheduleDAO {
	public void insert(AddScheduleVO v)
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

	
	public List searchfinal() {
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
	
	public List edit(AddScheduleVO v) {
		// TODO Auto-generated method stub
		
		
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session= sessionFactory.openSession();
			
			Query q = session.createQuery("from AddScheduleVO where scheduleId='"+v.getScheduleId()+"'");
			
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

	
	public void delete(AddScheduleVO v)
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
	
	public void update(AddScheduleVO v)
	{
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session= sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.saveOrUpdate(v);
			tr.commit();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	public List search1(AddScheduleVO v) {
		// TODO Auto-generated method stub
		
		
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session= sessionFactory.openSession();
			
			Query q = session.createQuery("from AddScheduleVO as a where a.areaId='"+v.getAreaId().getAreaId()+"'");
			
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
}
