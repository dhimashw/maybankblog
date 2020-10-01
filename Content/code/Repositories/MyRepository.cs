namespace Sitecore.Feature.Content.Repositories
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Web;
    using Sitecore.Foundation.Indexing.Repositories;
    using Sitecore.Foundation.Indexing.Services;
    using Sitecore.Foundation.Indexing.Models;
    using Sitecore.Foundation.DependencyInjection;
    using Sitecore.Data.Items;

    [Service(typeof(IRepoTestRepository))]
    public class MyRepository : IRepoTestRepository
    {
        private readonly ISearchServiceRepository searchRepo;

        public MyRepository(ISearchServiceRepository isearchrepo)
        {
            searchRepo = isearchrepo;
        }

        public IEnumerable<Item> Get(Item contextItem)
        {
            return null;
        }
    }
}