package com.gem.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.gem.pojo.Hotels;
import com.gem.pojo.User;
import com.gem.util.JDBCUtil;


public class UserDao {
	
	  /* ��¼*/
    public User login(String username,String password) {
    	//����java�����ݿ�����
		Connection connection=JDBCUtil.getConnection();
		//boolean flag = false;
		User user = new User();
	 String	sql = "select * from users where userName=? and password=?";
	 PreparedStatement statement=null;
		ResultSet set=null;
		try {
			statement=connection.prepareStatement(sql);
			statement.setString(1, username);
			statement.setString(2, password);
			set = statement.executeQuery();
			while(set.next()) {
				user.setUsername(set.getString("uName"));
				user.setPassword(set.getString("password"));
				user.setUid(set.getInt("uid"));
				return user;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCUtil.close(connection, statement, set);
		}
		return null;
    }
	
    
    /*�û�ע��*/
    public boolean register(User u) {
    //����java�����ݿ�����
    	Connection connection=JDBCUtil.getConnection();
    	String sql = "insert into users(uName,userName,password,eMail,uPhoneNumber) values(?,?,?,?,?)";
    	PreparedStatement statement=null;
    	ResultSet set=null;
	   	 try {
	   		statement = connection.prepareStatement(sql);
	   		statement.setString(1, u.getuName());
	   		statement.setString(2, u.getUsername());
	   		statement.setString(3, u.getPassword());
	   		statement.setString(4, u.getEmail());
	   		statement.setString(5, u.getuPhoneNumber());
	   		 int i=statement.executeUpdate();
	   		 if(i>0) {
	   			 return true;
	   		 }else {
	   			 return false;
	   		 }
	   	 }catch(SQLException e){
	   		 e.printStackTrace();
	   	 }finally {
				JDBCUtil.close(connection, statement, set);
		}
	   	 return false;
	}

	 //��ѯ���е��û�
		public List<User> getAllUsers(){
			//����java�����ݿ�����
				Connection connection=JDBCUtil.getConnection();
			//��дsql���
				String sql="select * from users";
				PreparedStatement statement=null;
				ResultSet set=null;
			//���͵����ݿ�	
				try {
					 statement=connection.prepareStatement(sql);
					//���ݿ�ִ��sql��䷵�����ݼ�
					 set=statement.executeQuery();
					List<User> uList=new ArrayList<User>();
					while(set.next()) {
						int uid=set.getInt(1);
	                    String uName=set.getString(2);
	                    String username=set.getString(3);
	                    String password=set.getString(4);
	                    String email=set.getString(5);
	                    String uPhoneNumber=set.getString(6);
						User users=new User(uid,uName,username,password,email,uPhoneNumber);
						uList.add(users);
					}
					return uList;
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}finally {
					JDBCUtil.close(connection, statement, set);
				}
				return null;
		}
		
		//����Uid��ѯ�û�������
				public User getUSer(int UserId) {	
					//����java�����ݿ�����
					Connection connection=JDBCUtil.getConnection();
				//��дsql���
					String sql="select * from users where uid=?";
					PreparedStatement statement=null;
					ResultSet set=null;
				//���͵����ݿ�	
					try {
						 statement=connection.prepareStatement(sql);
						 //�󶨲���
						 statement.setInt(1, UserId); 
						//���ݿ�ִ��sql��䷵�����ݼ�
						 set=statement.executeQuery();
						while(set.next()) {
							int uid=set.getInt(1);
		                    String uName=set.getString(2);
		                    String userName=set.getString(3);
		                    String password=set.getString(4);
		                    String eMail=set.getString(5);
		                    String uPhoneNumber=set.getString(6);
							User user=new User(uid,uName,userName,password,eMail,uPhoneNumber);
							return user;
						}	
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}finally {
						JDBCUtil.close(connection, statement, set);
					}
					return null;
				}
				
				
				
				//����userIdȥ�޸�user
				public boolean update (int userId,User user) {
					Connection connection=JDBCUtil.getConnection();
					//��дsql���
						String sql="update users set uName=?,userName=?,password=?,email=?,uPhoneNumber=?where uid=?";
						PreparedStatement statement=null;
					//���͵����ݿ�	
						try {
							 statement=connection.prepareStatement(sql);
							 //�󶨲���
							 statement.setString(1, user.getuName()); 
							 statement.setString(2, user.getUsername());
							 statement.setString(3, user.getPassword());
							 statement.setString(4, user.getEmail());
							 statement.setString(5, user.getuPhoneNumber());
							 statement.setInt(6, userId);
							//���ݿ�ִ��sql���µ�����
							 int cout=statement.executeUpdate();
							 return cout > 0 ? true : false ;
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}finally {
							JDBCUtil.close(connection, statement, null);
						}
						return false;
				}
				
				
				 /* ����idɾ���û�*/
			     public boolean deleteUser(int uid) {
			    	Connection connection=JDBCUtil.getConnection();
			    	PreparedStatement statement=null;
			    	String sql="delete from users where uid=?";
			    	 try {
			    		 statement=connection.prepareStatement(sql);
						 //�󶨲���
			    		 statement.setInt(1, uid); 
						//���ݿ�ִ��sql���µ�����
						 int count=statement.executeUpdate();
						 return count > 0 ? true : false ;
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
			     }finally {
						JDBCUtil.close(connection, statement, null);
					}
			    	return false;
			   }
			     
				
				//��ѯ�û�
				public List<User> queryUser(String content){
					//����java�����ݿ�����
					
					
					//select * from user where position like '%1%'
					//select * from table_test where FIND_IN_SET("23", field_A) ;
						Connection connection=JDBCUtil.getConnection();
					//��дsql���
						String sql="select * from users where userName like '%"+content+"%'";
						PreparedStatement statement=null;
						ResultSet set=null;
					//���͵����ݿ�	
						try {
							 statement=connection.prepareStatement(sql);
							//���ݿ�ִ��sql��䷵�����ݼ�
							//�󶨲���
							 //	statement.setString(1, "ľ"); 
							 set=statement.executeQuery();
							List<User> uList=new ArrayList<User>();
							while(set.next()) {
								int uid=set.getInt(1);
			                    String uName=set.getString(2);
			                    String userName=set.getString(3);
			                    String password=set.getString(4);
			                    String email=set.getString(5);
			                    String uPhoneNumber=set.getString(6);
			                    User users=new User(uid,uName,userName,password,email,uPhoneNumber);
								uList.add(users);
							}
							return uList;
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}finally {
							JDBCUtil.close(connection, statement, set);
						}
						return null;
				}
	
				
				//����session��userIdȥ�޸��û���
				public boolean update (int userId,String password) {
					Connection connection=JDBCUtil.getConnection();
					//��дsql���
						String sql="update users set password=? where uid=?";
						PreparedStatement statement=null;
					//���͵����ݿ�	
						try {
							 statement=connection.prepareStatement(sql);
							 //�󶨲���
							 statement.setString(1, password); 
							 statement.setInt(2, userId);
							//���ݿ�ִ��sql���µ�����
							 int cout=statement.executeUpdate();
							 return cout > 0 ? true : false ;
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}finally {
							JDBCUtil.close(connection, statement, null);
						}
						return false;
				}
		
	
}
     
