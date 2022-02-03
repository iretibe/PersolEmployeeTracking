using System.Collections.Generic;

namespace PersolEmployeeTracking.WPF.Databases
{
    public partial class PermissonState
    {
        public PermissonState()
        {
            Permissions = new HashSet<Permission>();
        }

        public int Id { get; set; }
        public string PermissionState { get; set; }

        public virtual ICollection<Permission> Permissions { get; set; }
    }
}
