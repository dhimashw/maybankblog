namespace Sitecore.Feature.Content.Controller
{
    using System.Web.Mvc;
    using Sitecore.Mvc.Presentation;
    using Sitecore.Feature.Content.Repositories;
    using Sitecore.Foundation.SitecoreExtensions.Extensions;
    using Sitecore.Feature.Library.Helper;
    using System.Linq;
    using System;
    using Sitecore.Data.Items;
    using System.Collections.Generic;
    using Sitecore.Data.Fields;
    using Sitecore.Feature.Content.Models;
    using Sitecore.Links;

    //[EnableCorsForSitecore]
    public class FAQController : Controller
    {
        private readonly Item faqItem = Context.Database.GetItem(Sitecore.Feature.Library.Helper.Variables.FAQItem.ID);
        private readonly Item mbmfaqItem = Context.Database.GetItem(Sitecore.Feature.Library.Helper.Variables.MBMFAQItem.ID);

        public FAQController(IFAQRepository faqRepository)
        {
            this.Repository = faqRepository;
        }

        private IFAQRepository Repository { get; }

        public ActionResult FAQIndex()
        {

            string isMBM = RenderingContext.Current.Rendering.Parameters["isMBM"];
            IEnumerable<Item> faqCategoryitems = new List<Item>();
            IEnumerable<Item> faqContentitems = new List<Item>();
            if (isMBM == "1")
            {
                faqCategoryitems = this.Repository.GetAllFAQCategory(mbmfaqItem);
                faqContentitems = this.Repository.GetAllFAQ(Sitecore.Feature.Library.Helper.Variables.MBMFAQBucket.ToString());
            }
            else
            {
                faqCategoryitems = this.Repository.GetAllFAQCategory(faqItem);
                faqContentitems = this.Repository.GetAllFAQ(Sitecore.Feature.Library.Helper.Variables.FAQBucket.ToString());
            }
            
            

            var listItems = new PagedData<Item>();
            faqCategoryitems = faqCategoryitems ?? (faqCategoryitems = new List<Item>());
            faqContentitems = faqContentitems ?? (faqContentitems = new List<Item>());
            if (faqContentitems != null && faqContentitems.Count() > 0)
            {
                //listItems. = faqCategoryitems.ToList();
                listItems.PureData = faqCategoryitems;
                listItems.Data = faqContentitems;
                listItems.DataSourceID = RenderingContext.Current.Rendering.Item.ID;
            }

            return View("FAQ", listItems);
        }

        public ActionResult FAQDetailsIndex()
        {
            //IEnumerable<Item> faqCategoryitems = this.Repository.GetAllFAQCategory(faqItem);
            //IEnumerable<Item> faqContentitems = this.Repository.GetAllFAQ();
            string isMBM = RenderingContext.Current.Rendering.Parameters["isMBM"];
            IEnumerable<Item> faqCategoryitems = new List<Item>();
            IEnumerable<Item> faqContentitems = new List<Item>();
            if (isMBM == "1")
            {
                faqCategoryitems = this.Repository.GetAllFAQCategory(mbmfaqItem);
                faqContentitems = this.Repository.GetAllFAQ(Sitecore.Feature.Library.Helper.Variables.MBMFAQBucket.ToString());
            }
            else
            {
                faqCategoryitems = this.Repository.GetAllFAQCategory(faqItem);
                faqContentitems = this.Repository.GetAllFAQ(Sitecore.Feature.Library.Helper.Variables.FAQBucket.ToString());
            }

            var listItems = new PagedData<Item>();
            faqCategoryitems = faqCategoryitems ?? (faqCategoryitems = new List<Item>());
            faqContentitems = faqContentitems ?? (faqContentitems = new List<Item>());
            if (faqCategoryitems != null && faqCategoryitems.Count() > 0)
            {
                listItems.PureData = faqCategoryitems;
                listItems.Data = faqContentitems;
                listItems.DataSourceID = RenderingContext.Current.Rendering.Item.ID;
            }

            return View("FAQDetails", listItems);
        }

        public ActionResult FAQSearchResult()
        {
            string keyword = Request.QueryString["keyword"] != null ? Request.QueryString["keyword"] : string.Empty;
            string categoryId = Request.QueryString[Sitecore.Feature.Library.Helper.Variables._categoryId] != null ? Request.QueryString[Sitecore.Feature.Library.Helper.Variables._categoryId] : string.Empty;
            var PageSize = RenderingContext.Current.Rendering.GetIntegerParameter("Max Item", 2);

            //IEnumerable<Item> faqCategoryitems = this.Repository.GetAllFAQCategory(faqItem);
            //IEnumerable<Item> faqContentitems = this.Repository.GetAllFAQ();
            //IEnumerable<Item> AllFaqContent = this.Repository.GetAllFAQ();

            string isMBM = RenderingContext.Current.Rendering.Parameters["isMBM"];
            IEnumerable<Item> faqCategoryitems = new List<Item>();
            IEnumerable<Item> faqContentitems = new List<Item>();
            IEnumerable<Item> AllFaqContent = new List<Item>();
            if (isMBM == "1")
            {
                faqCategoryitems = this.Repository.GetAllFAQCategory(mbmfaqItem);
                faqContentitems = this.Repository.GetAllFAQ(Sitecore.Feature.Library.Helper.Variables.MBMFAQBucket.ToString());
                AllFaqContent = this.Repository.GetAllFAQ(Sitecore.Feature.Library.Helper.Variables.MBMFAQBucket.ToString());
            }
            else
            {
                faqCategoryitems = this.Repository.GetAllFAQCategory(faqItem);
                faqContentitems = this.Repository.GetAllFAQ(Sitecore.Feature.Library.Helper.Variables.FAQBucket.ToString());
                AllFaqContent = this.Repository.GetAllFAQ(Sitecore.Feature.Library.Helper.Variables.FAQBucket.ToString());
            }

            var tabexist = faqCategoryitems.Where(x => x.ID.ToShortID().ToString().Contains(categoryId)).Count();
            if (tabexist == 0)
            {
                categoryId = string.Empty;
            }

            faqCategoryitems = faqCategoryitems ?? (faqCategoryitems = new List<Item>());
            faqContentitems = faqContentitems ?? (faqContentitems = new List<Item>());
            faqContentitems = faqContentitems.Where(x => x.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields.Title].Value.ToLower().Contains(keyword)
                                    || x.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields.Content].Value.ToLower().Contains(keyword));

            AllFaqContent = AllFaqContent.Where(x => x.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields.Title].Value.ToLower().Contains(keyword)
                                    || x.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields.Content].Value.ToLower().Contains(keyword));

            if (!string.IsNullOrEmpty(categoryId))
            {
                Guid idCategory = new Guid();
                Data.ID itemCategoryId;
                if (Guid.TryParse(categoryId, out idCategory))
                {
                    if (Sitecore.Context.Database.GetItem(new Data.ID(categoryId)) != null)
                    {
                        itemCategoryId = Sitecore.Context.Database.GetItem(new Data.ID(categoryId)).ID;
                        if (isMBM == "1")
                        {
                            faqContentitems = faqContentitems.Where(x => x.Fields[Sitecore.Feature.Library.Templates.MBMFAQ.Fields.Category].Value.ToString() == itemCategoryId.ToString());
                        }
                        else
                        {
                            faqContentitems = faqContentitems.Where(x => Sitecore.Context.Database.GetItem(x.Fields["Category"].Source).ID == itemCategoryId);
                        }

                    }

                }
            }

            var listItems = new PagedData<Item>();
            faqContentitems = faqContentitems != null ? faqContentitems : new List<Item>();
            if (faqContentitems != null)
            {
                listItems.PureData = faqCategoryitems;
                //listItems.Data = faqContentitems.Take(PageSize).ToList();
                listItems.CounterData = AllFaqContent;
                listItems.Data = faqContentitems.Take(PageSize);
                listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)faqContentitems.Count() / PageSize));
                listItems.CurrentPage = 1;
                listItems.PageSize = PageSize;
                listItems.DataSourceID = RenderingContext.Current.Rendering.Item.ID;
            }


            return View("FAQSearchResult", listItems);
        }

        public ActionResult FAQListPaging(int page, int PageSize, string id, string keyword, string categoryId, string isMBM)
        {
            //IEnumerable<Item> faqCategoryitems = this.Repository.GetAllFAQCategory(faqItem);
            //IEnumerable<Item> faqContentitems = this.Repository.GetAllFAQ();
            IEnumerable<Item> faqCategoryitems = new List<Item>();
            IEnumerable<Item> faqContentitems = new List<Item>();
            IEnumerable<Item> items = new List<Item>();
            if (isMBM == "1")
            {
                faqCategoryitems = this.Repository.GetAllFAQCategory(mbmfaqItem);
                faqContentitems = this.Repository.GetAllFAQ(Sitecore.Feature.Library.Helper.Variables.MBMFAQBucket.ToString());
                items = this.Repository.GetAllFAQ(Sitecore.Feature.Library.Helper.Variables.MBMFAQBucket.ToString());
            }
            else
            {
                faqCategoryitems = this.Repository.GetAllFAQCategory(faqItem);
                faqContentitems = this.Repository.GetAllFAQ(Sitecore.Feature.Library.Helper.Variables.FAQBucket.ToString());            
                items = this.Repository.GetAllFAQ(Sitecore.Feature.Library.Helper.Variables.FAQBucket.ToString());
            }

            faqCategoryitems = faqCategoryitems ?? (faqCategoryitems = new List<Item>());
            faqContentitems = faqContentitems ?? (faqContentitems = new List<Item>());
            var tabexist = faqCategoryitems.Where(x => x.ID.ToShortID().ToString().Contains(categoryId)).Count();
            if (tabexist == 0)
            {
                categoryId = string.Empty;
            }

            var listItems = new PagedData<Data.Items.Item>();
            var dataSourceItem = Sitecore.Context.Database.GetItem(new Data.ID(id));
            
            items = items.Where(x => x.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields.Title].Value.ToLower().Contains(keyword)
                                   || x.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields.Content].Value.ToLower().Contains(keyword));

            if (!string.IsNullOrEmpty(categoryId))
            {
                Guid idCategory = new Guid();
                Data.ID itemCategoryId;
                if (Guid.TryParse(categoryId, out idCategory))
                {
                    if (Sitecore.Context.Database.GetItem(new Data.ID(categoryId)) != null)
                    {
                        itemCategoryId = Sitecore.Context.Database.GetItem(new Data.ID(categoryId)).ID;
                        items = items.Where(x => Sitecore.Context.Database.GetItem(x.Fields["Category"].Source).ID == itemCategoryId);
                    }
                  
                }
            }
            //Sitecore.Context.Database.GetItem(c.Fields["Category"].Source).ID == itemCategory.ID

            listItems.PureData = faqCategoryitems;
            listItems.CounterData = faqContentitems;
            listItems.Data = items.Skip(PageSize * (page - 1)).Take(PageSize);
            listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
            listItems.CurrentPage = page;
            listItems.DataSourceID = new Data.ID(id);
            listItems.PageSize = PageSize;

            //return View("FAQSearchResult", listItems);
            return PartialView("_FAQListPaging", listItems);
        }
    }
}
