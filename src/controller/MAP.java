package controller;

import java.io.*;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.Text;



import VO.AddDustbinVO;
import DAO.adddustbinDAO;


/**
 * Servlet implementation class MAP
 */
@WebServlet("/MAP")
public class MAP extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		int dustID = Integer.parseInt(request.getParameter("dustbinId"));

		System.out.println("in get");
		HttpSession session = request.getSession();
		String pincode = String.valueOf(session.getAttribute("pincode"));

		try {
			String result = "";
			result += "<root>";
			System.out.println("in Map.java");

			adddustbinDAO ad = new adddustbinDAO();
			List ls = ad.search3(dustID);
			Iterator i = ls.iterator();
			AddDustbinVO mcv = new AddDustbinVO();
			while (i.hasNext()) {
				mcv = (AddDustbinVO) i.next(); 
				result += "<data>";
				String s1 = String.valueOf(mcv.getLatitude());

				result += "<latitude>" + s1 + "</latitude>";

				String s2 = String.valueOf(mcv.getLongitude());
				result += "<longitude>" + s2 + "</longitude>";

				result += "</data>";
				System.out.println("Latitude::" + s1 + "longitude::" + s2);
			}

			result += "</root>";
			PrintWriter out = response.getWriter();
			out.println(result);
			System.out.println(result);

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

	}

}
