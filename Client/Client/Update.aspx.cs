using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Client
{
	public partial class Update : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			Panel1.Visible = false;
			if (Session["UserName"] != null)
			{
				Label3.Text = "admin will be updated a data";
			}
			else {
				Response.Redirect("Home.aspx");
			}
		}


		protected void Button1_Click(object sender, EventArgs e)
		{
			Panel1.Visible = true;
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
			TextBox3.Text = myblog.blogger_name;
			TextBox4.Text = myblog.blog_subject;
			TextBox5.Text = myblog.blog_details;
			TextBox6.Text = myblog.blog_date;
		}

		protected void Button2_Click(object sender, EventArgs e)
		{
			ServiceReference1.Service1Client client = new ServiceReference1.Service1Client("BasicHttpBinding_IService1");

			int id=Int32.Parse(Label1.Text);
			string blogger_name=TextBox3.Text;
			string blog_subject=TextBox4.Text;
			string blog_details=TextBox5.Text;
			string blog_date=TextBox6.Text;
			
			string string1 = client.updateBlog(id,blogger_name, blog_subject, blog_details, blog_date);
			string string2 = "Cart Updated Successfully";
			int myOutput = string.Compare(string1, string2);
			if (myOutput == 0)
			{
				Label2.Text = "Succesfully Updated";
				Response.Redirect("Home.aspx");
			}
			else {
				Label2.Text = "UnSuccesfully Updated";

			}
		}
	}
}