package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import VO.AddStaffVO;
import VO.AreaVO;
import VO.CompanyStaffVO;
import VO.EmployeeAssignAreaVO;
import VO.ZoneVO;
import DAO.addareaDAO;
import DAO.addstaffDAO;
import DAO.addzoneDAO;
import DAO.areacompanyDAO;

/**
 * Servlet implementation class areacompany
 */
@WebServlet("/areacompany")
public class areacompany extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public areacompany() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String s=request.getParameter("flag");
		if(s!=null && s.equals("loadName"))
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
	
	void load(HttpServletRequest request, HttpServletResponse response) throws IOException 
	{
		
		areacompanyDAO dao = new areacompanyDAO();
		
		List l=dao.search();
		
		HttpSession session=request.getSession();
		
		session.setAttribute("search",l);
		
		areacompanyDAO dao1 = new areacompanyDAO();
		
		List l1=dao1.search1();
		
		HttpSession session1=request.getSession();
		
		session1.setAttribute("search1",l1);
		
		response.sendRedirect("AssignArea.jsp");
		
	}
	
	void insert(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException
	{
		String s1=request.getParameter("ename");
		String s2=request.getParameter("area");
		String s3=request.getParameter("description");
		int i=Integer.parseInt(request.getParameter("ename"));
		int k=Integer.parseInt(request.getParameter("area"));
		
		AddStaffVO v1=new AddStaffVO();
		v1.setStaffId(i);
		
		AreaVO v2=new AreaVO();
		v2.setAreaId(k);
		
		EmployeeAssignAreaVO v=new EmployeeAssignAreaVO();
		v.setStaffId(v1);
		v.setAreaId(v2);
		v.setDescription(s3);
	
		areacompanyDAO d=new areacompanyDAO();
		d.insert(v);
		
		
		response.sendRedirect("AssignArea.jsp");
	}

	void search(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
	{
		EmployeeAssignAreaVO v=new EmployeeAssignAreaVO();
		areacompanyDAO d=new areacompanyDAO();
		List l=d.searchfinal();
//		System.out.println(l.size());
		HttpSession session=request.getSession();
		session.setAttribute("search", l);
		response.sendRedirect("CompanySearchArea.jsp");
	}	
	void edit(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
	{
		List l;
		int i=Integer.parseInt(request.getParameter("assignid"));	
		
		EmployeeAssignAreaVO v=new EmployeeAssignAreaVO();
		v.setAssignId(i);
		
		areacompanyDAO d=new areacompanyDAO();
		l=d.edit(v);
		
		HttpSession session=request.getSession();
		session.setAttribute("edit", l);
		
		response.sendRedirect("EditCompanyArea.jsp");
		
		
	}
	
	
	void update(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
	{
		

		
		int i=Integer.parseInt(request.getParameter("id"));
		
		String s2=request.getParameter("description");
		int j=Integer.parseInt(request.getParameter("ename"));
		int k=Integer.parseInt(request.getParameter("area"));
		
		AddStaffVO v1=new AddStaffVO();
		v1.setStaffId(j);
		
		AreaVO v2=new AreaVO();
		v2.setAreaId(k);
		
		EmployeeAssignAreaVO v=new EmployeeAssignAreaVO();
		v.setStaffId(v1);
		v.setAreaId(v2);
		v.setAssignId(i);
		v.setDescription(s2);
		
		
		System.out.println("CALL UPDATE");
		
		areacompanyDAO d=new areacompanyDAO();
		d.update(v);
		
		search(request,response);
		
	}

	void delete(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
	{
		

		
		int i=Integer.parseInt(request.getParameter("assignid"));
		HttpSession httpSession=request.getSession();

		EmployeeAssignAreaVO v=new EmployeeAssignAreaVO();
		v.setAssignId(i);
		
		areacompanyDAO d=new areacompanyDAO();
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



}
