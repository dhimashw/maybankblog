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

    [Service(typeof(IArticlesRepository))]
    public class ArticlesRepository : IArticlesRepository
    {

        private readonly ISearchServiceRepository searchServiceRepository;

        public ArticlesRepository(ISearchServiceRepository searchServiceRepository)
        {
            this.searchServiceRepository = searchServiceRepository;
        }

        #region HomeArticle
        public IEnumerable<Item> Get(Item contextItem)
        {
            if (contextItem == null)
            {
                throw new ArgumentNullException(nameof(contextItem));
            }
            if (!contextItem.IsDerived(Templates.NewsArticleFolder.ID))
            {
                throw new ArgumentException("Item must derive from Folder", nameof(contextItem));
            }

            var searchService = this.searchServiceRepository.Get(new SearchSettingsBase { Templates = new[] { Templates.NewsArticle.ID , Templates.CSRProgramItem.ID, Templates.LiterasiEdukasiItem.ID, Templates.MaybankIndFoundationItem.ID} });
            searchService.Settings.Root = contextItem;
            //TODO: Refactor for scalability
            var results = searchService.FindAll();
            return results.Results.Select(x => x.Item).Where(x => x != null).OrderByDescending(i => i[Templates.NewsArticle.Fields.Date]).OrderByDescending(x => x[Templates.BaseField.Fields.Date]);
        }
        public IEnumerable<Item> GetLatestArticle(Item contextItem)
        {
            IEnumerable<Item> _items = Get(contextItem);
            _items = _items.Take(3);
            return _items;
        }
        public string GetCategoryArticle(Sitecore.Data.ID idCategoryTemplate, Item item)
        {
            MultilistField ListValue = null;
            string CategoryValue = string.Empty;
            Item _items = Sitecore.Context.Database.GetItem(item.ID);
            if (_items.TemplateID == Sitecore.Feature.Library.Templates.ArticleItem.ID)
            {
                ListValue = _items.Fields[Sitecore.Feature.Library.Templates.ArticleItem.Fields.Category];
                if (ListValue != null)
                {
                    Item[] items = ListValue.GetItems();
                    CategoryValue = items.Select(x => x.Fields[Sitecore.Feature.Library.Templates.GeneralValue.Fields.Title].Value).FirstOrDefault();
                }
            }
            if (_items.TemplateID == Sitecore.Feature.Library.Templates.PremiereWealthHighlightItem.ID)
            {
                ListValue = _items.Fields[Sitecore.Feature.Library.Templates.PremiereWealthHighlightItem.Fields.Category];
                if (ListValue != null)
                {
                    Item[] items = ListValue.GetItems();
                    CategoryValue = items.Select(x => x.Fields[Sitecore.Feature.Library.Templates.GeneralValue.Fields.Title].Value).FirstOrDefault();
                }
            }
            if (_items.TemplateID == Sitecore.Feature.Library.Templates.SyariahArticleItem.ID)
            {
                ListValue = _items.Fields[Sitecore.Feature.Library.Templates.ApplyTabs.Fields.IconName];
                if (ListValue != null)
                {
                    Item[] items = ListValue.GetItems();
                    CategoryValue = items.Select(x => x.Fields[Sitecore.Feature.Library.Templates.ApplyTabs.Fields.IconName].Value).FirstOrDefault();
                }
            }
            if (_items.TemplateID == Sitecore.Feature.Library.Templates.NewsItem.ID)
            {
                ListValue = _items.Fields[Sitecore.Feature.Library.Templates.NewsItem.Fields.Category];
                if (ListValue != null)
                {
                    Item[] items = ListValue.GetItems();
                    CategoryValue = items.Select(x => x.Fields[Sitecore.Feature.Library.Templates.GeneralValue.Fields.Title].Value).FirstOrDefault();
                }
            }
            if (_items.TemplateID == Sitecore.Feature.Library.Templates.MoreFromSyariahItem.ID)
            {
                ListValue = _items.Fields[Sitecore.Feature.Library.Templates.MoreFromSyariahItem.Fields.Category];
                if (ListValue != null)
                {
                    Item[] items = ListValue.GetItems();
                    CategoryValue = items.Select(x => x.Fields[Sitecore.Feature.Library.Templates.GeneralValue.Fields.Title].Value).FirstOrDefault();
                }
            }
            if (_items.TemplateID == Sitecore.Feature.Library.Templates.PremiereWealtStoryForYouItem.ID)
            {
                ListValue = _items.Fields[Sitecore.Feature.Library.Templates.PremiereWealtStoryForYouItem.Fields.Category];
                if (ListValue != null)
                {
                    Item[] items = ListValue.GetItems();
                    CategoryValue = items.Select(x => x.Fields[Sitecore.Feature.Library.Templates.GeneralValue.Fields.Title].Value).FirstOrDefault();
                }
            }
            if (_items.TemplateID == Sitecore.Feature.Library.Templates.DestinationReviewItem.ID)
            {
                ListValue = _items.Fields[Sitecore.Feature.Library.Templates.DestinationReviewItem.Fields.Category];
                if (ListValue != null)
                {
                    Item[] items = ListValue.GetItems();
                    CategoryValue = items.Select(x => x.Fields[Sitecore.Feature.Library.Templates.GeneralValue.Fields.Title].Value).FirstOrDefault();
                }
            }
            if (_items.TemplateID == Sitecore.Feature.Library.Templates.TreatsPointItem.ID)
            {
                ListValue = _items.Fields[Sitecore.Feature.Library.Templates.TreatsPointItem.Fields.Category];
                if (ListValue != null)
                {
                    Item[] items = ListValue.GetItems();
                    CategoryValue = items.Select(x => x.Fields[Sitecore.Feature.Library.Templates.LatestOfferCategory.Fields.IconName].Value).FirstOrDefault();
                }
            }
            if (_items.TemplateID == Sitecore.Feature.Library.Templates.CSREventItem.ID)
            {
                ListValue = _items.Fields[Sitecore.Feature.Library.Templates.CSREventItem.Fields.Category];
                if (ListValue != null)
                {
                    Item[] items = ListValue.GetItems();
                    CategoryValue = items.Select(x => x.Fields[Sitecore.Feature.Library.Templates.LatestOfferCategory.Fields.IconName].Value).FirstOrDefault();
                }
            }
            if (_items.TemplateID == Sitecore.Feature.Library.Templates.BusinessArticleItem.ID)
            {
                ListValue = _items.Fields[Sitecore.Feature.Library.Templates.BusinessArticleItem.Fields.Category];
                if (ListValue != null)
                {
                    Item[] items = ListValue.GetItems();
                    CategoryValue = items.Select(x => x.Fields[Sitecore.Feature.Library.Templates.GeneralValue.Fields.Title].Value).FirstOrDefault();
                }
            }

            return CategoryValue;
        }
        public IEnumerable<Item> GetArticleItemByCategory(IEnumerable<Data.Items.Item> items, string _category)
        {
            if (items != null)
            {
                Data.ID _itemsTemplate = items.FirstOrDefault().TemplateID;
                Item itemCategory = null;
                if (_itemsTemplate == Sitecore.Feature.Library.Templates.ArticleItem.ID)
                {
                    if (_category == string.Empty)
                    {
                        Item itemsTabs = Sitecore.Context.Database.GetItem(Sitecore.Feature.Library.Helper.Variables._defaultTabArticle);
                        Item defaultTabs = Library.Helpers.LibraryHelpers.GetDynamicMultiList(itemsTabs).Select(x => x).FirstOrDefault();
                        _category = defaultTabs.ID.ToString().Replace("{", "").Replace("}", "");
                    }
                    itemCategory = Sitecore.Context.Database.GetItem(_category);
                    items = items.Where(x => x.TemplateID == Sitecore.Feature.Library.Templates.ArticleItem.ID);
                    if (itemCategory.ID.ToString().ToLower() != Sitecore.Feature.Library.Helper.Variables._articleFeaturedCategory.ToLower())
                    {
                        items = items.Where(x => x.Fields[Sitecore.Feature.Library.Templates.ArticleItem.Fields.TaggingCategory].Value.ToString().ToLower().Contains(itemCategory.ID.ToString().ToLower()));
                    }
                    
                    items = items.OrderByDescending(x => x.Fields[Sitecore.Feature.Library.Templates.NewsArticle.Fields.Date].Value)
                             .ThenByDescending(x => x.Created);
                }
                if (_itemsTemplate == Sitecore.Feature.Library.Templates.SyariahArticleItem.ID)
                {
                    if (_category == string.Empty)
                    {
                        Item itemsTabs = Sitecore.Context.Database.GetItem(Sitecore.Feature.Library.Helper.Variables._defaultTabSyariahArticle);
                        Item defaultTabs = Library.Helpers.LibraryHelpers.GetDynamicMultiList(itemsTabs).Select(x => x).FirstOrDefault();
                        _category = defaultTabs.ID.ToString().Replace("{", "").Replace("}", "");
                    }
                    itemCategory = Sitecore.Context.Database.GetItem(_category);
                    items = items.Where(x => x.Fields[Sitecore.Feature.Library.Templates.SyariahArticleItem.Fields.TaggingCategory].Value.ToString().ToLower().Contains(itemCategory.ID.ToString().ToLower()));
                    items = items.OrderByDescending(x => x.Fields[Sitecore.Feature.Library.Templates.NewsArticle.Fields.Date].Value)
                             .ThenByDescending(x => x.Created);
                }
                if (_itemsTemplate == Sitecore.Feature.Library.Templates.MoreFromSyariahItem.ID)
                {
                    if (_category == string.Empty)
                    {
                        Item itemsTabs = Sitecore.Context.Database.GetItem(Sitecore.Feature.Library.Helper.Variables._defaultTabMoreFromSyariah);
                        Item defaultTabs = Library.Helpers.LibraryHelpers.GetDynamicMultiList(itemsTabs).Select(x => x).FirstOrDefault();
                        _category = defaultTabs.ID.ToString().Replace("{", "").Replace("}", "");
                    }
                    itemCategory = Sitecore.Context.Database.GetItem(Sitecore.Data.ID.Parse(_category.Replace("{", "").Replace("}", "")));
                    if (itemCategory.Fields[Sitecore.Feature.Library.Templates.ApplyTabs.Fields.IconName].Value.ToLower() != "all")
                    {
                        items = items.Where(x => x.Fields[Sitecore.Feature.Library.Templates.MoreFromSyariahItem.Fields.Category].Value.ToString().ToLower().Contains(itemCategory.ID.ToString().ToLower()));
                    }
                    items = items.OrderByDescending(x => x.Fields[Sitecore.Feature.Library.Templates.NewsArticle.Fields.Date].Value)
                             .ThenByDescending(x => x.Created);
                }
                if (_itemsTemplate == Sitecore.Feature.Library.Templates.PremiereWealthHighlightItem.ID)
                {
                    if (_category == string.Empty)
                    {
                        Item itemsTabs = Sitecore.Context.Database.GetItem(Sitecore.Feature.Library.Helper.Variables._defaultValuePWArticleCat);
                        Item defaultTabs = Library.Helpers.LibraryHelpers.GetDynamicMultiList(itemsTabs).Select(x => x).FirstOrDefault();
                        _category = defaultTabs.ID.ToString().Replace("{", "").Replace("}", "");
                    }
                    itemCategory = Sitecore.Context.Database.GetItem(Sitecore.Data.ID.Parse(_category.Replace("{", "").Replace("}", "")));
                    items = items.Where(x => x.Fields[Sitecore.Feature.Library.Templates.PremiereWealthHighlightItem.Fields.Category].Value.ToString().ToLower().Contains(itemCategory.ID.ToString().ToLower()));
                    items = items.OrderByDescending(x => x.Fields[Sitecore.Feature.Library.Templates.NewsArticle.Fields.Date].Value)
                             .ThenByDescending(x => x.Created);
                }
                if (_itemsTemplate == Sitecore.Feature.Library.Templates.PremiereWealtStoryForYouItem.ID)
                {
                    if (_category == string.Empty)
                    {
                        Item itemsTabs = Sitecore.Context.Database.GetItem(Sitecore.Feature.Library.Helper.Variables._defaultPWStoryForYou);
                        Item defaultTabs = Library.Helpers.LibraryHelpers.GetDynamicMultiList(itemsTabs).Select(x => x).FirstOrDefault();
                        _category = defaultTabs.ID.ToString().Replace("{", "").Replace("}", "");
                    }
                    itemCategory = Sitecore.Context.Database.GetItem(Sitecore.Data.ID.Parse(_category.Replace("{", "").Replace("}", "")));
                    items = items.Where(x => x.Fields[Sitecore.Feature.Library.Templates.PremiereWealtStoryForYouItem.Fields.TaggingCategory].Value.ToString().ToLower().Contains(itemCategory.ID.ToString().ToLower()));
                    items = items.OrderByDescending(x => x.Fields[Sitecore.Feature.Library.Templates.NewsArticle.Fields.Date].Value)
                             .ThenByDescending(x => x.Created);
                }                
            }
            return items;
        }
        #endregion
        #region CSRArticle
        public IEnumerable<Item> GetEvents(IEnumerable<Item> contextItem, int count)
        {
            //TODO: Refactor for scalability            
            contextItem = contextItem.OrderByDescending(x => x.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields.isHighlight].Value == "1")
                                     .ThenByDescending(x => x.Fields[Sitecore.Feature.Library.Templates.NewsArticle.Fields.Date].Value);
            
            //contextItem = contextItem.Where(x => x.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields.isHighlight].Value == "1");   

            //if (contextItem == null)
            //{
            //    contextItem = contextItem.OrderByDescending(x => x.Fields[Sitecore.Feature.Library.Templates.NewsArticle.Fields.Date].Value);
            //}
            return contextItem.Take(count);
        }        
        public IEnumerable<Item> GetEvents(IEnumerable<Item> contextItem, int count, string category)
        {
            //TODO: Refactor for scalability            


            if (category != string.Empty)
            {
                contextItem = contextItem.Where(x => x.Fields[Sitecore.Feature.Library.Templates.CSREventItem.Fields.Category].Value.ToLower().Contains(category.ToLower()));
            }
            else
            {
                contextItem = contextItem.OrderByDescending(x => x.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields.isHighlight].Value == "1")
                                         .ThenByDescending(x => x.Fields[Sitecore.Feature.Library.Templates.NewsArticle.Fields.Date].Value);
            }
            return contextItem.Take(count);
        }
        public IEnumerable<Item> GetCSREventItemByCategory(IEnumerable<Data.Items.Item> items, string _category)
        {
            Item itemCategory = Sitecore.Context.Database.GetItem(_category);

            //items = items.Where(x => x.Fields[Sitecore.Feature.Library.Templates.CSREventItem.Fields.Category].Value.ToLower().Contains(itemCategory.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields.IconName].Value.ToLower()))
            items = items.Where(x => x.Fields[Sitecore.Feature.Library.Templates.CSREventItem.Fields.Category].Value.ToLower().Contains(_category.ToLower()))
                      .OrderByDescending(x => x.Fields[Sitecore.Feature.Library.Templates.NewsArticle.Fields.Date].Value)
                      .ThenByDescending(x => x.Created);
            return items;
        }
        public IEnumerable<Item> GetProgramItemByCategory(IEnumerable<Data.Items.Item> items, string _category)
        {
            //Item itemCategory = Sitecore.Context.Database.GetItem(_category);            
            items = items.Where(x => x.Fields[Sitecore.Feature.Library.Templates.CSRProgramItem.Fields.Category].Value.ToLower().Contains(_category.ToLower()))
                         .OrderByDescending(x => x.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields.Date].Value)
                         .OrderByDescending(x => x.Created);
            return items;
        }
        public IEnumerable<Item> GetLiterasiEdukasi(IEnumerable<Data.Items.Item> items)
        {
            //Item itemCategory = Sitecore.Context.Database.GetItem(_category);            
            items = items.OrderByDescending(x => x.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields.Date].Value);                         
            return items;
        }
        public IEnumerable<Item> GetMaybankIndFoundation(IEnumerable<Data.Items.Item> items)
        {
            //Item itemCategory = Sitecore.Context.Database.GetItem(_category);            
            items = items.OrderByDescending(x => x.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields.Date].Value);
            return items;
        }
        #endregion
        #region PremierWealth
        public IEnumerable<Item> GetPremierWealthHighlightItem(Item contextItem)
        {
            if (contextItem == null)
            {
                throw new ArgumentNullException(nameof(contextItem));
            }
            if (!contextItem.IsDerived(Templates.BucketPremierWealthHighlight.ID))
            {
                throw new ArgumentException("Item must derive from Bucket Premiere Wealth Highlights", nameof(contextItem));
            }

            var searchService = this.searchServiceRepository.Get(new SearchSettingsBase { Templates = new[] { Templates.PremiereWealthHighlightItem.ID } });
            searchService.Settings.Root = contextItem;
            //TODO: Refactor for scalability
            var results = searchService.FindAll();
            return results.Results.Select(x => x.Item).Where(x => x != null).OrderByDescending(i => i[Templates.NewsArticle.Fields.Date]);
        }
        public IEnumerable<Item> GetLatestPremierWealthHighlight(Item contextItem, string _category)
        {
            IEnumerable<Item> _items = GetPremierWealthHighlightItem(contextItem);
            _items = GetArticleItemByCategory(_items, _category);
            _items = _items.Take(3);
            return _items;
        }
        public IEnumerable<Item> GetPremierWealthStoryForYouItem(Item contextItem)
        {
            if (contextItem == null)
            {
                throw new ArgumentNullException(nameof(contextItem));
            }
            if (!contextItem.IsDerived(Templates.BucketPremierWealtStoryForYou.ID))
            {
                throw new ArgumentException("Item must derive from Bucket Premiere Wealth Story For You", nameof(contextItem));
            }

            var searchService = this.searchServiceRepository.Get(new SearchSettingsBase { Templates = new[] { Templates.PremiereWealtStoryForYouItem.ID } });
            searchService.Settings.Root = contextItem;
            //TODO: Refactor for scalability
            var results = searchService.FindAll();
            return results.Results.Select(x => x.Item).Where(x => x != null).OrderByDescending(i => i[Templates.NewsArticle.Fields.Date]);
        }
        //public IEnumerable<Item> GetPWItemByCategory(IEnumerable<Data.Items.Item> items, string _category)
        //{
        //    Item itemCategory = Sitecore.Context.Database.GetItem(_category);

        //    var icat = itemCategory.Fields[Sitecore.Feature.Library.Templates.GeneralUrl.Fields.Title].Value.Replace(" ", "");
        //    var cat = items.Select(x => x.Fields[Sitecore.Feature.Library.Templates.PremiereWealthHighlightItem.Fields.Category].Value).FirstOrDefault().Replace(" ", "");
        //    items = items.Where(x => x.Fields[Sitecore.Feature.Library.Templates.PremiereWealthHighlightItem.Fields.Category].Value.ToLower().Replace(" ", "").Contains(itemCategory.Fields[Sitecore.Feature.Library.Templates.GeneralUrl.Fields.Title].Value.ToLower().Replace(" ", "")))
        //               // .OrderByDescending(x => x.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields.Date].Value)
        //               .OrderByDescending(x => x.Created);
        //    return items;
        //}
        #endregion
        #region BusinessArticle
        public IEnumerable<Item> GetBusinessArticle(Item contextItem)
        {
            if (contextItem == null)
            {
                throw new ArgumentNullException(nameof(contextItem));
            }
            if (!contextItem.IsDerived(Templates.BucketBusinessArticle.ID))
            {
                throw new ArgumentException("Item must derive from Bucket Business Article folder", nameof(contextItem));
            }

            var searchService = this.searchServiceRepository.Get(new SearchSettingsBase { Templates = new[] { Templates.NewsArticle.ID } });
            searchService.Settings.Root = contextItem;
            //TODO: Refactor for scalability
            var results = searchService.FindAll();
            return results.Results.Select(x => x.Item).Where(x => x != null).OrderByDescending(i => i[Templates.NewsArticle.Fields.Date]);
        }
        #endregion
        #region Syariah
        public IEnumerable<Item> GetSyariahProgram(Item contextItem)
        {
            if (contextItem == null)
            {
                throw new ArgumentNullException(nameof(contextItem));
            }
            if (!contextItem.IsDerived(Templates.BucketSyariahProgam.ID))
            {
                throw new ArgumentException("Item must derive from Bucket Program Syariah Folder", nameof(contextItem));
            }

            var searchService = this.searchServiceRepository.Get(new SearchSettingsBase { Templates = new[] { Templates.ProgamSyariahItem.ID } });
            searchService.Settings.Root = contextItem;
            //TODO: Refactor for scalability
            var results = searchService.FindAll();
            return results.Results.Select(x => x.Item).Where(x => x != null).OrderByDescending(i => i[Templates.BaseField.Fields.Date]);
        }
        public IEnumerable<Item> GetSyariahProgramList(Item contextItem, string category)
        {
            IEnumerable<Item> _items = GetSyariahProgram(contextItem);
            _items = GetSyariahProgramByCategory(_items, category);
            return _items;
        }
        public IEnumerable<Item> GetLatestSyariahProgram(Item contextItem, string category)
        {
            IEnumerable<Item> _items = GetSyariahProgram(contextItem);
            _items = GetSyariahProgramByCategory(_items, category);
            _items = _items.Take(4);
            return _items;
        }
        public IEnumerable<Item> GetSyariahProgramByCategory(IEnumerable<Data.Items.Item> items, string _category)
        {
            items = items.Where(x => x.Fields[Sitecore.Feature.Library.Templates.ProgamSyariahItem.Fields.Category].Value.ToLower().Contains(_category.ToLower()));
            return items;
        }
        public IEnumerable<Item> GetMoreFromSyariahItems(Item contextItem)
        {
            if (contextItem == null)
            {
                throw new ArgumentNullException(nameof(contextItem));
            }
            if (!contextItem.IsDerived(Templates.BucketMoreFromSyariah.ID))
            {
                throw new ArgumentException("Item must derive from Bucket More Syariah Syariah Folder", nameof(contextItem));
            }

            var searchService = this.searchServiceRepository.Get(new SearchSettingsBase { Templates = new[] { Templates.MoreFromSyariahItem.ID } });
            searchService.Settings.Root = contextItem;
            //TODO: Refactor for scalability
            var results = searchService.FindAll();
            return results.Results.Select(x => x.Item).Where(x => x != null).OrderByDescending(i => i[Templates.NewsArticle.Fields.Date]);
        }
        public IEnumerable<Item> MoreFromSyariahList(Item contextItem, string category)
        {
            IEnumerable<Item> _items = GetMoreFromSyariahItems(contextItem);
            _items = GetArticleItemByCategory(_items, category);
            return _items;
        }
        #endregion
    }
}