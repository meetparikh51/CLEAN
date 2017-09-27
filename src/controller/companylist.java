package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.ws.Response;

import org.hibernate.sql.Insert;

import DAO.addzoneDAO;
import DAO.companylistDAO;
import VO.CompanylistVO;
import VO.ZoneVO;

/**
 * Servlet implementation class companylist
 */
@WebServlet("/companylist")
public class companylist extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public companylist() {
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
		else if(s1!=null && s1.equals("search"))
		{
			search(request,response);
		}
		else if(s1!=null && s1.equals("delete"))
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
	void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String s2=request.getParameter("companyname");
		String s3=request.getParameter("url");
		int s4=Integer.parseInt(request.getParameter("regno"));	
		String s5=request.getParameter("city");
		String s6=request.getParameter("Address1");
		String s7=request.getParameter("Address2");
		String s8=request.getParameter("email");
		int s9=Integer.parseInt(request.getParameter("Phone"));
		
		CompanylistVO v=new CompanylistVO();
		v.setCompanyName(s2);
		v.setWebsiteUrl(s3);
		v.setRegistrationNo(s4);
		v.setCity(s5);
		v.setAddress1(s6);
		v.setAddress2(s7);
		v.setEmail(s8);
		v.setPhone(s9);
	
		companylistDAO v1=new companylistDAO();
		
		v1.insert(v);
		
		response.sendRedirect("Company_Signup.jsp");
	}
	
	void search(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
	{
		CompanylistVO v=new CompanylistVO();
		companylistDAO d=new companylistDAO();
		List l=d.search();
//		System.out.println(l.size());
		HttpSession session=request.getSession();
		session.setAttribute("search", l);
		response.sendRedirect("admin_companylist.jsp");
	}	
	void delete(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
	{
		

		
		int i=Integer.parseInt(request.getParameter("companylistId"));


		CompanylistVO v=new CompanylistVO();
		v.setCompanylistId(i);
		
		companylistDAO d=new companylistDAO();
		d.delete(v);
		
		search(request,response);
		
	}
	
	
}
