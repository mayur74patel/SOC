using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Data;
using System.Data.SqlClient;


namespace IBlogService
{
	// NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in both code and config file together.
	public class Service1 : IService1
	{
        public MyUser login(string username,string password)
         {
             MyUser s = new MyUser();
             try
             {
                 SqlConnection con = new SqlConnection(@"Data Source=(localdb)\ProjectsV13;Initial Catalog=Blog;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
                 con.Open();

                 SqlCommand cmd = new SqlCommand(@"SELECT * FROM User_1 WHERE username=@username and password=@password", con);
                 cmd.Parameters.AddWithValue("@username", username);
                 cmd.Parameters.AddWithValue("@password", password);

                 cmd.CommandType = CommandType.Text;



                 using (SqlDataReader rdr = cmd.ExecuteReader())
                 {

                     if (rdr.HasRows)
                     {
                         rdr.Read(); // get the first row

                         s.id = rdr.GetInt32(0);
                         s.username = rdr.GetString(1);
                         s.password = rdr.GetString(2);
                         s.email = rdr.GetString(3);
                     }
                 }

             }
             catch (FaultException fex)
             {
                 throw new FaultException<string>("Error:  " + fex);
             }
             return s;
         }
       /* public string login(string username, string password)//login
        {

            SqlConnection con = new SqlConnection(@"Data Source=(localdb)\ProjectsV13;Initial Catalog=Blog;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            SqlCommand cmd = new SqlCommand(@"SELECT  FROM User_1 WHERE username=@username and password=@password", con);
            cmd.Parameters.AddWithValue("@username", username);
            //cmd.Parameters.AddWithValue("@id", id);
            cmd.Parameters.AddWithValue("@password", password);
            int added = 0;
            con.Open();
            added = cmd.ExecuteNonQuery();
            con.Close();
            if (added != 0)
            {
                return "login successfully !";
            }
            else
            {
                return "So Sorry Please Try Again";
            }


        }*/
        public List<MyUser> getUserAll()//profile detail of user by name
		{
			DataSet ds = new DataSet();
			try
			{
				SqlConnection con = new SqlConnection(@"Data Source=(localdb)\ProjectsV13;Initial Catalog=Blog;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
				con.Open();

				SqlCommand cmd = new SqlCommand();
				cmd.Connection = con;
				string Query = cmd.CommandText = "select Id,username,password,email from User_1 ";
				SqlDataAdapter sda = new SqlDataAdapter(Query, con);
				sda.Fill(ds);
			}
			catch (FaultException fex)
			{
				throw new FaultException<string>("Error: " + fex);
			}
			List<MyUser> objList = new List<MyUser>();
			foreach (DataRow _dataRow in ds.Tables[0].Rows)
			{
				MyUser obj = new MyUser();
				obj.id = Convert.ToInt32(_dataRow["id"]);
				obj.username = Convert.ToString(_dataRow["username"]);
				obj.password = Convert.ToString(_dataRow["password"]);
				obj.email = Convert.ToString(_dataRow["email"]);
				objList.Add(obj);
			}

			return objList;
		}
        public MyUser GetUserById(int id)
        {
            MyUser s = new MyUser();
            try
            {
                SqlConnection con = new SqlConnection(@"Data Source=(localdb)\ProjectsV13;Initial Catalog=Blog;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
                con.Open();

                SqlCommand cmd = new SqlCommand(@"SELECT * FROM User_1 WHERE id=@id", con);
                cmd.Parameters.AddWithValue("@id", id);

                cmd.CommandType = CommandType.Text;



                using (SqlDataReader rdr = cmd.ExecuteReader())
                {

                    if (rdr.HasRows)
                    {
                        rdr.Read(); // get the first row

                        s.id = rdr.GetInt32(0);
                        s.username = rdr.GetString(1);
                        s.password = rdr.GetString(2);
                        s.email = rdr.GetString(3);
                    }
                }

            }
            catch (FaultException fex)
            {
                throw new FaultException<string>("Error:  " + fex);
            }
            return s;
        }
        public string insertUser(int admin, string user_name, string password, string email)//registration
		{


			string insertString = @"INSERT INTO User_1 (username,password,email,admin)
			          Values(@user_name,@password,@email,@admin)";



			SqlConnection con = new SqlConnection(@"Data Source=(localdb)\ProjectsV13;Initial Catalog=Blog;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
			SqlCommand cmd = new SqlCommand(insertString, con);
			cmd.Parameters.AddWithValue("@user_name", user_name);
			//cmd.Parameters.AddWithValue("@id", id);
			cmd.Parameters.AddWithValue("@password", password);
			cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@admin", admin);
            int added = 0;
			con.Open();
			added = cmd.ExecuteNonQuery();
			con.Close();
			if (added != 0)
			{
				return "User add successfully !";
			}
			else
			{
				return "So Sorry Please Try Again";
			}


		}

		public string insertBlog(string blogger_name, string blog_subject, string blog_details)
		{


			string insertString = @"INSERT INTO Blog (blogger_name,blog_subject,blog_details)
			          Values(@blogger_name,@blog_subject,@blog_details)";



			SqlConnection con = new SqlConnection(@"Data Source=(localdb)\ProjectsV13;Initial Catalog=Blog;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
			SqlCommand cmd = new SqlCommand(insertString, con);
			//cmd.Parameters.AddWithValue("@id", id);
			cmd.Parameters.AddWithValue("@blogger_name", blogger_name);
			cmd.Parameters.AddWithValue("@blog_subject", blog_subject);
			cmd.Parameters.AddWithValue("@blog_details", blog_details);
			//cmd.Parameters.AddWithValue("@blog_date", blog_date);
			int added = 0;
			con.Open();
			added = cmd.ExecuteNonQuery();
			con.Close();
			if (added != 0)
			{
				return "Blog add successfully !";
			}
			else
			{
				return "So Sorry Please Try Again";
			}


		}
		public string deleteUser(int userid)//delete user
		{

			string deleteString = "DELETE FROM User_1 WHERE Id=@userId";
			SqlConnection con = new SqlConnection(@"Data Source=(localdb)\ProjectsV13;Initial Catalog=Blog;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
			SqlCommand cmd = new SqlCommand(deleteString, con);
			cmd.Parameters.AddWithValue("@userId", userid);
			int deleted = 0;
			con.Open();
			deleted = cmd.ExecuteNonQuery();
			if (deleted != 0)
			{
				return "User Deleted Successfully !";

			}
			else
			{
				return "So Sorry Please Try Again";
			}
		}

		public List<MyBlog> getAllBlog()//profile detail of user by name
		{
			DataSet ds = new DataSet();
			try
			{
				SqlConnection con = new SqlConnection(@"Data Source=(localdb)\ProjectsV13;Initial Catalog=Blog;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
				con.Open();

				SqlCommand cmd = new SqlCommand();
				cmd.Connection = con;
				string Query = cmd.CommandText = "select Id,blogger_name,blog_subject,blog_details,blog_date from Blog ";
				SqlDataAdapter sda = new SqlDataAdapter(Query, con);
				sda.Fill(ds);
			}
			catch (FaultException fex)
			{
				throw new FaultException<string>("Error: " + fex);
			}
			List<MyBlog> objList = new List<MyBlog>();
			foreach (DataRow _dataRow in ds.Tables[0].Rows)
			{
				MyBlog obj = new MyBlog();
				obj.id = Convert.ToInt32(_dataRow["Id"]);
				obj.blogger_name = Convert.ToString(_dataRow["blogger_name"]);
				obj.blog_subject = Convert.ToString(_dataRow["blog_subject"]);
				obj.blog_details = Convert.ToString(_dataRow["blog_details"]);
				obj.blog_date = Convert.ToString(_dataRow["blog_date"]);
				objList.Add(obj);
			}

			return objList;
		}
		public string deleteBlog(int id)// delete menu item
		{

			string deleteString = "DELETE FROM Blog WHERE Id=@id";
			SqlConnection con = new SqlConnection(@"Data Source=(localdb)\ProjectsV13;Initial Catalog=Blog;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
			SqlCommand cmd = new SqlCommand(deleteString, con);
			cmd.Parameters.AddWithValue("@id", id);

			int deleted = 0;
			con.Open();
			deleted = cmd.ExecuteNonQuery();
			if (deleted != 0)
			{
				return "Blog Deleted Successfully !";

			}
			else
			{
				return "So Sorry Please Try Again";
			}
		}

		public string updateBlog(int id, string blogger_name, string blog_subject, string blog_details)
		{

			string updateString = "UPDATE Blog Set blogger_name=@blogger_name,blog_subject=@blog_subject,blog_details=@blog_details WHERE id=@id";
			SqlConnection con = new SqlConnection(@"Data Source=(localdb)\ProjectsV13;Initial Catalog=Blog;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
			SqlCommand cmd = new SqlCommand(updateString, con);
			cmd.Parameters.AddWithValue("@id", id);
			cmd.Parameters.AddWithValue("@blogger_name", blogger_name);
			cmd.Parameters.AddWithValue("@blog_details", blog_details);
			cmd.Parameters.AddWithValue("@blog_subject", blog_subject);
			//cmd.Parameters.AddWithValue("@blog_date", blog_date);
			
			int updated = 0;
			con.Open();
			updated = cmd.ExecuteNonQuery();
			con.Close();
			if (updated != 0)
			{
				return "Blog Updated Successfully";
			}
			else
			{
				return "So Sorry Please Try Again";
			}
		}
        
        public MyBlog GetBlogById(int id)
        {
            MyBlog s = new MyBlog();
            try
            {
                SqlConnection con = new SqlConnection(@"Data Source=(localdb)\ProjectsV13;Initial Catalog=Blog;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
                con.Open();

                SqlCommand cmd = new SqlCommand(@"SELECT * FROM Blog WHERE id=@id", con);
                cmd.Parameters.AddWithValue("@id", id);

                cmd.CommandType = CommandType.Text;



                using (SqlDataReader rdr = cmd.ExecuteReader())
                {

                    if (rdr.HasRows)
                    {
                        rdr.Read(); // get the first row

                        s.id = rdr.GetInt32(0);
                        s.blogger_name = rdr.GetString(1);
                        s.blog_subject = rdr.GetString(2);
                        s.blog_details = rdr.GetString(3);
                        s.blog_date = rdr.GetString(4);


                    }
                }



            }
            catch (FaultException fex)
            {
                throw new FaultException<string>("Error:  " + fex);
            }
            return s;
        }

        
    }
}
