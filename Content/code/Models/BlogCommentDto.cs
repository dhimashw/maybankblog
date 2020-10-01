using System;

namespace Sitecore.Feature.Content.Models
{
    public class BlogCommentDto
    {
        public string Username { get; set; }
        public string Comment { get; set; }
        public DateTime CommentDate { get; set; }
    }
}