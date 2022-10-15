package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.RecruitmentDao;
import Model.RecruitmentResumeModel;

/**
 * Servlet implementation class RecruitmentResume
 */
@WebServlet("/RecruitmentResume")
public class RecruitmentResume extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String category = request.getParameter("category");
		String media = request.getParameter("media");
		String technology = request.getParameter("technology");
		String contact = request.getParameter("contact");
		String year = request.getParameter("year");
		String month = request.getParameter("month");
		String ref = request.getParameter("ref");
		String tech1 = request.getParameter("tech1");
		String tech2 = request.getParameter("tech2");
		String tech3 = request.getParameter("tech3");
		String tech4 = request.getParameter("tech4");
		String tech5 = request.getParameter("tech5");
		String tech6 = request.getParameter("tech6");
		String script1 = request.getParameter("script1");
		String script2 = request.getParameter("script2");
		String script3 = request.getParameter("script3");
		String data1 = request.getParameter("data1");
		String data2 = request.getParameter("data2");
		String data3 = request.getParameter("data3");
		String filename = request.getParameter("filename");
		String eventid = request.getParameter("eventid");
		String eventname = request.getParameter("eventname");
		
		RecruitmentResumeModel resume = new RecruitmentResumeModel();
		resume.setName(name);
		resume.setEmail(email);
		resume.setCategory(category);
		resume.setMedia(media);
		resume.setTechnology(technology);
		resume.setContact(contact);
		resume.setYear(year);
		resume.setMonth(month);
		resume.setRef(ref);
		resume.setTech1(tech1);
		resume.setTech2(tech2);
		resume.setTech3(tech3);
		resume.setTech4(tech4);
		resume.setTech5(tech5);
		resume.setTech6(tech6);
		resume.setScript1(script1);
		resume.setScript2(script2);
		resume.setScript3(script3);
		resume.setData1(data1);
		resume.setData2(data2);
		resume.setData3(data3);
		resume.setFilename(filename);
		resume.setEventid(eventid);
		resume.setEventname(eventname);
		
		RecruitmentDao recruit = new RecruitmentDao();
		int status = recruit.register(resume);
		if(status ==1){
			String smessage = "Resume Registered Successfully";
			response.getWriter().write(smessage);
		}else{
			String fmessage = "Resume Registration Failed.";
			response.getWriter().write(fmessage);
		}
		
	}

}
