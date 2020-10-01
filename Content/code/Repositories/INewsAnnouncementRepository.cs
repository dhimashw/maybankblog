namespace Sitecore.Feature.Content.Repositories
{

    using System.Collections.Generic;
    using Sitecore.Data.Items;
    using Data;


    public interface INewsAnnouncementRepository
    {
        IEnumerable<Item> Get(Item contextItem);
        IEnumerable<Item> GetCustomerEducation(Item contextItem);
        IEnumerable<Item> GetLatestNews(Item contextItem,int count);
        IEnumerable<Data.Items.Item> getNewsItemByCategory(IEnumerable<Data.Items.Item> items, string _category);
    }
}