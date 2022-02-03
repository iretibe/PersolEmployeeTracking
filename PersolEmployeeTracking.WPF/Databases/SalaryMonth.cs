using System.Collections.Generic;

namespace PersolEmployeeTracking.WPF.Databases
{
    public partial class SalaryMonth
    {
        public SalaryMonth()
        {
            Salaries = new HashSet<Salary>();
        }

        public int Id { get; set; }
        public string MonthName { get; set; }

        public virtual ICollection<Salary> Salaries { get; set; }
    }
}
