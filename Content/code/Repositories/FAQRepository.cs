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

    [Service(typeof(IFAQRepository))]
    public class FAQRepository : IFAQRepository
    {
        private readonly ISearchServiceRepository searchService;

        public FAQRepository(ISearchServiceRepository searchService)
        {
            this.searchService = searchService;
        }

        public IEnumerable<Item> GetAllFAQ(string itemBucketFAQID)
        {
            //var contextItem = Sitecore.Context.Database.GetItem(Sitecore.Feature.Library.Helper.Variables.FAQBucket);
            var contextItem = Sitecore.Context.Database.GetItem(itemBucketFAQID);
            var searchService = this.searchService.Get(new SearchSettingsBase { Templates = new[] {
                Templates.FAQSavings.ID,
                Templates.FAQBusiness.ID,
                Templates.FAQSavings.ID,
                Templates.FAQCreditCard.ID,
                Templates.FAQLoans.ID,
                Templates.FAQPremierWealth.ID,
                Templates.MBMFAQ.ID
            } });
            searchService.Settings.Root = contextItem;
            //TODO: Refactor for scalability
            var results = searchService.FindAll();
            return results.Results.Select(x => x.Item).Where(x => x != null);
        }

        public IEnumerable<Item> GetAllFAQCategory(Item contextItem)
        {
            return Library.Helpers.LibraryHelpers.GetDynamicMultiList(contextItem);
        }

        public IEnumerable<Item> GetAllBySearch(string keyword, string itemBucketFAQID)
        {
            var result = GetAllFAQ(itemBucketFAQID).Where(x => x.Fields[Templates.BaseField.Fields.Title].ToString().Contains(keyword.ToLower()) || x.Fields[Templates.BaseField.Fields.Content].ToString().Contains(keyword.ToLower()));

            //var searchService = this.searchService.Get(new SearchSettingsBase
            //{
            //    Templates = new[] {
            //    Templates.FAQSavings.ID,
            //    Templates.FAQBusiness.ID,
            //    Templates.FAQSavings.ID,
            //    Templates.FAQCreditCard.ID,
            //    Templates.FAQLoans.ID,
            //    Templates.FAQPremierWealth.ID
            //}
            //});
            //searchService.Settings.Root = contextItem;
            ////TODO: Refactor for scalability
            //var results = searchService.FindAll();
            return result;
        }
    }
}