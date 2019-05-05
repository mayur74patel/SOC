using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Client
{
	public partial class WebForm1 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			int id = Int32.Parse(TextBox1.Text);
			ServiceReference1.Service1Client client = new ServiceReference1.Service1Client("BasicHttpBinding_IService1");
			ServiceReference1.MyBlog myblog = client.getBlog(id);
			string id_1 = "0";
			string id_2 = myblog.id.ToString();

			int myOutput = string.Compare(id_2, id_1);

			if (myOutput != 0)
			{
				Label1.Text = myblog.id.ToString();
			}
			else {
				Label1.Text = "please enter valid Id ";
			}
				
			Label2.Text = myblog.blogger_name;
			Label3.Text = myblog.blog_subject;
			Label4.Text = myblog.blog_details;
			Label5.Text = myblog.blog_date;
		}
	}
}