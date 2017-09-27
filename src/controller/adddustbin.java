package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.AddDustbinVO;
import VO.AddStaffVO;
import VO.AreaVO;
import VO.EmployeeAssignAreaVO;
import VO.WardVO;
import VO.ZoneVO;
import DAO.addareaDAO;
import DAO.adddustbinDAO;
import DAO.addstaffDAO;
import DAO.addzoneDAO;
import DAO.areacompanyDAO;

/**
 * Servlet implementation class adddustbin
 */
@WebServlet("/adddustbin")
public class adddustbin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adddustbin() {
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
		String s=request.getParameter("flag");
		
		if(s!=null && s.equals("insert"))
		{
			
			insert(request,response);
			
		}
		else if(s!=null && s.equals("update"))
		{
			update(request,response);
		}
	
	}

	void load(HttpServletRequest request, HttpServletResponse response) throws IOException 
	{
		
		adddustbinDAO dao = new adddustbinDAO();
		
		List l=dao.search();
		
		HttpSession session=request.getSession();
		
		session.setAttribute("search",l);
		
		adddustbinDAO dao1 = new adddustbinDAO();
		
		List l1=dao1.search1();
		
		HttpSession session1=request.getSession();
		
		session1.setAttribute("search1",l1);
		
		
		adddustbinDAO dao2 = new adddustbinDAO();
		
		List l2=dao1.search2();
		
		HttpSession session2=request.getSession();
		
		session1.setAttribute("search2",l2);
	
		response.sendRedirect("AddDustbin.jsp");
		
	}
	
	public void insert(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		
		System.out.println("insert");
		String s1=(String)request.getParameter("zone");
		String s2=(String)request.getParameter("ward");
		String s3=(String)request.getParameter("Area");
		int s4=Integer.parseInt(request.getParameter("pincode"));
		int s5=Integer.parseInt(request.getParameter("latitude"));
		int s6=Integer.parseInt(request.getParameter("longitude"));
		int i=Integer.parseInt(request.getParameter("zone"));
		int j=Integer.parseInt(request.getParameter("ward"));
		int k=Integer.parseInt(request.getParameter("Area"));
		
		ZoneVO v1=new ZoneVO();
		v1.setZoneId(i);
		
		WardVO v2=new WardVO();
		v2.setWardId(j);
		
		AreaVO v3=new AreaVO();
		v3.setAreaId(k);
		
		AddDustbinVO v=new AddDustbinVO();
		v.setZoneId(v1);
		v.setWardId(v2);
		v.setAreaId(v3);
		v.setPincode(s4);
		v.setLatitude(s5);
		v.setLongitude(s6);
		
		
		
		adddustbinDAO d=new adddustbinDAO();
		d.insert(v);
		response.sendRedirect("AddDustbin.jsp");
	}
	void search(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
	{
		AddDustbinVO v=new AddDustbinVO();
		adddustbinDAO d=new adddustbinDAO();
		List l=d.searchfinal();
//		System.out.println(l.size());
		HttpSession session=request.getSession();
		session.setAttribute("search", l);
		response.sendRedirect("SearchDustbin.jsp");
	}	

	void edit(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
	{
		List l;
		int i=Integer.parseInt(request.getParameter("dustbinid"));	
		
		AddDustbinVO v=new AddDustbinVO();
		v.setDustbinId(i);
		
		adddustbinDAO d=new adddustbinDAO();
		l=d.edit(v);
		
		HttpSession session=request.getSession();
		session.setAttribute("edit", l);
		
		response.sendRedirect("EditDustbin.jsp");
		
		
	}

	void update(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
	{
		

		
		int i=Integer.parseInt(request.getParameter("id"));
		int j=Integer.parseInt(request.getParameter("zone"));
		int k=Integer.parseInt(request.getParameter("ward"));
		int l=Integer.parseInt(request.getParameter("Area"));
		int m=Integer.parseInt(request.getParameter("pincode"));
		int n=Integer.parseInt(request.getParameter("latitude"));
		int o=Integer.parseInt(request.getParameter("longitude"));
		
		
		ZoneVO v1=new ZoneVO();
		v1.setZoneId(i);
		
		WardVO v2=new WardVO();
		v2.setWardId(j);
		
		AreaVO v3=new AreaVO();
		v3.setAreaId(k);
		
		AddDustbinVO v=new AddDustbinVO();
		
		v.setZoneId(v1);
		v.setWardId(v2);
		v.setAreaId(v3);
		v.setPincode(m);
		v.setLatitude(n);
		v.setLongitude(o);
		
		
		adddustbinDAO d=new adddustbinDAO();
		d.update(v);
		
		search(request,response);
		
	}
	void delete(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
	{
		

		
		int i=Integer.parseInt(request.getParameter("dustbinid"));


		AddDustbinVO v=new AddDustbinVO();
		v.setDustbinId(i);
		
		adddustbinDAO d=new adddustbinDAO();
		d.delete(v);
		
		search(request,response);
		
	}
	
}
