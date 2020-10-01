namespace Sitecore.Feature.Content.Repositories
{
    using System.Collections.Generic;
    using Sitecore.Data.Items;
    using Data;
    public interface IFAQRepository
    {
        IEnumerable<Item> GetAllFAQ(string itemBucketFAQ);
        IEnumerable<Item> GetAllFAQCategory(Item contextItem);
        IEnumerable<Item> GetAllBySearch(string keyword, string itemBucketFAQID);
    }
}