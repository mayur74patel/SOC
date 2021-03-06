
package org.tempuri;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.xml.bind.annotation.XmlSeeAlso;
import javax.xml.ws.RequestWrapper;
import javax.xml.ws.ResponseWrapper;
import org.datacontract.schemas._2004._07.iblogservice.ArrayOfMyBlog;
import org.datacontract.schemas._2004._07.iblogservice.ArrayOfMyUser;
import org.datacontract.schemas._2004._07.iblogservice.MyBlog;
import org.datacontract.schemas._2004._07.iblogservice.MyUser;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.2.11-b150120.1832
 * Generated source version: 2.1
 * 
 */
@WebService(name = "IService1", targetNamespace = "http://tempuri.org/")
@XmlSeeAlso({
    com.microsoft.schemas._2003._10.serialization.ObjectFactory.class,
    org.datacontract.schemas._2004._07.iblogservice.ObjectFactory.class,
    org.tempuri.ObjectFactory.class
})
public interface IService1 {


    /**
     * 
     * @param password
     * @param username
     * @return
     *     returns org.datacontract.schemas._2004._07.iblogservice.MyUser
     */
    @WebMethod(action = "http://tempuri.org/IService1/login")
    @WebResult(name = "loginResult", targetNamespace = "http://tempuri.org/")
    @RequestWrapper(localName = "login", targetNamespace = "http://tempuri.org/", className = "org.tempuri.Login")
    @ResponseWrapper(localName = "loginResponse", targetNamespace = "http://tempuri.org/", className = "org.tempuri.LoginResponse")
    public MyUser login(
        @WebParam(name = "username", targetNamespace = "http://tempuri.org/")
        String username,
        @WebParam(name = "password", targetNamespace = "http://tempuri.org/")
        String password);

    /**
     * 
     * @return
     *     returns org.datacontract.schemas._2004._07.iblogservice.ArrayOfMyBlog
     */
    @WebMethod(action = "http://tempuri.org/IService1/getAllBlog")
    @WebResult(name = "getAllBlogResult", targetNamespace = "http://tempuri.org/")
    @RequestWrapper(localName = "getAllBlog", targetNamespace = "http://tempuri.org/", className = "org.tempuri.GetAllBlog")
    @ResponseWrapper(localName = "getAllBlogResponse", targetNamespace = "http://tempuri.org/", className = "org.tempuri.GetAllBlogResponse")
    public ArrayOfMyBlog getAllBlog();

    /**
     * 
     * @return
     *     returns org.datacontract.schemas._2004._07.iblogservice.ArrayOfMyUser
     */
    @WebMethod(action = "http://tempuri.org/IService1/getUserAll")
    @WebResult(name = "getUserAllResult", targetNamespace = "http://tempuri.org/")
    @RequestWrapper(localName = "getUserAll", targetNamespace = "http://tempuri.org/", className = "org.tempuri.GetUserAll")
    @ResponseWrapper(localName = "getUserAllResponse", targetNamespace = "http://tempuri.org/", className = "org.tempuri.GetUserAllResponse")
    public ArrayOfMyUser getUserAll();

    /**
     * 
     * @param id
     * @return
     *     returns org.datacontract.schemas._2004._07.iblogservice.MyUser
     */
    @WebMethod(operationName = "GetUserById", action = "http://tempuri.org/IService1/GetUserById")
    @WebResult(name = "GetUserByIdResult", targetNamespace = "http://tempuri.org/")
    @RequestWrapper(localName = "GetUserById", targetNamespace = "http://tempuri.org/", className = "org.tempuri.GetUserById")
    @ResponseWrapper(localName = "GetUserByIdResponse", targetNamespace = "http://tempuri.org/", className = "org.tempuri.GetUserByIdResponse")
    public MyUser getUserById(
        @WebParam(name = "id", targetNamespace = "http://tempuri.org/")
        Integer id);

    /**
     * 
     * @param password
     * @param admin
     * @param userName
     * @param email
     * @return
     *     returns java.lang.String
     */
    @WebMethod(action = "http://tempuri.org/IService1/insertUser")
    @WebResult(name = "insertUserResult", targetNamespace = "http://tempuri.org/")
    @RequestWrapper(localName = "insertUser", targetNamespace = "http://tempuri.org/", className = "org.tempuri.InsertUser")
    @ResponseWrapper(localName = "insertUserResponse", targetNamespace = "http://tempuri.org/", className = "org.tempuri.InsertUserResponse")
    public String insertUser(
        @WebParam(name = "admin", targetNamespace = "http://tempuri.org/")
        Integer admin,
        @WebParam(name = "user_name", targetNamespace = "http://tempuri.org/")
        String userName,
        @WebParam(name = "password", targetNamespace = "http://tempuri.org/")
        String password,
        @WebParam(name = "email", targetNamespace = "http://tempuri.org/")
        String email);

    /**
     * 
     * @param bloggerName
     * @param blogSubject
     * @param blogDetails
     * @return
     *     returns java.lang.String
     */
    @WebMethod(action = "http://tempuri.org/IService1/insertBlog")
    @WebResult(name = "insertBlogResult", targetNamespace = "http://tempuri.org/")
    @RequestWrapper(localName = "insertBlog", targetNamespace = "http://tempuri.org/", className = "org.tempuri.InsertBlog")
    @ResponseWrapper(localName = "insertBlogResponse", targetNamespace = "http://tempuri.org/", className = "org.tempuri.InsertBlogResponse")
    public String insertBlog(
        @WebParam(name = "blogger_name", targetNamespace = "http://tempuri.org/")
        String bloggerName,
        @WebParam(name = "blog_subject", targetNamespace = "http://tempuri.org/")
        String blogSubject,
        @WebParam(name = "blog_details", targetNamespace = "http://tempuri.org/")
        String blogDetails);

    /**
     * 
     * @param bloggerName
     * @param blogSubject
     * @param id
     * @param blogDetails
     * @return
     *     returns java.lang.String
     */
    @WebMethod(action = "http://tempuri.org/IService1/updateBlog")
    @WebResult(name = "updateBlogResult", targetNamespace = "http://tempuri.org/")
    @RequestWrapper(localName = "updateBlog", targetNamespace = "http://tempuri.org/", className = "org.tempuri.UpdateBlog")
    @ResponseWrapper(localName = "updateBlogResponse", targetNamespace = "http://tempuri.org/", className = "org.tempuri.UpdateBlogResponse")
    public String updateBlog(
        @WebParam(name = "id", targetNamespace = "http://tempuri.org/")
        Integer id,
        @WebParam(name = "blogger_name", targetNamespace = "http://tempuri.org/")
        String bloggerName,
        @WebParam(name = "blog_subject", targetNamespace = "http://tempuri.org/")
        String blogSubject,
        @WebParam(name = "blog_details", targetNamespace = "http://tempuri.org/")
        String blogDetails);

    /**
     * 
     * @param id
     * @return
     *     returns org.datacontract.schemas._2004._07.iblogservice.MyBlog
     */
    @WebMethod(operationName = "GetBlogById", action = "http://tempuri.org/IService1/GetBlogById")
    @WebResult(name = "GetBlogByIdResult", targetNamespace = "http://tempuri.org/")
    @RequestWrapper(localName = "GetBlogById", targetNamespace = "http://tempuri.org/", className = "org.tempuri.GetBlogById")
    @ResponseWrapper(localName = "GetBlogByIdResponse", targetNamespace = "http://tempuri.org/", className = "org.tempuri.GetBlogByIdResponse")
    public MyBlog getBlogById(
        @WebParam(name = "id", targetNamespace = "http://tempuri.org/")
        Integer id);

    /**
     * 
     * @param userid
     * @return
     *     returns java.lang.String
     */
    @WebMethod(action = "http://tempuri.org/IService1/deleteUser")
    @WebResult(name = "deleteUserResult", targetNamespace = "http://tempuri.org/")
    @RequestWrapper(localName = "deleteUser", targetNamespace = "http://tempuri.org/", className = "org.tempuri.DeleteUser")
    @ResponseWrapper(localName = "deleteUserResponse", targetNamespace = "http://tempuri.org/", className = "org.tempuri.DeleteUserResponse")
    public String deleteUser(
        @WebParam(name = "userid", targetNamespace = "http://tempuri.org/")
        Integer userid);

    /**
     * 
     * @param id
     * @return
     *     returns java.lang.String
     */
    @WebMethod(action = "http://tempuri.org/IService1/deleteBlog")
    @WebResult(name = "deleteBlogResult", targetNamespace = "http://tempuri.org/")
    @RequestWrapper(localName = "deleteBlog", targetNamespace = "http://tempuri.org/", className = "org.tempuri.DeleteBlog")
    @ResponseWrapper(localName = "deleteBlogResponse", targetNamespace = "http://tempuri.org/", className = "org.tempuri.DeleteBlogResponse")
    public String deleteBlog(
        @WebParam(name = "id", targetNamespace = "http://tempuri.org/")
        Integer id);

}
