package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.addareaDAO;
import DAO.addeventDAO;
import DAO.addzoneDAO;
import DAO.sendmessageDAO;
import VO.AreaVO;
import VO.EventMasterVO;
import VO.MessageVO;
import VO.ZoneVO;

/**
 * Servlet implementation class sendmessage
 */
@WebServlet("/sendmessage")
public class sendmessage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public sendmessage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String s=(String)request.getParameter("flag");
		if(s!=null && s.equals("a") )
		{
			insert(request,response);
		}
		
		else if(s!=null && s.equals("search") )
		{
			search(request,response);
		}
		
		else if(s!=null && s.equals("edit") )
		{
			edit(request,response);
		}
		
		else if(s!=null && s.equals("update") )
		{
			update(request,response);
		}
		
		else if(s!=null && s.equals("delete") )
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
 void insert(HttpServletRequest request, HttpServletResponse response)
 {
	 String s1=(String)request.getParameter("name");
	 String s2=(String)request.getParameter("subject");
	 String s3=(String)request.getParameter("message");
	
	 
	 //int i=Integer.parseInt(request.getParameter("userId"));
	 
	 
	 MessageVO v=new MessageVO();
	 /* v.setname(s1) or v.setid(s1)*/
	 v.setSubject(s2);
	 v.setMessage(s3);
	 
	 sendmessageDAO d=new sendmessageDAO();
	 d.insert(v);  
 }
 
 void search(HttpServletRequest request, HttpServletResponse response) throws IOException
 {
	 	MessageVO v=new MessageVO();
		sendmessageDAO d=new sendmessageDAO();
		List l=d.search();
		HttpSession session=request.getSession();
		session.setAttribute("search", l);
		response.sendRedirect("searchmessage.jsp");
 }
 
 
 void edit(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
 {
 	List l;
 	int i=Integer.parseInt(request.getParameter("messageid"));	
 	
 	MessageVO v=new MessageVO();
 	v.setMessageId(i);
 	
 	sendmessageDAO d=new sendmessageDAO();
 	l=d.edit(v);
 	
 	HttpSession session=request.getSession();
 	session.setAttribute("edit", l);
 	
 	response.sendRedirect("messageedit.jsp");
 	
 	
 }
 
 void update(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
	{
		

		
		int i=Integer.parseInt(request.getParameter("id"));
		String s=request.getParameter("n2");
		String s1=request.getParameter("n3");
		int i1=Integer.parseInt(request.getParameter("n1"));

		System.out.println("name = "+s+"desc = "+s1);

		
		MessageVO v=new MessageVO();
		v.setMessageId(i);
		v.setUserId(i1);
		v.setSubject(s);
		v.setMessage(s1);
		//System.out.println("CALL UPDATE");
		
		sendmessageDAO d=new sendmessageDAO();
		d.update(v);
		
		
		search(request,response);
		
	}

 void delete(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
 {
 	

 	
 	int i=Integer.parseInt(request.getParameter("messageid"));


 	MessageVO v=new MessageVO();
 	v.setMessageId(i);
 	
 	sendmessageDAO d=new sendmessageDAO();
 	d.delete(v);
 	
 	search(request,response);
 	
 }

 
 
}
