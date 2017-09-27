package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.addstaffDAO;
import DAO.addzoneDAO;
import DAO.companylistDAO;
import VO.AddStaffVO;
import VO.CompanyStaffVO;
import VO.CompanylistVO;
import VO.ZoneVO;

/**
 * Servlet implementation class addstaff
 */
@WebServlet("/addstaff")
public class addstaff extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addstaff() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String s1=request.getParameter("flag");
		if(s1.equals("insert"))
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
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("In do Get");
		
	
	
	}
	void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		System.out.println("111111111111111111");
		String s2=request.getParameter("name");
		String s3=request.getParameter("email");
			
		String s5=request.getParameter("radio");
		
		String s7=request.getParameter("address");
		String s8=request.getParameter("post");
		int s9=Integer.parseInt(request.getParameter("phone"));
		System.out.println(s2+s5+s7+s8);
		AddStaffVO v=new AddStaffVO();
		v.setName(s2);
		v.setEmail(s3);  
		v.setGender(s5);
		v.setAddress(s7);
		v.setPost(s8);
		v.setPhoneno(s9);
		System.out.println(v.getName());
		addstaffDAO v1=new addstaffDAO();
		
		v1.insert(v);
		
		response.sendRedirect("AddStaff.jsp");
	}
	
	void search(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
	{
		CompanyStaffVO v=new CompanyStaffVO();
		addstaffDAO d=new addstaffDAO();
		List l=d.search();
//		System.out.println(l.size());
		HttpSession session=request.getSession();
		session.setAttribute("search", l);
		response.sendRedirect("SearchStaff.jsp");
	}	
		
	void edit(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
	{
		List l;
		int i=Integer.parseInt(request.getParameter("staffid"));	
		
		AddStaffVO v=new AddStaffVO();
		v.setStaffId(i);
		
		addstaffDAO d=new addstaffDAO();
		l=d.edit(v);
		
		HttpSession session=request.getSession();
		session.setAttribute("edit", l);
		
		response.sendRedirect("EditStaff.jsp");
		
		
	}
	
	void update(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
	{
		

		System.out.print("hiiiiiiiiii");
		int i=Integer.parseInt(request.getParameter("id"));
		String s=request.getParameter("n1");
		String s1=request.getParameter("email");
		int j=Integer.parseInt(request.getParameter("phone"));
		
		String s3=request.getParameter("address");
		String s4=request.getParameter("post");
		String s5=request.getParameter("radio");
		

		


		AddStaffVO v=new AddStaffVO();
		v.setStaffId(i);
		v.setName(s);
		v.setEmail(s1);
		v.setGender(s5);
		v.setPhoneno(j);
		v.setAddress(s3);
		v.setPost(s4);
		
		System.out.println("CALL UPDATE");
		
		addstaffDAO d=new addstaffDAO();
		d.update(v);
		
		search(request,response);
		
	}

	void delete(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
	{
		

		
		int i=Integer.parseInt(request.getParameter("staffid"));

		HttpSession httpSession=request.getSession();
		AddStaffVO v=new AddStaffVO();
		v.setStaffId(i);
		
		addstaffDAO d=new addstaffDAO();
		
		if(!d.delete(v)){
			
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
