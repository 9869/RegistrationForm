package org.btm.controller;

import java.io.IOException;  
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.btm.bean.LoginBean;
import org.btm.dao.LoginDao;

public class LoginServlet extends HttpServlet {
	public LoginServlet() {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = request.getParameter("email");
		String password = request.getParameter("pass");
		LoginBean loginBean = new LoginBean(); 
		loginBean.setEmail(email);
		loginBean.setPassword(password);
		LoginDao loginDao = new LoginDao();
		String userValidate = loginDao.authenticateUser(loginBean);
		if (userValidate.equals("SUCCESS")) {
			request.setAttribute("Email", email);
			request.getRequestDispatcher("/Home1.jsp").forward(request, response);
		} else {
			request.setAttribute("errMessage", userValidate);
			request.getRequestDispatcher("/login.jsp").forward(request, response);
		}
	}
}