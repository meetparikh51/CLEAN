package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.companyregistrationDAO;
import DAO.login_DAO;
import DAO.userregistrationDAO;
import VO.CompanyRegistrationVO;
import VO.UserRegistrationVO;
import VO.login_vo;

/**
 * Servlet implementation class userregistration
 */
@WebServlet("/userregistration")
public class userregistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userregistration() {
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
	}
	void insert(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException
	{
		
		String s3=request.getParameter("name");
		String s4=request.getParameter("address1");
		String s6=request.getParameter("address2");
		String s7=request.getParameter("email");
		int s11=Integer.parseInt(request.getParameter("phone"));
		String s8=request.getParameter("gender");
		String s9=request.getParameter("username");
		String s10=request.getParameter("password");
		String s13=request.getParameter("confirmpassword");
		String s12=request.getParameter("usertype");
		String s14=request.getParameter("usertype1");
		
		login_vo v=new login_vo();
		v.setEmail(s9);
		v.setPassword(s10);
		v.setUsertype(s14);
		
		UserRegistrationVO v1=new UserRegistrationVO();
		v1.setName(s3);
		v1.setAddress1(s4);
		v1.setAddress2(s6);
		v1.setEmail(s7);
		v1.setPhone(s11);
		v1.setRetypePassword(s13);
		v1.setUser_Id(v);
		
	
		login_DAO d1=new login_DAO();
		d1.insert(v);
	
		userregistrationDAO d=new userregistrationDAO();
		
		d.insert(v1);
		
		
		response.sendRedirect("Login.jsp");
	}
protected void validateemail(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email=request.getParameter("email");
		
		if(email != null)
		{	
			
			System.out.println(email);
			UserRegistrationVO v=new UserRegistrationVO();
			v.setEmail(email);
			
			userregistrationDAO d=new userregistrationDAO();
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
