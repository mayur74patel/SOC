
package org.tempuri;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElementRef;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for anonymous complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="blogger_name" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="blog_subject" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="blog_details" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "", propOrder = {
    "bloggerName",
    "blogSubject",
    "blogDetails"
})
@XmlRootElement(name = "insertBlog")
public class InsertBlog {

    @XmlElementRef(name = "blogger_name", namespace = "http://tempuri.org/", type = JAXBElement.class)
    protected JAXBElement<String> bloggerName;
    @XmlElementRef(name = "blog_subject", namespace = "http://tempuri.org/", type = JAXBElement.class)
    protected JAXBElement<String> blogSubject;
    @XmlElementRef(name = "blog_details", namespace = "http://tempuri.org/", type = JAXBElement.class)
    protected JAXBElement<String> blogDetails;

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

}
