package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.CompanyRegistrationVO;
import VO.ZoneVO;
import VO.login_vo;

public class companyregistrationDAO {
	
	public void insert(CompanyRegistrationVO v)
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

	
	public List edit(CompanyRegistrationVO v) {
		// TODO Auto-generated method stub
		
		
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session= sessionFactory.openSession();
			
			Query q = session.createQuery("from CompanyRegistrationVO as v where v.user_Id='"+v.getUser_Id().getUser_Id()+"'");
			
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
	public void update(CompanyRegistrationVO v)
	{
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session= sessionFactory.openSession();
			Query q = session.createQuery("UPDATE CompanyRegistrationVO as a SET a.companyName='"+v.getCompanyName()+"',a.url='"+v.getUrl()+"',a.address1='"+v.getAddress1()+"',a.address2='"+v.getAddress2()+"',a.phone='"+v.getPhone()+"' where UserId='"+v.getUser_Id().getUser_Id()+"'");
			Transaction tr = session.beginTransaction();
			q.executeUpdate();
			tr.commit();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	public List validateemail(CompanyRegistrationVO v)
	{
		List list=new ArrayList();
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =sessionFactory.openSession();
			Query query=session.createQuery("from CompanyRegistrationVO where email='"+v.getEmail()+"' ");
			list = query.list();
		}
		catch(Exception exception)
		{
			exception.printStackTrace();
		}
		return list;
	}
}
