   M S B A M L   `   `   `  ����U  QPersolEmployeeTracking.WPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:PersolEmployeeTracking.WPFPersolEmployeeTracking.WPF  5   	   +    %PersolEmployeeTracking.WPF.SalaryPage   5   	   W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   :local(clr-namespace:PersolEmployeeTracking.WPF     5   	   -   5          � Title$  
SalaryPage��5   	   $	��450��6   
����d� � 
ResizeMode$ NoResize=�5	   %    � WindowStartupLocation$ CenterScreen=�5
   	   $��18(�6.   $
��Bold"�6<   $	��800��5   	   .��5      �  � ColumnDefinitions 5   
   �� 5      �� 5      .+�5   
   �  5      �� 5      $��2* �6#   �� 5      $��3* �6#    � RowDefinitions 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      .+�5!      �� $��UserNo��6   $��34��6%   $	��100��61   $
��Left=�6=   $��Center=�6X   �� 5"      -   5         ��Name$ 	txtUserNo��5"      ${�False��6)   $��1��6;   $��26��6K   $��0,0,0,0q�6W   �� 5#      $
��Name��6   $��34��6#   $��1��6/   $	��100��6<   $
��Left=�6H   $��Center=�6c   �� 5$      -   5        $ txtName��5$      ${�False��6'   $��1��69   $��1��6F   $��26��6V   $��0,0,0,0q�6b   �� 5%      $��Surname��6   $��34��6&   $��2��62   $	��100��6?   $
��Left=�6K   $��Center=�6f   �� 5&      -   5        $ 
txtSurname��5&      ${�False��6*   $��2��6<   $��1��6I   $��26��6Y   $��0,0,0,0q�6e   �� 5(      $��Salary��6   $��34��6%   $��3��61   $	��100��6>   $
��Left=�6J   $��Center=�6e   �� 5)      -   5        $ 	txtSalary��5)      $��3��6)    �� TextWrapping$
 Wrap=�66   $��1��6J   $��26��6Z   $��0,0,0,0q�6f   �� 5*      $
��Year��6   $��34��6#   $��4��6/   $	��100��6<   $
��Left=�6H   $��Center=�6c   �� 5+      -   5        $ txtYear��5+      $��4��6'   $��26��64   $��1��6@   $
 Wrap=�6P   $��	0,10,0,10q�6d   �� 5,      $��Month��6   $��34��6$   $��5��60   $	��100��6=   $
��Left=�6I   $��Center=�6d   �� 5-      -   5        $��cmbMonth��5-      $��1��6'   $��5��67   $��30��6D   $��0,0,0,0q�6P   �� 5/      -   5         ��Name$ btnSave��5/      $
��Save��6&   $��7��65   $��Right=�6B   $��0,0,0,0q�6^   $	��140��6o   6{   �� 50      -	   5        $ btnClose��50      $��Close��6'   $��7��67   $��1��6D   $��Center=�6T   $��0,0,0,0q�6q   $	��140��6�   6�   52      � 53   
   $��1��6    54      �� 55      $��2* �6#   �� 56      $��3* �6#    58      �� 59      $��* �6    �� 5:      $��* �6    �� 5;      $��7* �6    .+�5=      �� $��
Department��6   $
��auto��6)   $
��Left=�66   $��Center=�6Q   $��34��6l   �� 5>      -
   5        $��cmbDepartment��5>      $��1��6,   $��Center=�6<   $��30��6W   $��0,0,0,0q�6c   6t   �� 5@      $��Position��6   $��1��6'   $
��auto��64   $
��Left=�6A   $��Center=�6\   $��34��6w   �� 5A      -   5        $��cmbPosition��5A      $��1��6*   $��1��67   $��Center=�6G   $��30��6b   $��0,0,0,0q�6n   6   &   System.Windows.Controls.DataGrid  5B      -   5        $��gridEmployee��5B   e   $��2��6      AutoGenerateColumns$ False��6$   $��2��6@   $��0,0,0,0q�6T   	   Columns	 5C      0  *System.Windows.Controls.DataGridTextColumn  5D      ,  &System.Windows.Controls.DataGridColumn
   Header$
 Id��6)      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 65      
Visibility$ Hidden=�6V   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6?   �� *Id+6V     5E      $
 UserNo��6)   $ * 69    6C   �� *UserNo+  5F      $

 Name��6)   $ * 67    6A   �� *Name+  5G      $
 Surname��6)   $ * 6:    6D   �� *	Surname+  5H      $
 Salary��6)   $ * 69   $ Hidden=�6^    6C   �� *Salary+6^   5K      5L      5M      5N      