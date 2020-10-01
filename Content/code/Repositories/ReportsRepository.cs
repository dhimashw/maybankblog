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
    using Sitecore.Mvc.Presentation;
    using Sitecore.Feature.Library.Helpers;

    [Service(typeof(IReportsRepository))]
    public class ReportsRepository : IReportsRepository
    {
        private readonly ISearchServiceRepository searchServiceRepository;

        public ReportsRepository(ISearchServiceRepository searchServiceRepository)
        {
            this.searchServiceRepository = searchServiceRepository;
        }

        #region CompanyPresentation
        public IEnumerable<Item> Get(Item contextItem)
        {
            if (contextItem == null)
            {
                throw new ArgumentNullException(nameof(contextItem));
            }
            if (!contextItem.IsDerived(Templates.BucketCorporateDownloadable.ID))
            {
                throw new ArgumentException("Item must derive from BucketCorporateFolder", nameof(contextItem));
            }

            var searchService = this.searchServiceRepository.Get(new SearchSettingsBase { Templates = new[] { Templates.CompanyPresentationItem.ID } });
            //var searchService = this.searchServiceRepository.Get(new SearchSettingsBase { Templates = new[] { Templates.NewsArticle.ID } });
            searchService.Settings.Root = contextItem;
            //TODO: Refactor for scalability
            var results = searchService.FindAll();
            return results.Results.Select(x => x.Item).Where(x => x != null).OrderByDescending(i => i[Templates.BaseField.Fields.Date]);
        }
        #endregion
        #region FinancialReport
        public IEnumerable<Item> GetFinancialReportItem(Item contextItem)
        {
            if (contextItem == null)
            {
                throw new ArgumentNullException(nameof(contextItem));
            }
            if (!contextItem.IsDerived(Templates.BucketCorporateFinancial.ID))
            {
                throw new ArgumentException("Item must derive from BucketCorporateFolder", nameof(contextItem));
            }

            var searchService = this.searchServiceRepository.Get(new SearchSettingsBase { Templates = new[] { Templates.FinancialReportItem.ID } });
            //var searchService = this.searchServiceRepository.Get(new SearchSettingsBase { Templates = new[] { Templates.NewsArticle.ID } });
            searchService.Settings.Root = contextItem;
            //TODO: Refactor for scalability
            var results = searchService.FindAll();
            return results.Results.Select(x => x.Item).Where(x => x != null).OrderByDescending(i => i[Templates.BaseField.Fields.Date]);
        }

        public IEnumerable<Item> FilterFinancialReportsByCategory(IEnumerable<Item> contextItem, string _category)
        {
            //Guid idCategory = new Guid();
            //_category = Guid.TryParse(_category, out idCategory) == true ? _category : string.Empty;

            //Data.ID idCategory = new Data.ID();
            //_category = Data.ID.TryParse(_category, out idCategory) == true ? _category : string.Empty;         
            IEnumerable<Item> elements = null;
            string defaultCategory = string.Empty;
            if (_category == string.Empty)
            {
                Sitecore.Data.Items.Item defaultTabs = Sitecore.Context.Database.GetItem(Sitecore.Feature.Library.Helper.Variables._defaultTabFinancialReport);
                elements = LibraryHelpers.GetDynamicMultiList(defaultTabs);
                defaultCategory = elements.First().ID.ToShortID().ToString();
                _category = defaultCategory;
            }
            contextItem = contextItem.Where(x => x.Fields[Sitecore.Feature.Library.Templates.FinancialReportItem.Fields.Category].Value.ToLower().Replace("-", "").Contains(_category.ToLower()));
            return contextItem;
        }
        public IEnumerable<Item> GetFinancialItemsByYear(string id, string year, string _category)
        {
            //ReportsRepository rp = new ReportsRepository(searchServiceRepository);
            Item dataSourceItem = Sitecore.Context.Database.GetItem(new Data.ID(id));
            IEnumerable<Item> _items = GetFinancialReportItem(dataSourceItem);
            _items = FilterFinancialReportsByCategory(_items, _category);
            _items = _items.Where(x => x.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields._YearText].Value.ToLower() == year.ToLower());
            return _items;
        }
        #endregion
        #region CorporateResearch
        public IEnumerable<Item> GetCorporateResearchItem(Item contextItem)
        {
            if (contextItem == null)
            {
                throw new ArgumentNullException(nameof(contextItem));
            }
            if (!contextItem.IsDerived(Templates.BucketCorporateResearch.ID))
            {
                throw new ArgumentException("Item must derive from BucketCorporateFolder", nameof(contextItem));
            }

            var searchService = this.searchServiceRepository.Get(new SearchSettingsBase { Templates = new[] { Templates.CorporateResearchReportItem.ID } });
            //var searchService = this.searchServiceRepository.Get(new SearchSettingsBase { Templates = new[] { Templates.NewsArticle.ID } });
            searchService.Settings.Root = contextItem;
            //TODO: Refactor for scalability
            var results = searchService.FindAll();
            return results.Results.Select(x => x.Item).Where(x => x != null).OrderByDescending(i => i[Templates.BaseField.Fields.Date]);
        }
        public IEnumerable<Item> FilterCorpResearchReportsByCategory(IEnumerable<Item> contextItem, string _category)
        {
            //Guid idCategory = new Guid();
            //_category = Guid.TryParse(_category, out idCategory) == true ? _category : string.Empty;

            //Data.ID idCategory = new Data.ID();
            //_category = Data.ID.TryParse(_category, out idCategory) == true ? _category : string.Empty;      
            IEnumerable<Item> elements = null;
            string defaultCategory = string.Empty;
            if (_category == string.Empty)
            {
                Sitecore.Data.Items.Item defaultTabs = Sitecore.Context.Database.GetItem(Sitecore.Feature.Library.Helper.Variables._defaultTabCoprReseacrhReport);
                elements = LibraryHelpers.GetDynamicMultiList(defaultTabs);
                defaultCategory = elements.First().ID.ToShortID().ToString();
                _category = defaultCategory;
            }

            contextItem = contextItem.Where(x => x.Fields[Sitecore.Feature.Library.Templates.CorporateResearchReportItem.Fields.Category].Value.ToLower().Replace("-", "").Contains(_category.ToLower()));
            return contextItem;
        }
        public IEnumerable<Item> GetCorpResearchItemsByYear(string id, string year, string _category)
        {
            //ReportsRepository rp = new ReportsRepository(searchServiceRepository);
            Item dataSourceItem = Sitecore.Context.Database.GetItem(new Data.ID(id));
            IEnumerable<Item> _items = GetCorporateResearchItem(dataSourceItem);
            _items = FilterCorpResearchReportsByCategory(_items, _category);
            _items = _items.Where(x => x.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields._YearText].Value.ToLower() == year.ToLower());
            return _items;
        }
        #endregion
        #region RUPS
        public IEnumerable<Item> GetCorporateRUPSItem(Item contextItem)
        {
            if (contextItem == null)
            {
                throw new ArgumentNullException(nameof(contextItem));
            }
            if (!contextItem.IsDerived(Templates.BucketCorporateRUPS.ID))
            {
                throw new ArgumentException("Item must derive from BucketCorporateFolder", nameof(contextItem));
            }

            var searchService = this.searchServiceRepository.Get(new SearchSettingsBase { Templates = new[] { Templates.CorporateRUPSItem.ID } });
            //var searchService = this.searchServiceRepository.Get(new SearchSettingsBase { Templates = new[] { Templates.NewsArticle.ID } });
            searchService.Settings.Root = contextItem;
            //TODO: Refactor for scalability
            var results = searchService.FindAll();
            return results.Results.Select(x => x.Item).Where(x => x != null).OrderByDescending(i => i[Templates.BaseField.Fields.Date]);
        }

        public IEnumerable<Item> FilterRUPSByCategory(IEnumerable<Item> contextItem, string _category, string yearCategory)
        {            
            IEnumerable<Item> elements = null;
            string defaultCategory = string.Empty;
            if (yearCategory == string.Empty)
            {
                Sitecore.Data.Items.Item defaultTabs = Sitecore.Context.Database.GetItem(Sitecore.Feature.Library.Helper.Variables._defaultTabRUPSReport);
                elements = LibraryHelpers.GetDynamicMultiList(defaultTabs);
                defaultCategory = elements.First().ID.ToShortID().ToString();
                yearCategory = defaultCategory;
            }

            var year = contextItem.Select(x => x.Fields[Sitecore.Feature.Library.Templates.CorporateRUPSItem.Fields.YearCategory].Value.ToLower());
            var category = contextItem.Select(x => x.Fields[Sitecore.Feature.Library.Templates.CorporateRUPSItem.Fields.Category].Value.ToLower());
            contextItem = contextItem.Where(x => x.Fields[Sitecore.Feature.Library.Templates.CorporateRUPSItem.Fields.YearCategory].Value.ToLower().Replace("-", "").Contains(yearCategory.ToLower()));
                                     //.Where(x => x.Fields[Sitecore.Feature.Library.Templates.CorporateRUPSItem.Fields.Category].Value.ToLower().Replace("-", "").Contains(_category.ToLower()));                                            
            contextItem = contextItem.Where(x => x.Fields[Sitecore.Feature.Library.Templates.CorporateRUPSItem.Fields.Category].Value.ToLower().Contains(_category.ToLower()));


            return contextItem;
        }
        public IEnumerable<Item> GetRUPSItemsByYear(string id, string category, string yearCategory)
        {
            //ReportsRepository rp = new ReportsRepository(searchServiceRepository);
            Item dataSourceItem = Sitecore.Context.Database.GetItem(new Data.ID(id));
            IEnumerable<Item> _items = GetCorporateRUPSItem(dataSourceItem);
            _items = FilterRUPSByCategory(_items, category, yearCategory);
            //_items = _items.Where(x => x.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields._YearText].Value.ToLower() == yearCategory.ToLower());
            return _items;
        }
        public IEnumerable<string> DistincRUPSCategory(IEnumerable<Item> contextItem, string yearCategory)
        {
            
            IEnumerable<string> CategoryColl;
            IEnumerable<Item> item = contextItem.Where(x => x.Fields[Sitecore.Feature.Library.Templates.CorporateRUPSItem.Fields.YearCategory].Value.ToLower().Replace("-","").Contains(yearCategory.ToLower()));
            IEnumerable<Item> orderItem = item.OrderByDescending(x => Sitecore.Context.Database.GetItem(Sitecore.Context.Data.Database.GetItem(x.ID).Fields[Sitecore.Feature.Library.Templates.CorporateRUPSItem.Fields.Category].Value).Fields[Sitecore.Feature.Library.Templates.BaseField.Fields.Date].Value);
            CategoryColl = orderItem.Select(x => x.Fields[Sitecore.Feature.Library.Templates.CorporateRUPSItem.Fields.Category].Value).Distinct().ToList();
            return CategoryColl;
        }
        #endregion
        #region SustanibilityReports
        public IEnumerable<Item> GetSustanibilityReportsList(Item contextItem)
        {
            if (contextItem == null)
            {
                throw new ArgumentNullException(nameof(contextItem));
            }
            if (!contextItem.IsDerived(Templates._bucketReportSustainibility.ID))
            {
                throw new ArgumentException("Item must derive from Bucket Sustainibility", nameof(contextItem));
            }

            var searchService = this.searchServiceRepository.Get(new SearchSettingsBase { Templates = new[] { Templates.ReportItemDownload.ID } });
            //var searchService = this.searchServiceRepository.Get(new SearchSettingsBase { Templates = new[] { Templates.NewsArticle.ID } });
            searchService.Settings.Root = contextItem;
            //TODO: Refactor for scalability
            var results = searchService.FindAll();
            return results.Results.Select(x => x.Item).Where(x => x != null).OrderByDescending(i => i[Templates.BaseField.Fields.Date]);
        }

        public IEnumerable<Item> GetLatestSustainabilityReport(IEnumerable<Item> contextItem, int count)
        {
            //TODO: Refactor for scalability            
            contextItem = contextItem.OrderByDescending(x => x.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields.Date].Value);
            //contextItem = contextItem.Where(x => x.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields.isHighlight].Value == "1");   

            //if (contextItem == null)
            //{
            //    contextItem = contextItem.OrderByDescending(x => x.Fields[Sitecore.Feature.Library.Templates.NewsArticle.Fields.Date].Value);
            //}
            return contextItem.Take(count);
        }
        #endregion

        public IEnumerable<string> DistinctItemsYear(IEnumerable<Item> contextItem)
        {
            IEnumerable<string> yearColl;
            yearColl = contextItem.Select(x => x.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields._YearText].Value).Distinct().OrderByDescending(x => x).ToList();
            return yearColl;
        }
        public IEnumerable<Item> GetItemsByYear(string id, string year)
        {
            //ReportsRepository rp = new ReportsRepository(searchServiceRepository);
            Item dataSourceItem = Sitecore.Context.Database.GetItem(new Data.ID(id));
            IEnumerable<Item> _items = Get(dataSourceItem);
            _items = _items.Where(x => x.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields._YearText].Value.ToLower() == year.ToLower());
            return _items;
        }

    }
}