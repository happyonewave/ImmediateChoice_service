package com.qczt.xg.util;

import java.sql.* ;

import javax.swing.JOptionPane;
public class DatabaseConnection {
	private static final String DBDRIVER = "com.mysql.jdbc.Driver" ;
	private static final String DBURL = "jdbc:mysql://dbinstance.ceiqosmwua3s.ap-northeast-2.rds.amazonaws.com:3306/immediatechoice?useUnicode=true&characterEncoding=utf-8&useSSL=false";
	private static final String DBUSER = "root" ;
	private static final String DBPASSWORD = "qinsdatabases" ;
	//    private static final String DBPASSWORD = "Chin's 1 password" ;
	private Connection conn = null ;

	public DatabaseConnection() throws Exception{
		try {
			Class.forName(DBDRIVER) ;
			this.conn = DriverManager.getConnection(DBURL,DBUSER,DBPASSWORD) ;
//				System.out.println("JDBCdrive connected");
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	public Connection getConnection(){
		return this.conn ;
	}
	public void close() throws Exception{
		if(this.conn != null){
			try{
				this.conn.close() ;
			}catch(Exception e){

			}
		}
	}



	public static void main(String[] args) throws Exception {
		new  DatabaseConnection();
	}
}