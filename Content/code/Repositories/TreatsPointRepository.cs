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

    [Service(typeof(ITreatsPointRepository))]
    public class TreatsPointRepository : ITreatsPointRepository
    {
        private readonly ISearchServiceRepository searchServiceRepository;

        public TreatsPointRepository(ISearchServiceRepository searchServiceRepository)
        {
            this.searchServiceRepository = searchServiceRepository;
        }

        public IEnumerable<Item> Get(Item contextItem)
        {
            if (contextItem == null)
            {
                throw new ArgumentNullException(nameof(contextItem));
            }
            if (!contextItem.IsDerived(Templates.BucketTreatsPoint.ID))
            {
                throw new ArgumentException("Item must derive from BucketTreatsPoint", nameof(contextItem));
            }

            var searchService = this.searchServiceRepository.Get(new SearchSettingsBase { Templates = new[] { Templates.TreatsPointItem.ID } });
            searchService.Settings.Root = contextItem;
            //TODO: Refactor for scalability
            var results = searchService.FindAll();
            return results.Results.Select(x => x.Item).Where(x => x != null).OrderByDescending(i => i[Templates.BaseField.Fields.Date]);
        }
        public void Add(RedeemPoint redeemPoint)
        {
            using (var db = Factory.DbEntities)
            {
                try
                {
                    ////OBSOLET
                    //db.RedeemPoint.Add(redeemPoint);
                    //db.SaveChanges();

                    redeemPoint.Insert(db);
                }
                catch (Exception ex)
                {
                    StringBuilder sb = new StringBuilder();
                    sb.AppendLine(ex.Message);
                    //lg.LogWrite(sb.ToString());
                }
            }
        }
        public int CountEmail(RedeemPoint redeemPoint)
        {
            int totalEmail = 0;
            using (var db = Factory.DbEntities)
            {
                try
                {
                    ////OBSOLET
                    //totalEmail = db.RedeemPoint.Where(x => x.Email.ToLower().Contains(redeemPoint.Email.ToLower()))
                    //                .Where(x => x.ItemId.ToLower().Contains(redeemPoint.ItemId.ToLower()))
                    //                .Where(x => x.SubmitedDate == DateTime.Today)
                    //                .Count();              

                    totalEmail = redeemPoint.Get(db).Count();
                }
                catch (Exception ex)
                {
                    StringBuilder sb = new StringBuilder();
                    sb.AppendLine(ex.Message);
                    //lg.LogWrite(sb.ToString());
                }
            }
            return totalEmail;
        }
        public EmailContent GetEmailContent(string itemId)
        {            
            Sitecore.Data.Items.Item items = Sitecore.Context.Database.GetItem(itemId);
            string _emailFrom = items.Fields[Sitecore.Feature.Library.Templates.GeneralEmail.Fields.EmailFrom].Value;
            string _subject = items.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields.Title].Value;
            string _body = items.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields.Content].Value;
            EmailContent content = new EmailContent()
            {
                Subject = _subject,
                EmailBody = _body

            };            
            return content;
        }

        public string GetUserEmailTo(string itemId)
        {
            string userEmail = string.Empty;
            Sitecore.Data.Items.Item items = Sitecore.Context.Database.GetItem(itemId);
            int countUser = 0;
            foreach (Item item in items.Children)
            {
                if (countUser < 1)
                {
                    userEmail = item.Fields[Sitecore.Feature.Library.Templates.UserEmail.Fields.Email].Value;
                }
                else
                {
                    userEmail = userEmail + ";" + item.Fields[Sitecore.Feature.Library.Templates.UserEmail.Fields.Email].Value;
                }
                countUser++;
            }            

            return userEmail;
        }
        public bool SubmitData(RedeemPoint redeemPoint, int MaxSubmit)
        {

            int countEmail = CountEmail(redeemPoint);

            if (countEmail >= MaxSubmit)
            {
                return false;
            }
            else
            {
                //methodsendEmail
                Sitecore.Data.Items.Item items = Sitecore.Context.Database.GetItem(redeemPoint.ItemId);

                EmailContent EmailToCustomer = GetEmailContent(Sitecore.Feature.Library.Helper.Variables._emailTemplatetoCustomer); //Email Template Redeem Point To Customer
                EmailToCustomer.EmailBody = EmailToCustomer.EmailBody.Replace("[CustomerName]", redeemPoint.Fullname);
                EmailToCustomer.EmailBody = EmailToCustomer.EmailBody.Replace("[ItemName]", redeemPoint.ItemName);
                EmailToCustomer.EmailBody = EmailToCustomer.EmailBody.Replace("[Points]", items.Fields[Sitecore.Feature.Library.Templates.TreatsPointItem.Fields.Price].Value);
                LibraryHelpers.SendEmail(redeemPoint.Email, EmailToCustomer.EmailFrom,EmailToCustomer.Subject, EmailToCustomer.EmailBody); //Get Email To Customer

                EmailContent EmailToCustomerCare = GetEmailContent(Sitecore.Feature.Library.Helper.Variables._emailTemplatetoCustomerCare); //Email Template Redeem Point To Customer Care                
                EmailToCustomerCare.EmailBody = EmailToCustomerCare.EmailBody.Replace("[ItemName]", redeemPoint.ItemName);
                EmailToCustomerCare.EmailBody = EmailToCustomerCare.EmailBody.Replace("[Points]", items.Fields[Sitecore.Feature.Library.Templates.TreatsPointItem.Fields.Price].Value);
                EmailToCustomerCare.EmailBody = EmailToCustomerCare.EmailBody.Replace("[CustomerName]", redeemPoint.Fullname);
                EmailToCustomerCare.EmailBody = EmailToCustomerCare.EmailBody.Replace("[CCNumber]", redeemPoint.CreditCardNumber);
                EmailToCustomerCare.EmailBody = EmailToCustomerCare.EmailBody.Replace("[PhoneNumber]", redeemPoint.MobileNumber);
                EmailToCustomerCare.EmailBody = EmailToCustomerCare.EmailBody.Replace("[Email]", redeemPoint.Email);      
                LibraryHelpers.SendEmail(GetUserEmailTo(Sitecore.Feature.Library.Helper.Variables._emailCustomerCareTreatsPoint), EmailToCustomerCare.EmailFrom,EmailToCustomerCare.Subject, EmailToCustomerCare.EmailBody); //Get Customer Care Email
                Add(redeemPoint);
                return true;
            }
        }

        public string GetItemName(string ItemId)
        {
            Sitecore.Data.Items.Item items = Sitecore.Context.Database.GetItem(ItemId);
            return items.Name.ToString();
        }
    }
}