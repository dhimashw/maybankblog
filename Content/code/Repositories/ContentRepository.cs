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
    using Sitecore.Feature.Library.Models;
    using Sitecore.Feature.Library.Helper;
    using Sitecore.Feature.Library.Helpers;
    using System.Text;
    using System.Net.Mail;


    public class ContentRepository
    {
        public static IEnumerable<Data.Items.Item> getSitemapPageByCategory(string _category)
        {
            Item SitePage = Sitecore.Context.Database.GetItem(Sitecore.Feature.Library.Templates.CorporateSite.ID);

            IEnumerable<Item> SitePageItems = SitePage.GetChildren().Cast<Item>().ToList();

            if (_category.Contains(Sitecore.Feature.Library.Helper.Variables._itemSitemapCategoryBusiness))
            {
                SitePageItems = SitePageItems.Where(x => x.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields._SiteCategory].Value.Contains(_category));
            }
            else
            {
                SitePageItems = SitePageItems.Where(x => x.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields._SiteCategory].Value.Contains(_category))
                                             .Where(x => x.Fields[Sitecore.Feature.Library.Templates.Page.Fields.ShowInMenu].Value.ToString() == "1");
            }

            //var a = items.Select(x => x.Fields[Sitecore.Feature.Library.Templates.TreatsPointItem.Fields.Category].Value).First();

            //items = items.Where(x => x.Fields[Sitecore.Feature.Library.Templates.TreatsPointItem.Fields.Category].Value.ToLower().Contains(_category.ToLower()))
            //            .OrderByDescending(x => x.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields.Date].Value)
            //           .ThenByDescending(x => x.Created);
            return SitePageItems;
        }
        public static IEnumerable<Data.Items.Item> getChildSitemapPage(Data.ID IdParents)
        {
            Item ChildPage = Sitecore.Context.Database.GetItem(IdParents);

            IEnumerable<Item> ChildSitePage = ChildPage.GetChildren().Cast<Item>().ToList();

            ChildSitePage = ChildSitePage.Where(x => x.Fields[Sitecore.Feature.Library.Templates.Page.Fields.ShowInMenu].Value.ToString() == "1");

            //var a = items.Select(x => x.Fields[Sitecore.Feature.Library.Templates.TreatsPointItem.Fields.Category].Value).First();

            //items = items.Where(x => x.Fields[Sitecore.Feature.Library.Templates.TreatsPointItem.Fields.Category].Value.ToLower().Contains(_category.ToLower()))
            //            .OrderByDescending(x => x.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields.Date].Value)
            //           .ThenByDescending(x => x.Created);
            return ChildSitePage;
        }
        public static IEnumerable<Data.Items.Item> getListBOD(Data.ID IdParents, int itemPosition)
        {
            Item items = Sitecore.Context.Database.GetItem(IdParents);

            IEnumerable<Item> itemChild = items.GetChildren().Cast<Item>().ToList();



            itemChild = itemChild.Skip(itemPosition).Take(3);

            //var a = items.Select(x => x.Fields[Sitecore.Feature.Library.Templates.TreatsPointItem.Fields.Category].Value).First();

            //items = items.Where(x => x.Fields[Sitecore.Feature.Library.Templates.TreatsPointItem.Fields.Category].Value.ToLower().Contains(_category.ToLower()))
            //            .OrderByDescending(x => x.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields.Date].Value)
            //           .ThenByDescending(x => x.Created);
            return itemChild;
        }

        public Dictionary<string, string> GetRaceTypes()
        {
            Dictionary<string, string> dict = new Dictionary<string, string>();
            Data.ID raceListID = new Data.ID("{789EE3DD-28FA-457A-9F8F-483055D9BC06}");
            Item raceList = Sitecore.Context.Database.GetItem(raceListID);
            if(raceList != null)
            {
                foreach(Item item in raceList.Children)
                {
                    dict.Add(item.Fields["Race Name"].ToString(), item.ID.ToString());
                }
            }

            return dict;
        }

        public List<Item> GetAllParticipant()
        {
            Data.ID participantListID = new Data.ID("{C677105C-0A4B-4019-8626-169555474E7D}");
            Item participantList = Sitecore.Context.Database.GetItem(participantListID);
            return participantList.Children.ToList();
        }
    }
}