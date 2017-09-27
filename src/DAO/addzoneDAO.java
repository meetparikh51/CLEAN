package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;









import com.sun.java_cup.internal.runtime.virtual_parse_stack;

import VO.WardVO;
import VO.ZoneVO;

public class addzoneDAO {
	
	public void insert(ZoneVO v)
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
			
			Query q = session.createQuery("from ZoneVO");
			
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
	
	
	public List edit(ZoneVO v) {
		// TODO Auto-generated method stub
		
		
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session= sessionFactory.openSession();
			
			Query q = session.createQuery("from ZoneVO where zoneId='"+v.getZoneId()+"'");
			
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


		
		public void update(ZoneVO v)
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

		public void delete(ZoneVO v)
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
		
		public List searchzone(ZoneVO v) {
			// TODO Auto-generated method stub
			
			
			try
			{
				SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
				Session session= sessionFactory.openSession();
				
				Query q = session.createQuery("from WardVO where zoneId='"+v.getZoneId()+"'");
				
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

		

