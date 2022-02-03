using System.Collections.Generic;

namespace PersolEmployeeTracking.WPF.Databases
{
    public partial class Department
    {
        public Department()
        {
            Employees = new HashSet<Employee>();
            Positions = new HashSet<Position>();
        }

        public static Department Find { get; internal set; }
        public int Id { get; set; }
        public string DepartmentName { get; set; }

        public virtual ICollection<Employee> Employees { get; set; }
        public virtual ICollection<Position> Positions { get; set; }
    }
}
