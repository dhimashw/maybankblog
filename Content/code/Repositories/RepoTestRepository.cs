namespace Sitecore.Feature.Content.Repositories
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Web;
    using Sitecore.Data.Items;
    using Sitecore.Foundation.Indexing.Repositories;
    using Sitecore.Foundation.Indexing.Services;
    using Sitecore.Foundation.Indexing.Models;
    using Sitecore.Foundation.DependencyInjection;
    using Sitecore.Feature.Library;

    [Service(typeof(IRepoTestRepository))]
    public class RepoTestRepository : IRepoTestRepository
    {
        private readonly ISearchServiceRepository searchRepository;
        public RepoTestRepository(ISearchServiceRepository repo)
        {
            searchRepository = repo;
        }

        public IEnumerable<Item> Get(Item contextItem)
        {
            SearchService searchService = searchRepository.Get(new SearchSettingsBase { Templates = new[] { Templates._promo.ID} });
            searchService.Settings.Root = contextItem;
            return searchService.FindAll().Results.Select(x => x.Item);
        }
    }
}