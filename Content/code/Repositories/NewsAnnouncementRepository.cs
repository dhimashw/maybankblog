﻿namespace Sitecore.Feature.Content.Repositories
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

    [Service(typeof(INewsAnnouncementRepository))]
    public class NewsAnnouncementRepository : INewsAnnouncementRepository
    {        

        private readonly ISearchServiceRepository searchServiceRepository;

        public NewsAnnouncementRepository(ISearchServiceRepository searchServiceRepository)
        {
            this.searchServiceRepository = searchServiceRepository;
        }

        public IEnumerable<Item> Get(Item contextItem)
        {
            if (contextItem == null)
            {
                throw new ArgumentNullException(nameof(contextItem));
            }
            if (!contextItem.IsDerived(Templates.NewsArticleFolder.ID))
            {
                throw new ArgumentException("Item must derive from NewsFolder", nameof(contextItem));
            }

            var searchService = this.searchServiceRepository.Get(new SearchSettingsBase { Templates = new[] { Templates.NewsArticle.ID } });
            searchService.Settings.Root = contextItem;
            //TODO: Refactor for scalability
            var results = searchService.FindAll();
            return results.Results.Select(x => x.Item).Where(x => x != null).OrderByDescending(i => i[Templates.NewsArticle.Fields.Date]);
        }

        public IEnumerable<Item> GetCustomerEducation(Item contextItem)
        {
            if (contextItem == null)
            {
                throw new ArgumentNullException(nameof(contextItem));
            }
            if (!contextItem.IsDerived(Templates.CustomerEducationList.ID))
            {
                throw new ArgumentException("Item must derive from NewsFolder", nameof(contextItem));
            }

            var searchService = this.searchServiceRepository.Get(new SearchSettingsBase { Templates = new[] { Templates.CustomerEducationPage.ID } });
            searchService.Settings.Root = contextItem;
            //TODO: Refactor for scalability
            var results = searchService.FindAll();
            return results.Results.Select(x => x.Item).Where(x => x != null).OrderByDescending(i => i[Templates.BaseField.Fields.Date]);
        }

        public IEnumerable<Item> GetLatestNews(Item contextItem,int count)
        {
            //TODO: Refactor for scalability
            return this.Get(contextItem).Take(count);
        }

        public IEnumerable<Data.Items.Item> getNewsItemByCategory(IEnumerable<Data.Items.Item> items, string _category)
        {
            Item itemCategory = Sitecore.Context.Database.GetItem(_category);

            if (itemCategory.DisplayName.ToLower() != Sitecore.Feature.Library.Helper.Variables._defaultValueCategory)
            {
                items = items.Where(x => x.Fields[Sitecore.Feature.Library.Templates.NewsItem.Fields.Category].Value.ToString().ToLower().Contains(itemCategory.ID.ToString().ToLower()));
                items = items.OrderByDescending(x => x.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields.Date].Value)
                         .ThenByDescending(x => x.Created);
            }

            return items;
        }
    }
}