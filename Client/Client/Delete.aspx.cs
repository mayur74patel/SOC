using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Client
{
	public partial class Delete : System.Web.UI.Page
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
			if (Session["UserName"] != null)
			{
				Label7.Text = "admin will be deleted a data";
			}
			else
			{
				Response.Redirect("Home.aspx");
			}
		}

		protected void Button2_Click(object sender, EventArgs e)
		{
			int id = Int32.Parse(Label1.Text.ToString());

			ServiceReference1.Service1Client client = new ServiceReference1.Service1Client("BasicHttpBinding_IService1");

			string string1 = client.deleteBlog(id);
			string string2 = "Item Deleted Successfully !";
			int myOutput = string.Compare(string1, string2);
			if (myOutput == 0)
			{
				Label6.Text = "Succesfully Deleted";
				Response.Redirect("Home.aspx");
			}
			else
			{
				Label6.Text = "UnSuccesfully Deleted";

			}

		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			int id = Int32.Parse(TextBox1.Text.ToString());

			ServiceReference1.Service1Client client = new ServiceReference1.Service1Client("BasicHttpBinding_IService1");
			ServiceReference1.MyBlog myblog = client.getBlog(id);
			string id_1 = "0";
			string id_2 = myblog.id.ToString();

			int myOutput = string.Compare(id_2, id_1);

			if (myOutput != 0)
			{
				Label1.Text = myblog.id.ToString();
			}
			else
			{
				Label1.Text = "please enter valid Id ";
			}
			Label2.Text = myblog.blogger_name;
			Label3.Text = myblog.blog_subject;
			Label4.Text = myblog.blog_details;
			Label5.Text = myblog.blog_date;
		}
	}
}