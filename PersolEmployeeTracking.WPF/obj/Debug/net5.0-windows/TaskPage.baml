   M S B A M L   `   `   `  ����U  QPersolEmployeeTracking.WPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:PersolEmployeeTracking.WPFPersolEmployeeTracking.WPF  5   	   )    #PersolEmployeeTracking.WPF.TaskPage   5   	   W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   :local(clr-namespace:PersolEmployeeTracking.WPF     5   	   -   5          � Title$  TaskPage��5   	   $	��540��6   
����d� � 
ResizeMode$ NoResize=�5	   %    � WindowStartupLocation$ CenterScreen=�5
   	   $��18(�6.   $
��Bold"�5   	   $	��800��6   .��5      �  � ColumnDefinitions 5   
   �� 5      �� 5      .+�5   
   �  5      �� 5      $��2* �6#   �� 5      $��3* �6#    � RowDefinitions 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      .+�5!      �� $��UserNo��6   $��34��6%   $	��100��61   $
��Left=�6=   $��Center=�6X   �� 5"      -   5         ��Name$ 	txtUserNo��5"      ${�False��6)   $��1��6;   $��26��6K   $��0,0,0,0q�6W   �� 5#      $
��Name��6   $��34��6#   $��1��6/   $	��100��6<   $
��Left=�6H   $��Center=�6c   �� 5$      -   5        $ txtName��5$      ${�False��6'   $��1��69   $��1��6F   $��26��6V   $��0,0,0,0q�6b   �� 5%      $��Surname��6   $��34��6&   $��2��62   $	��100��6?   $
��Left=�6K   $��Center=�6f   �� 5&      -   5        $ 
txtSurname��5&      ${�False��6*   $��2��6<   $��1��6I   $��26��6Y   $��0,0,0,0q�6e   �� 5(      $��Title��6   $��34��6$   $��3��60   $	��100��6=   $
��Left=�6I   $��Center=�6d   �� 5)      -   5        $ txtTitle��5)      $��3��6(    �� TextWrapping$
 Wrap=�65   $��1��6I   $��26��6Y   $��0,0,0,0q�6e   �� 5*      $��Content��6   $��34��6&   $��4��62   $	��100��6?   $
��Left=�6K   $��Center=�6f   �� 5+      -   5        $ 
txtContent��5+      $��4��6*   $��3��67   $��1��6H   $
 Wrap=�6X   $��	0,10,0,10q�6l   �� 5,      -   5         ��Name$ btnSave��5,      $
��Save��6&   $��8��65   $��Right=�6B   $��	0,10,0,15q�6^   $	��140��6q   6}   �� 5-      -   5        $ btnClose��5-      $��Close��6'   $��8��67   $��1��6D   $��Center=�6T   $��	0,10,0,15q�6q   $	��140��6�   6�   5/      � 50   
   $��1��6    51      �� 52      $��2* �6#   �� 53      $��3* �6#    55      �� 56      $��* �6    �� 57      $��* �6    �� 58      $��7* �6    .+�5:      �� $��
Department��6   $
��auto��6)   $
��Left=�66   $��Center=�6Q   $��34��6l   �� 5;      -	   5        $��cmbDepartment��5;      $��1��6,   $��Center=�6<   $��30��6W   $��0,0,0,0q�6c   6t   �� 5=      $��Position��6   $��1��6'   $
��auto��64   $
��Left=�6A   $��Center=�6\   $��34��6w   �� 5>      -
   5        $��cmbPosition��5>      $��1��6*   $��1��67   $��Center=�6G   $��30��6b   $��0,0,0,0q�6n   &   System.Windows.Controls.DataGrid  5?      -   5        $��gridEmployee��5?   e   $��2��6      AutoGenerateColumns$ False��6$   $��2��6@   $��0,0,0,0q�6T   	   Columns	 5@      0  *System.Windows.Controls.DataGridTextColumn  5A      ,  &System.Windows.Controls.DataGridColumn
   Header$
 Id��6)      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 65      
Visibility$ Hidden=�6V   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6?   �� *Id+6V     5B      $
 UserNo��6)   $ * 69    6C   �� *UserNo+  5C      $

 Name��6)   $ * 67    6A   �� *Name+  5D      $
 Surname��6)   $ * 6:    6D   �� *	Surname+5G      5H      5I      5J      