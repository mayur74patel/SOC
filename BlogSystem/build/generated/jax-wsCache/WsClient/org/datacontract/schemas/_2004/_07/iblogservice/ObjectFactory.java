
package org.datacontract.schemas._2004._07.iblogservice;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the org.datacontract.schemas._2004._07.iblogservice package. 
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

    private final static QName _MyUser_QNAME = new QName("http://schemas.datacontract.org/2004/07/IBlogService", "MyUser");
    private final static QName _ArrayOfMyBlog_QNAME = new QName("http://schemas.datacontract.org/2004/07/IBlogService", "ArrayOfMyBlog");
    private final static QName _MyBlog_QNAME = new QName("http://schemas.datacontract.org/2004/07/IBlogService", "MyBlog");
    private final static QName _ArrayOfMyUser_QNAME = new QName("http://schemas.datacontract.org/2004/07/IBlogService", "ArrayOfMyUser");
    private final static QName _MyBlogBlogDate_QNAME = new QName("http://schemas.datacontract.org/2004/07/IBlogService", "blog_date");
    private final static QName _MyBlogBlogDetails_QNAME = new QName("http://schemas.datacontract.org/2004/07/IBlogService", "blog_details");
    private final static QName _MyBlogBlogSubject_QNAME = new QName("http://schemas.datacontract.org/2004/07/IBlogService", "blog_subject");
    private final static QName _MyBlogBloggerName_QNAME = new QName("http://schemas.datacontract.org/2004/07/IBlogService", "blogger_name");
    private final static QName _MyUserEmail_QNAME = new QName("http://schemas.datacontract.org/2004/07/IBlogService", "email");
    private final static QName _MyUserPassword_QNAME = new QName("http://schemas.datacontract.org/2004/07/IBlogService", "password");
    private final static QName _MyUserUsername_QNAME = new QName("http://schemas.datacontract.org/2004/07/IBlogService", "username");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: org.datacontract.schemas._2004._07.iblogservice
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link MyUser }
     * 
     */
    public MyUser createMyUser() {
        return new MyUser();
    }

    /**
     * Create an instance of {@link ArrayOfMyBlog }
     * 
     */
    public ArrayOfMyBlog createArrayOfMyBlog() {
        return new ArrayOfMyBlog();
    }

    /**
     * Create an instance of {@link ArrayOfMyUser }
     * 
     */
    public ArrayOfMyUser createArrayOfMyUser() {
        return new ArrayOfMyUser();
    }

    /**
     * Create an instance of {@link MyBlog }
     * 
     */
    public MyBlog createMyBlog() {
        return new MyBlog();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link MyUser }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/IBlogService", name = "MyUser")
    public JAXBElement<MyUser> createMyUser(MyUser value) {
        return new JAXBElement<MyUser>(_MyUser_QNAME, MyUser.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ArrayOfMyBlog }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/IBlogService", name = "ArrayOfMyBlog")
    public JAXBElement<ArrayOfMyBlog> createArrayOfMyBlog(ArrayOfMyBlog value) {
        return new JAXBElement<ArrayOfMyBlog>(_ArrayOfMyBlog_QNAME, ArrayOfMyBlog.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link MyBlog }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/IBlogService", name = "MyBlog")
    public JAXBElement<MyBlog> createMyBlog(MyBlog value) {
        return new JAXBElement<MyBlog>(_MyBlog_QNAME, MyBlog.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ArrayOfMyUser }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/IBlogService", name = "ArrayOfMyUser")
    public JAXBElement<ArrayOfMyUser> createArrayOfMyUser(ArrayOfMyUser value) {
        return new JAXBElement<ArrayOfMyUser>(_ArrayOfMyUser_QNAME, ArrayOfMyUser.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/IBlogService", name = "blog_date", scope = MyBlog.class)
    public JAXBElement<String> createMyBlogBlogDate(String value) {
        return new JAXBElement<String>(_MyBlogBlogDate_QNAME, String.class, MyBlog.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/IBlogService", name = "blog_details", scope = MyBlog.class)
    public JAXBElement<String> createMyBlogBlogDetails(String value) {
        return new JAXBElement<String>(_MyBlogBlogDetails_QNAME, String.class, MyBlog.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/IBlogService", name = "blog_subject", scope = MyBlog.class)
    public JAXBElement<String> createMyBlogBlogSubject(String value) {
        return new JAXBElement<String>(_MyBlogBlogSubject_QNAME, String.class, MyBlog.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/IBlogService", name = "blogger_name", scope = MyBlog.class)
    public JAXBElement<String> createMyBlogBloggerName(String value) {
        return new JAXBElement<String>(_MyBlogBloggerName_QNAME, String.class, MyBlog.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/IBlogService", name = "email", scope = MyUser.class)
    public JAXBElement<String> createMyUserEmail(String value) {
        return new JAXBElement<String>(_MyUserEmail_QNAME, String.class, MyUser.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/IBlogService", name = "password", scope = MyUser.class)
    public JAXBElement<String> createMyUserPassword(String value) {
        return new JAXBElement<String>(_MyUserPassword_QNAME, String.class, MyUser.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/IBlogService", name = "username", scope = MyUser.class)
    public JAXBElement<String> createMyUserUsername(String value) {
        return new JAXBElement<String>(_MyUserUsername_QNAME, String.class, MyUser.class, value);
    }

}
