using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Client
{
    public partial class Home : System.Web.UI.Page
    {
	
		public class MyBlog
		{
			int _id;
			string _blogger_name;
			string _blog_subject;
			string _blog_details;
			string _blog_date;

			public int id
			{
				get { return _id; }
				set { _id = value; }
			}

			public string blogger_name
			{
				get { return _blogger_name; }
				set { _blogger_name = value; }
			}

			public string blog_subject
			{
				get { return _blog_subject; }
				set { _blog_subject = value; }
			}

			public string blog_details
			{
				get { return _blog_details; }
				set { _blog_details = value; }
			}
			public string blog_date
			{
				get { return _blog_date; }
				set { _blog_date = value; }
			}
		}

		protected void Page_Load(object sender, EventArgs e)
        {
			ServiceReference1.Service1Client client = new ServiceReference1.Service1Client("BasicHttpBinding_IService1");

			ServiceReference1.MyBlog[] myblog = client.getAllBlog();
			GridView1.DataSource = myblog;
			GridView1.DataBind();
		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			Response.Redirect("Search.aspx");
		}

		protected void Button4_Click(object sender, EventArgs e)
		{
			Response.Redirect("Insert.aspx");
		}

		protected void Button2_Click(object sender, EventArgs e)
		{
			Response.Redirect("Update.aspx");
		}

		protected void Button3_Click(object sender, EventArgs e)
		{
			Response.Redirect("Delete.aspx");
		}

		protected void Button5_Click(object sender, EventArgs e)
		{
			Response.Redirect("admin_login.aspx");
		}
		/*
ServiceReference1.Service1Client client = new ServiceReference1.Service1Client("BasicHttpBinding_IService1");
int userId = 1;
string output = client.deleteBlog(userId);
user_Id++;
ServiceReference1.Service1Client client = new ServiceReference1.Service1Client("BasicHttpBinding_IService1");
string blogger_name = TextBox1.Text;
string blog_subject = TextBox2.Text;
string blog_details = TextBox3.Text;

int userid = Int32.Parse(TextBox4.Text);
string blog_date = DateTime.Today.ToString();
string output = client.insertBlog(userid,blogger_name,blog_subject,blog_details,blog_date);

string test = "Item Deleted Successfully !";
if (string.Compare(test, output) == 0)
{
Label2.Text = test.ToString();
}
else {
Label2.Text = "Item will be added";

}
*/
	}
}