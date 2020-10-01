namespace Sitecore.Feature.Content.Repositories
{
    using System.Collections.Generic;
    using Sitecore.Data.Items;
    public interface IRepoTestRepository
    {
        IEnumerable<Item> Get(Item contextItem);
    }
}