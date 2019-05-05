
package org.datacontract.schemas._2004._07.iblogservice;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElementRef;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for MyBlog complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="MyBlog"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="blog_date" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="blog_details" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="blog_subject" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="blogger_name" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="id" type="{http://www.w3.org/2001/XMLSchema}int" minOccurs="0"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "MyBlog", propOrder = {
    "blogDate",
    "blogDetails",
    "blogSubject",
    "bloggerName",
    "id"
})
public class MyBlog {

    @XmlElementRef(name = "blog_date", namespace = "http://schemas.datacontract.org/2004/07/IBlogService", type = JAXBElement.class)
    protected JAXBElement<String> blogDate;
    @XmlElementRef(name = "blog_details", namespace = "http://schemas.datacontract.org/2004/07/IBlogService", type = JAXBElement.class)
    protected JAXBElement<String> blogDetails;
    @XmlElementRef(name = "blog_subject", namespace = "http://schemas.datacontract.org/2004/07/IBlogService", type = JAXBElement.class)
    protected JAXBElement<String> blogSubject;
    @XmlElementRef(name = "blogger_name", namespace = "http://schemas.datacontract.org/2004/07/IBlogService", type = JAXBElement.class)
    protected JAXBElement<String> bloggerName;
    protected Integer id;

    /**
     * Gets the value of the blogDate property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public JAXBElement<String> getBlogDate() {
        return blogDate;
    }

    /**
     * Sets the value of the blogDate property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public void setBlogDate(JAXBElement<String> value) {
        this.blogDate = value;
    }

    /**
     * Gets the value of the blogDetails property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public JAXBElement<String> getBlogDetails() {
        return blogDetails;
    }

    /**
     * Sets the value of the blogDetails property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public void setBlogDetails(JAXBElement<String> value) {
        this.blogDetails = value;
    }

    /**
     * Gets the value of the blogSubject property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public JAXBElement<String> getBlogSubject() {
        return blogSubject;
    }

    /**
     * Sets the value of the blogSubject property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public void setBlogSubject(JAXBElement<String> value) {
        this.blogSubject = value;
    }

    /**
     * Gets the value of the bloggerName property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public JAXBElement<String> getBloggerName() {
        return bloggerName;
    }

    /**
     * Sets the value of the bloggerName property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public void setBloggerName(JAXBElement<String> value) {
        this.bloggerName = value;
    }

    /**
     * Gets the value of the id property.
     * 
     * @return
     *     possible object is
     *     {@link Integer }
     *     
     */
    public Integer getId() {
        return id;
    }

    /**
     * Sets the value of the id property.
     * 
     * @param value
     *     allowed object is
     *     {@link Integer }
     *     
     */
    public void setId(Integer value) {
        this.id = value;
    }

}
