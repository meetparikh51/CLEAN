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

import DAO.addeventDAO;
import DAO.addwardDAO;
import DAO.addzoneDAO;
import VO.EventMasterVO;
import VO.WardVO;
import VO.ZoneVO;

/**
 * Servlet implementation class addevent
 */
@WebServlet("/addevent")
public class addevent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addevent() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	String s=request.getParameter("flag");
	if(s!=null && s.equals("f"))
	{
			insert(request,response);
	}
	
	else if(s!=null && s.equals("search"))
	{
		search(request,response);
	}
	
	else if(s!=null && s.equals("edit"))
	{
		edit(request,response);
	}
	
	else if(s!=null && s.equals("update"))
	{
		update(request,response);
	}
	
	else if(s!=null && s.equals("delete"))
	{
		delete(request,response);
	}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}


	void insert(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		String s1=request.getParameter("name");
		String s2=request.getParameter("comment");
		String s3=request.getParameter("venue");
		
		//TIME AND DATE
	
		EventMasterVO v=new EventMasterVO();
		v.setEventName(s1);
		v.setDescription(s2);
		v.setVenue(s3);

		
		addeventDAO d=new addeventDAO();
		HttpSession session =request.getSession();
		
		List myList=(List)session.getAttribute("fileList");
		
		 Iterator itr =  myList.iterator();
         
         System.out.println("Reading for session");
         int i =0;
         while (itr.hasNext()) {
     
        	 
        	 v.setPath((String)itr.next());
        	 
        	 
        	 
        	 i++;
			}
		

		
		session.removeAttribute("fileList");

		d.insert(v);
		response.sendRedirect("AddEvents.jsp");
	}
	
	void search(HttpServletRequest request, HttpServletResponse response)
	{
		EventMasterVO v=new EventMasterVO();
		addeventDAO d=new addeventDAO();
		List l=d.search();
		HttpSession session=request.getSession();
		session.setAttribute("search", l);
		try {
			response.sendRedirect("searchevents.jsp");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	void edit(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
	{
		List l;
		int i=Integer.parseInt(request.getParameter("eventid"));	
		
		EventMasterVO v=new EventMasterVO();
		v.setEventId(i);
		
		addeventDAO d=new addeventDAO();
		l=d.edit(v);
		
		HttpSession session=request.getSession();
		session.setAttribute("edit", l);
		
		response.sendRedirect("eventedit.jsp");
		
		
	}
	
	
	void update(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
	{
		

		
		int i=Integer.parseInt(request.getParameter("id"));
		String s=request.getParameter("n1");
		String s1=request.getParameter("n2");
		String s2=request.getParameter("n3");

		//System.out.println("name = "+s+"desc = "+s1);

		
		EventMasterVO v=new EventMasterVO();
		v.setEventId(i);
		v.setEventName(s);
		v.setDescription(s1);
		v.setVenue(s2);
		//System.out.println("CALL UPDATE");
		
		addeventDAO d=new addeventDAO();
		d.update(v);
		
		
		search(request,response);
		
	}

	void delete(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
	{
		int i=Integer.parseInt(request.getParameter("eventid"));


		EventMasterVO v=new EventMasterVO();
		v.setEventId(i);
		
		addeventDAO d=new addeventDAO();
		d.delete(v);
		
		search(request,response);
		
	}

	
}

