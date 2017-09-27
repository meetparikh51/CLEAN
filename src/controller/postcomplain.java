package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.areacompanyDAO;
import DAO.complainDAO;
import DAO.scheduleDAO;
import DAO.usereventDAO;
import VO.AddScheduleVO;
import VO.AreaVO;
import VO.ComplainVO;
import VO.EmployeeAssignAreaVO;
import VO.login_vo;

/**
 * Servlet implementation class postcomplain
 */
@WebServlet("/postcomplain")
public class postcomplain extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public postcomplain() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	String s=request.getParameter("flag");

		if(s!=null && s.equals("insert"))
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
		else if(s!=null && s.equals("search3"))
		{
			search3(request,response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
	void insert(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException
	{	
		
		String s1=request.getParameter("area");
		
		String s2=request.getParameter("description");
		
		HttpSession session=request.getSession();
		int i = (Integer)session.getAttribute("UserId");
		
		login_vo v=new login_vo();
		v.setUser_Id(i);
		
		ComplainVO v1=new ComplainVO();
		v1.setUser_Id(v);
		v1.setSubject(s1);
		v1.setDescription(s2);
		
		complainDAO d=new complainDAO();
		
		d.insert(v1);
		
		response.sendRedirect("searchcomplain.jsp");
	}
	void search(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
	{
		
		complainDAO d=new complainDAO();
		List l=d.search();
//		System.out.println(l.size());
		HttpSession session=request.getSession();
		session.setAttribute("search", l);
		response.sendRedirect("searchcomplain.jsp");
	}	
	
	void delete(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
	{
		

		
		int i=Integer.parseInt(request.getParameter("complainid"));
		HttpSession httpSession=request.getSession();

		ComplainVO v=new ComplainVO();
		v.setComplainId(i);
		
		complainDAO d=new complainDAO();
		if(!d.delete(v))
		{
			
			httpSession.setAttribute("errorMsg","Please remove child rows first");
			
		}
		else{
			//httpSession.invalidate();
			httpSession.removeAttribute("errorMsg");
		}
		d.delete(v);
		
		search(request,response);
		
	}
	void search3(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
	{
		
		complainDAO d=new complainDAO();
		List l=d.search();
//		System.out.println(l.size());
		HttpSession session=request.getSession();
		session.setAttribute("search", l);
		response.sendRedirect("searchcomplain_company.jsp");
	}	
}
