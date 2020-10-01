namespace Sitecore.Feature.Content.Indexing
{
    using System;
    using System.Collections.Generic;
    using System.Configuration.Provider;
    using System.Linq.Expressions;
    using Sitecore.ContentSearch.SearchTypes;
    using Sitecore.Data;
    using Sitecore.Data.Fields;
    using Sitecore.Foundation.Dictionary.Repositories;
    using Sitecore.Foundation.Indexing.Infrastructure;
    using Sitecore.Foundation.Indexing.Models;
    using Sitecore.Web.UI.WebControls;
    using Sitecore.Feature.Library;
    public class TreatsPointIndexingProvider : ProviderBase, ISearchResultFormatter, IQueryPredicateProvider
    {
        public Expression<Func<SearchResultItem, bool>> GetQueryPredicate(IQuery query)
        {
            var fieldNames = new[] { Templates.BaseField.Fields.stringTitle };
            return GetFreeTextPredicateService.GetFreeTextPredicate(fieldNames, query);
        }

        public string ContentType => DictionaryPhraseRepository.Current.Get("/Feature/Content/Article", "Treats Point");

        public IEnumerable<ID> SupportedTemplates => new[] { Templates.TreatsPointItem.ID };

        public void FormatResult(SearchResultItem item, ISearchResult formattedResult)
        {
            var contentItem = item.GetItem();
            if (contentItem == null)
            {
                return;
            }

            formattedResult.Title = FieldRenderer.Render(contentItem, Templates.BaseField.Fields.stringTitle);
        }
    }
}