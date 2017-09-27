package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.AddDustbinVO;
import VO.AddTenderVO;
import VO.WardVO;
import VO.ZoneVO;

public class addtenderDAO {
	public void insert(AddTenderVO v)
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
			
			Query q = session.createQuery("from AddTenderVO");
			
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
	public List edit(AddTenderVO v) {
		// TODO Auto-generated method stub
		
		
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session= sessionFactory.openSession();
			
			Query q = session.createQuery("from AddTenderVO where tenderId='"+v.getTenderId()+"'");
			
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
	public void update(AddTenderVO v)
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
	
	public void delete(AddTenderVO v)
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
