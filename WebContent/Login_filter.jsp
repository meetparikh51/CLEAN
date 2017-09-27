package cantroller;

import java.io.IOException;
import java.net.URI;
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

import DAO.RegistrationMstDAO;
import VO.RegistrationMstVO;
 

/**
 * Servlet Filter implementation class loginController
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
		String reg = request.getParameter("reg");
		System.out.println("registration flag===" + reg);
		//	int i = (Integer)session.getAttribute("userID");
		//System.out.println("id = = = = =" + i);
		String uri = ((HttpServletRequest)request).getRequestURI();
		
		
		System.out.println("link =  = = = = " + uri);
		
		if(uri.contains("register")||uri.contains("/css") || uri.contains("/js")&&!uri.contains("/jsp")|| uri.contains("/img")|| uri.contains("/fonts")||uri.contains("Controller"))
		{
			System.out.println("inside reg");
			
			//requestDispatcher = request.getRequestDispatcher("/user/register.jsp");  
			//requestDispatcher.forward(request,response);  
			
			chain.doFilter(request,response);
			
		}
		
		else if (logout!= null) {
			//session.removeAttribute("userID");
			System.out.println("logout in else if");
		
			session.invalidate();
			System.out.println("after session invalidates");
			RequestDispatcher rd;
			rd = request.getRequestDispatcher("/user/login.jsp");
			rd.forward(request, response);
			
		}
		
		else if(request.getParameter("flag") != null && request.getParameter("flag").equals("login") )
		{
			String userName = request.getParameter("userName");
			String password = request.getParameter("password");
			System.out.println(userName+""+password);
			
			RegistrationMstVO registrationMstVO = new RegistrationMstVO();
			registrationMstVO.setUserName(userName);
			registrationMstVO.setPassword(password);
			
			RegistrationMstDAO registrationMstDAO = new RegistrationMstDAO();
			List list =  registrationMstDAO.authentication(registrationMstVO);
			
		
			if(list != null && list.size()>=1){
				
				Iterator itr = list.iterator();
				
				//while(itr.hasNext()){
				RegistrationMstVO user=(RegistrationMstVO) itr.next();
				
				int y = (Integer)user.getUserId();
				session.setAttribute("userID",y);
				
				System.out.println(user.getUserType());
			//	System.out.println(session.getAttribute("userId"));
				String type = user.getUserType();
				session.setAttribute("usertype",type);
				System.out.println(y);
				if(type.equals("user"))
				{
				requestDispatcher = request.getRequestDispatcher("/user/user-private-timeline.jsp");  
				requestDispatcher.forward(request,response);  
				}
				else
				{
			
				requestDispatcher = request.getRequestDispatcher("/admin/dashboard.jsp");  
				requestDispatcher.forward(request,response);  
				}
				}
			
			else{
					requestDispatcher = request.getRequestDispatcher("/user/login.jsp");  
					requestDispatcher.forward(request,response);  		
				}	
		}
		
		else if(session.getAttribute("userID") != null)
		{
			String h = (String)session.getAttribute("usertype");
			System.out.println("type = = = " + h);
			
			if(h!=null && h.equals("admin") && uri.contains("/admin")){
				
			System.out.println("chain");
			chain.doFilter(request,response);
			}
			
			else if(h!=null && h.equals("user") && uri.contains("/user"))
			{
				System.out.println("chain");
				chain.doFilter(request, response);
			}
			else{
				RequestDispatcher rd = request.getRequestDispatcher("/user/error.jsp");  
				rd.forward(request,response);  
	
				
			}
		}
		else{
			
		
			
			RequestDispatcher rd = request.getRequestDispatcher("/user/login.jsp");  
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
