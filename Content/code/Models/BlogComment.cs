namespace Sitecore.Feature.Content.Models
{
    using System;    
    using System.ComponentModel.DataAnnotations;   
    public class BlogComment
    {
        [Key]
        public Guid ID { get; set; }
        public string PageID { get; set; }
        public string PageDisplayName { get; set; }
        public string Username { get; set; }        
        public string Email { get; set; }
        public string Comment { get; set; }
        public DateTime CommentDate { get; set; }
        public string UserIP { get; set; }
        public bool isApproved { get; set; }
        public DateTime? ApprovedDate { get; set; }
        public bool isDelete { get; set; }
        public DateTime? DeletedDate { get; set; }
        public string ParentId { get; set; }

    }
}