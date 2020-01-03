package mosesk.ems;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.LoggerFactory;
import org.slf4j.Logger;
import org.springframework.web.multipart.MultipartFile;

public class PhotoUploadUtility {
	private static final String ABS_PATH = "/home/moses/STSProjects/ems/src/main/resources/static/imageFolder/";
	private static String REAL_PATH = "";
	private static final Logger loggerFactory = LoggerFactory.getLogger(PhotoUploadUtility.class);
	
	public static void uploadPhoto(HttpServletRequest request, MultipartFile employeePhoto) {
		REAL_PATH = request.getSession().getServletContext().getRealPath("/imageFolder/");
		loggerFactory.info(REAL_PATH);
		
		if(!new File(ABS_PATH).exists()) {
			new File(ABS_PATH).mkdir();
			
		}
		
		if(!new File(REAL_PATH).exists()) {
			new File(REAL_PATH).mkdir();
			
		}
		try {
//			Server Upload
			employeePhoto.transferTo(new File(REAL_PATH + ".jpg"));
			
			// Project directory upload
			employeePhoto.transferTo(new File(ABS_PATH + ".jpg"));
			
			
		}catch(IOException ex) {
			ex.printStackTrace();
			
		}
		
		
		
	
		
	}
	
	

}
