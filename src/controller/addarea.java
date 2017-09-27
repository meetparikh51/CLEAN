package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import VO.AreaVO;
import VO.WardVO;
import VO.ZoneVO;
import DAO.addareaDAO;
import DAO.addwardDAO;
import DAO.addzoneDAO;

/**
 * Servlet implementation class addarea
 */
@WebServlet("/addarea")
public class addarea extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addarea() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String s=request.getParameter("flag");
		
		System.out.println("flag111111::"+s);

		if(s!=null && s.equals("loadZone"))
		{
			load(request,response);
		}
		else if(s!=null && s.equals("loadward"))
		{
			loadward(request,response);
		}
		
		else if(s!=null && s.equals("search"))
		{
			search(request,response);
		}
		else if(s!=null && s.equals("f"))
		{
			System.out.println("flag::"+s);
			insert(request,response);
			
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

	private void loadward(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		int i=Integer.parseInt(request.getParameter("zoneId"));
		
		ZoneVO zoneVO = new ZoneVO();
		zoneVO.setZoneId(i);
		
		addzoneDAO d=new addzoneDAO();
		List l=d.searchzone(zoneVO);
		HttpSession hs=request.getSession();
		hs.setAttribute("loadWard", l);
		response.sendRedirect("loadzone.jsp");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
	public void insert(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		
		System.out.println("insert");
		String s1=(String)request.getParameter("name");
		String s2=(String)request.getParameter("comment");
		int i=Integer.parseInt(request.getParameter("zone"));
		int j=Integer.parseInt(request.getParameter("ward"));
		int k=Integer.parseInt(request.getParameter("pincode"));
		
		ZoneVO v1=new ZoneVO();
		v1.setZoneId(i);
		
		WardVO v2=new WardVO();
		v2.setWardId(j);
		
		AreaVO v=new AreaVO();
		v.setAreaName(s1);
		v.setDescription(s2);
		v.setZoneId(v1);
		v.setWardId(v2);
		v.setPincode(k);
		
		
		addareaDAO d=new addareaDAO();
		d.insert(v);
		
		response.sendRedirect("AddArea.jsp");
	}
	void load(HttpServletRequest request, HttpServletResponse response) throws IOException
	{	
		addzoneDAO dao = new addzoneDAO();
		addwardDAO dao1=new addwardDAO();
		List l=dao.search();
		List l1=dao1.search();
		HttpSession session=request.getSession();
		session.setAttribute("search",l);
		session.setAttribute("search1", l1);
		response.sendRedirect("AddArea.jsp");
		
	}
	void search(HttpServletRequest request, HttpServletResponse response)throws IOException
	{
		AreaVO v=new AreaVO();
		addareaDAO d=new addareaDAO();
		List l=d.search();
		HttpSession session=request.getSession();
		session.setAttribute("search", l);
		response.sendRedirect("searcharea.jsp");
	}
	
	void edit(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
	{
		List l;
		List l1;
		List l2;
		int i=Integer.parseInt(request.getParameter("areaid"));	
		
		AreaVO v=new AreaVO();
		v.setAreaId(i);
		
		ZoneVO v1=new ZoneVO();
		addzoneDAO d1=new addzoneDAO();
		d1.search();
		
		WardVO v2=new WardVO();
		addwardDAO d2=new addwardDAO();
		d2.search();
		
		addareaDAO d=new addareaDAO();
		l=d.edit(v);
		l1=d1.search();
		l2=d2.search();
		HttpSession session=request.getSession();
		session.setAttribute("edit", l);
		session.setAttribute("search1",l1);
		session.setAttribute("search2",l2);
		
		response.sendRedirect("editarea.jsp");
		
		
	}
	
	void delete(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
	{	
		int i=Integer.parseInt(request.getParameter("areaid"));
		
		AreaVO v=new AreaVO();
		v.setAreaId(i);
		
		addareaDAO d=new addareaDAO();
		d.delete(v);
		
		search(request,response);
		
	}

	


}
