namespace Sitecore.Feature.Content.Controller
{
    using System.Web.Mvc;
    using Sitecore.Mvc.Presentation;
    using Sitecore.Feature.Content.Repositories;
    using Sitecore.Foundation.SitecoreExtensions.Extensions;
    using Sitecore.Feature.Library.Helper;
    using System.Linq;
    using System;
    using System.Collections.Generic;
    using Sitecore.Data.Fields;

    //[EnableCorsForSitecore]
    public class PromotionController : Controller
    {
        public PromotionController(IPromotionRepository promotionRepository)
        {
            this.Repository = promotionRepository;
        }

        private IPromotionRepository Repository { get; }

        public IEnumerable<Data.Items.Item> filterItem360(IEnumerable<Data.Items.Item> items, string _penawaran, string _category, string _keyword, Sitecore.Data.Items.Item dataSourceItem)
        {
            if (_penawaran.ToLower() == dataSourceItem.ID.ToString().ToLower())
            {
                _penawaran = string.Empty;
            }

            if (string.IsNullOrEmpty(_penawaran) && String.IsNullOrEmpty(_category))
            {
                IEnumerable<Sitecore.Data.Items.Item> ItemProductsPromotion = dataSourceItem.Children.Where(x => x.Template.ID == Sitecore.Feature.Library.Templates.CategoryPromotion.ID);

                List<string> listIValueItemCategory = new List<string>();
                List<string> listProductPromotionID = new List<string>();
                foreach (Sitecore.Data.Items.Item selectItemProductPromotion in ItemProductsPromotion)
                {
                    string idItemCategory = selectItemProductPromotion.Fields[Sitecore.Feature.Library.Templates.CategoryPromotion.Fields.Category].Value;
                    Sitecore.Data.Items.Item iValueItemCategory = Sitecore.Context.Database.GetItem(new Sitecore.Data.ID(idItemCategory));
                    listIValueItemCategory.Add(iValueItemCategory.ID.ToString().ToLower());

                    foreach (Sitecore.Data.Items.Item productPromotionList in selectItemProductPromotion.Children.Where(x => x.TemplateID == Sitecore.Feature.Library.Templates.ProductPromotion.ID))
                    {
                        Sitecore.Data.Fields.MultilistField getProductPromotionList = productPromotionList.Fields[Sitecore.Feature.Library.Templates.ProductPromotion.Fields.Product];
                        foreach (string productPromotionID in getProductPromotionList.GetItems().Select(x => x.ID.ToString().ToLower()))
                        {
                            listProductPromotionID.Add(productPromotionID);
                        }
                    }
                }

                if (listIValueItemCategory.Count > 0)
                {
                    items = items.Where(x => listIValueItemCategory.Any(y => x.Fields[Sitecore.Feature.Library.Templates.PromotionPageCreditCard.Fields.ProductCategory].Value.ToLower().Contains(y)));
                }

                if (listProductPromotionID.Distinct().Count() > 0)
                {
                    items = items.Where(x => listProductPromotionID.Distinct().Any(y => x.Fields[Sitecore.Feature.Library.Templates.PromotionPageCreditCard.Fields.ProductItem].Value.ToLower().Contains(y)));
                }

            }
            else
            {
                if (!String.IsNullOrEmpty(_penawaran))
                {
                    Data.Items.Item ItemPenawaran = Sitecore.Context.Database.GetItem(new Sitecore.Data.ID(_penawaran));
                    string idItemCategory = ItemPenawaran.Fields[Sitecore.Feature.Library.Templates.CategoryPromotion.Fields.Category].Value;
                    Sitecore.Data.Items.Item iValueItemCategory = Sitecore.Context.Database.GetItem(new Sitecore.Data.ID(idItemCategory));
                    items = items.Where(x => x.Fields[Sitecore.Feature.Library.Templates.PromotionPageCreditCard.Fields.ProductCategory].Value.Contains(iValueItemCategory.ID.ToString()));
                }

                if (!String.IsNullOrEmpty(_category))
                {
                    Data.Items.Item ItemCategory = Sitecore.Context.Database.GetItem(new Sitecore.Data.ID(_category));
                    items = items.Where(x => x.Fields[Sitecore.Feature.Library.Templates.PromotionPageCreditCard.Fields.ProductItem].Value.Contains(ItemCategory.ID.ToString()));
                }
                else
                {
                    Data.Items.Item ItemPenawaran = Sitecore.Context.Database.GetItem(new Sitecore.Data.ID(_penawaran));
                    if (ItemPenawaran.Children.Where(x => x.TemplateID == Sitecore.Feature.Library.Templates.ProductPromotion.ID).Count() > 0)
                    {
                        Sitecore.Data.Items.Item CategoryItem = ItemPenawaran.Children.Where(x => x.TemplateID == Sitecore.Feature.Library.Templates.ProductPromotion.ID).FirstOrDefault();
                        if (CategoryItem != null)
                        {
                            Sitecore.Data.Fields.MultilistField SelectedProductCategory = CategoryItem.Fields[Sitecore.Feature.Library.Templates.ProductPromotion.Fields.Product];
                            if (SelectedProductCategory.GetItems().Count() > 0)
                            {
                                string[] idCategories = SelectedProductCategory.GetItems().Select(x => x.ID.ToString().ToLower()).ToArray();
                                items = items.Where(x => idCategories.Where(y => x.Fields[Sitecore.Feature.Library.Templates.PromotionPageCreditCard.Fields.ProductItem].Value.ToLower().Contains(y.ToLower())).Any());
                            }
                        }
                    }
                }

                if (!String.IsNullOrEmpty(_keyword))
                {
                    //IEnumerable<Data.Items.Item> locItem = new Data.Items.Item[] { };
                    List<Data.Items.Item> oList = new List<Data.Items.Item>();

                    //items = items.Where(x => x.Fields[Sitecore.Feature.Library.Templates.PromotionPageCreditCard.Fields.ProductLocation].Value.ToLower().Contains(_keyword.ToLower()));
                    foreach (Data.Items.Item loc in items)
                    {
                        string locIds = loc.Fields[Sitecore.Feature.Library.Templates.PromotionPageCreditCard.Fields.ProductLocation].Value;

                        foreach (string locId in locIds.Split('|'))
                        {
                            try {
                                Data.Items.Item locItem = Sitecore.Context.Database.GetItem(new Data.ID(locId));
                                if (locItem.DisplayName.ToLower() == _keyword.ToLower())
                                {
                                    oList.Add(loc);
                                }
                            } catch (Exception) { }

                        }
                    }

                    items = oList.AsEnumerable<Data.Items.Item>();
                }
            }

            items = items.Where(x => x.Fields[Sitecore.Feature.Library.Templates.PromotionPageCreditCard.Fields.Layout].Value.ToLower().Contains(dataSourceItem.ID.ToString().ToLower()));

            return items;
        }

        public IEnumerable<Data.Items.Item> filterItemBeautifulIndonesia(IEnumerable<Data.Items.Item> items, string _city, string _category, string id)
        {
            if (_city == id.ToLower())
            {
                _city = string.Empty;
            }

            Sitecore.Data.Items.Item dataSourceItem = Sitecore.Context.Database.GetItem(new Data.ID(id));
            //Sitecore.Data.Items.Item dataSourceItem = RenderingContext.Current.Rendering.Item;

            if (String.IsNullOrEmpty(_city) && String.IsNullOrEmpty(_category))
            {
                Sitecore.Data.Items.Item ItemLocationPromotion = dataSourceItem.Children.Where(x => x.Template.ID == Sitecore.Feature.Library.Templates.LocationPromotion.ID).FirstOrDefault();
                if (ItemLocationPromotion != null)
                {
                    Sitecore.Data.Fields.MultilistField oItemLocationPromotion = ItemLocationPromotion.Fields[Sitecore.Feature.Library.Templates.LocationPromotion.Fields.Location];
                    if (oItemLocationPromotion.GetItems().Count() > 0)
                    {
                        //Sitecore.Data.Items.Item defaultLocation = oItemLocationPromotion.GetItems()[0];
                        Sitecore.Data.Items.Item ItemProductCategory = dataSourceItem.Children.Where(x => x.Template.ID == Sitecore.Feature.Library.Templates.ListCategoryPromotion.ID).FirstOrDefault();
                        if (ItemProductCategory != null)
                        {
                            Sitecore.Data.Fields.MultilistField oItemProductCategory = ItemProductCategory.Fields[Sitecore.Feature.Library.Templates.ListCategoryPromotion.Fields.Category];
                            if (oItemProductCategory.GetItems().Count() > 0)
                            {
                                string[] idCategories = oItemProductCategory.GetItems().Select(x => x.ID.ToString().ToLower()).ToArray();
                                items = items.Where(x => idCategories.Where(y => x.Fields[Sitecore.Feature.Library.Templates.PromotionPageCreditCard.Fields.ProductCategory].Value.ToLower().Contains(y.ToLower())).Any());
                                items = items.Where(x => oItemLocationPromotion.GetItems().Any(y => x.Fields[Sitecore.Feature.Library.Templates.PromotionPageCreditCard.Fields.ProductLocation].Value.ToString().ToLower().Contains(y.ID.ToString().ToLower())));
                            }
                        }
                        else
                        {
                            //items = items.Where(x => x.Fields[Sitecore.Feature.Library.Templates.PromotionPageCreditCard.Fields.ProductLocation].Value.ToString().ToLower().Contains(defaultLocation.ID.ToString().ToLower()));
                            items = items.Where(x => oItemLocationPromotion.GetItems().Any(y => x.Fields[Sitecore.Feature.Library.Templates.PromotionPageCreditCard.Fields.ProductLocation].Value.ToString().ToLower().Contains(y.ID.ToString().ToLower())));
                        }
                    }
                }
            }
            else if (String.IsNullOrEmpty(_city))
            {
                Sitecore.Data.Items.Item ItemLocationPromotion = dataSourceItem.Children.Where(x => x.Template.ID == Sitecore.Feature.Library.Templates.LocationPromotion.ID).FirstOrDefault();
                if (ItemLocationPromotion != null)
                {
                    Sitecore.Data.Fields.MultilistField oItemLocationPromotion = ItemLocationPromotion.Fields[Sitecore.Feature.Library.Templates.LocationPromotion.Fields.Location];
                    if (oItemLocationPromotion.GetItems().Count() > 0)
                    {
                        //Sitecore.Data.Items.Item defaultLocation = oItemLocationPromotion.GetItems()[0];
                        if (!String.IsNullOrEmpty(_category))
                        {
                            items = items.Where(x => x.Fields[Sitecore.Feature.Library.Templates.PromotionPageCreditCard.Fields.ProductCategory].Value.ToLower().Contains(_category.ToLower()));
                            items = items.Where(x => oItemLocationPromotion.GetItems().Any(y => x.Fields[Sitecore.Feature.Library.Templates.PromotionPageCreditCard.Fields.ProductLocation].Value.ToString().ToLower().Contains(y.ID.ToString().ToLower())));
                        }
                        else
                        {
                            //items = items.Where(x => x.Fields[Sitecore.Feature.Library.Templates.PromotionPageCreditCard.Fields.ProductLocation].Value.ToString().ToLower().Contains(defaultLocation.ID.ToString().ToLower()));
                            items = items.Where(x => oItemLocationPromotion.GetItems().Any(y => x.Fields[Sitecore.Feature.Library.Templates.PromotionPageCreditCard.Fields.ProductLocation].Value.ToString().ToLower().Contains(y.ID.ToString().ToLower())));
                        }
                    }
                }
            }
            else
            {
                if (!String.IsNullOrEmpty(_city))
                {
                    items = items.Where(x => x.Fields[Sitecore.Feature.Library.Templates.PromotionPageCreditCard.Fields.ProductLocation].Value.ToString().ToLower().Contains(_city.ToLower()));
                }

                if (!String.IsNullOrEmpty(_category))
                {
                    items = items.Where(x => x.Fields[Sitecore.Feature.Library.Templates.PromotionPageCreditCard.Fields.ProductCategory].Value.ToLower().Contains(_category.ToLower()));
                }
                else
                {
                    Sitecore.Data.Items.Item ItemProductCategory = dataSourceItem.Children.Where(x => x.Template.ID == Sitecore.Feature.Library.Templates.ListCategoryPromotion.ID).FirstOrDefault();
                    if (ItemProductCategory != null)
                    {
                        Sitecore.Data.Fields.MultilistField oItemProductCategory = ItemProductCategory.Fields[Sitecore.Feature.Library.Templates.ListCategoryPromotion.Fields.Category];
                        if (oItemProductCategory.GetItems().Count() > 0)
                        {
                            string[] idCategories = oItemProductCategory.GetItems().Select(x => x.ID.ToString().ToLower()).ToArray();
                            items = items.Where(x => idCategories.Where(y => x.Fields[Sitecore.Feature.Library.Templates.PromotionPageCreditCard.Fields.ProductCategory].Value.ToLower().Contains(y.ToLower())).Any());
                        }
                    }
                }
            }

            items = items.Where(x => x.Fields[Sitecore.Feature.Library.Templates.PromotionPageCreditCard.Fields.Layout].Value.ToLower().Contains(dataSourceItem.ID.ToString().ToLower()));

            return items;
        }

        public IEnumerable<Data.Items.Item> filterItemBelanjaOnline(IEnumerable<Data.Items.Item> items, string _category, string id)
        {
            Sitecore.Data.Items.Item dataSourceItem = Sitecore.Context.Database.GetItem(new Data.ID(id));

            if (!String.IsNullOrEmpty(_category))
            {
                items = items.Where(x => x.Fields[Sitecore.Feature.Library.Templates.PromotionPageCreditCard.Fields.ProductCategory].Value.ToLower().Contains(_category.ToLower()));
            }
            else
            {
                Sitecore.Data.Items.Item ItemProductCategory = dataSourceItem.Children.Where(x => x.Template.ID == Sitecore.Feature.Library.Templates.ListCategoryPromotion.ID).FirstOrDefault();
                if (ItemProductCategory != null)
                {
                    Sitecore.Data.Fields.MultilistField oItemProductCategory = ItemProductCategory.Fields[Sitecore.Feature.Library.Templates.ListCategoryPromotion.Fields.Category];
                    if (oItemProductCategory.GetItems().Count() > 0)
                    {
                        string[] idCategories = oItemProductCategory.GetItems().Select(x => x.ID.ToString().ToLower()).ToArray();
                        items = items.Where(x => idCategories.Where(y => x.Fields[Sitecore.Feature.Library.Templates.PromotionPageCreditCard.Fields.ProductCategory].Value.ToLower().Contains(y.ToLower())).Any());
                    }
                }
            }

            items = items.Where(x => x.Fields[Sitecore.Feature.Library.Templates.PromotionPageCreditCard.Fields.Layout].Value.ToLower().Contains(dataSourceItem.ID.ToString().ToLower()));

            return items;
        }

        public IEnumerable<Data.Items.Item> filterSPG(IEnumerable<Data.Items.Item> items, string _penawaran, string _category, string _keyword,string id)
        {
            if (_penawaran.ToLower() == id.ToLower())
            {
                _penawaran = string.Empty;
            }

            Sitecore.Data.Items.Item dataSourceItem = Sitecore.Context.Database.GetItem(new Data.ID(id));
            if (String.IsNullOrEmpty(_penawaran))
            {
                Sitecore.Data.Items.Item ItemCountryPromotion = dataSourceItem.Children.Where(x => x.Template.ID == Sitecore.Feature.Library.Templates.CountryPromotion.ID).FirstOrDefault();
                if (ItemCountryPromotion != null)
                {
                    Sitecore.Data.Fields.MultilistField SelectedCountryPromotion = ItemCountryPromotion.Fields[Sitecore.Feature.Library.Templates.CountryPromotion.Fields.Location];
                    if (SelectedCountryPromotion.GetItems().Count() > 0)
                    {
                        //Sitecore.Data.Items.Item defaultSelectedCountry = SelectedCountryPromotion.GetItems().FirstOrDefault();
                        //items = items.Where(x => x.Fields[Sitecore.Feature.Library.Templates.PromotionPageCreditCard.Fields.ProductLocation].Value.ToLower().Contains(defaultSelectedCountry.ID.ToString().ToLower()));
                        items = items.Where(x => SelectedCountryPromotion.GetItems().Any(y => x.Fields[Sitecore.Feature.Library.Templates.PromotionPageCreditCard.Fields.ProductLocation].Value.ToLower().Contains(y.ID.ToString().ToLower())));
                    }
                }
            }
            else
            {
                items = items.Where(x => x.Fields[Sitecore.Feature.Library.Templates.PromotionPageCreditCard.Fields.ProductLocation].Value.ToLower().Contains(_penawaran.ToLower()));
            }

            if (string.IsNullOrEmpty(_category))
            {
                Sitecore.Data.Items.Item ItemProductCategory = dataSourceItem.Children.Where(x => x.Template.ID == Sitecore.Feature.Library.Templates.ListCategoryPromotion.ID).FirstOrDefault();
                Sitecore.Data.Fields.MultilistField SelectedProductCategory = ItemProductCategory.Fields[Sitecore.Feature.Library.Templates.ListCategoryPromotion.Fields.Category];
                if (SelectedProductCategory.GetItems().Count() > 0)
                {
                    string[] idCategories = SelectedProductCategory.GetItems().Select(x => x.ID.ToString().ToLower()).ToArray();
                    items = items.Where(x => idCategories.Where(y => x.Fields[Sitecore.Feature.Library.Templates.PromotionPageCreditCard.Fields.ProductCategory].Value.ToLower().Contains(y.ToLower())).Any());
                }
            }
            else
            {
                items = items.Where(x => x.Fields[Sitecore.Feature.Library.Templates.PromotionPageCreditCard.Fields.ProductCategory].Value.ToLower().Contains(_category.ToLower()));
            }

            if (!String.IsNullOrEmpty(_keyword))
            {
                List<Data.Items.Item> oList = new List<Data.Items.Item>();

                foreach (Data.Items.Item ItemCountryPromotion in items)
                {
                    Sitecore.Data.Fields.MultilistField SelectedCountryPromotion = ItemCountryPromotion.Fields[Sitecore.Feature.Library.Templates.PromotionPageCreditCard.Fields.ProductLocation];
                    foreach (Sitecore.Data.Items.Item SelectedItemContryPromotion in SelectedCountryPromotion.GetItems())
                    {
                        if (SelectedItemContryPromotion.DisplayName.ToLower() == _keyword.ToLower())
                        {
                            oList.Add(ItemCountryPromotion);
                        }
                    }
                }
                items = oList.AsEnumerable<Data.Items.Item>();
            }

            items = items.Where(x => x.Fields[Sitecore.Feature.Library.Templates.PromotionPageCreditCard.Fields.Layout].Value.ToLower().Contains(dataSourceItem.ID.ToString().ToLower()));

            return items;
        }

        public IEnumerable<Data.Items.Item> filterTourAndTravel(IEnumerable<Data.Items.Item> items)
        {
            Sitecore.Data.Items.Item dataSourceItem = RenderingContext.Current.Rendering.Item;

            items = items.Where(x => x.Fields[Sitecore.Feature.Library.Templates.PromotionPageCreditCard.Fields.Layout].Value.ToLower().Contains(dataSourceItem.ID.ToString().ToLower()));

            return items;
        }
        public IEnumerable<Data.Items.Item> filterTourAndTravel(IEnumerable<Data.Items.Item> items, string id)
        {
            Sitecore.Data.Items.Item dataSourceItem = Sitecore.Context.Database.GetItem(new Data.ID(id));

            items = items.Where(x => x.Fields[Sitecore.Feature.Library.Templates.PromotionPageCreditCard.Fields.Layout].Value.ToLower().Contains(dataSourceItem.ID.ToString().ToLower()));

            return items;
        }

        public IEnumerable<Data.Items.Item> filterDiningPrivileges(IEnumerable<Data.Items.Item> items, string _penawaran, string id)
        {
            if (_penawaran.ToLower() == id.ToLower())
            {
                _penawaran = string.Empty;
            }
            Sitecore.Data.Items.Item dataSourceItem = Sitecore.Context.Database.GetItem(new Data.ID(id));
            if (String.IsNullOrEmpty(_penawaran))
            {
                Sitecore.Data.Items.Item ItemLocationPromotion = dataSourceItem.Children.Where(x => x.Template.ID == Sitecore.Feature.Library.Templates.LocationPromotion.ID).FirstOrDefault();
                Sitecore.Data.Fields.MultilistField SelectedLocationPromotion = ItemLocationPromotion.Fields[Sitecore.Feature.Library.Templates.LocationPromotion.Fields.Location];
                if (SelectedLocationPromotion.GetItems().Count() > 0)
                {
                    //Sitecore.Data.Items.Item defaultSelectedCountry = SelectedLocationPromotion.GetItems().FirstOrDefault();
                    //items = items.Where(x => x.Fields[Sitecore.Feature.Library.Templates.PromotionPageCreditCard.Fields.ProductLocation].Value.ToLower().Contains(defaultSelectedCountry.ID.ToString().ToLower()));
                    items = items.Where(x => SelectedLocationPromotion.GetItems().Any(y => x.Fields[Sitecore.Feature.Library.Templates.PromotionPageCreditCard.Fields.ProductLocation].Value.ToLower().Contains(y.ID.ToString().ToLower())));
                }
            }
            else
            {
                items = items.Where(x => x.Fields[Sitecore.Feature.Library.Templates.PromotionPageCreditCard.Fields.ProductLocation].Value.ToLower().Contains(_penawaran.ToLower()));
            }

            items = items.Where(x => x.Fields[Sitecore.Feature.Library.Templates.PromotionPageCreditCard.Fields.Layout].Value.ToLower().Contains(dataSourceItem.ID.ToString().ToLower()));

            return items;
        }

        public ActionResult Promotion360ListPaging(int page, int PageSize, string id, string Keyword, string Penawaran, string Category, string dataSourceItemID)
        {
            var listItems = new PagedData<Data.Items.Item>();

            Sitecore.Data.Items.Item dataSourceItem = Sitecore.Context.Database.GetItem(new Data.ID(id));
            //var items = this.Repository.Get(dataSourceItem);
            IEnumerable<Data.Items.Item> items = this.Repository.Get(Sitecore.Context.Database.GetItem(new Data.ID("{18DC3A7D-0FEF-44E0-B947-98CA942846E9}")));
            items = filterItem360(items, Penawaran, Category, Keyword, dataSourceItem);

            listItems.Data = items.Skip(PageSize * (page - 1)).Take(PageSize);
            listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
            listItems.CurrentPage = page;
            listItems.DataSourceID = new Data.ID(id);
            listItems.PageSize = PageSize;

            return PartialView("_Promo360ListItem", listItems);
        }

        public ActionResult LifestyleListPaging(int page, int PageSize, string id, string Keyword, string Penawaran, string Category, string dataSourceItemID)
        {
            var listItems = new PagedData<Data.Items.Item>();

            Sitecore.Data.Items.Item dataSourceItem = Sitecore.Context.Database.GetItem(new Data.ID(dataSourceItemID));
            //var items = this.Repository.Get(dataSourceItem);
            IEnumerable<Data.Items.Item> items = this.Repository.Get(Sitecore.Context.Database.GetItem(new Data.ID("{18DC3A7D-0FEF-44E0-B947-98CA942846E9}")));
            items = filterItem360(items, Penawaran, Category, Keyword, dataSourceItem);

            listItems.Data = items.Skip(PageSize * (page - 1)).Take(PageSize);
            listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
            listItems.CurrentPage = page;
            listItems.DataSourceID = new Data.ID(id);
            listItems.PageSize = PageSize;

            return PartialView("LifestyleListItem", listItems);
        }

        public ActionResult BeautyfulIndonesiaListPaging(int page, int PageSize, string id, string City, string Category)
        {
            var listItems = new PagedData<Data.Items.Item>();

            //var dataSourceItem = Sitecore.Context.Database.GetItem(new Data.ID(id));
            //var items = this.Repository.Get(dataSourceItem);
            IEnumerable<Data.Items.Item> items = this.Repository.Get(Sitecore.Context.Database.GetItem(new Data.ID("{18DC3A7D-0FEF-44E0-B947-98CA942846E9}")));
            listItems.PureData = items.ToList();
            items = filterItemBeautifulIndonesia(items, City, Category, id);


            listItems.Data = items.Skip(PageSize * (page - 1)).Take(PageSize);
            listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
            listItems.CurrentPage = page;
            listItems.DataSourceID = new Data.ID(id);
            listItems.PageSize = PageSize;

            return PartialView("LifestyleListItem", listItems);
        }

        public ActionResult BelanjaOnlineListPaging(int page, int PageSize, string id, string Category)
        {
            var listItems = new PagedData<Data.Items.Item>();

            //var dataSourceItem = Sitecore.Context.Database.GetItem(new Data.ID(id));
            //var items = this.Repository.Get(dataSourceItem);
            IEnumerable<Data.Items.Item> items = this.Repository.Get(Sitecore.Context.Database.GetItem(new Data.ID("{18DC3A7D-0FEF-44E0-B947-98CA942846E9}")));
            listItems.PureData = items.ToList();
            items = filterItemBelanjaOnline(items, Category, id);

            listItems.Data = items.Skip(PageSize * (page - 1)).Take(PageSize);
            listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
            listItems.CurrentPage = page;
            listItems.DataSourceID = new Data.ID(id);
            listItems.PageSize = PageSize;

            return PartialView("LifestyleListItem", listItems);
        }

        public ActionResult SPGListPaging(int page, int PageSize, string id, string Keyword, string Penawaran, string Category)
        {
            var listItems = new PagedData<Data.Items.Item>();

            //var dataSourceItem = Sitecore.Context.Database.GetItem(new Data.ID(id));
            //var items = this.Repository.Get(dataSourceItem);
            IEnumerable<Data.Items.Item> items = this.Repository.Get(Sitecore.Context.Database.GetItem(new Data.ID("{18DC3A7D-0FEF-44E0-B947-98CA942846E9}")));
            items = filterSPG(items, Penawaran, Category, Keyword,id);

            listItems.Data = items.Skip(PageSize * (page - 1)).Take(PageSize);
            listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
            listItems.CurrentPage = page;
            listItems.DataSourceID = new Data.ID(id);
            listItems.PageSize = PageSize;

            return PartialView("LifestyleListItem", listItems);
        }

        public ActionResult TourAndTravelListPaging(int page, int PageSize, string id)
        {
            var listItems = new PagedData<Data.Items.Item>();

            //var dataSourceItem = Sitecore.Context.Database.GetItem(new Data.ID(id));
            //var items = this.Repository.Get(dataSourceItem);
            IEnumerable<Data.Items.Item> items = this.Repository.Get(Sitecore.Context.Database.GetItem(new Data.ID("{18DC3A7D-0FEF-44E0-B947-98CA942846E9}")));
            items = filterTourAndTravel(items,id);

            listItems.Data = items.Skip(PageSize * (page - 1)).Take(PageSize);
            listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
            listItems.CurrentPage = page;
            listItems.DataSourceID = new Data.ID(id);
            listItems.PageSize = PageSize;

            return PartialView("LifestyleListItem", listItems);
        }

        public ActionResult BeautifulIndonesiaPaging(int page, int PageSize, string id, string City, string Category)
        {
            var listItems = new PagedData<Data.Items.Item>();

            //var dataSourceItem = Sitecore.Context.Database.GetItem(new Data.ID(id));
            //var items = this.Repository.Get(dataSourceItem);
            IEnumerable<Data.Items.Item> items = this.Repository.Get(Sitecore.Context.Database.GetItem(new Data.ID("{18DC3A7D-0FEF-44E0-B947-98CA942846E9}")));
            listItems.PureData = items.ToList();

            items = filterItemBeautifulIndonesia(items, City, Category,id);

            listItems.Data = items.Skip(PageSize * (page - 1)).Take(PageSize);
            listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
            listItems.CurrentPage = page;
            listItems.DataSourceID = new Data.ID(id);
            listItems.PageSize = PageSize;

            return PartialView("LifestyleListItem", listItems);
        }

        public ActionResult DiningPrivilegesListPaging(int page, int PageSize, string id, string City)
        {
            var listItems = new PagedData<Data.Items.Item>();

            IEnumerable<Data.Items.Item> items = this.Repository.Get(Sitecore.Context.Database.GetItem(new Data.ID("{18DC3A7D-0FEF-44E0-B947-98CA942846E9}")));
            items = filterDiningPrivileges(items, City, id);

            listItems.Data = items.Skip(PageSize * (page - 1)).Take(PageSize);
            listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
            listItems.CurrentPage = page;
            listItems.DataSourceID = new Data.ID(id);
            listItems.PageSize = PageSize;

            return PartialView("LifestyleListItem", listItems);
        }

        public ActionResult PromotionStashListPaging(int page, int PageSize, string id)
        {
            var listItems = new PagedData<Data.Items.Item>();

            IEnumerable<Data.Items.Item> items = this.Repository.Get(Sitecore.Context.Database.GetItem(new Data.ID(id)));

            listItems.Data = items.Skip(PageSize * (page - 1)).Take(PageSize);
            listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
            listItems.CurrentPage = page;
            listItems.DataSourceID = new Data.ID(id);
            listItems.PageSize = PageSize;

            return PartialView("LifestyleListItem", listItems);
        }

        public ActionResult constructDataPromotion()
        {
            string _penawaran = Request.QueryString[Sitecore.Feature.Library.Helper.Variables._penawaran] != null ? Request.QueryString[Sitecore.Feature.Library.Helper.Variables._penawaran].ToLower() : string.Empty;
            string _category = Request.QueryString[Sitecore.Feature.Library.Helper.Variables._category] != null ? Request.QueryString[Sitecore.Feature.Library.Helper.Variables._category].ToLower() : string.Empty;
            string _keyword = Request.QueryString[Sitecore.Feature.Library.Helper.Variables._keyword] != null ? Request.QueryString[Sitecore.Feature.Library.Helper.Variables._keyword].ToLower() : string.Empty;

            Guid idPenawaran = new Guid();
            //bool _penawaranValid = Guid.TryParse(_penawaran, out idPenawaran);
            _penawaran = Guid.TryParse(_penawaran, out idPenawaran) == true ? _penawaran : string.Empty;

            Guid idCategory = new Guid();
            //bool _categoryValid = Guid.TryParse(_category, out idCategory);
            _category = Guid.TryParse(_category, out idCategory) == true ? _category : string.Empty;

            var PageSize = RenderingContext.Current.Rendering.GetIntegerParameter("Max Item", 8);

            //GetDataFrom Promotion Repository

            Sitecore.Data.Items.Item dataSourceItem = RenderingContext.Current.Rendering.Item;

            IEnumerable<Data.Items.Item> items = this.Repository.Get(Sitecore.Context.Database.GetItem(new Data.ID("{18DC3A7D-0FEF-44E0-B947-98CA942846E9}")));
            items = filterItem360(items, _penawaran, _category, _keyword, dataSourceItem);

            PagedData<Data.Items.Item> listItems = new PagedData<Data.Items.Item>();
            if (items != null && items.Count() > 0)
            {
                listItems.Data = items.Take(PageSize);
                listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
                listItems.CurrentPage = 1;
                listItems.PageSize = PageSize;
            }
            listItems.DataSourceID = RenderingContext.Current.Rendering.Item.ID;

            return View("ProductList360", listItems);
        }

        public ActionResult GetLatestDataPromotionByCategory()
        {
            Sitecore.Data.Items.Item dataSourceItem = Sitecore.Context.Database.GetItem(RenderingContext.Current.Rendering.Item.ID);

            //MultilistField category = RenderingContext.Current.Rendering.Item.Fields[Sitecore.Feature.Library.Templates.PromotionProduct.Fields.ProductLayout];
            MultilistField category = dataSourceItem.Fields[Sitecore.Feature.Library.Templates.PromotionProduct.Fields.ProductLayout];

            Sitecore.Data.Items.Item dataSourceLayout = category.GetItems().FirstOrDefault();

            Sitecore.Data.Items.Item result = null;
            MultilistField fieldCategory = null;
            if (dataSourceItem != null)
            {
                fieldCategory = dataSourceItem.Fields[Sitecore.Feature.Library.Templates.PromotionProduct.Fields.ProductCategory];

                if (fieldCategory != null && fieldCategory.TargetIDs != null)
                {
                    result = fieldCategory.TargetIDs.Select(Sitecore.Context.Database.GetItem).FirstOrDefault();
                }
            }
            //string idItemCategory = ItemCategory.Fields[Sitecore.Feature.Library.Templates.CategoryPromotion.Fields.Category].Value;

            string _penawaran = result.ID.ToString() != null ? result.ID.ToString() : string.Empty;
            string _category = string.Empty;
            string _keyword = string.Empty;

            IEnumerable<Data.Items.Item> items = this.Repository.Get(Sitecore.Context.Database.GetItem(new Data.ID("{18DC3A7D-0FEF-44E0-B947-98CA942846E9}")));
            items = filterItem360(items, _penawaran, _keyword, _category, dataSourceLayout);
            items = items.OrderByDescending(i => i.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields._Prioritize].Value)
                          .ThenByDescending(x => x.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields.Date].Value)
                          .ThenByDescending(x => x.Created)
                         .Take(3);
            PagedData<Data.Items.Item> listItems = new PagedData<Data.Items.Item>();
            if (items != null && items.Count() > 0)
            {
                listItems.Data = items;
            }
            listItems.DataSourceID = RenderingContext.Current.Rendering.Item.ID;


            return View("360TravelProductList", listItems);
        }

        public ActionResult constructDataPromotionLifeStyle()
        {
            string _penawaran = Request.QueryString[Sitecore.Feature.Library.Helper.Variables._penawaran] != null ? Request.QueryString[Sitecore.Feature.Library.Helper.Variables._penawaran].ToLower() : string.Empty;
            string _category = Request.QueryString[Sitecore.Feature.Library.Helper.Variables._category] != null ? Request.QueryString[Sitecore.Feature.Library.Helper.Variables._category].ToLower() : string.Empty;
            string _keyword = Request.QueryString[Sitecore.Feature.Library.Helper.Variables._keyword] != null ? Request.QueryString[Sitecore.Feature.Library.Helper.Variables._keyword].ToLower() : string.Empty;

            Guid idPenawaran = new Guid();
            //bool _penawaranValid = Guid.TryParse(_penawaran, out idPenawaran);
            _penawaran = Guid.TryParse(_penawaran, out idPenawaran) == true ? _penawaran : string.Empty;

            Guid idCategory = new Guid();
            //bool _categoryValid = Guid.TryParse(_category, out idCategory);
            _category = Guid.TryParse(_category, out idCategory) == true ? _category : string.Empty;

            var PageSize = RenderingContext.Current.Rendering.GetIntegerParameter("Max Item", 8);


            //GetDataFrom Promotion Repository
            Sitecore.Data.Items.Item dataSourceItem = RenderingContext.Current.Rendering.Item;
            IEnumerable<Data.Items.Item> items = this.Repository.Get(Sitecore.Context.Database.GetItem(new Data.ID("{18DC3A7D-0FEF-44E0-B947-98CA942846E9}")));
            items = filterItem360(items, _penawaran, _category, _keyword, dataSourceItem);

            PagedData<Data.Items.Item> listItems = new PagedData<Data.Items.Item>();
            if (items != null && items.Count() > 0)
            {
                listItems.Data = items.Take(PageSize);
                listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
                listItems.CurrentPage = 1;
                listItems.PageSize = PageSize;
            }
            listItems.DataSourceID = RenderingContext.Current.Rendering.Item.ID;

            return View("Lifestyle", listItems);
        }

        public ActionResult BeautifulIndonesia()
        {
            string _city = Request.QueryString[Sitecore.Feature.Library.Helper.Variables._penawaran] != null ? Request.QueryString[Sitecore.Feature.Library.Helper.Variables._penawaran].ToLower() : string.Empty;
            string _category = Request.QueryString[Sitecore.Feature.Library.Helper.Variables._category] != null ? Request.QueryString[Sitecore.Feature.Library.Helper.Variables._category].ToLower() : string.Empty;
            string _keyword = Request.QueryString[Sitecore.Feature.Library.Helper.Variables._keyword] != null ? Request.QueryString[Sitecore.Feature.Library.Helper.Variables._keyword].ToLower() : string.Empty;

            Guid idPenawaran = new Guid();
            //bool _penawaranValid = Guid.TryParse(_penawaran, out idPenawaran);
            _city = Guid.TryParse(_city, out idPenawaran) == true ? _city : string.Empty;

            Guid idCategory = new Guid();
            //bool _categoryValid = Guid.TryParse(_category, out idCategory);
            _category = Guid.TryParse(_category, out idCategory) == true ? _category : string.Empty;

            var PageSize = RenderingContext.Current.Rendering.GetIntegerParameter("Max Item", 8);

            //GetDataFrom Promotion Repository

            IEnumerable<Data.Items.Item> items = this.Repository.Get(Sitecore.Context.Database.GetItem(new Data.ID("{18DC3A7D-0FEF-44E0-B947-98CA942846E9}")));
            IEnumerable<Data.Items.Item> itemsFilter = filterItemBeautifulIndonesia(items, _city, _category, RenderingContext.Current.Rendering.Item.ID.ToString());

            PagedData<Data.Items.Item> listItems = new PagedData<Data.Items.Item>();
            if (itemsFilter != null && itemsFilter.Count() > 0)
            {
                listItems.Data = itemsFilter.Take(PageSize);
            }
            if (items != null && items.Count() > 0)
            {
                listItems.PureData = items;
                listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)itemsFilter.Count() / PageSize));
                listItems.CurrentPage = 1;
                listItems.PageSize = PageSize;
            }
            listItems.DataSourceID = RenderingContext.Current.Rendering.Item.ID;

            return View("BeautifulIndonesia", listItems);
        }

        public ActionResult BelanjaOnline()
        {
            string _category = Request.QueryString[Sitecore.Feature.Library.Helper.Variables._category] != null ? Request.QueryString[Sitecore.Feature.Library.Helper.Variables._category].ToLower() : string.Empty;

            Guid idCategory = new Guid();
            //bool _categoryValid = Guid.TryParse(_category, out idCategory);
            _category = Guid.TryParse(_category, out idCategory) == true ? _category : string.Empty;

            var PageSize = RenderingContext.Current.Rendering.GetIntegerParameter("Max Item", 8);

            //GetDataFrom Promotion Repository
            string id = RenderingContext.Current.Rendering.Item.ID.ToString();
            IEnumerable<Data.Items.Item> items = this.Repository.Get(Sitecore.Context.Database.GetItem(new Data.ID("{18DC3A7D-0FEF-44E0-B947-98CA942846E9}")));
            IEnumerable<Data.Items.Item> itemsFilter = filterItemBelanjaOnline(items, _category, id);

            PagedData<Data.Items.Item> listItems = new PagedData<Data.Items.Item>();
            if (itemsFilter != null && itemsFilter.Count() > 0)
            {
                listItems.Data = itemsFilter.Take(PageSize);
            }
            if (items != null && items.Count() > 0)
            {
                listItems.PureData = items;
                listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)itemsFilter.Count() / PageSize));
                listItems.CurrentPage = 1;
                listItems.PageSize = PageSize;
            }
            listItems.DataSourceID = RenderingContext.Current.Rendering.Item.ID;

            return View("BelanjaOnline", listItems);
        }

        public ActionResult SPG()
        {
            string _penawaran = Request.QueryString[Sitecore.Feature.Library.Helper.Variables._penawaran] != null ? Request.QueryString[Sitecore.Feature.Library.Helper.Variables._penawaran].ToLower() : string.Empty;
            string _category = Request.QueryString[Sitecore.Feature.Library.Helper.Variables._category] != null ? Request.QueryString[Sitecore.Feature.Library.Helper.Variables._category].ToLower() : string.Empty;
            string _keyword = Request.QueryString[Sitecore.Feature.Library.Helper.Variables._keyword] != null ? Request.QueryString[Sitecore.Feature.Library.Helper.Variables._keyword].ToLower() : string.Empty;

            Guid idPenawaran = new Guid();
            //bool _penawaranValid = Guid.TryParse(_penawaran, out idPenawaran);
            _penawaran = Guid.TryParse(_penawaran, out idPenawaran) == true ? _penawaran : string.Empty;

            Guid idCategory = new Guid();
            //bool _categoryValid = Guid.TryParse(_category, out idCategory);
            _category = Guid.TryParse(_category, out idCategory) == true ? _category : string.Empty;

            var PageSize = RenderingContext.Current.Rendering.GetIntegerParameter("Max Item", 8);


            //GetDataFrom Promotion Repository

            IEnumerable<Data.Items.Item> items = this.Repository.Get(Sitecore.Context.Database.GetItem(new Data.ID("{18DC3A7D-0FEF-44E0-B947-98CA942846E9}")));
            items = filterSPG(items, _penawaran, _category, _keyword, RenderingContext.Current.Rendering.Item.ID.ToString());

            PagedData<Data.Items.Item> listItems = new PagedData<Data.Items.Item>();
            if (items != null && items.Count() > 0)
            {
                listItems.Data = items.Take(PageSize);
                listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
                listItems.CurrentPage = 1;
                listItems.PageSize = PageSize;
            }
            listItems.DataSourceID = RenderingContext.Current.Rendering.Item.ID;

            return View("SPG", listItems);
        }

        public ActionResult TourAndTravel()
        {
            var PageSize = RenderingContext.Current.Rendering.GetIntegerParameter("Max Item", 8);
            IEnumerable<Data.Items.Item> items = this.Repository.Get(Sitecore.Context.Database.GetItem(new Data.ID("{18DC3A7D-0FEF-44E0-B947-98CA942846E9}")));
            items = filterTourAndTravel(items);

            PagedData<Data.Items.Item> listItems = new PagedData<Data.Items.Item>();
            if (items != null && items.Count() > 0)
            {
                listItems.Data = items.Take(PageSize);
                listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
                listItems.CurrentPage = 1;
                listItems.PageSize = PageSize;
            }
            listItems.DataSourceID = RenderingContext.Current.Rendering.Item.ID;

            return View("TourAndTravel", listItems);
        }

        public ActionResult DiningPrivileges()
        {
            string _penawaran = Request.QueryString[Sitecore.Feature.Library.Helper.Variables._penawaran] != null ? Request.QueryString[Sitecore.Feature.Library.Helper.Variables._penawaran].ToLower() : string.Empty;

            Guid idPenawaran = new Guid();
            _penawaran = Guid.TryParse(_penawaran, out idPenawaran) == true ? _penawaran : string.Empty;

            var PageSize = RenderingContext.Current.Rendering.GetIntegerParameter("Max Item", 8);

            string id = RenderingContext.Current.Rendering.Item.ID.ToString();

            IEnumerable<Data.Items.Item> items = this.Repository.Get(Sitecore.Context.Database.GetItem(new Data.ID("{18DC3A7D-0FEF-44E0-B947-98CA942846E9}")));
            items = filterDiningPrivileges(items, _penawaran, id);

            PagedData<Data.Items.Item> listItems = new PagedData<Data.Items.Item>();
            if (items != null && items.Count() > 0)
            {
                listItems.Data = items.Take(PageSize);
                listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
                listItems.CurrentPage = 1;
                listItems.PageSize = PageSize;
            }
            listItems.DataSourceID = RenderingContext.Current.Rendering.Item.ID;

            return View("DiningPrivileges", listItems);
        }

        public ActionResult PromotionStash()
        {
            var PageSize = RenderingContext.Current.Rendering.GetIntegerParameter("Max Item", 8);

            Sitecore.Data.Items.Item dataSourceItem = RenderingContext.Current.Rendering.Item;
            IEnumerable<Data.Items.Item> items = this.Repository.Get(dataSourceItem);

            PagedData<Data.Items.Item> listItems = new PagedData<Data.Items.Item>();
            if (items != null && items.Count() > 0)
            {
                listItems.Data = items.Take(PageSize);
                listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
                listItems.CurrentPage = 1;
                listItems.PageSize = PageSize;
            }
            listItems.DataSourceID = RenderingContext.Current.Rendering.Item.ID;
            return View("PromotionStash", listItems);
        }

        public bool checkHasItemOnLocationWithProduct(string categoryID)
        {
            bool flag = false;
            string _city = Request.QueryString[Sitecore.Feature.Library.Helper.Variables._penawaran] != null ? Request.QueryString[Sitecore.Feature.Library.Helper.Variables._penawaran].ToLower() : string.Empty;
            Sitecore.Data.Items.Item dataSourceItem = RenderingContext.Current.Rendering.Item;
            Sitecore.Data.Items.Item ItemLocationPromotion;

            Guid idCity = new Guid();
            bool _categoryValid = Guid.TryParse(_city, out idCity);

            if (string.IsNullOrEmpty(_city) || _categoryValid == false)
            {
                ItemLocationPromotion = dataSourceItem.Children.Where(x => x.Template.ID == Sitecore.Feature.Library.Templates.LocationPromotion.ID).FirstOrDefault();
            }
            else
            {
                ItemLocationPromotion = Sitecore.Context.Database.GetItem(new Sitecore.Data.ID(_city));
            }
            IEnumerable<Data.Items.Item> items = this.Repository.Get(Sitecore.Context.Database.GetItem(new Data.ID("{18DC3A7D-0FEF-44E0-B947-98CA942846E9}")));

            items = items.Where(x => x.Fields[Sitecore.Feature.Library.Templates.PromotionPageCreditCard.Fields.ProductCategory].Value.ToLower().Contains(categoryID.ToLower()) && x.Fields[Sitecore.Feature.Library.Templates.PromotionPageCreditCard.Fields.ProductLocation].Value.ToLower().Contains(_city));

            return flag;
        }

        public ActionResult LatestPromotion()
        {
            Sitecore.Data.Items.Item dataSourceItem = RenderingContext.Current.Rendering.Item;
            Sitecore.Data.Items.Item dataSourcePromotion = Sitecore.Context.Database.GetItem(dataSourceItem.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields.DataSource].Value);

            IEnumerable<Data.Items.Item> items = this.Repository.Get(dataSourcePromotion);
            PagedData<Data.Items.Item> listItems = new PagedData<Data.Items.Item>();
            listItems.Data = new List<Data.Items.Item>();
            if (items != null && items.Count() > 0)
            {
                listItems.Data = items.Take(4);
            }
            listItems.DataSourceID = dataSourceItem.ID;
            return View("LatestPromotion", listItems);
        }
    }
}