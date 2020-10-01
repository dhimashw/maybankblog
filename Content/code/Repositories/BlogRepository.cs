namespace Sitecore.Feature.Content.Repositories
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using Sitecore.Data.Items;
    using Sitecore.Foundation.DependencyInjection;
    using Sitecore.Foundation.Indexing.Models;
    using Sitecore.Foundation.Indexing.Repositories;
    using Sitecore.Foundation.SitecoreExtensions.Extensions;
    using Sitecore.Feature.Library;
    using Sitecore.Data.Fields;
    using Sitecore.Feature.Library.Models;
    using Sitecore.Feature.Content.Helper;
    using Sitecore.Data;
    using System.Text;
    using Sitecore.Feature.Content.Models;
    using System.Data.SqlClient;
    using System.Web.Mvc;
    using Sitecore.Foundation.Dictionary.Extensions;

    [Service(typeof(IBlogRepository))]
    public class BlogRepository : IBlogRepository
    {
        private readonly ISearchServiceRepository searchServiceRepository;

        public BlogRepository(ISearchServiceRepository searchServiceRepository)
        {
            this.searchServiceRepository = searchServiceRepository;
        }

        // for rendering field values
        private static Sitecore.Mvc.Helpers.SitecoreHelper sitecoreHelper;
        // lazy load sitecoreHelper
        private static Sitecore.Mvc.Helpers.SitecoreHelper SitecoreHelper
        {
            get
            {
                if (sitecoreHelper == null)
                {
                    sitecoreHelper =
                      Sitecore.Mvc.Helpers.ThreadHelper.GetThreadData<Sitecore.Mvc.Helpers.SitecoreHelper>();
                }

                if (sitecoreHelper == null)
                {
                    ViewContext viewContext = Sitecore.Mvc.Common.ContextService.Get().GetCurrent<ViewContext>();
                    Sitecore.Diagnostics.Assert.IsNotNull(viewContext, "viewContext");
                    HtmlHelper htmlHelper = new HtmlHelper(
                      viewContext,
                      new Sitecore.Mvc.Presentation.ViewDataContainer(viewContext.ViewData));
                    Sitecore.Diagnostics.Assert.IsNotNull(htmlHelper, "htmlHelper");
                    sitecoreHelper = new Sitecore.Mvc.Helpers.SitecoreHelper(htmlHelper);
                    Sitecore.Diagnostics.Assert.IsNotNull(sitecoreHelper, "sitecoreHelper");
                    Sitecore.Mvc.Helpers.ThreadHelper.SetThreadData<Sitecore.Mvc.Helpers.SitecoreHelper>(
                      sitecoreHelper);
                }

                return sitecoreHelper;
            }
        }

        public IEnumerable<Item> Get(Item contextItem)
        {
            if (contextItem == null)
            {
                throw new ArgumentNullException(nameof(contextItem));
            }
            if (!contextItem.IsDerived(Templates.BucketMBMBlog.ID))
            {
                throw new ArgumentException("Item must derive from BucketMBMBlog", nameof(contextItem));
            }

            var searchService = this.searchServiceRepository.Get(new SearchSettingsBase { Templates = new[] { Templates.MBMBlogPage.ID } });
            searchService.Settings.Root = contextItem;
            var results = searchService.FindAll();
            return results.Results.Select(x => x.Item).Where(x => x != null && x.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields.Date] != null).OrderByDescending(i => i.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields.Date].Value);
        }

        public IEnumerable<Item> GetArticle(Item contextItem)
        {
            if (contextItem == null)
            {
                throw new ArgumentNullException(nameof(contextItem));
            }
            if (!contextItem.IsDerived(Templates.BucketMBMArticle.ID))
            {
                throw new ArgumentException("Item must derive from BucketMBMArticle", nameof(contextItem));
            }

            var searchService = this.searchServiceRepository.Get(new SearchSettingsBase { Templates = new[] { Templates.MBMArticlePage.ID } });
            searchService.Settings.Root = contextItem;
            var results = searchService.FindAll();
            return results.Results.Select(x => x.Item).Where(x => x != null && x.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields.Date] != null).OrderByDescending(i => i.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields.Date].Value);
        }

        public IEnumerable<Item> GetGallery(Item contextItem)
        {
            if (contextItem == null)
            {
                throw new ArgumentNullException(nameof(contextItem));
            }
            if (!contextItem.IsDerived(Templates.MBMImageBucket.ID))
            {
                throw new ArgumentException("Item must derive from BucketMBMGallery", nameof(contextItem));
            }

            var searchService = this.searchServiceRepository.Get(new SearchSettingsBase { Templates = new[] { Templates.MBMImageItemBucket.ID } });
            searchService.Settings.Root = contextItem;
            var results = searchService.FindAll();
            return results.Results.Select(x => x.Item).Where(x => x != null && x.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields.Date] != null).OrderByDescending(i => i.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields.Date].Value);
        }

        public IEnumerable<Item> GetPromotion(Item contextItem)
        {
            if (contextItem == null)
            {
                throw new ArgumentNullException(nameof(contextItem));
            }
            if (!contextItem.IsDerived(Templates.BucketMBMPromo.ID))
            {
                throw new ArgumentException("Item must derive from BucketMBMPromo", nameof(contextItem));
            }

            var searchService = this.searchServiceRepository.Get(new SearchSettingsBase { Templates = new[] { Templates.MBMPromotionPage.ID } });
            searchService.Settings.Root = contextItem;
            var results = searchService.FindAll();
            return results.Results.Select(x => x.Item).Where(x => x != null && x.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields.Date] != null).OrderByDescending(i => i.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields.Date].Value);
        }

        public IEnumerable<Item> GetFoodSite(Item contextItem)
        {
            if (contextItem == null)
            {
                throw new ArgumentNullException(nameof(contextItem));
            }
            if (!contextItem.IsDerived(Templates.BucketFoodSite.ID))
            {
                throw new ArgumentException("Item must derive from BucketFoodSite", nameof(contextItem));
            }

            var searchService = this.searchServiceRepository.Get(new SearchSettingsBase { Templates = new[] { Templates.MBMFoodSiteItem.ID } });
            searchService.Settings.Root = contextItem;
            var results = searchService.FindAll();
            return results.Results.Select(x => x.Item).Where(x => x != null && x.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields.Date] != null).OrderByDescending(i => i.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields.Date].Value);
        }

        #region Blog
        public IEnumerable<Item> GetMaybankBlog(Item contextItem)
        {
            if (contextItem == null)
            {
                throw new ArgumentNullException(nameof(contextItem));
            }
            if (!contextItem.IsDerived(Templates.BucketMaybankBlog.ID))
            {
                throw new ArgumentException("Item must derive from Bucket Maybank Blog", nameof(contextItem));
            }

            var searchService = this.searchServiceRepository.Get(new SearchSettingsBase { Templates = new[] { Templates.ItemMaybankBlog.ID } });
            searchService.Settings.Root = contextItem;
            var results = searchService.FindAll();
            return results.Results.Select(x => x.Item).Where(x => x != null && x.Fields[Sitecore.Feature.Library.Templates.NewsArticle.Fields.Date] != null).OrderByDescending(i => i.Fields[Sitecore.Feature.Library.Templates.NewsArticle.Fields.Date].Value);
        }
        public IEnumerable<Item> GetAllMaybankBlog(IEnumerable<Data.Items.Item> items)
        {
            if (items != null)
            {
                items = items.OrderByDescending(x => x.Fields[Sitecore.Feature.Library.Templates.NewsArticle.Fields.Date].Value)
                    .ThenByDescending(x => x.Created);
            }
            return items;
        }
        public IEnumerable<Item> GetMaybankBlogByCategory(IEnumerable<Data.Items.Item> items, string _category)
        {
            if (items != null && _category != string.Empty)
            {
                items = items.Where(x => x.Fields[Sitecore.Feature.Library.Templates.ItemMaybankBlog.Fields.Category].Value.Replace("-", "").ToLower().Contains(_category.Replace("-", "").ToLower()));
                items = items.OrderByDescending(x => x.Fields[Sitecore.Feature.Library.Templates.NewsArticle.Fields.Date].Value)
                    .ThenByDescending(x => x.Created);
            }
            return items;
        }
        public string GetMaybankBlogCategory(Item item)
        {
            MultilistField ListValue = null;
            string CategoryValue = string.Empty;
            Item _items = Sitecore.Context.Database.GetItem(item.ID);

            ListValue = _items.Fields[Sitecore.Feature.Library.Templates.ItemMaybankBlog.Fields.Category];
            if (ListValue != null)
            {
                Item[] items = ListValue.GetItems();
                CategoryValue = items.Select(x => x.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields.IconName].Value).FirstOrDefault();
            }
            return CategoryValue;
        }
        public List<BlogComment> GetAllComment()
        {
            using (var db = Factory.DbEntities)
            {
                var items = db.BlogComment;
                return items.ToList();
            }
        }
        public IEnumerable<BlogComment> GetAllCommentByBlogId(string blogId)
        {
            IEnumerable<BlogComment> listcomment = GetAllComment().Where(x => (x.PageID != null ? x.PageID : string.Empty) != string.Empty);
            listcomment = listcomment.Where(x => x.PageID.ToLower().Contains(blogId.ToLower().Trim()));
            listcomment = listcomment.Where(x => x.isApproved && x.ApprovedDate != null && !x.isDelete);
            return listcomment;
        }
        public void PostComment(BlogComment BlogComment)
        {
            using (var db = Factory.DbEntities)
            {
                try
                {
                    if (!string.IsNullOrEmpty(BlogComment.PageID))
                    {
                        db.BlogComment.Add(BlogComment);
                        db.SaveChanges();
                    }
                }
                catch (Exception ex)
                {
                    StringBuilder sb = new StringBuilder();
                    sb.AppendLine(ex.Message);
                }
            }
        }        
        public Tuple<int, IEnumerable<BlogCommentDto>> LoadAllCommentByBlogId(string blogId, int index)
        {
            int CountTotalItem = GetAllCommentByBlogId(blogId).Count();
            IEnumerable<BlogCommentDto> AllCommentByBlogId = GetAllCommentByBlogId(blogId)
                                                            .Select(x => new BlogCommentDto()
                                                            {
                                                                Username = x.Username,
                                                                Comment = x.Comment,
                                                                CommentDate = x.CommentDate
                                                            });            
            AllCommentByBlogId = AllCommentByBlogId.OrderByDescending(x => x.CommentDate).Take(index);            
            return Tuple.Create(CountTotalItem, AllCommentByBlogId);
        }
        public Tuple<int, List<BlogComment>> GetAllNotApprovedComment()
        {
            IEnumerable<BlogComment> item = GetAllComment().Where(x => !x.isApproved && !x.isDelete);
            return Tuple.Create(item.Count(), item.ToList());
        }        
        #endregion
    }
}