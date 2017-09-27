package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import VO.AddScheduleVO;
import VO.AreaVO;
import VO.MedicalWasteVO;
import DAO.addareaDAO;
import DAO.medicalwasteDAO;
import DAO.scheduleDAO;

/**
 * Servlet implementation class medicalwaste
 */
@WebServlet("/medicalwaste")
public class medicalwaste extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public medicalwaste() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String s1=request.getParameter("flag");
		
		if(s1!=null && s1.equals("loadName"))
		{
			load(request,response);
		}
		
		else if(s1!=null && s1.equals("insert"))
		{
			insert(request,response);
		}
		
		else if(s1!=null && s1.equals("search"))
		{
			search(request,response);
		}
		
		else if(s1!=null && s1.equals("delete"))
		{
			delete(request,response);
		}
		else if(s1!=null && s1.equals("loadschedule"))
		{
			loadschedule(request,response);
		}
		else if(s1!=null && s1.equals("run"))
		{
			run(request,response);
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
		addareaDAO d= new addareaDAO();
		List l=d.search();
		HttpSession session=request.getSession();
		session.setAttribute("search",l);
		response.sendRedirect("Addmedicalwaste.jsp");
		
	}
	
	void insert(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException
	{	
		
		int i=Integer.parseInt(request.getParameter("area"));
		
		String s2=request.getParameter("time");
		
		AreaVO v=new AreaVO();
		v.setAreaId(i);
	
		MedicalWasteVO v1=new MedicalWasteVO();
		v1.setTime(s2);
		v1.setAreaId(v);
		
		medicalwasteDAO d=new medicalwasteDAO();
		
		d.insert(v1);
		
		response.sendRedirect("Addmedicalwaste.jsp");
	}
	void search(HttpServletRequest request, HttpServletResponse response)throws IOException
	{
		MedicalWasteVO v=new MedicalWasteVO();
		medicalwasteDAO d=new medicalwasteDAO();
		List l=d.searchfinal();
		HttpSession session=request.getSession();
		session.setAttribute("search", l);
		response.sendRedirect("searchmedicalschedule.jsp");
	}
	
	void delete(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
	{
		

		
		int i=Integer.parseInt(request.getParameter("medicalwasteid"));


		MedicalWasteVO v=new MedicalWasteVO();
		v.setMedicalwasteId(i);
		
		medicalwasteDAO d=new medicalwasteDAO();
		d.delete(v);
		
		search(request,response);
		
	}
	
	void loadschedule(HttpServletRequest request, HttpServletResponse response) throws IOException
	{	
		addareaDAO d= new addareaDAO();
		List l=d.search();
		HttpSession session=request.getSession();
		session.setAttribute("search",l);
		response.sendRedirect("User/medical_pickup_schedule.jsp");
		
	}
	
	void run(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
	{
		
		int i=Integer.parseInt(request.getParameter("area"));	
		AreaVO av=new AreaVO();
		av.setAreaId(i);
		MedicalWasteVO v=new MedicalWasteVO();
		v.setAreaId(av);
		
		medicalwasteDAO d=new medicalwasteDAO();
		List l=d.search1(v);
		
		HttpSession session=request.getSession();
		session.setAttribute("edit", l);
		List l2=d.search456();
		session.setAttribute("search",l2);
		
		response.sendRedirect("User/medical_pickup_schedule1.jsp");
		
		
	}
}
