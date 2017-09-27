package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import VO.AddTenderVO;
import VO.AreaVO;
import VO.WardVO;
import VO.ZoneVO;
import DAO.addareaDAO;
import DAO.addtenderDAO;
import DAO.addwardDAO;
import DAO.addzoneDAO;

/**
 * Servlet implementation class addtender
 */
@WebServlet("/addtender")
public class addtender extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addtender() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String s=request.getParameter("flag");
		
		if(s!=null && s.equals("loadtender"))
		{
			load(request,response);
		}
		
		else if(s!=null && s.equals("insert"))
		{
			insert(request,response);
		}	
		else if(s!=null && s.equals("search"))
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
		
	}
	void load(HttpServletRequest request, HttpServletResponse response) throws IOException 
	{
		
		addareaDAO dao = new addareaDAO();
		
		List l=dao.search();
		
		HttpSession session=request.getSession();
		
		session.setAttribute("search",l);
		
		response.sendRedirect("AddTender.jsp");
		
	}
	
	public void insert(HttpServletRequest request, HttpServletResponse response) throws IOException  
	{
		String s1=(String)request.getParameter("tendername");
		String s2=(String)request.getParameter("description");
		String s3=(String)request.getParameter("from");
		String s4=(String)request.getParameter("to");
		
		int i = Integer.parseInt(request.getParameter("tenderno"));
		int j = Integer.parseInt(request.getParameter("staffno"));
		int k = Integer.parseInt(request.getParameter("money"));
		int l = Integer.parseInt(request.getParameter("area"));
		int m = Integer.parseInt(request.getParameter("amount"));
		
				
		AreaVO vo = new AreaVO();
		vo.setAreaId(l);
		
		AddTenderVO v=new AddTenderVO();
		v.setAreaName(vo);
		v.setTenderName(s1);
		v.setDescription(s2);
		v.setDateFrom(s3);
		v.setDateTo(s4);
		v.setTenderAmount(m);
		v.setTenderNo(i);
		v.setStaffNumber(j);
		v.setDepositedMoney(k);
		
		addtenderDAO d=new addtenderDAO();
		d.insert(v);
		
		response.sendRedirect("AddTender.jsp");
		
	}
	
	void search(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
	{
		AddTenderVO v=new AddTenderVO();
		addtenderDAO d=new addtenderDAO();
		List l=d.search();
		
		HttpSession session=request.getSession();
		session.setAttribute("search", l);
		
		response.sendRedirect("searchtender.jsp");
	}
	
	void edit(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
	{
		List l;
		int i=Integer.parseInt(request.getParameter("tenderid"));	
		
		AddTenderVO v=new AddTenderVO();
		v.setTenderId(i);
		
		addtenderDAO d=new addtenderDAO();
		l=d.edit(v);
		
		HttpSession session=request.getSession();
		session.setAttribute("edit", l);
		
		response.sendRedirect("tenderedit.jsp");
		
		
	}

	void update(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
	{
		
		int n=Integer.parseInt(request.getParameter("id"));
		String s1=(String)request.getParameter("tendername");
		String s2=(String)request.getParameter("description");
		String s3=(String)request.getParameter("from");
		String s4=(String)request.getParameter("to");
		
		int i = Integer.parseInt(request.getParameter("tenderno"));
		int j = Integer.parseInt(request.getParameter("staffno"));
		int k = Integer.parseInt(request.getParameter("money"));
		int l = Integer.parseInt(request.getParameter("area"));
		int m = Integer.parseInt(request.getParameter("amount"));

		AreaVO v1=new AreaVO();
		v1.setAreaId(l);
	
		
		
		AddTenderVO v=new AddTenderVO();
		v.setTenderId(n);
		
		v.setTenderName(s1);
		v.setDescription(s2);
		v.setDateFrom(s3);
		v.setDateTo(s4);
		v.setTenderNo(i);
		v.setStaffNumber(j);
		v.setDepositedMoney(k);
		v.setTenderAmount(m);
		v.setAreaId(v1);
		
		System.out.println("CALL UPDATE");
		
		addareaDAO d1=new addareaDAO();
		d1.search();
		
		addtenderDAO d=new addtenderDAO();
		d.update(v);
		
		search(request,response);
		
	}


	void delete(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
	{
		

		
		int i=Integer.parseInt(request.getParameter("tenderid"));


		AddTenderVO v=new AddTenderVO();
		v.setTenderId(i);
		
		addtenderDAO d=new addtenderDAO();
		d.delete(v);
		
		search(request,response);
		
	}
	
	

}
