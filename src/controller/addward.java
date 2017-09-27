package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.addwardDAO;
import DAO.addzoneDAO;
import VO.WardVO;
import VO.ZoneVO;

/**
 * Servlet implementation class addward
 */
@WebServlet("/addward")
public class addward extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addward() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String s=request.getParameter("flag");
		System.out.println(s);
		if(s!=null && s.equals("loadZone"))
		{
			load(request,response);
		}
		
		else if(s!=null && s.equals("insert"))
		{
			insert(request,response);
		}	
		 if(s!=null && s.equals("search"))
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
		String s=request.getParameter("flag");
		if(s!=null && s.equals("insert"))
		{
			insert(request,response);
		}	
		
	}
	public void insert(HttpServletRequest request, HttpServletResponse response) throws IOException  
	{
		String s1=(String)request.getParameter("name");
		String s2=(String)request.getParameter("comment");
		int i = Integer.parseInt(request.getParameter("zone"));
				
		ZoneVO vo = new ZoneVO();
		vo.setZoneId(i);
		
		WardVO v=new WardVO();
		v.setWardName(s1);
		v.setDescription(s2);
		v.setZoneId(vo);
		
		addwardDAO d=new addwardDAO();
		d.insert(v);
		
		response.sendRedirect("AddWard.jsp");
		
	}
	void load(HttpServletRequest request, HttpServletResponse response) throws IOException 
	{
		
		addzoneDAO dao = new addzoneDAO();
		
		List l=dao.search();
		
		HttpSession session=request.getSession();
		
		session.setAttribute("search",l);
		
		response.sendRedirect("AddWard.jsp");
		
	}
	
	void search(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
	{
		WardVO v=new WardVO();
		addwardDAO d=new addwardDAO();
		List l=d.search();
		//System.out.println("sizeeeeeeeee"+l.size());
		HttpSession session=request.getSession();
		session.setAttribute("search", l);
		//System.out.println("Searchhhhhhhhhhhhhh");
		response.sendRedirect("searchward.jsp");
	}
	
	void edit(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
	{
		List l;
		List l1;
		int i=Integer.parseInt(request.getParameter("wardid"));	
		
		WardVO v=new WardVO();
		v.setWardId(i);
		
		ZoneVO v1=new ZoneVO();
		addzoneDAO d1=new addzoneDAO();
		d1.search();
		
		addwardDAO d=new addwardDAO();
		l=d.edit(v);
		l1=d1.search();
		HttpSession session=request.getSession();
		session.setAttribute("edit", l);
		session.setAttribute("search",l1);
		
		response.sendRedirect("editward.jsp");
		
		
	}
	
	
	void update(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
	{
		

		//System.out.print("hiiiiiiiiii");
		int i=Integer.parseInt(request.getParameter("id"));
		String s=request.getParameter("n1");
		String s1=request.getParameter("n2");
		int i1=Integer.parseInt(request.getParameter("zone"));

		System.out.println("name = "+s+"desc = "+s1);

		ZoneVO v1=new ZoneVO();
		v1.setZoneId(i1);
		
		WardVO v=new WardVO();
		v.setWardId(i);
		v.setWardName(s);
		v.setDescription(s1);
		v.setZoneId(v1);
		//System.out.println("CALL UPDATE");
		
		addwardDAO d=new addwardDAO();
		d.update(v);
		
		
		search(request,response);
		
	}
	
	void delete(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
	{
		

		
		int i=Integer.parseInt(request.getParameter("wardid"));


		WardVO v=new WardVO();
		v.setWardId(i);
		
		addwardDAO d=new addwardDAO();
		d.delete(v);
		
		search(request,response);
		
	}

}
