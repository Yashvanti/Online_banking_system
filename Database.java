
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;


public class Database {
    Connection cn=null;
    Statement st=null;
  String   Connectdb()
  {
  try
  {
  Class.forName("com.mysql.jdbc.Driver");
  cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_banking_system","root","root");
  return("Databse Connected");
  }catch(Exception ex)
  {
  return(ex.toString());
  }
  
  }
  
  
  String Insert(String sql)
  {
  try
        {
  st=cn.createStatement();
  st.executeUpdate(sql);
  return("Records Inserted Successfully");
  }catch(Exception ex)
  {
  return(ex.toString());
  }
  }
  
  String update(String sql)
  {
      try {
           st=cn.createStatement();
  st.executeUpdate(sql);
  return("Records updated Successfully");
      } catch (Exception e) 
      {
          return (e.toString());
      }
  
  }


String delete(String sql)
  {
      try {
           st=cn.createStatement();
  st.executeUpdate(sql);
  return("Records deleted Successfully");
      } catch (Exception e) 
      {
          return (e.toString());
      }
      
      
      

}
}

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  


