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
import VO.RoadSideVO;
import VO.WardVO;
import VO.ZoneVO;
import DAO.addareaDAO;
import DAO.addwardDAO;
import DAO.addzoneDAO;
import DAO.roadsideDAO;

/**
 * Servlet implementation class roadside
 */
@WebServlet("/roadside")
public class roadside extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public roadside() {
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
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
	void load(HttpServletRequest request, HttpServletResponse response) throws IOException
	{	
		roadsideDAO d = new roadsideDAO();
		
		List l=d.search();
	
		HttpSession session=request.getSession();
		session.setAttribute("search",l);
		
		response.sendRedirect("User/roadside_pickup.jsp");
		
	}
	
	public void insert(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		
		
		String s1=(String)request.getParameter("name");
		String s2=(String)request.getParameter("time");
		String s3=(String)request.getParameter("add1");
		String s4=(String)request.getParameter("add2");
		int i=Integer.parseInt(request.getParameter("area"));
		
		
		AreaVO v1=new AreaVO();
		v1.setAreaId(i);
		
	
		
		RoadSideVO v=new RoadSideVO();
		v.setAddress1(s3);
		v.setAddress2(s4);
		v.setName(s1);
		v.setTime(s2);
		v.setAreaId(v1);
		
		
		
		roadsideDAO d=new roadsideDAO();
		d.insert(v);
		
		response.sendRedirect("User/User_index.jsp");
	}
}


