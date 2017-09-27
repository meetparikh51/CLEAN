package controller;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.classic.Session;

import VO.AddDustbinVO;
import VO.AreaVO;
import VO.MessageallVO;
import VO.WardVO;
import VO.ZoneVO;
import VO.login_vo;
import DAO.MessageallDAO;
import DAO.addareaDAO;
import DAO.adddustbinDAO;
import DAO.addwardDAO;
import DAO.addzoneDAO;
import DAO.login_DAO;
import DAO.roadsideDAO;
import DAO.usereventDAO;

/**
 * Servlet implementation class MessageAll
 */
@WebServlet("/MessageAll")
public class MessageAll extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MessageAll() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String s=request.getParameter("flag");
		

		if(s!=null && s.equals("loadUser"))
		{
			load(request,response);
		}
		
		else if(s!=null && s.equals("insert"))
		{
			insert(request,response);
		}
		
		else if(s!=null && s.equals("search"))
		{
			search(request,response);
		}
		
		else if(s!=null && s.equals("delete"))
		{
			delete(request,response);
		}
		
		else if(s!=null && s.equals("load1"))
		{
			load1(request,response);
		}
		else if(s!=null && s.equals("load2"))
		{
			load2(request,response);
		}
		
		else if(s!=null && s.equals("insert1"))
		{
			insert1(request,response);
		}
		
		else if(s!=null && s.equals("insert2"))
		{
			insert2(request,response);
		}
		
		else if(s!=null && s.equals("search1"))
		{
			search1(request,response);
		}
		
		else if(s!=null && s.equals("search2"))
		{
			search2(request,response);
		}
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
	void load(HttpServletRequest request, HttpServletResponse response) throws IOException
	{	
		MessageallDAO d = new MessageallDAO();
		
		List l=d.search();
	
		HttpSession session=request.getSession();
		session.setAttribute("search",l);
		
		response.sendRedirect("SendMessage_Admin.jsp");
		
	}
	
	void load1(HttpServletRequest request, HttpServletResponse response) throws IOException
	{	
		MessageallDAO d = new MessageallDAO();
		
		List l=d.search();
	
		HttpSession session=request.getSession();
		session.setAttribute("search",l);
		
		response.sendRedirect("SendMessage_Government.jsp");
		
	}
	
	void load2(HttpServletRequest request, HttpServletResponse response) throws IOException
	{	
		MessageallDAO d = new MessageallDAO();
		
		List l=d.search();
	
		HttpSession session=request.getSession();
		session.setAttribute("search",l);
		
		response.sendRedirect("SendMessage_Company.jsp");
		
	}
	
	
	public void insert(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		
		
		
		String s1=(String)request.getParameter("message");
		int i=Integer.parseInt(request.getParameter("users"));
		
		
		login_vo v1=new login_vo();
		v1.setUser_Id(i);
		
		MessageallVO v2=new MessageallVO();
		v2.setUser_Id(v1);
		v2.setDescription(s1);
		
		
		MessageallDAO d=new MessageallDAO();
		
		HttpSession session =request.getSession();
		
		List myList=(List)session.getAttribute("fileList");
		
		 Iterator itr =  myList.iterator();
         
         System.out.println("Reading for session");
         int j =0;
         while (itr.hasNext()) {
     
        	 
        	 v2.setPath((String)itr.next());
        	 
        	 
        	 
        	 j++;
			}
		

		
		session.removeAttribute("fileList");

	
		d.insert(v2);
		response.sendRedirect("SendMessage_Admin.jsp");
	}
	
	
	public void insert2(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		
		
		
		String s1=(String)request.getParameter("message");
		int i=Integer.parseInt(request.getParameter("users"));
		
		
		login_vo v1=new login_vo();
		v1.setUser_Id(i);
		
		MessageallVO v2=new MessageallVO();
		v2.setUser_Id(v1);
		v2.setDescription(s1);
		
		
		MessageallDAO d=new MessageallDAO();
		
		HttpSession session =request.getSession();
		
		List myList=(List)session.getAttribute("fileList");
		
		 Iterator itr =  myList.iterator();
         
         System.out.println("Reading for session");
         int j =0;
         while (itr.hasNext()) {
     
        	 
        	 v2.setPath((String)itr.next());
        	 
        	 
        	 
        	 j++;
			}
		

		
		session.removeAttribute("fileList");

	
		d.insert(v2);
		response.sendRedirect("SendMessage_Government.jsp");
	}
	
	public void insert1(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		
		
		
		String s1=(String)request.getParameter("message");
		int i=Integer.parseInt(request.getParameter("users"));
		
		
		login_vo v1=new login_vo();
		v1.setUser_Id(i);
		
		MessageallVO v2=new MessageallVO();
		v2.setUser_Id(v1);
		v2.setDescription(s1);
		
		
		MessageallDAO d=new MessageallDAO();
		
		HttpSession session =request.getSession();
		
		List myList=(List)session.getAttribute("fileList");
		
		 Iterator itr =  myList.iterator();
         
         System.out.println("Reading for session");
         int j =0;
         while (itr.hasNext()) {
     
        	 
        	 v2.setPath((String)itr.next());
        	 
        	 
        	 
        	 j++;
			}
		

		
		session.removeAttribute("fileList");

	
		d.insert(v2);
		response.sendRedirect("SendMessage_Company.jsp");
	}


	void search(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
	{
		HttpSession session=request.getSession();
		int i = (int)session.getAttribute("userID");
		login_vo v=new login_vo();
		v.setUser_Id(i);
		MessageallVO v1=new MessageallVO();
		v1.setUser_Id(v);
		MessageallDAO d=new MessageallDAO();
		List l=d.search1(v1);
//		System.out.println(l.size());
		HttpSession session1=request.getSession();
		session1.setAttribute("search", l);
		response.sendRedirect("Inbox_company.jsp");
	}
	
	void search1(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
	{
		HttpSession session=request.getSession();
		int i = (int)session.getAttribute("userID");
		login_vo v=new login_vo();
		v.setUser_Id(i);
		MessageallVO v1=new MessageallVO();
		v1.setUser_Id(v);
		MessageallDAO d=new MessageallDAO();
		List l=d.search1(v1);
//		System.out.println(l.size());
		HttpSession session1=request.getSession();
		session1.setAttribute("search", l);
		response.sendRedirect("Inbox_admin.jsp");
	}
	
	void search2(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
	{
		HttpSession session=request.getSession();
		int i = (int)session.getAttribute("userID");
		login_vo v=new login_vo();
		v.setUser_Id(i);
		MessageallVO v1=new MessageallVO();
		v1.setUser_Id(v);
		MessageallDAO d=new MessageallDAO();
		List l=d.search1(v1);
//		System.out.println(l.size());
		HttpSession session1=request.getSession();
		session1.setAttribute("search", l);
		response.sendRedirect("Inbox_government.jsp");
	}
	void delete(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
	{
		

		
		int i=Integer.parseInt(request.getParameter("messageallid"));


		MessageallVO v=new MessageallVO();
		v.setMessageallId(i);
		
		MessageallDAO d=new MessageallDAO();
		d.delete(v);
		
		search(request,response);
		
	}
}
