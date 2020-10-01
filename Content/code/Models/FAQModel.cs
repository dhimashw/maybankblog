namespace Sitecore.Feature.Content.Models
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Web;
    using Sitecore.Data.Items;
    using Sitecore.Feature.Library.Helper;

    public class FAQModel<T> where T : class
    {
        public IEnumerable<Item> FAQCategoryList { get; set; }
        public IEnumerable<Item> FAQContentList { get; set; }
        public PagedData<T> PagedDatas { get; set; }
        public Sitecore.Data.ID DataSourceID { get; set; }
        public string Keyword { get; set; }
    }
}