
package org.tempuri;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElementRef;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;
import org.datacontract.schemas._2004._07.iblogservice.MyUser;


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
 *         &lt;element name="GetUserByIdResult" type="{http://schemas.datacontract.org/2004/07/IBlogService}MyUser" minOccurs="0"/&gt;
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
    "getUserByIdResult"
})
@XmlRootElement(name = "GetUserByIdResponse")
public class GetUserByIdResponse {

    @XmlElementRef(name = "GetUserByIdResult", namespace = "http://tempuri.org/", type = JAXBElement.class)
    protected JAXBElement<MyUser> getUserByIdResult;

    /**
     * Gets the value of the getUserByIdResult property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link MyUser }{@code >}
     *     
     */
    public JAXBElement<MyUser> getGetUserByIdResult() {
        return getUserByIdResult;
    }

    /**
     * Sets the value of the getUserByIdResult property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link MyUser }{@code >}
     *     
     */
    public void setGetUserByIdResult(JAXBElement<MyUser> value) {
        this.getUserByIdResult = value;
    }

}
