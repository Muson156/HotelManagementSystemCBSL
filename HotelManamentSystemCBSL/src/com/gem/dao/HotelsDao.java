package com.gem.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.gem.pojo.Goods;
import com.gem.pojo.Hotels;
import com.gem.util.JDBCUtil;

public class HotelsDao {
	
	 //查询所有的酒店
		public List<Hotels> getAllHotels(){
			//创建java和数据库连接
				Connection connection=JDBCUtil.getConnection();
			//编写sql语句
				String sql="select * from hotels";
				PreparedStatement statement=null;
				ResultSet set=null;
			//发送到数据库	
				try {
					 statement=connection.prepareStatement(sql);
					//数据库执行sql语句返回数据集
					 set=statement.executeQuery();
					List<Hotels> hList=new ArrayList<Hotels>();
					while(set.next()) {
						int hid=set.getInt(1);
	                    String hName=set.getString(2);
	                    String hAddress=set.getString(3);
	                    String principal=set.getString(4);
	                    String hPhoneNumber=set.getString(5);
	                    String img=set.getString(6);
						Hotels hotels=new Hotels(hid,hName,hAddress,principal,hPhoneNumber,img);
						hList.add(hotels);
					}
					return hList;
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}finally {
					JDBCUtil.close(connection, statement, set);
				}
				return null;
		}
		
		
		//根据hid查询酒店的详情
		public Hotels getHotel(int hid) {	
			//创建java和数据库连接
			Connection connection=JDBCUtil.getConnection();
		//编写sql语句
			String sql="select * from hotels where ID=?";
			PreparedStatement statement=null;
			ResultSet set=null;
		//发送到数据库	
			try {
				 statement=connection.prepareStatement(sql);
				 //绑定参数
				 statement.setInt(1, hid); 
				//数据库执行sql语句返回数据集
				 set=statement.executeQuery();
				while(set.next()) {
					int hid1=set.getInt(1);
                    String hName=set.getString(2);
                    String hAddress=set.getString(3);
                    String principal=set.getString(4);
                    String hPhoneNumber=set.getString(5);
                    String img=set.getString(6);
					Hotels hotel=new Hotels(hid1,hName,hAddress,principal,hPhoneNumber,img);
					return hotel;
				}	
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				JDBCUtil.close(connection, statement, set);
			}
			return null;
		}
		
		//根据gid去修改酒店
		public boolean update (int hid,Hotels hotel) {
			Connection connection=JDBCUtil.getConnection();
			//编写sql语句
				String sql="update hotels set hname=?,haddress=?,principal=?,hPhoneNumber=?,img=?where ID=?";
				PreparedStatement statement=null;
			//发送到数据库	
				try {
					 statement=connection.prepareStatement(sql);
					 //绑定参数
					 statement.setString(1, hotel.gethName()); 
					 statement.setString(2, hotel.gethAddress());
					 statement.setString(3, hotel.getPrincipal());
					 statement.setString(4, hotel.gethPhoneNumber());
					 statement.setString(5, hotel.getImg());
					 statement.setInt(6, hotel.getHid());
					//数据库执行sql更新的行数
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
		
		
		//查询所有的酒店
				public List<Hotels> queryHotels(String content){
					//创建java和数据库连接
					
					
					//select * from user where position like '%1%'
					//select * from table_test where FIND_IN_SET("23", field_A) ;
						Connection connection=JDBCUtil.getConnection();
					//编写sql语句
						String sql="select * from hotels where hname like '%"+content+"%'";
						PreparedStatement statement=null;
						ResultSet set=null;
					//发送到数据库	
						try {
							 statement=connection.prepareStatement(sql);
							//数据库执行sql语句返回数据集
							//绑定参数
							 //	statement.setString(1, "木"); 
							 set=statement.executeQuery();
							List<Hotels> hList=new ArrayList<Hotels>();
							while(set.next()) {
								int hid=set.getInt(1);
			                    String hName=set.getString(2);
			                    String hAddress=set.getString(3);
			                    String principal=set.getString(4);
			                    String hPhoneNumber=set.getString(5);
			                    String img=set.getString(6);
								Hotels hotels=new Hotels(hid,hName,hAddress,principal,hPhoneNumber,img);
								hList.add(hotels);
							}
							return hList;
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}finally {
							JDBCUtil.close(connection, statement, set);
						}
						return null;
				}
				
				/*添加旅店*/
			     public boolean addHotel(Hotels h) {
			    	 Connection connection=JDBCUtil.getConnection();
			    	 String sql = "insert into hotels(hname,haddress,principal,hPhoneNumber,img) values(?,?,?,?,?)";
			    	 PreparedStatement statement=null;
					 ResultSet set=null;
					//发送到数据库	
			    	 try {
			    		 statement = connection.prepareStatement(sql);
			    		 statement.setString(1, h.gethName());
			    		 statement.setString(2, h.gethAddress());
			    		 statement.setString(3, h.getPrincipal());
			    		 statement.setString(4, h.gethPhoneNumber());
			    		 statement.setString(5, h.getImg());

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
				
			/* 根据id删除旅店*/
			     public boolean delete(int hid) {
			    	Connection connection=JDBCUtil.getConnection();
			    	PreparedStatement statement=null;
			    	String sql="delete from hotels where ID=?";
			    	 try {
			    		 statement=connection.prepareStatement(sql);
						 //绑定参数
			    		 statement.setInt(1, hid); 
						//数据库执行sql更新的行数
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
		
	
}
