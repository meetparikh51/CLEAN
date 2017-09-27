package controller;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.AttachmentMappingDAO;
import DAO.addzoneDAO;
import DAO.companyregistrationDAO;
import DAO.login_DAO;
import VO.AttachmentMappingVO;
import VO.CompanyRegistrationVO;
import VO.ZoneVO;
import VO.login_vo;

/**
 * Servlet implementation class companyregistration
 */
@WebServlet("/companyregistration")
public class companyregistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public companyregistration() {
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
		
		if(s1!=null && s1.equals("edit"))
		{
			edit(request,response);
		}
		else if(s1!=null && s1.equals("update"))
		{
			update(request,response);
		}
		
		else if(s1.equals("validate"))
		{
			validateemail(request,response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String s1=request.getParameter("flag");
		if(s1!=null && s1.equals("insert"))
		{
			insert(request,response);
		}
		
	}
	
	/*void insert(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException
	{
		int s2=Integer.parseInt(request.getParameter("regno"));
		String s3=request.getParameter("companyname");
		String s4=request.getParameter("url");
		String s5=request.getParameter("city");
		String s6=request.getParameter("Address1");
		String s7=request.getParameter("Address2");
		int s11=Integer.parseInt(request.getParameter("phone"));
		String s8=request.getParameter("email");
		String s9=request.getParameter("pass1");
		String s10=request.getParameter("pass2");
		String s12=request.getParameter("usertype");
		
		login_vo v=new login_vo();
		v.setEmail(s8);
		v.setPassword(s9);
		v.setUsertype(s12);
		
		CompanyRegistrationVO v1=new CompanyRegistrationVO();
		v1.setRegistrationNo(s2);
		v1.setCompanyName(s3);
		v1.setUrl(s4);
		v1.setAddress1(s6);
		v1.setAddress2(s7);
		v1.setPhone(s11);
		v1.setUser_Id(v);
		v1.setRetypePassword(s10);
	
		login_DAO d1=new login_DAO();
		d1.insert(v);
	
		companyregistrationDAO d=new companyregistrationDAO();
		
		d.insert(v1);
		
		response.sendRedirect("Login.jsp");
	}
*/
	void insert(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException
	{
		
		
		int s2=Integer.parseInt(request.getParameter("regno"));
		String s3=request.getParameter("companyname");
		String s4=request.getParameter("url");
		/*String s5=request.getParameter("city");*/
		String s6=request.getParameter("Address1");
		String s7=request.getParameter("Address2");
		int s11=Integer.parseInt(request.getParameter("phone"));
		String s8=request.getParameter("email");
		String s9=request.getParameter("pass1");
		String s10=request.getParameter("pass2");
		String s12=request.getParameter("usertype");
		
		login_vo v=new login_vo();
		v.setEmail(s8);
		v.setPassword(s9);
		v.setUsertype(s12);
		
		CompanyRegistrationVO v1=new CompanyRegistrationVO();
		v1.setRegistrationNo(s2);
		v1.setCompanyName(s3);
		v1.setUrl(s4);
		v1.setAddress1(s6);
		v1.setAddress2(s7);
		v1.setPhone(s11);
		v1.setEmail(s8);
		v1.setPassword(s9);
		v1.setRetypePassword(s10);
		v1.setUser_Id(v);
		
		
		login_DAO d1=new login_DAO();
		d1.insert(v);
	
		companyregistrationDAO d=new companyregistrationDAO();
		d.insert(v1);
		
		AttachmentMappingVO attachMPGVO = new AttachmentMappingVO();
		
		attachMPGVO.setAttachment(v1);
		
		

		AttachmentMappingDAO attachMPG_DAO= new AttachmentMappingDAO();
		
		
		//getting file from Session
		
		HttpSession session =request.getSession();
		
		List myList=(List)session.getAttribute("fileList");
		
		 Iterator itr =  myList.iterator();
         
         System.out.println("Reading for session");
         int i =0;
         while (itr.hasNext()) {
     
        	 attachMPGVO.setAttachmentName("Photo"+i);
        	 attachMPGVO.setPath((String)itr.next());
        	 
        	 attachMPG_DAO.insert(attachMPGVO);
        	 
        	 i++;
			}
		

		
		session.removeAttribute("fileList");

		
		response.sendRedirect("Login.jsp");
	}
	void edit(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
	{
		List l;
		int i=Integer.parseInt(request.getParameter("id"));	
		
		CompanyRegistrationVO v=new CompanyRegistrationVO();
		login_vo lv=new login_vo();
		lv.setUser_Id(i);
		v.setUser_Id(lv);
		
		companyregistrationDAO d=new companyregistrationDAO();
		l=d.edit(v);
		
		HttpSession session=request.getSession();
		session.setAttribute("edit", l);
		
		response.sendRedirect("company_profile_edit.jsp");
		
		
	}
	void update(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
	{
		

		
		int i=Integer.parseInt(request.getParameter("id"));
		String s=request.getParameter("cname");
		String s1=request.getParameter("url");
		String s2=request.getParameter("add1");
		String s3=request.getParameter("add2");
		String s4=request.getParameter("email");
		int j=Integer.parseInt(request.getParameter("phone"));
	


		login_vo v=new login_vo();
		v.setEmail(s4);
		v.setUser_Id(j);
		
		CompanyRegistrationVO v1=new CompanyRegistrationVO();
		v1.setCompanyName(s);
		v1.setUrl(s1);
		v1.setAddress1(s2);
		v1.setAddress2(s3);
		v1.setEmail(s4);
		v1.setPhone(j);
		v1.setUser_Id(v);
		
		login_DAO d1=new login_DAO();
		d1.update(v);
	
		companyregistrationDAO d=new companyregistrationDAO();
		d.update(v1);
		
		response.sendRedirect("Company_index.jsp");
		
	}
protected void validateemail(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email=request.getParameter("email");
		
		if(email != null)
		{	
			
			System.out.println(email);
			CompanyRegistrationVO v=new CompanyRegistrationVO();
			v.setEmail(email);
			
			companyregistrationDAO d=new companyregistrationDAO();
			List list=d.validateemail(v);
			
			HttpSession session=request.getSession();
			
			if(list.size() >= 1)
			{
				session.setAttribute("returnFlag", "false");
			}
			else
			{
				session.setAttribute("returnFlag", "true");
			}
			
		
			response.sendRedirect("loadReturnFlag.jsp");
		}
	}

}
