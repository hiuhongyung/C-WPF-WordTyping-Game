   M S B A M L   `   `   `  ����K  GIERG3080_Project, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:IERG3080_ProjectIERG3080_Project  5   	   !    IERG3080_Project.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:IERG3080_Project     5   	   b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Title$  Typing Game��5	   	   $
��1200��6   $
��1000��6+    � 	Resources 5
       �� 
TargetType �� Property �� Value �� 
TargetType ��Name �� CornerRadius ��Name	 J� Opacity

 � Tag ��Name ��Name �� Triggers :� RoutedEvent �� TargetProperty g� AutoReverse W� From	 W� To g� Duration W� EasingFunction.  (System.Windows.Media.Animation.CubicEase P� Property P� Value �� 
TargetName �� ElementName��%p  '��       �� 5   
   " ��6   .�5      ��  � �� 5      �� 5      " ��6&   .R�5      �� $ border��6!   $ 5��61   #��z��6B   #��z��6l   ._�5      � $
��10,0q�6#   .+�5   "   �� $ 	watermark��6,   $��Center=�6?   $y�	Collapsed=�6Z   #��z��6q   $		 0.4Q�6�   #��z
 6�   �� 5   "   $ PART_ContentHost��6/   $��Center=�6I   �� 5   "   $
 rect��6,   
������ $��2��6M   $��Bottom=�6X   $��Stretch=�6s   $	��0,3q�6�   5      5       5      :� 5      $ UIElement.GotFocus��6+   .[�5   "   �� .��5   &   �� .��5   *   W� $ Width�6:    . $	 250X�6o   $	 255X�6z   $ 0:0:0.15D�6�    5   .     5   2   5   +   W� 5   *   $ Height�6:    . $ 40X�6p   $ 45X�6z   $ 0:0:0.15D�6�    5    .     5!   2   5#   +   5$   '   5%   #   5&      P� 5'       �@J�	IsFocused . . �5(   "   �� $
 rect��6)    6K   �� *BorderBrush+$ border�� � ��5)      P� 5*       � ��$  ��66   . �5+   "   �� $ 	watermark��6)    � y�$ Visible=�6V   5,      5.      50      51      52      .��54      �� ��55   
   �� 56       �� ImageSource$" /images/Background_image.png��6   .+�58   
   �� -   5        $ Countdown_Timer��58      $
��Wrap=�6.   $��Time:��6B   $��34(�6O   $��	ExtraBold"�6]    �� Left$ 10��6t   
 �� Top$ 25��6�   $��40��6�   $	��160��6�   $��Segoe UI Black)�6�   �� 5:   
   -   5        $ lbword��5:      $��28(�6$   $��	UltraBold"�62   $
��Left=�6I   $
��Wrap=�6d   $	��Top=�6�   $��67��6�   $	��217��6�    �� TextAlignment$ Center=�6�    �� 
LineHeight$ 36��6�   $	 188��6
  $	 327��6  ���	#FF927C7C��6x   �� *StatusBarText+ �� NotifyOnTargetUpdated . 6-  �� 5;   
   -   5         ��Name$ textBox1��5;      $
��Left=�6$   $��28(�6Q   $��	UltraBold"�6_   $��67��6v     �� TextWrapping$
  Wrap=�6�   $	��Top=�6�   $	��258��6�   $��Yu Gothic UI Semibold)�6�   ! �� TextAlignment$! Center=�6�   $	 507��6�   $	 327��6  ���#247BA0���#247BA0���#F3FFBD6C  �� 5<   
   -   5        $ lbright��5<      $��28(�6&   $��	UltraBold"�64   $
��Left=�6K   $
��Wrap=�6f   $��
Correct: 0��6z   $	��Top=�6�   $��67��6�   $	��217��6�   $ Center=�6�   $ 36��6�   $	 188��6�   $	 626��6�   ���	#FF927C7C6  �� 5=   
   -   5        $ lbwrong��5=      $��28(�6&   $��	UltraBold"�64   $
��Left=�6K   $
��Wrap=�6f   $��Incorrect: 0��6z   $	��Top=�6�   $��67��6�   $	��217��6�   $ Center=�6�   $ 36��6�   $	 527��6�   $	 626��6�   ���	#FF927C7C6  '  !MaterialDesignThemes.Wpf.PopupBox  5>   
   -   5        $��MyPopup��5>   "   $��PopupBox��62   "   PopupContent." 5?        $��PopupBox��6'   $	��100��6:   $	��100��6G   5@      � 5A   
   -   5        $��popup1��5A      # � VerticalOffset$# 20��6   $ � PlacementRectangle$$ 300,140,100,150�62   $
��Fade=�5B      $��300,100,100,10q�6&   $��Mouse=�6>   ��.  .��5D      � 
��� ���$	��800��6'   $	��600��63   .+�5E      �� -   5        $��	Aftergame��5E      $�� ��6)   $��28(�64   $��	UltraBold"�6B   6[   5F      5J      5K      5L      