namespace Sitecore.Feature.Content.Repositories
{
    using System.Collections.Generic;
    using Sitecore.Data.Items;
    using Data;
    public interface IArticlesRepository
    {
        IEnumerable<Item> Get(Item contextItem);
        IEnumerable<Item> GetEvents(IEnumerable<Item> contextItem, int count);
        IEnumerable<Item> GetEvents(IEnumerable<Item> contextItem, int count, string category);
        IEnumerable<Item> GetCSREventItemByCategory(IEnumerable<Data.Items.Item> items, string _category);
        IEnumerable<Item> GetProgramItemByCategory(IEnumerable<Data.Items.Item> items, string _category);        
        IEnumerable<Item> GetPremierWealthHighlightItem(Item contextItem);
        IEnumerable<Item> GetLatestPremierWealthHighlight(Item contextItem, string _category);
        IEnumerable<Item> GetLatestArticle(Item contextItem);
        IEnumerable<Item> GetArticleItemByCategory(IEnumerable<Data.Items.Item> items, string _category);
        IEnumerable<Item> GetBusinessArticle(Item contextItem);
        string GetCategoryArticle(Sitecore.Data.ID idCategoryTemplate, Item item);
        IEnumerable<Item> GetSyariahProgram(Item contextItem);
        IEnumerable<Item> GetLatestSyariahProgram(Item contextItem, string category);
        IEnumerable<Item> GetSyariahProgramList(Item contextItem, string category);
        IEnumerable<Item> GetMoreFromSyariahItems(Item contextItem);
        IEnumerable<Item> MoreFromSyariahList(Item contextItem, string category);        
        IEnumerable<Item> GetLiterasiEdukasi(IEnumerable<Data.Items.Item> items);
        IEnumerable<Item> GetMaybankIndFoundation(IEnumerable<Data.Items.Item> items);

    }
}