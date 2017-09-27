package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.ZoneVO;
import VO.login_vo;

public class login_DAO {
	public void insert(login_vo v)
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
	
	public void update(login_vo v)
	{
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session= sessionFactory.openSession();
			Query q = session.createQuery("UPDATE login_vo as a SET a.email='"+v.getEmail()+"' where UserId='"+v.getUser_Id()+"'");
			Transaction tr = session.beginTransaction();
			q.executeUpdate();
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
	
	public List search1() {
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
}
