package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.login_vo;

public class loginDAO {
	
	public List authentication(login_vo v) {
		// TODO Auto-generated method stub
		
		
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session= sessionFactory.openSession();
			
			Query q = session.createQuery("from login_vo where email='"+v.getEmail()+"' and password='"+v.getPassword()+"'");
			
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
	
	public List forgetPassword(login_vo loginvo)
	{
			List list=new ArrayList();	
				
				try
				{
					SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
					
					Session session =sessionFactory.openSession();
											
					Query q=session.createQuery("from login_vo where username='"+loginvo.getEmail()+"' ");
					
					list= q.list();
					
					System.out.println(list.size());
					
				}
				catch(Exception ex)
				{
					ex.printStackTrace();
				}
				return list;
			}
	public void update(login_vo loginvo){
		  
		Session session = null;
		
		  try{
		  
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  session =sessionFactory.openSession();
		
			  Transaction tr = session.beginTransaction();
		 
			  session.update(loginvo);
		 
			  tr.commit();
		 
		  }catch(Exception e){
			  				
			  				e.printStackTrace();
		  					}finally{
		  						    session.close();
		  							}
		  
		}
	
public List showAll(){
		
		Session session = null;
		List temp = null;
		  try{
		  
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  session =sessionFactory.openSession();
		
			  Query q = session.createQuery("from login_vo ");
		 
			  temp = q.list();
		  	
		  }catch(Exception e){
			  				  e.printStackTrace();
		  					 }finally{
		  						     session.close();
		  					 		 }
		 return temp;
		
		}	
}
