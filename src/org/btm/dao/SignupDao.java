package org.btm.dao;
import java.sql.*;
import org.btm.bean.SignupBean;
import org.btm.util.SignupDBC;


public class SignupDao
{
	public String signupUser(SignupBean signBean) {
		String firstName = signBean.getFname();
		String lastName=signBean.getLname();
		String Email = signBean.getEmail();
		String Password = signBean.getPass();
		long Number=signBean.getNumber();
		String Gender=signBean.getGender();
		
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = SignupDBC.createConnection();
			String query = "insert into btm.users(SlNo,firstName,lastName,Email,Password,Number,Gender) values(NULL,?,?,?,?,?,?)"; // Insert
																														// user
																														// details
																														// into
																														// the
																														// table
																														// 'USERS'
			pstmt = con.prepareStatement(query); // Making use of prepared statements here to insert bunch
																// of data
			pstmt.setString(1, firstName);
			pstmt.setString(2, lastName);
			pstmt.setString(3, Email);
			pstmt.setString(4, Password);
			pstmt.setLong(5, Number);
			pstmt.setString(6, Gender);
			int i = pstmt.executeUpdate();
			if (i != 0) // Just to ensure data has been inserted into the database
				return "SUCCESS";
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return "Oops.. Something went wrong there..!"; // On failure, send a message from here.
	}
}
