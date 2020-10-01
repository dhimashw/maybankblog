namespace Sitecore.Feature.Content.Repositories
{
    using System.Collections.Generic;
    using Sitecore.Data.Items;
    using Data;
    using Sitecore.Feature.Library.Models;
    using System;
    using Sitecore.Feature.Content.Models;

    public interface IBlogRepository
    {
        IEnumerable<Item> Get(Item contextItem);

        IEnumerable<Item> GetArticle(Item contextItem);

        IEnumerable<Item> GetGallery(Item contextItem);

        IEnumerable<Item> GetPromotion(Item contextItem);

        IEnumerable<Item> GetFoodSite(Item contextItem);
        IEnumerable<Item> GetMaybankBlog(Item contextItem);
        IEnumerable<Item> GetAllMaybankBlog(IEnumerable<Data.Items.Item> items);
        IEnumerable<Item> GetMaybankBlogByCategory(IEnumerable<Data.Items.Item> items, string _category);
        void PostComment(BlogComment BlogComment);
        IEnumerable<BlogComment> GetAllCommentByBlogId(string blogId);
        List<BlogComment> GetAllComment();
        Tuple<int, IEnumerable<BlogCommentDto>> LoadAllCommentByBlogId(string blogId, int index);
        Tuple<int, List<BlogComment>> GetAllNotApprovedComment();        
    }
}