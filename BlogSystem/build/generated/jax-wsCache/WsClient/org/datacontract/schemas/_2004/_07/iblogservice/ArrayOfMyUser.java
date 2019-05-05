
package org.datacontract.schemas._2004._07.iblogservice;

import java.util.ArrayList;
import java.util.List;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for ArrayOfMyUser complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="ArrayOfMyUser"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="MyUser" type="{http://schemas.datacontract.org/2004/07/IBlogService}MyUser" maxOccurs="unbounded" minOccurs="0"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "ArrayOfMyUser", propOrder = {
    "myUser"
})
public class ArrayOfMyUser {

    @XmlElement(name = "MyUser", nillable = true)
    protected List<MyUser> myUser;

    /**
     * Gets the value of the myUser property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the myUser property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getMyUser().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link MyUser }
     * 
     * 
     */
    public List<MyUser> getMyUser() {
        if (myUser == null) {
            myUser = new ArrayList<MyUser>();
        }
        return this.myUser;
    }

}
