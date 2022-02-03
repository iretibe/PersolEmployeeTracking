using PersolEmployeeTracking.WPF.Databases;
using System.Windows;

namespace PersolEmployeeTracking.WPF
{
    /// <summary>
    /// Interaction logic for DepartmentPage.xaml
    /// </summary>
    public partial class DepartmentPage : Window
    {
        public DepartmentPage()
        {
            InitializeComponent();
        }

        private void btnClose_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        public Department department;

        private void btnSave_Click(object sender, RoutedEventArgs e)
        {
            if (txtDepartmentName.Text.Trim() == "")
                MessageBox.Show("Please fill the Department Name area");
            else
            {
                using (PersolEmployeeTrackingContext db = new PersolEmployeeTrackingContext())
                {
                    if (department != null && department.Id != 0)
                    {
                        Department update = new Department();
                        update.DepartmentName = txtDepartmentName.Text;
                        update.Id = department.Id;
                        db.Departments.Update(update);
                        db.SaveChanges();
                        MessageBox.Show("Update was succesful");
                    }
                    else
                    {
                        Department dpt = new Department();
                        dpt.DepartmentName = txtDepartmentName.Text;
                        db.Departments.Add(dpt);
                        db.SaveChanges();
                        txtDepartmentName.Clear();
                        MessageBox.Show("Department was Added");
                    }
                }
            }
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            if (department != null && department.Id != 0)
            {
                txtDepartmentName.Text = department.DepartmentName;
            }
        }
    }
}
