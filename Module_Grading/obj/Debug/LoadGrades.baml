   M S B A M L   `   `   `  ����U  QMahApps.Metro, Version=1.5.0.23, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls  5   	   I EModule_Grading, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:Module_GradingModule_Grading 5
   	      Module_Grading.LoadGrades   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   PControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     5   	   U QMaterialDesignThemes.Wpf, Version=2.3.1.953, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   (localclr-namespace:Module_Grading  5
   	      MaterialDesignBody#���   5   	     MaterialDesignPaper#���  5   	   $��Medium"�5   	   $��14(�5   	   $X��Rpack://application:,,,/MaterialDesignThemes.Wpf;component/Resources/Roboto/#Roboto)�5   	     � Title$  
LoadGrades��5   	   $	��600��6   $	��800��6)    � WindowStartupLocation$ CenterScreen=�65   .��5      � $��20q�6    � RowDefinitions 5   
   �� 5      $
��.20* �6   �� 5      $
��.10* �6   �� 5      $
��.50* �6   �� 5      $
��.20* �6   .+�5   
   � $��0��6   $��20q�6   .+�5      (� .��5      �� $��Select Workbook to Load��6   5      5       � 5"   
   $��1��6   .+�5#      �� $��Center=�6   .+�5$      �� -   5         ��Name$ cb_WorkBooks��5$      $
��Auto��5%      $	��250��5&      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Search Workbook��5'       �� 
IsEditable .    HintOpacity$	 .26Q�5)      5*      5+      5,      � 5.   
   $��2��6   .+�5/      &   System.Windows.Controls.DataGrid  -   5          Name$ 
dgv_Grades��5/         ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$ * 6+   	   CanUserSortColumns	 . 
   CanUserAddRows
 .     
IsReadOnly .    AutoGenerateColumns . -  'MaterialDesignThemes.Wpf.DataGridAssist   CellPadding$ 13 8 8 8q�54   '      ColumnHeaderPadding$ 8q�55   '      ClipboardCopyMode$ IncludeHeader=�56   '   57      � 59   
   $��3��6   $��20q�6   .+�5:      �� -   5         ��Name$ btn_Open��5:      $
��Auto��5;      $	��300��5<      
�������$��28(�5>      $
��OPEN��5?      5@      5A      5B      5C      