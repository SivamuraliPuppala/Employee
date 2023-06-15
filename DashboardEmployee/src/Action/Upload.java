package Action;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;

@WebServlet("/Upload")
@MultipartConfig
public class Upload extends HttpServlet {

    File file;
    final String filepath = "D:/";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        // try block
        try {
        	
            MultipartRequest m = new MultipartRequest(request, filepath);
            
            String eid = m.getParameter("eid");
            String ename = m.getParameter("ename");
            String edes = m.getParameter("edescription");
             file = m.getFile("file");
            String filename = file.getName().toLowerCase();
            //FileReader input = new FileReader("C:/test1/Animal.txt");
            BufferedReader br = new BufferedReader(new FileReader(filepath + filename));
            StringBuffer sb = new StringBuffer();
            String temp = null;
            while ((temp = br.readLine()) != null) {
                sb.append(temp);
            }
            String data = sb.toString();
            //br.close();

            System.out.println("id:  "+eid+"Name:  "+ename+" Description:  "+edes+"File:  "+file+" Filename: "+filename+"   data:"+data);
            System.out.println(data);
            /*FileWriter fw = new FileWriter(file);
            fw.write(data);
            fw.close();*/
            br.close();
        try{
            Connection con = Dbconnection.getConnection();
                Statement st = con.createStatement();

                int i = st.executeUpdate("insert into fileupload( eid,ename,edescription,filename,epayslip)values('"+eid+"','"+ename+"','"+edes+"','"+filename+"','"+data+"')");
                if (i != 0) {

                    response.sendRedirect("upload.jsp?msg=File_upload successfully");

                } else {
                    out.println("error while uploading additional informations");
                }
        } catch (Exception e) {
            out.println(e);}


        } catch (Exception e) {
            out.println(e);}
    }
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	System.out.println("Inside &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&upload  servlet");
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	System.out.println("Inside &&&&&&&&&&&&&&&&&&&&&&&&&&&&&& upload  servlet");
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
