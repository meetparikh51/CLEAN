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

import DAO.addzoneDAO;
import VO.WardVO;
import VO.ZoneVO;

/**
 * Servlet implementation class addzone
 */
@WebServlet("/addzone")
public class addzone extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addzone() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String s1=request.getParameter("flag");
		if(s1!=null && s1.equals("f"))
		{
			insert(request,response);
		}
		else if(s1!=null && s1.equals("search"))
		{
			search(request,response);
		}
		else if(s1!=null && s1.equals("edit"))
		{
			edit(request,response);
		}
		else if(s1!=null && s1.equals("update"))
		{
			update(request,response);
		}
		else if(s1!=null && s1.equals("delete"))
		{
			delete(request,response);
		}
		else if(s1!=null && s1.equals("loadzone"))
		{
			loadzone(request,response);
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
		String s2=request.getParameter("name");
		String s3=request.getParameter("description");
		
		ZoneVO v=new ZoneVO();
		v.setZoneName(s2);
		v.setDescription(s3);
	
		addzoneDAO v1=new addzoneDAO();
		
		v1.insert(v);
		
		response.sendRedirect("AddZone.jsp");
	}
	

	
void search(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
{
	ZoneVO v=new ZoneVO();
	addzoneDAO d=new addzoneDAO();
	List l=d.search();
//	System.out.println(l.size());
	HttpSession session=request.getSession();
	session.setAttribute("search", l);
	response.sendRedirect("searchzone.jsp");
}	

void edit(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
{
	List l;
	int i=Integer.parseInt(request.getParameter("zoneid"));	
	
	ZoneVO v=new ZoneVO();
	v.setZoneId(i);
	
	addzoneDAO d=new addzoneDAO();
	l=d.edit(v);
	
	HttpSession session=request.getSession();
	session.setAttribute("edit", l);
	
	response.sendRedirect("zoneedit.jsp");
	
	
}

void update(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
{
	

	System.out.print("hiiiiiiiiii");
	int i=Integer.parseInt(request.getParameter("id"));
	String s=request.getParameter("n1");
	String s1=request.getParameter("n2");

	System.out.println("name = "+s+"desc = "+s1);


	ZoneVO v=new ZoneVO();
	v.setZoneId(i);
	v.setZoneName(s);
	v.setDescription(s1);
	
	System.out.println("CALL UPDATE");
	
	addzoneDAO d=new addzoneDAO();
	d.update(v);
	
	search(request,response);
	
}


void delete(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
{
	

	
	int i=Integer.parseInt(request.getParameter("zoneid"));


	ZoneVO v=new ZoneVO();
	v.setZoneId(i);
	
	addzoneDAO d=new addzoneDAO();
	d.delete(v);
	
	search(request,response);
	
}

private void loadzone(HttpServletRequest request,
		HttpServletResponse response) throws IOException 
{
	
	int i=Integer.parseInt(request.getParameter("wardid"));
	WardVO v=new WardVO();
	v.setWardId(i);
	addzoneDAO d=new addzoneDAO();
//	List l=d.searchzone(v);
	HttpSession hs=request.getSession();
//	hs.setAttribute("loadzone", l);
	response.sendRedirect("AddArea.jsp");
}

}





