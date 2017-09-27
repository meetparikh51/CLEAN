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
import DAO.addwardDAO;
import DAO.addzoneDAO;
import DAO.scheduleDAO;
import VO.AddScheduleVO;
import VO.AreaVO;
import VO.ZoneVO;

/**
 * Servlet implementation class addschedule
 */
@WebServlet("/addschedule")
public class addschedule extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addschedule() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String s1=request.getParameter("flag");
		if(s1!=null && s1.equals("insert"))
		{
			insert(request,response);
		}
		else if(s1!=null && s1.equals("loadName"))
		{
			load(request,response);
		}
		else if(s1!=null && s1.equals("search"))
		{
			search(request,response);
		}
		
		else if(s1!=null && s1.equals("edit"))
		{
		
			edit(request,response);
			
		}
		
		else if(s1!=null && s1.equals("delete"))
		{
		
			delete(request,response);
			
		}
		
		else if(s1!=null && s1.equals("update"))
		{
			update(request,response);
		}
		
		else if(s1!=null && s1.equals("loadschedule"))
		{
			loadschedule(request,response);
		}
		
		else if(s1!=null && s1.equals("run"))
		{
			run(request,response);
		}
		
		else if(s1!=null && s1.equals("loaddb1"))
		{
			loaddb1(request,response);
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
		
		int i=Integer.parseInt(request.getParameter("area"));
		
		String s2=request.getParameter("time");
		
		AreaVO v=new AreaVO();
		v.setAreaId(i);
	
		AddScheduleVO v1=new AddScheduleVO();
		v1.setTime(s2);
		v1.setAreaId(v);
		
		scheduleDAO d=new scheduleDAO();
		
		d.insert(v1);
		
		response.sendRedirect("AddSchedule.jsp");
	}

	void load(HttpServletRequest request, HttpServletResponse response) throws IOException
	{	
		addareaDAO d= new addareaDAO();
		List l=d.search();
		HttpSession session=request.getSession();
		session.setAttribute("search",l);
		response.sendRedirect("AddSchedule.jsp");
		
	}
	
	void search(HttpServletRequest request, HttpServletResponse response)throws IOException
	{
		AddScheduleVO v=new AddScheduleVO();
		scheduleDAO d=new scheduleDAO();
		List l=d.searchfinal();
		HttpSession session=request.getSession();
		session.setAttribute("search", l);
		response.sendRedirect("searchschedule.jsp");
	}
	
	
	
	void edit(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
	{
		List l;
		int i=Integer.parseInt(request.getParameter("scheduleid"));	
		
		AddScheduleVO v=new AddScheduleVO();
		v.setScheduleId(i);
		
		scheduleDAO d=new scheduleDAO();
		l=d.edit(v);
		
		HttpSession session=request.getSession();
		session.setAttribute("edit", l);
		
		response.sendRedirect("editschedule.jsp");
		
		
	}
	
	void delete(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
	{
		

		
		int i=Integer.parseInt(request.getParameter("scheduleid"));


		AddScheduleVO v=new AddScheduleVO();
		v.setScheduleId(i);
		
		scheduleDAO d=new scheduleDAO();
		d.delete(v);
		
		search(request,response);
		
	}
	
	void update(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
	{
		

		System.out.print("hiiiiiiiiii");
		int i=Integer.parseInt(request.getParameter("id"));
		
		String s1=request.getParameter("time");

		AreaVO v=new AreaVO();
		v.setAreaId(i);


		AddScheduleVO v1=new AddScheduleVO();
		v1.setAreaId(v);
		v1.setTime(s1);
		
		
		
		
		scheduleDAO d=new scheduleDAO();
		d.update(v1);
		
		search(request,response);
		
	}
	void loadschedule(HttpServletRequest request, HttpServletResponse response) throws IOException
	{	
		addareaDAO d= new addareaDAO();
		List l=d.search();
		HttpSession session=request.getSession();
		session.setAttribute("search",l);
		response.sendRedirect("User/pickup_schedule.jsp");
		
	}
	
	void run(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
	{
		
		int i=Integer.parseInt(request.getParameter("area"));	
		AreaVO av=new AreaVO();
		av.setAreaId(i);
		AddScheduleVO v=new AddScheduleVO();
		v.setAreaId(av);
		
		scheduleDAO d=new scheduleDAO();
		List l=d.search1(v);
		
		HttpSession session=request.getSession();
		session.setAttribute("edit", l);
		List l2=d.search456();
		session.setAttribute("search",l2);
		
		response.sendRedirect("User/pickup_schedule1.jsp");
		
		
	}
	
	void loaddb1(HttpServletRequest request, HttpServletResponse response) throws IOException
	{	
		addareaDAO d= new addareaDAO();
		List l=d.search();
		HttpSession session=request.getSession();
		session.setAttribute("search",l);
		response.sendRedirect("User/Track_Dustbin.jsp");
		
	}
}
