package Action;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Createquery
 */
@WebServlet("/Create")
public class Create extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	/*
	 * public create() { super(); // TODO Auto-generated constructor stub }
	 */

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
		try{
            Connection con = Dbconnection.getConnection();
                Statement st = con.createStatement();

                int i = st.executeUpdate("CREATE TABLE IF NOT EXISTS `emp_reg` ( `empid` int(10) NOT NULL AUTO_INCREMENT, `empname` varchar(100) NOT NULL, `password` varchar(50) NOT NULL, `email` varchar(100) NOT NULL, `Gender` varchar(100) NOT NULL, `dob` varchar(100) NOT NULL, `phoneno` varchar(100) NOT NULL, `address` varchar(100) NOT NULL, `status` varchar(10) NOT NULL, PRIMARY KEY (`empid`) )");
                if (i != 0) if (i != 0) {
                	
                response.sendRedirect("Created database");

                } else {
                    System.out.println("error while Creating database");
                }
        } catch (Exception e) {
        	System.out.println(e);}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
