   M S B A M L   `   `   `  ����@  <Perso, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:PersonalplanungPersonalplanung  5      "    Personalplanung.PlanAnzeigen   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      /localclr-namespace:Personalplanung     5      ���#0E192A$��18(�5   M   .��5
      �   � ColumnDefinitions  5   
   �� 5      $	��150 �6   �� 5      .+�5   
   �� $
��0 50q�6   .+�5      �� -   5        $
��Home��5      
�������$��40��67   $��10q�6C   6O   �� 5      -   5        $��	Ausloggen��5      
�������$��40��6<   $��10q�6H   6T   5      � 5   
   -   5         �Name$ MainGrid��5      $��Stretch=�6!   $��1��6=   $��	0 20 30 0q�6M     5      �� 5      $	��100 �6#   �� 5      $��* �6#    � RowDefinitions 5      �� 5      $
��auto �6    �� 5      $
��auto �6    �� 5      $
��auto �6    �� 5      $
��auto �6    �� 5      $
��auto �6    �� 5       $
��auto �6    �� 5!      $
��auto �6    �� 5"      $
��auto �6    �� 5#      $
��auto �6    .+�5&      �� $��Personal Plan��6   $
��Bold"�6,   $��20(�6>   
�������$��4��6_   $��Center=�6s   &   System.Windows.Controls.DataGrid  5'      $��1��6   $��1��6$      AutoGenerateColumns .  $ �� IsSynchronizedWithCurrentItem$
 TrueY�6h   $	��250��6�   ��64   ��    Columns 5(      0  *System.Windows.Controls.DataGridTextColumn  5)      ,  &System.Windows.Controls.DataGridColumn   Header$ ID��6)   1  +System.Windows.Controls.DataGridBoundColumn   Binding 65   �� *	ID_Plan+ �� Mode$ OneWay=�  5*      $
 Jahr��6)    68   �� *Jahr+$ OneWay=�  5+      $ KW��6)    66   �� *Kalenderwoche+$ OneWay=�  5,      $ 	Wochentag��6)    6=   �� *	Wochentag+$ OneWay=�  5-      $ Termin��6)    6:   �� *Termin+$ OneWay=�	 �� StringFormat$	 
dd.MM.yyyy��5/      �� 51      $	��ID:��6   $��2��6"   
�������6/   �� 52      -   5        
 ��Name$
 DienstplanID��52   <   $��2��6R   $��1��6_   $��3q�6o   ��6   �� *	ID_Plan+$ OneWay=�6o   �� 54      $��Jahr:��6   $��3��6$   
�������61   �� 55      $��3��69   $��1��6F   $��3q�6V   ��6   �� *Jahr+$ OneWay=�6V   �� 57      $	��KW:��6   $��4��6"   
�������6/   �� 58      $��4��6B   $��1��6O   $��3q�6_   ��6   �� *Kalenderwoche+$ OneWay=�6_   �� 5:      $��
Wochentag:��6   $��5��6)   
�������66   �� 5;      $��5��6=   $��1��6J   $��3q�6Z   ��6   �� *	Wochentag+$ OneWay=�6Z   �� 5=      $��Termin:��6   $��6��6&   
�������63   �� 5>      $��6��6S   $��1��6`   $��3q�6p   ��6   �� *Termin+$	 
dd.MM.yyyy��$ OneWay=�6p   �� 5A      $��Eingeteilte Mitarbeiter:��6   $��8��68   $
��Wrap=�6E   
�������6Y   �� 5B      $��8��6   $��1��6$   $	��100��6Y   $��3q�6f   ��64   �� */Mitarbeiter+��5C      �� 5D      .R�5E      ��  �� Orientation$ 
Horizontal=�6%   .+�5F      �� ��6(   �� *ID_Mitarbeiter+�� 5G      $	�� - ��6(   �� 5H      ��6(   �� *	Vorname+�� 5I      $�� ��6(   �� 5J      ��6(   �� *
Nachname+�� 5K      $��   -   ��6(   �� 5L      ��6(   �� *Stellenbezeichnung+5M      5N      5P      5Q      5R      5T      