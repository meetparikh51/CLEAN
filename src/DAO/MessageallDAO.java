package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.AreaVO;
import VO.MessageallVO;

public class MessageallDAO {
	public List search() {
		// TODO Auto-generated method stub
		
		
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session= sessionFactory.openSession();
			
			Query q = session.createQuery("from login_vo");
			
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

		
		public void insert(MessageallVO v)
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
		
		public List search1(MessageallVO v) {
			// TODO Auto-generated method stub
			
			
			try
			{
				SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
				Session session= sessionFactory.openSession();
				
				Query q = session.createQuery("from MessageallVO as a where a.user_Id='"+v.getUser_Id().getUser_Id()+"'");
				
				List ls = new ArrayList();
				
				ls = q.list();
				
				System.out.println("ful = = = = == " + ls.size());
				return ls;
			
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			
			return null;
		}	
		public void delete(MessageallVO v)
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

