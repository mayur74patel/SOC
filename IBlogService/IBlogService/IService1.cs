using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace IBlogService
{
	// NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IService1" in both code and config file together.
	[ServiceContract]
	public interface IService1
	{
        [OperationContract]
        MyUser login(string username, string password);

        [OperationContract]
		List<MyBlog> getAllBlog();

		[OperationContract]
		List<MyUser> getUserAll();

        [OperationContract]
        MyUser GetUserById(int id);

        [OperationContract]
		string insertUser(int admin, string user_name, string password, string email);

		[OperationContract]
		string insertBlog(string blogger_name, string blog_subject, string blog_details);

		[OperationContract]
		string updateBlog(int id, string blogger_name, string blog_subject, string blog_details);

       

        [OperationContract]
        MyBlog GetBlogById(int id);

        [OperationContract]
		string deleteUser(int userid);

		[OperationContract]
		string deleteBlog(int id);

		// TODO: Add your service operations here
	}

	[DataContract]
	public class MyUser
	{
		int _id;
		string _username;
		string _password;
		string _email;

		[DataMember]
		public int id
		{
			get { return _id; }
			set { _id = value; }
		}

		[DataMember]
		public string username
		{
			get { return _username; }
			set { _username = value; }
		}

		[DataMember]
		public string password
		{
			get { return _password; }
			set { _password = value; }
		}

		[DataMember]
		public string email
		{
			get { return _email; }
			set { _email = value; }
		}

	}

	[DataContract]
	public class MyBlog
	{
		int _id;
		string _blogger_name;
		string _blog_subject;
		string _blog_details;
		string _blog_date;

		[DataMember]
		public int id
		{
			get { return _id; }
			set { _id = value; }
		}

		[DataMember]
		public string blogger_name
		{
			get { return _blogger_name; }
			set { _blogger_name = value; }
		}

		[DataMember]
		public string blog_subject
		{
			get { return _blog_subject; }
			set { _blog_subject = value; }
		}

		[DataMember]
		public string blog_details
		{
			get { return _blog_details; }
			set { _blog_details = value; }
		}
		[DataMember]
		public string blog_date
		{
			get { return _blog_date; }
			set { _blog_date = value; }
		}
	}

	// Use a data contract as illustrated in the sample below to add composite types to service operations.
	// You can add XSD files into the project. After building the project, you can directly use the data types defined there, with the namespace "IBlogService.ContractType".

}
