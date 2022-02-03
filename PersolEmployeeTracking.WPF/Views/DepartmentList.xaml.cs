using PersolEmployeeTracking.WPF.Databases;
using System.Collections.Generic;
using System.Linq;
using System.Windows;
using System.Windows.Controls;

namespace PersolEmployeeTracking.WPF.Views
{
    /// <summary>
    /// Interaction logic for DepartmentList.xaml
    /// </summary>
    public partial class DepartmentList : UserControl
    {
        public DepartmentList()
        {
            InitializeComponent();
            using (PersolEmployeeTrackingContext db = new PersolEmployeeTrackingContext())
            {
                List<Department> list = db.Departments.OrderBy(x => x.DepartmentName).ToList();
                gridDepartment.ItemsSource = list;
            }
        }

        private void btnAdd_Click(object sender, RoutedEventArgs e)
        {
            DepartmentPage page = new DepartmentPage();
            page.ShowDialog();
            
            using (PersolEmployeeTrackingContext db = new PersolEmployeeTrackingContext())
            {
                List<Department> list = db.Departments.OrderBy(x => x.DepartmentName).ToList();
                gridDepartment.ItemsSource = list;
            }
        }

        private void btnUpdate_Click(object sender, RoutedEventArgs e)
        {
            Department dpt = (Department)gridDepartment.SelectedItem;
            DepartmentPage page = new DepartmentPage();
            page.department = dpt;
            page.ShowDialog();
            using (PersolEmployeeTrackingContext db = new PersolEmployeeTrackingContext())
            {
                gridDepartment.ItemsSource = db.Departments.OrderBy(x => x.DepartmentName).ToList();
            }
        }

        private void btnDelete_Click(object sender, RoutedEventArgs e)
        {
            Department model = (Department)gridDepartment.SelectedItem;
            if (model != null && model.Id != 0)
            {
                if (MessageBox.Show("Are you sure to delete", "Question", MessageBoxButton.YesNo
                    , MessageBoxImage.Warning) == MessageBoxResult.Yes)
                {
                    PersolEmployeeTrackingContext db = new PersolEmployeeTrackingContext();
                    List<Position> positions = db.Positions.Where(x => x.DepartmentId == model.Id).ToList();
                    foreach (var item in positions)
                    {
                        db.Positions.Remove(item);
                    }
                    db.SaveChanges();

                    Department department = db.Departments.Find(model.Id);
                    db.Departments.Remove(department);
                    db.SaveChanges();
                    MessageBox.Show("Department was deleted");
                    gridDepartment.ItemsSource = db.Departments.ToList();
                }
            }
        }
    }
}
