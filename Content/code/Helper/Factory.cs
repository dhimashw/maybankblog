using libHelper = Sitecore.Feature.Library.Helper;

namespace Sitecore.Feature.Content.Helper
{
    public class Factory
    {
        private static libHelper.Config libHelperCfg = new libHelper.Config();
        public static DBContext DbEntities
        {
            get
            {                
                return new DBContext(DBConstring);             
            }
        }
        private static string DBConstring = libHelperCfg.ConectionString; //Common.ConnectionString.SQL_DB;
    }
}