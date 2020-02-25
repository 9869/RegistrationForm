package org.btm.controller;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import org.btm.bean.SignupBean;
import org.btm.dao.SignupDao;

public class SignupServlet extends HttpServlet
{
	public SignupServlet() {
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//Copying all the input parameters in to local variables
		String fullName = request.getParameter("fname");
		String lastName = request.getParameter("lname");
		String email = request.getParameter("email");
		String password = request.getParameter("pass");
		String Number = request.getParameter("number");
		long number=Long.parseLong(Number);
		String gender=request.getParameter("gender");
		SignupBean signupBean = new SignupBean();
//Using Java Beans - An easiest way to play with group of related data
		signupBean.setFname(fullName);
		signupBean.setLname(lastName);
		signupBean.setEmail(email); 
		signupBean.setPass(password);
		signupBean.setNumber(number);
		signupBean.setGender(gender);
		SignupDao signupDao = new SignupDao();
//The core Logic of the Registration application is present here. We are going to insert user data in to the database.
		String fs = signupDao.signupUser(signupBean);
		if (fs.equals("SUCCESS")) // On success, you can display a message to user on Home page
		{
			request.getRequestDispatcher("/sucessMessage.jsp").forward(request, response);
		} else // On Failure, display a meaningful message to the User.
		{
			request.setAttribute("errMessage", fs);
			request.getRequestDispatcher("/signup.jsp").forward(request, response);
		}
	}
	
}
