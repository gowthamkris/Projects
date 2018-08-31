package com.emp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.emp.DBUtil.DBUtil;

public class DataInput {
 
	public boolean insertData(String Name,String Age,String Dob,String Address,String Salary,String Description,String Email,String Phone)
	  {
		String sql="insert into employee(Name,Age,Dob,Address,Salary,Description,Email,Phone) values(?,?,?,?,?,?,?,?)";
		//String sql = "insert into employee(Name,Age,Dob,Address,Salary,Description,Email,Phone) values("+Name+","+Age+","+Dob+","+Address+","+Salary+","+Description+","+Email+","+Phone+")";
		Connection connection = null;
		PreparedStatement prepareStatement = null;
		try{
		connection  = DBUtil.getConnection();
		connection.setAutoCommit(false);
			prepareStatement = connection.prepareStatement(sql);
			prepareStatement.setString(1, Name);
			prepareStatement.setString(2, Age);
			prepareStatement.setString(3, Dob);
			prepareStatement.setString(4, Address);
			prepareStatement.setString(5, Salary);
			prepareStatement.setString(6, Description);
			prepareStatement.setString(7, Email);
			prepareStatement.setString(8, Phone);
			prepareStatement.executeUpdate();
		connection.commit();
		}catch(Exception e){
			try{
				connection.rollback();
			}catch (Exception e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		}
		finally {
			DBUtil.close(connection, prepareStatement, null);
		}
		return true;
		
	}
}
