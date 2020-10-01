using System;

namespace Sitecore.Feature.Administrators.Models
{
    public class Comment
    {
        public int ID { get; set; }
        public string Article { get; set; } 
        public string User { get; set; }
        public string Content { get; set; }
        public Comment Parent { get; set; }
        public Comment[] Replies { get; set; }
        public DateTime DatePosted { get;set; }
        public bool IsRoot { get; set; }

        public Comment()
        {

        }
    }
}