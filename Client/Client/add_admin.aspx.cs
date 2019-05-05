using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Client
{
	public partial class add_admin : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			ServiceReference1.Service1Client client = new ServiceReference1.Service1Client("BasicHttpBinding_IService1");
			Random random = new Random();
			string username = TextBox2.Text;
			string password = TextBox3.Text;
			string email = TextBox4.Text;
			int id = random.Next(1000);
			string string1 = client.insertUser(id, username, password, email);
			string string2 = "User add successfully !";
			int myOutput = string.Compare(string1, string2);
			if (myOutput == 0)
			{
				Label1.Text = "Succesfully Inserted";
				Response.Redirect("admin_login.aspx");
			}
			else
			{
				Label1.Text = "UnSuccesfully Inserted";
			}
		}
	}
}