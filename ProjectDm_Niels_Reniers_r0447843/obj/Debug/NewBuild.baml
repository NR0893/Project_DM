   M S B A M L   `   `   `  ����[  WProjectDm_Niels_Reniers_r0447843, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullS.clr-namespace:ProjectDm_Niels_Reniers_r0447843 ProjectDm_Niels_Reniers_r0447843  5   	   /    )ProjectDm_Niels_Reniers_r0447843.NewBuild   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   @local.clr-namespace:ProjectDm_Niels_Reniers_r0447843     5   	   _ [MaterialDesignThemes.Wpf, Version=4.3.0.3, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   -   5           MaterialDesignBody#���   5	   	   $��Regular"�5
   	   $��13(�5   	   &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	    � Title$ NewBuild��5   	   $	��450��6   $	��800��6'   .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      .+�5      �� $��0��6   $��Nieuwe Build��6$   $
��auto��6:   .��5      �  � ColumnDefinitions 5      �� 5      �� 5      �� 5      �� 5      .+�5      �� -   5         ��Name$ cmbUsers��5      $��0��6-   $��5q�6>   )  #MaterialDesignThemes.Wpf.HintAssist   
HelperText$
 User��6I   $��Center=�6u   �� 5       -   5        $ cmbGameMode��5       $��1��60   $��5q�6A   $ 	Game Mode��6L   $��Center=�6}   .@�5!      �� .��6#   Joust5#      �� 5$      .��6#   
Conquest5&      �� 5'      .��6#   Siege5)      �� 5*      .��6#   Arena5,      �� 5-      .��6#   Clash5/      50      �� 51      -   5         ��Name$ txtBuildName��51      $��2��60   $��5q�6A      Hint$ 
Build Name��52       % !MaterialDesignFloatingHintTextBox#��[ 53      $��Center=�54      �� 55      -   5        	 ��Name$	 lblDate��55      $��3��6)   $��5q�69   57      58      �� 59   
   $��1��6   $
��Gods��6    .��5:      �  5;      �� 5<      �� 5=      $
��auto �6'    5?      �� 5@      �� 5A      $
��auto �6$   .+�5D      &   System.Windows.Controls.DataGrid  -   5        
  Name$
 datagridGods��5D         AutoGenerateColumns .  $��5q�6M   $��0��5E      $��0��6      
IsReadOnly .    Columns 5G      0  *System.Windows.Controls.DataGridTextColumn  5H      ,  &System.Windows.Controls.DataGridColumn   Header$	 God��6I   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6-   �� *	godName+6I     5I      $ Title��6G    6-   �� *title+6G     5J      $ Pantheon��6J    6-   �� *
pantheon+6J     5K      $
 Role��6I    6-   �� *	godRole+6I     5L      $ 
Power Type��6K    6-   �� *	powerType+6K     5M      $ Attack Type��6L    6-   �� *
attackType+6L   5O      �� 5P      -   5         ��Name$ 	btnCreate��5P      $��0��6,   $��1��6<   $��Create Build��6I   $��5q�6`   6k   5Q      5R      5S      5T      