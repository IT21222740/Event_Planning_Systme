package com.admin;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class adminDbUtil {
	
	//static vatiables
	private static boolean check = false;
	private static Connection con;
	private static Statement st;
	private static ResultSet rs;
	private static int insert =0;
	private static int update =0;
	private static int delete =0;
	
	//get evennts as an array list 
	public static ArrayList<Events> getEvents() {
		ArrayList<Events> eventAdder = new ArrayList<>();
		try{
			
			//common connection object
			con = DbConnect.getConnection();
			
			//statemnts
			st = con.createStatement();
			
			//query
			String sql = "select * from planizer.validevent" ;
			
			//fectch
			rs = st.executeQuery(sql);
			
			//store resutlts in event object
			while(rs.next()) {
				
				int eventId = rs.getInt(1);
				String plannerId = rs.getString(2);
				String eventType = rs.getString(3);
				String eventDate = rs.getString(4);
				String starTime = rs.getString(5);
				String endTime = rs.getString(6);
				String venueLocation = rs.getString(7);
				String venueEmail = rs.getString(8);
				
				Events event = new Events(eventId,plannerId,eventType,eventDate,starTime,endTime,venueLocation,venueEmail);
				eventAdder.add(event);
			}
		}//catch	
		catch(Exception e) {
			e.printStackTrace();
		}
		//return list
		return eventAdder;
	}
	
	//return a booolean to check insertion
	public static boolean insertPlanner(String fname, String lname,String id,String password,String type,String gender,double salary,String phoneNumber,String address, int age ) {
		
		
		try {
			//common file to get connection
			con = DbConnect.getConnection();
			//create statement
			st = con.createStatement();
			
			//for planner's table
			String sql1 = "insert into planizer.planner(plannerId,plannerFirstName,plannerLastName,eventType,address,salary,age,gender,phoneNumber)\r\n"
					+ "values('"+id+"','"+fname+"','"+lname+"','"+type+"','"+address+"',"+salary+","+age+",'"+gender+"','"+phoneNumber+"')" ;
			//for user's table
			String sql = "insert into planizer.user(userId,password,type) values ('"+id+"','"+password+"','P')";
			
			//execute in user table and save result i
			insert = st.executeUpdate(sql);
			//check success or not
			if (insert > 0) {
				insert = 0;
				insert = st.executeUpdate(sql1);
				if (insert >0) {
					check = true;
				}else {
					check = false;
				}
				
			}else {
				// for an error
				check = false;
			}
			
					
		}//exception handling
		catch(Exception e) {
			check = false;
			e.printStackTrace();
		}
		return check;
	}
	
	//check emp id is correct or not
	public static boolean checkEmployee(String id) {
		try {
			//common db connect object
			con = DbConnect.getConnection();
			//create statemnt
			st = con.createStatement();
			//retrieving data
			String sql = "Select * from planizer.planner where plannerId = '"+id+"'" ;
			//execution
			rs = st.executeQuery(sql);
			//checking
			check = rs.next();
		}//exception
		catch(Exception e) {
			e.printStackTrace();
		}
		//return value
		return check;	
	}
	
	
	//retrieving planner's details
	public static ArrayList<Planner> getPlannerDetails(String userName){
		ArrayList<Planner> planner = new ArrayList<>();
		try {
				//creating a common db file
				con = DbConnect.getConnection();
				//statemnt object
				st = con.createStatement();
				//sql
				String sql = "Select * from planizer.planner where plannerId = '"+userName+"'" ;
				
				//execute
				rs = st.executeQuery(sql);
				//condition to check next line
				if(rs.next()) {
					String plannerId = rs.getNString(1);
					String	plannerFirstName = rs.getNString(2);
					String	plannerLastName = rs.getNString(3);
					String	eventType = rs.getNString(4);
					String	address = rs.getNString(5);
					double	salary = rs.getDouble(6);
					int	age = rs.getInt(7);
					String	gender = rs.getNString(8);
					String	phoneNumber = rs.getNString(9);	
					
					//new planner object
					Planner plan = new Planner(plannerId, plannerFirstName, plannerLastName, eventType, address, salary, age, gender, phoneNumber);
					// add planner to arraylist
					planner.add(plan);
				}
				
				
			}
			catch(Exception e) {
				e.printStackTrace();
				
			}
		return planner;
	}
	
	//this is for update  it will return boolean value
	public static boolean update(String fname, String lastName, String id, String type, String gender,
			double salary, String phoneNumber, String address, int age) {
		
		try {
			//data base connection create
			con = DbConnect.getConnection();
			st = con.createStatement();
			
			//query
			String sql = "update planizer.planner set plannerFirstName = '"+fname+"', plannerLastName = '"+lastName+"', eventType = '"+type+"', address = '"+address+"', salary ="+salary+" , age = "+age+", gender = '"+gender+"', phoneNumber = '"+phoneNumber+"' where plannerId =  '"+id+"'";
			
			//checking
			update = st.executeUpdate(sql);
			if (update >0) {
				//success
				check = true;
			}
				
			else {
				//false
				check = false;
			}
			
					
		}
		catch(Exception e) {
			check = false;
			e.printStackTrace();
		}
		//return check
		return check;
	}
	
	//for delete return success or not
	public static boolean delete(String id) {
		
		try {
			//db connection
			con = DbConnect.getConnection();
			st = con.createStatement();
			
			// this is for planner statment
			String sql = "delete from planizer.planner where plannerId = '"+id+"';";
			//for user deletion
			String sql1 = "delete from planizer.user where userid = '"+id+"'";
			delete = st.executeUpdate(sql);
			//condition to check
			if (delete > 0) {
				delete = 0;
				delete = st.executeUpdate(sql1);
				if (delete >0) {
					check = true;
				}else {
					check = false;
				}
				
			}
			else {
				check = false;
			}
			
		}
		catch(Exception e) {
			check = false;
			e.printStackTrace();
		}
		
		return check;
	}
	
	public static ArrayList<ViewAdmin> view(){
		//creating an array list
		ArrayList<ViewAdmin> view = new ArrayList<>();
		//view object
		ViewAdmin viewObject = new ViewAdmin();
		try {
			//db connection
			con = DbConnect.getConnection();
			st = con.createStatement();
			
			//no of planners
			String sql = "select count(*) from planizer.planner;";
			//no of admins
			String sql1 = "select count(*) from planizer.admin;";
			//no of customers 
			String sql2 = "select count(*) from planizer.customer";
			//no of valid events
			String sql4 = "select count(*) from planizer.validevent;";
			
			//executing no of planner
			rs = st.executeQuery(sql);
			if(rs.next()) {
				
				viewObject.setNoOfPlanners(rs.getInt(1));	
			}
			
			//excecuting no of admins
			rs = st.executeQuery(sql1);
			if(rs.next()) {
				viewObject.setNoOfAdmns(rs.getInt(1));
				
			}
			
			//excesuting no of customers
			rs = st.executeQuery(sql2);
			if(rs.next()) {
				viewObject.setNoOfCustomers(rs.getInt(1));
				
			}
			//valid events
			rs = st.executeQuery(sql4);
			if(rs.next()) {
				viewObject.setNoOfevents(rs.getInt(1));
				
			}
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		view.add(viewObject);
		return view;
	}
	
}
