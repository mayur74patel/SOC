using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Client
{
	public partial class admin_login : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			string uname= TextBox2.Text.ToString();
			string id_1 = "admin";
			

			int myOutput = string.Compare(uname, id_1);

			if (myOutput != 0)
			{
				Session["UserName"] = TextBox2.Text.ToString();
				Response.Redirect("Insert.aspx");
			}
			else {
				Session["UserName"] = TextBox2.Text.ToString();
				Response.Redirect("Home.aspx");
			}
				
		}
	}
}