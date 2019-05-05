using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace blogservicelibrary
{
    [ServiceContract]
    public interface IBlogService
    {
        [OperationContract]//different operation for particular service
        DataSet readBlogs(int userid);

        [OperationContract]
        string insertBlogs(int userid, string header, string body, DateTime time,string username);

        [OperationContract]
        string updateBlogs(int userid, string header, string body, DateTime time, string username);

        [OperationContract]
        string deleteBlogs(int userid, string header);
    }
}
