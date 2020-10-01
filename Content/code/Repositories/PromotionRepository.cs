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

    [Service(typeof(IPromotionRepository))]
    public class PromotionRepository : IPromotionRepository
    {        

        private readonly ISearchServiceRepository searchServiceRepository;

        public PromotionRepository(ISearchServiceRepository searchServiceRepository)
        {
            this.searchServiceRepository = searchServiceRepository;
        }

        public IEnumerable<Item> Get(Item contextItem)
        {
            if (contextItem == null)
            {
                throw new ArgumentNullException(nameof(contextItem));
            }
            if (!contextItem.IsDerived(Templates._bucketPromo.ID))
            {
                throw new ArgumentException("Item must derive from BucketPromotion", nameof(contextItem));
            }

            var searchService = this.searchServiceRepository.Get(new SearchSettingsBase { Templates = new[] { Templates._promo.ID } });
            searchService.Settings.Root = contextItem;
            //TODO: Refactor for scalability
            var results = searchService.FindAll();
            //return results.Results.Select(x => x.Item).Where(x => x!= null && x.Fields["__Updated"] != null).OrderByDescending(i => i.Fields["__Updated"].Value);
            return results.Results.Select(x => x.Item).Where(x => x != null && x.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields.Date] != null && x.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields._Prioritize] != null).OrderByDescending(i => i.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields._Prioritize].Value).ThenByDescending(i => i.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields.Date].Value);
        }

        public IEnumerable<Item> GetLatestNews(Item contextItem,int count)
        {
            //TODO: Refactor for scalability
            return this.Get(contextItem).Take(count);
        }
    }
}