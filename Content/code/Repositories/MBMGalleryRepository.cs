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

    [Service(typeof(IMBMGalleryRepository))]
    public class MBMGalleryRepository : IMBMGalleryRepository
    {
        private readonly ISearchServiceRepository searchServiceRepository;

        public MBMGalleryRepository(ISearchServiceRepository searchServiceRepository)
        {
            this.searchServiceRepository = searchServiceRepository;
        }

        public IEnumerable<Item> Get(Item contextItem)
        {
            if (contextItem == null)
            {
                throw new ArgumentNullException(nameof(contextItem));
            }
            if (!contextItem.IsDerived(Templates.BucketMBMGallery.ID))
            {
                throw new ArgumentException("Item must derive from Folder", nameof(contextItem));
            }

            var searchService = this.searchServiceRepository.Get(new SearchSettingsBase { Templates = new[] { Sitecore.Feature.Library.Templates.MBMGalleryItem.ID} });
            searchService.Settings.Root = contextItem;
            //TODO: Refactor for scalability
            var results = searchService.FindAll();
            return results.Results.Select(x => x.Item).Where(x => x != null).OrderByDescending(i => i[Sitecore.Feature.Library.Templates.BaseField.Fields.Date]);
        }
    }
}