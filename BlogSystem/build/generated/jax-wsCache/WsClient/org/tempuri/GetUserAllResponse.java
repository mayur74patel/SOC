
package org.tempuri;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElementRef;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;
import org.datacontract.schemas._2004._07.iblogservice.ArrayOfMyUser;


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
 *         &lt;element name="getUserAllResult" type="{http://schemas.datacontract.org/2004/07/IBlogService}ArrayOfMyUser" minOccurs="0"/&gt;
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
    "getUserAllResult"
})
@XmlRootElement(name = "getUserAllResponse")
public class GetUserAllResponse {

    @XmlElementRef(name = "getUserAllResult", namespace = "http://tempuri.org/", type = JAXBElement.class)
    protected JAXBElement<ArrayOfMyUser> getUserAllResult;

    /**
     * Gets the value of the getUserAllResult property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link ArrayOfMyUser }{@code >}
     *     
     */
    public JAXBElement<ArrayOfMyUser> getGetUserAllResult() {
        return getUserAllResult;
    }

    /**
     * Sets the value of the getUserAllResult property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link ArrayOfMyUser }{@code >}
     *     
     */
    public void setGetUserAllResult(JAXBElement<ArrayOfMyUser> value) {
        this.getUserAllResult = value;
    }

}
