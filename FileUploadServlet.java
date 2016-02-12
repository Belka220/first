
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileItemStream;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;



public class FileUploadServlet  extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException,ServletException {

        request.setCharacterEncoding("UTF-8");

        boolean isMultipart = ServletFileUpload.isMultipartContent(request);
        FileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);

        String FileName = null;
        long fileSize = 0;
        try {
            List items = upload.parseRequest(request);
            Iterator iter = items.iterator();
            while (iter.hasNext()) {
                FileItem item = (FileItem) iter.next();
                if (!item.isFormField()) {
                    if (item.getSize() > 0) {
                        byte[] FileData = item.get();           //сами данные
                        FileName = item.getName();
                        fileSize = item.getSize();
                        System.out.println(FileName + " : " + fileSize);

                        InputStream fileStream = item.getInputStream();

                        Connect connect = new Connect();
                        try {
                            connect.Connect();
                            connect.WriteDB(FileName, fileStream , fileSize);
                            connect.CloseDB();
                        } catch (ClassNotFoundException e) {
                            e.printStackTrace();
                        } catch (SQLException e) {
                            e.printStackTrace();
                        }
                    }
                }

            }

        } catch (FileUploadException e) {
            e.printStackTrace();
        }

        String ggg = "AAAA";

        request.setAttribute("f2",ggg);
        request.getRequestDispatcher("/view.jsp").forward(request, response);


    }

    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
    }
    }
