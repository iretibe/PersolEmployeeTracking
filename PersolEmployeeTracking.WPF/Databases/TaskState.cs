using System.Collections.Generic;

namespace PersolEmployeeTracking.WPF.Databases
{
    public partial class TaskState
    {
        public TaskState()
        {
            Tasks = new HashSet<Task>();
        }

        public int Id { get; set; }
        public string NameState { get; set; }

        public virtual ICollection<Task> Tasks { get; set; }
    }
}
