namespace Sitecore.Feature.Content.Repositories
{
    using System.Collections.Generic;
    using Sitecore.Data.Items;
    using Data;
    using Sitecore.Feature.Library.Models;

    public interface ITreatsPointRepository
    {
        IEnumerable<Item> Get(Item contextItem);
        bool SubmitData(RedeemPoint redeemPoint, int MaxSubmit);
        string GetItemName(string ItemId);        
    }
}