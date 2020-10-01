using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Sitecore.Feature.Content.Models
{
    public class LoanDetails
    {
        public Double TotalLoan { get; set; }
        public Double TermLoans { get; set; }
        public Double LoanInterest { get; set; }
        public Double FirstPayment { get; set; }
        public Double MonthlyInstallment { get; set; }
        public Double ProvisionFees { get; set; }
        public Boolean IsCalculate { get; set; }
    }
}
