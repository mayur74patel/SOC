﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Client.ServiceReference1 {
    using System.Runtime.Serialization;
    using System;
    
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="MyBlog", Namespace="http://schemas.datacontract.org/2004/07/IBlogService")]
    [System.SerializableAttribute()]
    public partial class MyBlog : object, System.Runtime.Serialization.IExtensibleDataObject, System.ComponentModel.INotifyPropertyChanged {
        
        [System.NonSerializedAttribute()]
        private System.Runtime.Serialization.ExtensionDataObject extensionDataField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string blog_dateField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string blog_detailsField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string blog_subjectField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string blogger_nameField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int idField;
        
        [global::System.ComponentModel.BrowsableAttribute(false)]
        public System.Runtime.Serialization.ExtensionDataObject ExtensionData {
            get {
                return this.extensionDataField;
            }
            set {
                this.extensionDataField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string blog_date {
            get {
                return this.blog_dateField;
            }
            set {
                if ((object.ReferenceEquals(this.blog_dateField, value) != true)) {
                    this.blog_dateField = value;
                    this.RaisePropertyChanged("blog_date");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string blog_details {
            get {
                return this.blog_detailsField;
            }
            set {
                if ((object.ReferenceEquals(this.blog_detailsField, value) != true)) {
                    this.blog_detailsField = value;
                    this.RaisePropertyChanged("blog_details");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string blog_subject {
            get {
                return this.blog_subjectField;
            }
            set {
                if ((object.ReferenceEquals(this.blog_subjectField, value) != true)) {
                    this.blog_subjectField = value;
                    this.RaisePropertyChanged("blog_subject");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string blogger_name {
            get {
                return this.blogger_nameField;
            }
            set {
                if ((object.ReferenceEquals(this.blogger_nameField, value) != true)) {
                    this.blogger_nameField = value;
                    this.RaisePropertyChanged("blogger_name");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int id {
            get {
                return this.idField;
            }
            set {
                if ((this.idField.Equals(value) != true)) {
                    this.idField = value;
                    this.RaisePropertyChanged("id");
                }
            }
        }
        
        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
        
        protected void RaisePropertyChanged(string propertyName) {
            System.ComponentModel.PropertyChangedEventHandler propertyChanged = this.PropertyChanged;
            if ((propertyChanged != null)) {
                propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
            }
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="MyUser", Namespace="http://schemas.datacontract.org/2004/07/IBlogService")]
    [System.SerializableAttribute()]
    public partial class MyUser : object, System.Runtime.Serialization.IExtensibleDataObject, System.ComponentModel.INotifyPropertyChanged {
        
        [System.NonSerializedAttribute()]
        private System.Runtime.Serialization.ExtensionDataObject extensionDataField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string emailField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int idField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string passwordField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string usernameField;
        
        [global::System.ComponentModel.BrowsableAttribute(false)]
        public System.Runtime.Serialization.ExtensionDataObject ExtensionData {
            get {
                return this.extensionDataField;
            }
            set {
                this.extensionDataField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string email {
            get {
                return this.emailField;
            }
            set {
                if ((object.ReferenceEquals(this.emailField, value) != true)) {
                    this.emailField = value;
                    this.RaisePropertyChanged("email");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int id {
            get {
                return this.idField;
            }
            set {
                if ((this.idField.Equals(value) != true)) {
                    this.idField = value;
                    this.RaisePropertyChanged("id");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string password {
            get {
                return this.passwordField;
            }
            set {
                if ((object.ReferenceEquals(this.passwordField, value) != true)) {
                    this.passwordField = value;
                    this.RaisePropertyChanged("password");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string username {
            get {
                return this.usernameField;
            }
            set {
                if ((object.ReferenceEquals(this.usernameField, value) != true)) {
                    this.usernameField = value;
                    this.RaisePropertyChanged("username");
                }
            }
        }
        
        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
        
        protected void RaisePropertyChanged(string propertyName) {
            System.ComponentModel.PropertyChangedEventHandler propertyChanged = this.PropertyChanged;
            if ((propertyChanged != null)) {
                propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
            }
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="ServiceReference1.IService1")]
    public interface IService1 {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/getAllBlog", ReplyAction="http://tempuri.org/IService1/getAllBlogResponse")]
        Client.ServiceReference1.MyBlog[] getAllBlog();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/getAllBlog", ReplyAction="http://tempuri.org/IService1/getAllBlogResponse")]
        System.Threading.Tasks.Task<Client.ServiceReference1.MyBlog[]> getAllBlogAsync();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/getBlog", ReplyAction="http://tempuri.org/IService1/getBlogResponse")]
        Client.ServiceReference1.MyBlog getBlog(int id);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/getBlog", ReplyAction="http://tempuri.org/IService1/getBlogResponse")]
        System.Threading.Tasks.Task<Client.ServiceReference1.MyBlog> getBlogAsync(int id);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/getUserAll", ReplyAction="http://tempuri.org/IService1/getUserAllResponse")]
        Client.ServiceReference1.MyUser[] getUserAll();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/getUserAll", ReplyAction="http://tempuri.org/IService1/getUserAllResponse")]
        System.Threading.Tasks.Task<Client.ServiceReference1.MyUser[]> getUserAllAsync();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/insertUser", ReplyAction="http://tempuri.org/IService1/insertUserResponse")]
        string insertUser(int id, string user_name, string password, string email);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/insertUser", ReplyAction="http://tempuri.org/IService1/insertUserResponse")]
        System.Threading.Tasks.Task<string> insertUserAsync(int id, string user_name, string password, string email);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/insertBlog", ReplyAction="http://tempuri.org/IService1/insertBlogResponse")]
        string insertBlog(int id, string blogger_name, string blog_subject, string blog_details, string blog_date);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/insertBlog", ReplyAction="http://tempuri.org/IService1/insertBlogResponse")]
        System.Threading.Tasks.Task<string> insertBlogAsync(int id, string blogger_name, string blog_subject, string blog_details, string blog_date);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/updateBlog", ReplyAction="http://tempuri.org/IService1/updateBlogResponse")]
        string updateBlog(int id, string blogger_name, string blog_subject, string blog_details, string blog_date);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/updateBlog", ReplyAction="http://tempuri.org/IService1/updateBlogResponse")]
        System.Threading.Tasks.Task<string> updateBlogAsync(int id, string blogger_name, string blog_subject, string blog_details, string blog_date);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/deleteUser", ReplyAction="http://tempuri.org/IService1/deleteUserResponse")]
        string deleteUser(int userid);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/deleteUser", ReplyAction="http://tempuri.org/IService1/deleteUserResponse")]
        System.Threading.Tasks.Task<string> deleteUserAsync(int userid);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/deleteBlog", ReplyAction="http://tempuri.org/IService1/deleteBlogResponse")]
        string deleteBlog(int id);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/deleteBlog", ReplyAction="http://tempuri.org/IService1/deleteBlogResponse")]
        System.Threading.Tasks.Task<string> deleteBlogAsync(int id);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IService1Channel : Client.ServiceReference1.IService1, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class Service1Client : System.ServiceModel.ClientBase<Client.ServiceReference1.IService1>, Client.ServiceReference1.IService1 {
        
        public Service1Client() {
        }
        
        public Service1Client(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public Service1Client(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public Service1Client(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public Service1Client(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public Client.ServiceReference1.MyBlog[] getAllBlog() {
            return base.Channel.getAllBlog();
        }
        
        public System.Threading.Tasks.Task<Client.ServiceReference1.MyBlog[]> getAllBlogAsync() {
            return base.Channel.getAllBlogAsync();
        }
        
        public Client.ServiceReference1.MyBlog getBlog(int id) {
            return base.Channel.getBlog(id);
        }
        
        public System.Threading.Tasks.Task<Client.ServiceReference1.MyBlog> getBlogAsync(int id) {
            return base.Channel.getBlogAsync(id);
        }
        
        public Client.ServiceReference1.MyUser[] getUserAll() {
            return base.Channel.getUserAll();
        }
        
        public System.Threading.Tasks.Task<Client.ServiceReference1.MyUser[]> getUserAllAsync() {
            return base.Channel.getUserAllAsync();
        }
        
        public string insertUser(int id, string user_name, string password, string email) {
            return base.Channel.insertUser(id, user_name, password, email);
        }
        
        public System.Threading.Tasks.Task<string> insertUserAsync(int id, string user_name, string password, string email) {
            return base.Channel.insertUserAsync(id, user_name, password, email);
        }
        
        public string insertBlog(int id, string blogger_name, string blog_subject, string blog_details, string blog_date) {
            return base.Channel.insertBlog(id, blogger_name, blog_subject, blog_details, blog_date);
        }
        
        public System.Threading.Tasks.Task<string> insertBlogAsync(int id, string blogger_name, string blog_subject, string blog_details, string blog_date) {
            return base.Channel.insertBlogAsync(id, blogger_name, blog_subject, blog_details, blog_date);
        }
        
        public string updateBlog(int id, string blogger_name, string blog_subject, string blog_details, string blog_date) {
            return base.Channel.updateBlog(id, blogger_name, blog_subject, blog_details, blog_date);
        }
        
        public System.Threading.Tasks.Task<string> updateBlogAsync(int id, string blogger_name, string blog_subject, string blog_details, string blog_date) {
            return base.Channel.updateBlogAsync(id, blogger_name, blog_subject, blog_details, blog_date);
        }
        
        public string deleteUser(int userid) {
            return base.Channel.deleteUser(userid);
        }
        
        public System.Threading.Tasks.Task<string> deleteUserAsync(int userid) {
            return base.Channel.deleteUserAsync(userid);
        }
        
        public string deleteBlog(int id) {
            return base.Channel.deleteBlog(id);
        }
        
        public System.Threading.Tasks.Task<string> deleteBlogAsync(int id) {
            return base.Channel.deleteBlogAsync(id);
        }
    }
}