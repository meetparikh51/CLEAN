package login_filter;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import DAO.complainDAO;
import DAO.loginDAO;
import DAO.login_DAO;
import DAO.userregistrationDAO;
import VO.ComplainVO;
import VO.UserRegistrationVO;
import VO.login_vo;

/**
 * Servlet Filter implementation class LoginFilter
 */
@WebFilter("/*")
public class LoginFilter implements Filter {

    /**
     * Default constructor. 
     */
    public LoginFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here

		// pass the request along the filter chain
		HttpSession session =((HttpServletRequest) request).getSession();
		RequestDispatcher requestDispatcher;
		
		String logout = request.getParameter("logout");
		String login = request.getParameter("login");
		
		//int i = (Integer)session.getAttribute("user`");
		//System.out.println("id = = = = =" + i);
		String uri = ((HttpServletRequest)request).getRequestURI();
		
		
		System.out.println("link =  = = = = " + uri);
		
		if( uri.contains("adddustbin")||uri.contains("ForgetPassword")||uri.contains("About_us.jsp")||uri.contains("loadReturnFlag.jsp")||uri.contains("UploadServlet")||uri.contains("RegistrationController")|| uri.contains("fileupload")||  uri.contains("User_index.jsp")|| uri.contains("companyregistration")|| uri.contains("Company_Signup.jsp")||uri.contains("Login")|| uri.contains("/css") || uri.contains("/js")&&!uri.contains("/jsp")|| uri.contains("/img")|| uri.contains("/fonts")||uri.contains("Controller"))
		{
			System.out.println("inside reg");
			
			
			chain.doFilter(request,response);
			
		}
		
		else if (logout!= null ) {
			session.removeAttribute("userID");
			System.out.println("logout in else if");
		
			session.invalidate();
			System.out.println("after session invalidates");
			RequestDispatcher rd;
			rd = request.getRequestDispatcher("../Login.jsp");
			rd.forward(request, response);
			
		}
		
		
		else if(uri.contains("dologin"))
		{
						String username = request.getParameter("userid");
			String password = request.getParameter("password");
			//System.out.println(userName+""+password);
			
			login_vo v = new login_vo();
			v.setEmail(username);
			v.setPassword(password);
			
			loginDAO d= new loginDAO();
			List list = d.authentication(v);
			
		
			if(list != null && list.size()>=1){
				System.out.println("List size is  : "+list.size());
				Iterator itr = list.iterator();
				
				while(itr.hasNext()){
				login_vo user=(login_vo) itr.next();
				
				/*System.out.println(user.getUser_Name()+user.getUsertype()+user.getUser_Id());*/
				
				int y = user.getUser_Id();
				
				session.setAttribute("userID",y);
				
				System.out.println(user.getUsertype());
			//	System.out.println(session.getAttribute("userId"));
				String type = user.getUsertype();
				session.setAttribute("usertype",type);
				//System.out.println(y);
				if(type.equals("Admin"))
				{
					ComplainVO v1=new ComplainVO();
					complainDAO d1=new complainDAO();
					List ls1=d1.search();
				
					
					session.setAttribute("complain", ls1);
					
					session.setAttribute("complain_size", ls1.size());
				
					requestDispatcher = request.getRequestDispatcher("/Admin_index.jsp");  
				requestDispatcher.forward(request,response);  
				}
				
				else if(type.equals("Company"))
				{
				requestDispatcher = request.getRequestDispatcher("/Company_index.jsp");  
				requestDispatcher.forward(request,response);  
				}
				else if(type.equals("Government"))
				{
				requestDispatcher = request.getRequestDispatcher("/Government_index.jsp");  
				requestDispatcher.forward(request,response);  
				}
				else if(type.equals("User"))
				{
					UserRegistrationVO uv=new UserRegistrationVO();
					uv.setUser_Id(user);
					userregistrationDAO ud=new userregistrationDAO();
					List ls=ud.searchuser(uv);
					UserRegistrationVO urv=(UserRegistrationVO)ls.get(0);
					String u=urv.getName();
					session.setAttribute("user_name", u);
				System.out.println("inside User");
				requestDispatcher = request.getRequestDispatcher("/User/User_index1.jsp");  
				requestDispatcher.forward(request,response);  
				}
				
				}
			}
			else{
				session.setAttribute("msg", "wronggggg");
				System.out.println("last conditionnnnnnnnn");
				RequestDispatcher rd = request.getRequestDispatcher("/Login.jsp");  
				rd.forward(request,response); 
					  		
				}	
		}
			
		else if(session.getAttribute("userID") != null)
		{
			String h = (String)session.getAttribute("usertype");
			System.out.println("type = = = " + h);
			
			if(h!=null && h.equals("Admin")){
				
			System.out.println("chain");
			chain.doFilter(request,response);
			}
			
			else if(h!=null && h.equals("Company") )
			{
				System.out.println("chain");
				chain.doFilter(request, response);
			}
			
			else if(h!=null && h.equals("Government") )
			{
				System.out.println("chain");
				chain.doFilter(request, response);
			}
			
			else if(h!=null && h.equals("User") )
			{
				System.out.println("chain");
				chain.doFilter(request, response);
			}
			else
			{
				RequestDispatcher rd = request.getRequestDispatcher("/error.jsp");  
				rd.forward(request,response);  
	
				
			}
		}
		else{
			 
			/*session.setAttribute("msg", "wronggggg");*/
			System.out.println("last conditionnnnnnnnn");
			RequestDispatcher rd = request.getRequestDispatcher("/Login.jsp");  
			rd.forward(request,response);  
			
			}
		
		
		
		
		
		

		
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
