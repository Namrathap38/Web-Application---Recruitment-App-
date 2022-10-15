package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.EventDetailsDao;
import Model.EventDetailsModel;

/**
 * Servlet implementation class EventDetailsController
 */
@WebServlet("/EventDetailsController")
public class EventDetailsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
    public EventDetailsController() {
        super();
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
	    String eventid=request.getParameter("eventid");
	    System.out.println(eventid);
	    String eventtype=request.getParameter("eventtype");
	   System.out.println(eventtype);
		String fromdate=request.getParameter("fromdate");
		System.out.println(fromdate);
		String todate=request.getParameter("todate");
		System.out.println(todate);
		String technology= request.getParameter("technology");
		System.out.println(technology);
		String experience= request.getParameter("experience");
		System.out.println(experience);
		String advantage=request.getParameter("advantage");
		System.out.println(advantage);
		String venue=request.getParameter("venue");
		System.out.println(venue);
		String details=request.getParameter("details");
		System.out.println(details);
		EventDetailsModel ed=new EventDetailsModel();
		ed.setEventid(eventid);
		ed.setEventtype(eventtype);
		ed.setFromdate(fromdate);
		ed.setTodate(todate);
		ed.setTechnology(technology);
		ed.setExperience(experience);
		ed.setAdvantage(advantage);
		ed.setVenue(venue);
		ed.setDetails(details);
		
		EventDetailsDao ed1=new EventDetailsDao();
		int status = ed1.Event(ed);
		System.out.println(status);
		if(status > 0){
			String smessage = "Event Registered Successfully..";
	        response.getWriter().write(smessage);
		}else{
			String fmessage="Event not Registered";
			response.getWriter().write(fmessage);	
			
		}
	}
	
	}

