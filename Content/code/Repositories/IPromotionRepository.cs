namespace Sitecore.Feature.Content.Repositories
{

    using System.Collections.Generic;
    using Sitecore.Data.Items;
    using Data;
    public interface IPromotionRepository
    {
        IEnumerable<Item> Get(Item contextItem);
    }
}