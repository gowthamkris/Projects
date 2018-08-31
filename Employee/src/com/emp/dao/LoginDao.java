package com.emp.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.emp.DBUtil.DBUtil;


public class LoginDao {

	public boolean check(String userName,String password)
	{
		String sql = "select * from login where userName='"+userName+"' and password='"+password+"'";
		Connection connection = null;
		PreparedStatement prepareStatement = null;
		ResultSet resultSet = null;
		try {
			connection = DBUtil.getConnection();
			prepareStatement = connection.prepareStatement(sql);
			resultSet = prepareStatement.executeQuery();
			while(resultSet.next()){
			return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBUtil.close(connection, prepareStatement, resultSet);
		}
		return false;
		
	}
}
