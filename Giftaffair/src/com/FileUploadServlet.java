package com;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import java.sql.*;

public class FileUploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	// location to store file uploaded
	private static final String UPLOAD_DIRECTORY = "//Giftaffair//WebContent//images//prodImages";

	// upload settings
	private static final int MEMORY_THRESHOLD 	= 1024 * 1024 * 3; 	// 3MB
	private static final int MAX_FILE_SIZE 		= 1024 * 1024 * 40; // 40MB
	private static final int MAX_REQUEST_SIZE	= 1024 * 1024 * 50; // 50MB

	/**
	 * Upon receiving file upload submission, parses the request to read
	 * upload data and saves the file on disk.
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
				
		String p_id = "";
		String imageName = "";
		String imageNamePath = "";
		// checks if the request actually contains upload file
		if (!ServletFileUpload.isMultipartContent(request)) {
			// if not, we stop here
			PrintWriter writer = response.getWriter();
			writer.println("Error: Form must has enctype=multipart/form-data.");
			writer.flush();
			
		}else {

		// configures upload settings
		DiskFileItemFactory factory = new DiskFileItemFactory();
		// sets memory threshold - beyond which files are stored in disk 
		factory.setSizeThreshold(MEMORY_THRESHOLD);
		// sets temporary location to store files
		factory.setRepository(new File(System.getProperty("java.io.tmpdir")));

		ServletFileUpload upload = new ServletFileUpload(factory);
		
		// sets maximum size of upload file
		upload.setFileSizeMax(MAX_FILE_SIZE);
		
		// sets maximum size of request (include file + form data)
		upload.setSizeMax(MAX_REQUEST_SIZE);

		// constructs the directory path to store upload file
		// this path is relative to application's directory
		String uploadPath = getServletContext().getRealPath("/");
		uploadPath = uploadPath.substring(0, uploadPath.indexOf(".metadata")) + File.separator + UPLOAD_DIRECTORY;
		System.out.println("uploadPath: "+uploadPath);
		// creates the directory if it does not exist
		File uploadDir = new File(uploadPath);
		if (!uploadDir.exists()) {
			uploadDir.mkdir();
		}
		String p_name = "";
		String cat_id = "";
		String p_price = "";
		String p_desc = "";
		try {
			// parses the request's content to extract file data
			@SuppressWarnings("unchecked")
			List<FileItem> formItems = upload.parseRequest(request);

			if (formItems != null && formItems.size() > 0) {
				// iterates over form's fields
				for (FileItem item : formItems) {
					// processes only fields that are not form fields
					if(item.getFieldName().equals("p_name")){
						p_name =item.getString();
						System.out.println(p_name);
					}
					if(item.getFieldName().equals("cat_id")){
						cat_id =item.getString();
						System.out.println(cat_id);
					}
					if(item.getFieldName().equals("p_price")){
						p_price =item.getString();
						System.out.println(p_price);
					}
					if(item.getFieldName().equals("p_desc")){
						p_desc =item.getString();
						System.out.println(p_desc);
					}
					if (!item.isFormField()) {
						String fileName = new File(item.getName()).getName();
						String filePath = uploadPath + File.separator + fileName;
						File storeFile = new File(filePath);
						imageName = fileName;
						// saves the file on disk
						item.write(storeFile);
						request.setAttribute("message",
								"Upload has been done successfully!");
					}
				}
			}
			
			addUpdateProduct(p_name, cat_id, p_price, imageName, p_desc,p_id);
			request.setAttribute("message",
					"Product updated successfully ");
			RequestDispatcher rd = request.getRequestDispatcher("addproduct.jsp"); 
			rd.forward(request, response);
			
		} catch (Exception ex) {
			System.out.println(ex);
			request.setAttribute("message",
					"There was an error: " + ex.getMessage());
		}
	}

	}

	private void addUpdateProduct(String p_name, String cat_id, String p_price, String imageName, String p_desc,
			String p_id) {
		try {
			String sql = "";
			if(p_id!=null && !p_id.equals("")) {
				
				System.out.println("");
			}else {
				sql = "insert into products(p_name,cat_id,p_price,p_img,p_desc) values('"+p_name+"','"+cat_id+"','"+p_price+"','"+imageName+"','"+p_desc+"')";
			}
			
			try{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/giftaffair","root","");
				Statement stmt = con.createStatement();
				
				int i = stmt.executeUpdate(sql);
				if(i>0)
				{
					System.out.println("Product updated successfully");
				}
				}catch(Exception e){
					System.out.println(e);
					e.printStackTrace();
				}
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
	}
}