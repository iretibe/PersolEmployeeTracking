   M S B A M L   `   `   `  ����U  QPersolEmployeeTracking.WPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:PersolEmployeeTracking.WPFPersolEmployeeTracking.WPF  5   	   S.clr-namespace:PersolEmployeeTracking.WPF.Views PersolEmployeeTracking.WPF.Views  5   	   ]3clr-namespace:PersolEmployeeTracking.WPF.ViewModels%PersolEmployeeTracking.WPF.ViewModels  5   	   +    %PersolEmployeeTracking.WPF.MainWindow   5   	   W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   :local(clr-namespace:PersolEmployeeTracking.WPF     5   	   @views.clr-namespace:PersolEmployeeTracking.WPF.Views     5   	   J
viewmodels3clr-namespace:PersolEmployeeTracking.WPF.ViewModels     5   	   -   5        $��PersonalMainWindow��5
        � Title$  
MainWindow��6	   $	��540��66   $
��1200��6C    � WindowStartupLocation$ CenterScreen=�5   	   $��24(�6.   $
��Bold"�6<   
����d� � 
ResizeMode$ NoResize=�5   %   .��5      �  � ColumnDefinitions 5   
   �� 5      $��* �6   �� 5      $��4* �6    � RowDefinitions 5   
   �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      .+�5   
   �� $��
Persol.png��6   �� 5   
   $��1��6-   $��1��6=   $��8��6J   $
��Auto��6[   $��Normal"�6i   $
��Auto��6}   ��6   �� 6}   �� 5    
   -   5         ��Name$ lblWindowName��5       $��Windows Name��6'   $��1��6>   $��Center=�6N   $��
212,10,0,0q�6k   $	��Top=�6   $��24(�6�   �� 5!   
   $��1��6   $��0,2,0,0q�6"   .+�5"      �� -   5        $��btnEmployee��5"   "   $��1��6   $��60��65   $	��250��6A   $
��Left=�6M   .��5#      � $	��230��6    5$      �� 5%      $
��auto �6+   �� 5&      $
��auto �6+   .+�5(      �� -   5         ��Name$ EmployeeImage��5(      $
��Left=�63   $
��auto��6N   $��73��6\   $��0,0,0,0q�6g   $��/Employee.png��6x   �� 5)      $��Employee��6    $��1��60   $
��Left=�6@   $��Center=�6[   5*      5,      5.      �� 5/   
   $��2��6   $��0,2,0,0q�6"   .+�50      �� -   5        $��btnTask��50   "   $��2��6   $��60��61   $	��250��6=   $
��Left=�6I   .��51      � $	��230��6    52      �� 53      $
��auto �6+   �� 54      $
��auto �6+   .+�56      �� -   5        $ 	TaskImage��56      $
��Left=�6/   $
��auto��6J   $��73��6X   $��0,0,0,0q�6c   �� 57      $
��Task��6    $��1��6,   $
��Left=�6<   $��Center=�6W   58      59      5:      �� 5;   
   $��3��6   $��0,2,0,0q�6"   .+�5<      �� -   5        $��	btnSalary��5<   "   $��3��6   $��60��63   $	��250��6?   $
��Left=�6K   .��5=      � $	��230��6    5>      �� 5?      $
��auto �6+   �� 5@      $
��auto �6+   .+�5B      �� -   5        $ SalaryImage��5B      $
��Left=�61   $
��auto��6L   $��73��6Z   $��0,0,0,0q�6e   �� 5C      $��Salary��6    $��1��6.   $
��Left=�6>   $��Center=�6Y   5D      5E      5F      �� 5G   
   $��4��6   $��0,2,0,0q�6"   .+�5H      �� -	   5        $��btnPermission��5H   "   $��4��6   $��60��67   $	��250��6C   $
��Left=�6O   .��5I      � $	��230��6    5J      �� 5K      $
��auto �6+   �� 5L      $
��auto �6+   .+�5N      �� -
   5        $ PermissionImage��5N      $
��Left=�65   $
��auto��6P   $��73��6^   $��0,0,0,0q�6i   �� 5O      $��
Permission��6    $��1��62   $
��Left=�6B   $��Center=�6]   5P      5Q      5R      �� 5S   
   -   5         ��Name$ stackDepartment��5S      $��5��6.   $��0,2,0,0q�6;   .+�5T      �� -   5        $��btnDepartment��5T   "   $��5��6   $��60��67   $	��250��6C   $
��Left=�6O   .��5U      � $	��230��6    5V      �� 5W      $
��auto �6+   �� 5X      $
��auto �6+   .+�5Z      �� -   5        $ DpImage��5Z      $
��Left=�6-   $
��auto��6H   $��73��6V   $��0,0,0,0q�6a   �� 5[      $��
Department��6    $��1��62   $
��Left=�6B   $��Center=�6]   5\      5]      5^      �� 5_   
   -   5        $ stackPosition��5_      $��6��6,   $��0,2,0,0q�69   .+�5`      �� -   5        $��btnPosition��5`   "   $��6��6   $��60��65   $	��250��6A   $
��Left=�6M   .��5a      � $	��230��6    5b      �� 5c      $
��auto �6+   �� 5d      $
��auto �6+   .+�5f      �� -   5        $ PositionImage��5f      $
��Left=�63   $
��auto��6N   $��73��6\   $��0,0,0,0q�6g   �� 5g      $��Position��6    $��1��60   $
��Left=�6@   $��Center=�6[   5h      5i      5j      �� 5k   
   -   5        $ stacklogoff��5k      $��7��6*   $��0,2,0,0q�67   .+�5l      �� -   5        $��	btnLogOut��5l   "   $��7��6   $��60��63   $	��250��6?   $
��Left=�6K   .��5m      � $	��230��6    5n      �� 5o      $
��auto �6+   �� 5p      $
��auto �6+   .+�5r      �� -   5        $ LogoutImage��5r      $
��Left=�61   $
��auto��6L   $��73��6Z   $��0,0,0,0q�6e   �� 5s      $��Log Out��6    $��1��6/   $
��Left=�6?   $��Center=�6Z   5t      5u      5v      �� 5w   
   -   5        $ 	stackexit��5w      $��8��6(   $��0,2,0,0q�65   .+�5x      �� -   5        $��btnExit��5x   "   $��8��6   $��60��61   $	��250��6=   $
��Left=�6I   .��5y      � $	��230��6    5z      �� 5{      $
��auto �6+   �� 5|      $
��auto �6+   .+�5~      �� -   5        $ 	ExitImage��5~      $
��Left=�6/   $
��auto��6J   $��73��6X   $��0,0,0,0q�6c   �� 5      $
��Exit��6    $��1��6,   $
��Left=�6<   $��Center=�6W   5�      5�      5�      5�       � 	Resources 5�      	 �� DataType?   9PersolEmployeeTracking.WPF.ViewModels.DepartmentViewModel5   /PersolEmployeeTracking.WPF.Views.DepartmentList=   7PersolEmployeeTracking.WPF.ViewModels.PositionViewModel3   -PersolEmployeeTracking.WPF.Views.PositionList=   7PersolEmployeeTracking.WPF.ViewModels.EmployeeViewModel7   1PersolEmployeeTracking.WPF.Views.EmployeeListView9   3PersolEmployeeTracking.WPF.ViewModels.TaskViewModel/   )PersolEmployeeTracking.WPF.Views.TaskList;	   5PersolEmployeeTracking.WPF.ViewModels.SalaryViewModel1
   +PersolEmployeeTracking.WPF.Views.SalaryList?   9PersolEmployeeTracking.WPF.ViewModels.PermissionViewModel5   /PersolEmployeeTracking.WPF.Views.PermissionList��%t  (��       5�   3   *, +)(�� R     5�   1   *, +)(�� �     5�   1   *, +)(�� �     5�   -   *, +)(�� >    5�   /   *,	 +)(�� �    5�   3   *, +)�� 5�   
   DepartmentTemplate��"	  63   .R�5�        5�      5�      �� 5�   
   PositionTemplate��"	  61   .R�5�        5�      5�      �� 5�   
   Employeetemplate��"	  61   .R�5�        5�      5�      �� 5�   
   TaskTemplate��"	  6-   .R�5�        5�      5�      �� 5�   
   salarytemplate��"	 	 6/   .R�5�      
  5�      5�      �� 5�   
   Permissiontemplate��"	  63   .R�5�        5�      5�      5�      5�      