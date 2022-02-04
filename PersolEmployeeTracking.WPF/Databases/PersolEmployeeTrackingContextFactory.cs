using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Design;

namespace PersolEmployeeTracking.WPF.Databases
{
    internal class PersolEmployeeTrackingContextFactory : IDesignTimeDbContextFactory<PersolEmployeeTrackingContext>
    {
        public PersolEmployeeTrackingContext CreateDbContext(string[] args = null)
        {
            var options = new DbContextOptionsBuilder<PersolEmployeeTrackingContext>();

            options.UseSqlServer("Server=codelearnersoft.net;Database=PersolEmployeeTimeTrackerDB;user id=sa;password=YEso!@12;Trusted_Connection=False;MultipleActiveResultSets=true;TrustServerCertificate=True");

            return new PersolEmployeeTrackingContext(options.Options);
        }
    }
}
