   M S B A M L   `   `   `  ����I  EModule_Grading, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:Module_GradingModule_Grading  5	   	       Module_Grading.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   U QMaterialDesignThemes.Wpf, Version=2.3.1.953, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   (localclr-namespace:Module_Grading  5	   	      MaterialDesignBody#���   5   	     MaterialDesignPaper#���  5   	   $��Medium"�5   	   $��14(�5   	   $X��Rpack://application:,,,/MaterialDesignThemes.Wpf;component/Resources/Roboto/#Roboto)�5   	     � Title$  
MainWindow��5   	   $	��600��6   $	��800��6)    � WindowStartupLocation$ CenterScreen=�65    � WindowState$ 	Maximized=�6Z    � WindowStyle$
 None=�6r   .��5      �  � RowDefinitions 5   
   �� 5      $	��100 �6   �� 5      $��* �6   .+�5   
   � $��0��6   
���W�.�.+�5      �  � ColumnDefinitions 5      �� 5      $
��.15* �6'   �� 5      $
��.85* �6'   .+�5       � $��0��6   $��2q�6'   .+�5!      (� .��5"      ?  9MaterialDesignThemes.Wpf.Transitions.TransitioningContent  C  =MaterialDesignThemes.Wpf.Transitions.TransitioningContentBase   OpeningEffect 6>   D  >MaterialDesignThemes.Wpf.Transitions.TransitionEffectExtension  *SlideInFromLeft+   Duration$ 0:0:1.2X�.��5#      �� $
��Auto��6$   $
��Auto��62   $��/Images/logo.png��6?   6[   5$      5%      5&      � 5(      $��1��6   .+�5)      (� $
��Left=�6   .��5*         6>     *SlideInFromRight+$ 0:0:1.2X�.��5+      �� 
������� �� Padding$ 5 5 5 5q�6;   $(��"Christian Centre School Foundation��6M   5,      5-      5.      5/      50      � 52   
   $��1��6   $	��100q�6    53      �� 54      $
��.30* �6    �� 55      $
��.70* �6    .+�58      � $��0��6    59      �� 5:      $
��.70* �6$   �� 5;      $
��.30* �6$   .+�5>      � $��0��6   .+�5?      (� .��5@         6>     *SlideInFromLeft+$ 0:0:1.2X�.��5A      �� $��WELCOME��6(   5B      5C      5D      � 5F      $��1��6   .+�5G      (� .��5H         6>     *SlideInFromRight+$ 0:0:1.2X�.��5I      �� $-��'Select from the options below to start.��6(   5J      5K      5L      5M      � 5O      $��1��6   .+�5P         66     *FadeIn+$ 0:0:1.2X�.��5Q      �� 	 �� Orientation$	 
Horizontal=�6!   $��Center=�6:   .+�5R      �� -   5        
 ��Name$
 btn_GetTemplate��5W   !   $��5q�5R   !   $	��200��5S   !   $	��150��5T   !   
�������$��16(�5V   !   ��5Y      �� 5Z   "   .+�5[   &   �� $��5q�6,   $��60��5\   ,   $��60��5]   ,   $��Images/grade_get.png��5^   ,   �� 5_   &   $��5q�60   $��Get Grade Template��5`   0   5a   #   5c      �� 5e      -   5        $
 btn_LoadTemplate��5j   !   $��5q�5e   !   $	��200��5f   !   $	��150��5g   !   
�������$��16(�5i   !   ��5l      �� 5m   "   .+�5n   &   �� $��5q�6,   $��60��5o   ,   $��60��5p   ,   $��Images/grade_load.png��5q   ,   �� 5r   &   $��5q�60   $��Load Grade Template��5s   0   5t   #   5v      5w      5x      5y      5z      5{      5|      