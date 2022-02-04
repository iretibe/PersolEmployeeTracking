using PersolEmployeeTracking.WPF.Databases;
using PersolEmployeeTracking.WPF.Utilities;
using PersolEmployeeTracking.WPF.ViewModels;
using System;
using System.Windows;
using System.Windows.Controls;

namespace PersolEmployeeTracking.WPF
{
    /// <summary>
    /// Interaction logic for PermissionPage.xaml
    /// </summary>
    public partial class PermissionPage : Window
    {
        public PermissionPage()
        {
            InitializeComponent();
        }

        TimeSpan tspermissionday = new TimeSpan();

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            txtUserNo.Text = UserStatic.UserNo.ToString();

            if (model != null && model.Id != 0)
            {
                txtUserNo.Text = model.UserNo.ToString();
                txtDayAmount.Text = model.DayAmount.ToString();
                txtExplanation.Text = model.Explanation;
                dpEnd.SelectedDate = model.EndDate;
                dpStart.SelectedDate = model.StartDate;
            }
        }

        private void dpStart_SelectedDateChanged(object sender, SelectionChangedEventArgs e)
        {
            if (dpEnd.SelectedDate != null)
            {
                tspermissionday = (TimeSpan)(dpEnd.SelectedDate - dpStart.SelectedDate);
                txtDayAmount.Text = tspermissionday.TotalDays.ToString();
            }
        }

        private void dpEnd_SelectedDateChanged(object sender, SelectionChangedEventArgs e)
        {
            if (dpStart.SelectedDate != null)
            {
                tspermissionday = (TimeSpan)(dpEnd.SelectedDate - dpStart.SelectedDate);
                txtDayAmount.Text = tspermissionday.TotalDays.ToString();
            }
        }

        PersolEmployeeTrackingContext db = new PersolEmployeeTrackingContext();

        private void btnSave_Click(object sender, RoutedEventArgs e)
        {
            if (txtDayAmount.Text.Trim() == "")
                MessageBox.Show("Please select start and end date");
            else if (Convert.ToInt32(txtDayAmount.Text) <= 0)
                MessageBox.Show("Permission day must be bigger than zero");
            else if (txtExplanation.Text.Trim() == "")
                MessageBox.Show("Please write your permission reason");
            else
            {
                if (model != null && model.Id != 0)
                {
                    Permission permission = db.Permissions.Find(model.Id);
                    permission.StartDate = dpStart.SelectedDate;
                    permission.EndDate = dpEnd.SelectedDate;
                    permission.PermissionAmount = Convert.ToInt32(txtDayAmount.Text);
                    permission.Explanation = txtExplanation.Text;
                    db.SaveChanges();
                    MessageBox.Show("Permssion was updated");
                }
                else
                {
                    Permission permission = new Permission();
                    permission.EmployeeId = UserStatic.EmployeeId;
                    permission.UserNo = UserStatic.UserNo;
                    permission.PermissionState = Definitions.PermissionStates.OnEmployee;
                    permission.StartDate = dpStart.SelectedDate;
                    permission.EndDate = dpEnd.SelectedDate;
                    permission.PermissionAmount = Convert.ToInt32(txtDayAmount.Text);
                    permission.Explanation = txtExplanation.Text;
                    db.Permissions.Add(permission);
                    db.SaveChanges();
                    MessageBox.Show("Permission was Added");
                    dpEnd.SelectedDate = DateTime.Today;
                    dpStart.SelectedDate = DateTime.Today;
                    txtExplanation.Clear();
                    txtDayAmount.Clear();
                }

            }
        }

        public PermissionDetailModel model;

        private void btnClose_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
