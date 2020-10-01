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

    [Service(typeof(IPBRepository))]
    public class PBRepository : IPBRepository
    {
        private readonly ISearchServiceRepository searchServiceRepository;
        public PBRepository(ISearchServiceRepository searchServiceRepository)
        {
            this.searchServiceRepository = searchServiceRepository;
        }

        public IEnumerable<Item> Get(Item contextItem)
        {
            if (contextItem == null)
            {
                throw new ArgumentNullException(nameof(contextItem));
            }
            if (!contextItem.IsDerived(Templates.BucketPropertiBekas.ID))
            {
                throw new ArgumentException("Item must derive from Bucket Properti Bekas", nameof(contextItem));
            }

            var searchService = this.searchServiceRepository.Get(new SearchSettingsBase { Templates = new[] { Templates.PropertiBekas.ID } });
            searchService.Settings.Root = contextItem;
            //TODO: Refactor for scalability
            var results = searchService.FindAll();
            //return results.Results.Select(x => x.Item).Where(x => x != null).OrderByDescending(i => i[Templates.BaseField.Fields.Date]);
            return results.Results.Select(x => x.Item).Where(x => x != null);
        }
    }
}