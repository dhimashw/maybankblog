using Sitecore.Feature.Content.Models;
using System.Data.Entity;
using System.Data.Entity.ModelConfiguration.Conventions;
namespace Sitecore.Feature.Content.Helper
{
    public class DBContext : DbContext
    {
        public DBContext()
           : base("name=SITECORE_MAYBANK")
        {

        }
        public DBContext(string constring)
            : base(constring)
        {

        }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Conventions.Remove<PluralizingTableNameConvention>();
            Database.SetInitializer<DBContext>(null);
        }

        public DbSet<BlogComment> BlogComment { get; set; }        
    }
}