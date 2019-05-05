using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Client
{
	public partial class Insert : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (Session["UserName"] != null)
			{
				Label3.Text = "admin will be inserted a data";
			}
			else
			{
				Response.Redirect("Home.aspx");
			}
			DateTime dateTime = DateTime.UtcNow.Date;
			string blog_date = dateTime.ToString("dd/MM/yyyy");
			Label2.Text = blog_date;
		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			ServiceReference1.Service1Client client = new ServiceReference1.Service1Client("BasicHttpBinding_IService1");
			DateTime dateTime = DateTime.UtcNow.Date;
			int id = 1;
			string blogger_name = TextBox2.Text;
			string blog_subject = TextBox3.Text;
			string blog_details = TextBox4.Text;
			string blog_date = dateTime.ToString("dd/MM/yyyy");

			string string1 = client.insertBlog(id, blogger_name, blog_subject, blog_details, blog_date);
			string string2 = "Blog add successfully !";
			int myOutput = string.Compare(string1, string2);
			if (myOutput == 0)
			{
				Label1.Text = "Succesfully Inserted";
				Response.Redirect("Home.aspx");
			}
			else
			{
				Label1.Text = "UnSuccesfully Inserted";

			}
		}
	}
}