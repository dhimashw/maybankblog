namespace Sitecore.Feature.Content.Repositories
{
    using System.Collections.Generic;
    using Sitecore.Data.Items;
    using Data;    
    public interface IReportsRepository
    {
        IEnumerable<Item> Get(Item contextItem);        
        IEnumerable<string> DistinctItemsYear(IEnumerable<Item> contextItem);
        IEnumerable<Item> GetFinancialReportItem(Item contextItem);
        IEnumerable<Item> FilterFinancialReportsByCategory(IEnumerable<Item> contextItem, string Category);
        IEnumerable<Item> GetCorporateResearchItem(Item contextItem);
        IEnumerable<Item> FilterCorpResearchReportsByCategory(IEnumerable<Item> contextItem, string _category);
        IEnumerable<Item> GetCorporateRUPSItem(Item contextItem);
        IEnumerable<Item> FilterRUPSByCategory(IEnumerable<Item> contextItem, string _category, string yearCategory);
        IEnumerable<Item> GetLatestSustainabilityReport(IEnumerable<Item> contextItem, int count);
        IEnumerable<Item> GetSustanibilityReportsList(Item contextItem);

    }
}