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

import VO.AreaVO;
import VO.AttachmentMappingVO;
import VO.PostWasteVO;
import VO.WardVO;
import VO.ZoneVO;
import DAO.AttachmentMappingDAO;
import DAO.addareaDAO;
import DAO.postwasteDAO;

/**
 * Servlet implementation class postwaste
 */
@WebServlet("/postwaste")
public class postwaste extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public postwaste() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String s1=request.getParameter("flag");
		if(s1!=null && s1.equals("postwaste"))
		{
			postwaste(request,response);
		}
		
		else if(s1!=null && s1.equals("insert"))
		{
			insert(request,response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
	void postwaste(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
	{
		
		addareaDAO d= new addareaDAO();
		List l=d.search();
		HttpSession session=request.getSession();
		session.setAttribute("search",l);
		
		
		
		response.sendRedirect("User/postwasteinformation.jsp");
		
		
	}
	public void insert(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		
	
		int j=Integer.parseInt(request.getParameter("area"));
		
		
		AreaVO v=new AreaVO();
		v.setAreaId(j);
		
		PostWasteVO v1=new PostWasteVO();
		v1.setAreaId(v);
		postwasteDAO d=new postwasteDAO();
		
		
		//getting file from Session
		
		HttpSession session =request.getSession();
		
		List myList=(List)session.getAttribute("fileList");
		
		 Iterator itr =  myList.iterator();
         
         System.out.println("Reading for session");
         int i =0;
         while (itr.hasNext()) {
     
        	 
        	 v1.setPath((String)itr.next());
        	 
        	 
        	 
        	 i++;
			}
		

		
		session.removeAttribute("fileList");

		d.insert(v1);

		response.sendRedirect("User/postwasteinformation.jsp");
	}
}
