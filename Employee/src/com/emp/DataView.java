package com.emp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.emp.DBUtil.DBUtil;

public class DataView {
public String Dataview(String Age)
{
	String sql = "select Name from employee where Age<'"+Age+"'";
	Connection connection = null;
	PreparedStatement prepareStatement = null;
	ResultSet resultSet = null;
	String s="";
	try {
		connection = DBUtil.getConnection();
		prepareStatement = connection.prepareStatement(sql);
		resultSet = prepareStatement.executeQuery();
		while(resultSet.next()){
		s+=resultSet.getString(1)+" ";
		}
		return s;
	} catch (Exception e) {
		e.printStackTrace();
	}finally {
		DBUtil.close(connection, prepareStatement, resultSet);
	}
	return null;
	
}
}
