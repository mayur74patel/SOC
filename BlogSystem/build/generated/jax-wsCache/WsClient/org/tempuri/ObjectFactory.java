
package org.tempuri;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;
import org.datacontract.schemas._2004._07.iblogservice.ArrayOfMyBlog;
import org.datacontract.schemas._2004._07.iblogservice.ArrayOfMyUser;
import org.datacontract.schemas._2004._07.iblogservice.MyBlog;
import org.datacontract.schemas._2004._07.iblogservice.MyUser;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the org.tempuri package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {

    private final static QName _LoginUsername_QNAME = new QName("http://tempuri.org/", "username");
    private final static QName _LoginPassword_QNAME = new QName("http://tempuri.org/", "password");
    private final static QName _LoginResponseLoginResult_QNAME = new QName("http://tempuri.org/", "loginResult");
    private final static QName _GetAllBlogResponseGetAllBlogResult_QNAME = new QName("http://tempuri.org/", "getAllBlogResult");
    private final static QName _GetUserAllResponseGetUserAllResult_QNAME = new QName("http://tempuri.org/", "getUserAllResult");
    private final static QName _GetUserByIdResponseGetUserByIdResult_QNAME = new QName("http://tempuri.org/", "GetUserByIdResult");
    private final static QName _InsertUserUserName_QNAME = new QName("http://tempuri.org/", "user_name");
    private final static QName _InsertUserEmail_QNAME = new QName("http://tempuri.org/", "email");
    private final static QName _InsertUserResponseInsertUserResult_QNAME = new QName("http://tempuri.org/", "insertUserResult");
    private final static QName _InsertBlogBloggerName_QNAME = new QName("http://tempuri.org/", "blogger_name");
    private final static QName _InsertBlogBlogSubject_QNAME = new QName("http://tempuri.org/", "blog_subject");
    private final static QName _InsertBlogBlogDetails_QNAME = new QName("http://tempuri.org/", "blog_details");
    private final static QName _InsertBlogResponseInsertBlogResult_QNAME = new QName("http://tempuri.org/", "insertBlogResult");
    private final static QName _UpdateBlogResponseUpdateBlogResult_QNAME = new QName("http://tempuri.org/", "updateBlogResult");
    private final static QName _GetBlogByIdResponseGetBlogByIdResult_QNAME = new QName("http://tempuri.org/", "GetBlogByIdResult");
    private final static QName _DeleteUserResponseDeleteUserResult_QNAME = new QName("http://tempuri.org/", "deleteUserResult");
    private final static QName _DeleteBlogResponseDeleteBlogResult_QNAME = new QName("http://tempuri.org/", "deleteBlogResult");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: org.tempuri
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link Login }
     * 
     */
    public Login createLogin() {
        return new Login();
    }

    /**
     * Create an instance of {@link LoginResponse }
     * 
     */
    public LoginResponse createLoginResponse() {
        return new LoginResponse();
    }

    /**
     * Create an instance of {@link GetAllBlog }
     * 
     */
    public GetAllBlog createGetAllBlog() {
        return new GetAllBlog();
    }

    /**
     * Create an instance of {@link GetAllBlogResponse }
     * 
     */
    public GetAllBlogResponse createGetAllBlogResponse() {
        return new GetAllBlogResponse();
    }

    /**
     * Create an instance of {@link GetUserAll }
     * 
     */
    public GetUserAll createGetUserAll() {
        return new GetUserAll();
    }

    /**
     * Create an instance of {@link GetUserAllResponse }
     * 
     */
    public GetUserAllResponse createGetUserAllResponse() {
        return new GetUserAllResponse();
    }

    /**
     * Create an instance of {@link GetUserById }
     * 
     */
    public GetUserById createGetUserById() {
        return new GetUserById();
    }

    /**
     * Create an instance of {@link GetUserByIdResponse }
     * 
     */
    public GetUserByIdResponse createGetUserByIdResponse() {
        return new GetUserByIdResponse();
    }

    /**
     * Create an instance of {@link InsertUser }
     * 
     */
    public InsertUser createInsertUser() {
        return new InsertUser();
    }

    /**
     * Create an instance of {@link InsertUserResponse }
     * 
     */
    public InsertUserResponse createInsertUserResponse() {
        return new InsertUserResponse();
    }

    /**
     * Create an instance of {@link InsertBlog }
     * 
     */
    public InsertBlog createInsertBlog() {
        return new InsertBlog();
    }

    /**
     * Create an instance of {@link InsertBlogResponse }
     * 
     */
    public InsertBlogResponse createInsertBlogResponse() {
        return new InsertBlogResponse();
    }

    /**
     * Create an instance of {@link UpdateBlog }
     * 
     */
    public UpdateBlog createUpdateBlog() {
        return new UpdateBlog();
    }

    /**
     * Create an instance of {@link UpdateBlogResponse }
     * 
     */
    public UpdateBlogResponse createUpdateBlogResponse() {
        return new UpdateBlogResponse();
    }

    /**
     * Create an instance of {@link GetBlogById }
     * 
     */
    public GetBlogById createGetBlogById() {
        return new GetBlogById();
    }

    /**
     * Create an instance of {@link GetBlogByIdResponse }
     * 
     */
    public GetBlogByIdResponse createGetBlogByIdResponse() {
        return new GetBlogByIdResponse();
    }

    /**
     * Create an instance of {@link DeleteUser }
     * 
     */
    public DeleteUser createDeleteUser() {
        return new DeleteUser();
    }

    /**
     * Create an instance of {@link DeleteUserResponse }
     * 
     */
    public DeleteUserResponse createDeleteUserResponse() {
        return new DeleteUserResponse();
    }

    /**
     * Create an instance of {@link DeleteBlog }
     * 
     */
    public DeleteBlog createDeleteBlog() {
        return new DeleteBlog();
    }

    /**
     * Create an instance of {@link DeleteBlogResponse }
     * 
     */
    public DeleteBlogResponse createDeleteBlogResponse() {
        return new DeleteBlogResponse();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "username", scope = Login.class)
    public JAXBElement<String> createLoginUsername(String value) {
        return new JAXBElement<String>(_LoginUsername_QNAME, String.class, Login.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "password", scope = Login.class)
    public JAXBElement<String> createLoginPassword(String value) {
        return new JAXBElement<String>(_LoginPassword_QNAME, String.class, Login.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link MyUser }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "loginResult", scope = LoginResponse.class)
    public JAXBElement<MyUser> createLoginResponseLoginResult(MyUser value) {
        return new JAXBElement<MyUser>(_LoginResponseLoginResult_QNAME, MyUser.class, LoginResponse.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ArrayOfMyBlog }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "getAllBlogResult", scope = GetAllBlogResponse.class)
    public JAXBElement<ArrayOfMyBlog> createGetAllBlogResponseGetAllBlogResult(ArrayOfMyBlog value) {
        return new JAXBElement<ArrayOfMyBlog>(_GetAllBlogResponseGetAllBlogResult_QNAME, ArrayOfMyBlog.class, GetAllBlogResponse.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ArrayOfMyUser }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "getUserAllResult", scope = GetUserAllResponse.class)
    public JAXBElement<ArrayOfMyUser> createGetUserAllResponseGetUserAllResult(ArrayOfMyUser value) {
        return new JAXBElement<ArrayOfMyUser>(_GetUserAllResponseGetUserAllResult_QNAME, ArrayOfMyUser.class, GetUserAllResponse.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link MyUser }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "GetUserByIdResult", scope = GetUserByIdResponse.class)
    public JAXBElement<MyUser> createGetUserByIdResponseGetUserByIdResult(MyUser value) {
        return new JAXBElement<MyUser>(_GetUserByIdResponseGetUserByIdResult_QNAME, MyUser.class, GetUserByIdResponse.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "user_name", scope = InsertUser.class)
    public JAXBElement<String> createInsertUserUserName(String value) {
        return new JAXBElement<String>(_InsertUserUserName_QNAME, String.class, InsertUser.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "password", scope = InsertUser.class)
    public JAXBElement<String> createInsertUserPassword(String value) {
        return new JAXBElement<String>(_LoginPassword_QNAME, String.class, InsertUser.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "email", scope = InsertUser.class)
    public JAXBElement<String> createInsertUserEmail(String value) {
        return new JAXBElement<String>(_InsertUserEmail_QNAME, String.class, InsertUser.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "insertUserResult", scope = InsertUserResponse.class)
    public JAXBElement<String> createInsertUserResponseInsertUserResult(String value) {
        return new JAXBElement<String>(_InsertUserResponseInsertUserResult_QNAME, String.class, InsertUserResponse.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "blogger_name", scope = InsertBlog.class)
    public JAXBElement<String> createInsertBlogBloggerName(String value) {
        return new JAXBElement<String>(_InsertBlogBloggerName_QNAME, String.class, InsertBlog.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "blog_subject", scope = InsertBlog.class)
    public JAXBElement<String> createInsertBlogBlogSubject(String value) {
        return new JAXBElement<String>(_InsertBlogBlogSubject_QNAME, String.class, InsertBlog.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "blog_details", scope = InsertBlog.class)
    public JAXBElement<String> createInsertBlogBlogDetails(String value) {
        return new JAXBElement<String>(_InsertBlogBlogDetails_QNAME, String.class, InsertBlog.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "insertBlogResult", scope = InsertBlogResponse.class)
    public JAXBElement<String> createInsertBlogResponseInsertBlogResult(String value) {
        return new JAXBElement<String>(_InsertBlogResponseInsertBlogResult_QNAME, String.class, InsertBlogResponse.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "blogger_name", scope = UpdateBlog.class)
    public JAXBElement<String> createUpdateBlogBloggerName(String value) {
        return new JAXBElement<String>(_InsertBlogBloggerName_QNAME, String.class, UpdateBlog.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "blog_subject", scope = UpdateBlog.class)
    public JAXBElement<String> createUpdateBlogBlogSubject(String value) {
        return new JAXBElement<String>(_InsertBlogBlogSubject_QNAME, String.class, UpdateBlog.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "blog_details", scope = UpdateBlog.class)
    public JAXBElement<String> createUpdateBlogBlogDetails(String value) {
        return new JAXBElement<String>(_InsertBlogBlogDetails_QNAME, String.class, UpdateBlog.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "updateBlogResult", scope = UpdateBlogResponse.class)
    public JAXBElement<String> createUpdateBlogResponseUpdateBlogResult(String value) {
        return new JAXBElement<String>(_UpdateBlogResponseUpdateBlogResult_QNAME, String.class, UpdateBlogResponse.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link MyBlog }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "GetBlogByIdResult", scope = GetBlogByIdResponse.class)
    public JAXBElement<MyBlog> createGetBlogByIdResponseGetBlogByIdResult(MyBlog value) {
        return new JAXBElement<MyBlog>(_GetBlogByIdResponseGetBlogByIdResult_QNAME, MyBlog.class, GetBlogByIdResponse.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "deleteUserResult", scope = DeleteUserResponse.class)
    public JAXBElement<String> createDeleteUserResponseDeleteUserResult(String value) {
        return new JAXBElement<String>(_DeleteUserResponseDeleteUserResult_QNAME, String.class, DeleteUserResponse.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "deleteBlogResult", scope = DeleteBlogResponse.class)
    public JAXBElement<String> createDeleteBlogResponseDeleteBlogResult(String value) {
        return new JAXBElement<String>(_DeleteBlogResponseDeleteBlogResult_QNAME, String.class, DeleteBlogResponse.class, value);
    }

}
