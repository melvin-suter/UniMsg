   M S B A M L   `   `   `  ���� A  =UniMsg, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:UniMsgUniMsg  V RCefSharp.Wpf, Version=87.1.132.0, Culture=neutral, PublicKeyToken=40c4b6fc221f4138A0clr-namespace:CefSharp.Wpf;assembly=CefSharp.WpfCefSharp.Wpf     UniMsg.MainWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     &localclr-namespace:UniMsg     @wpf0clr-namespace:CefSharp.Wpf;assembly=CefSharp.Wpf       � WindowStyle$
  none=�
������  � AllowsTransparency .  � 
ResizeMode$ 	CanResize=����#222 � Title$ UniMsg��$	��450��$	��800�� � 	Resources    style_default �� 
TargetType �� Property �� Value �� BasedOn  style_defaultButton	 �� 
TargetType
 ��Name J� SnapsToDevicePixels ��Name �� Triggers P� Property P� Value �� 
TargetName  style_listButton  style_listText�� %�  &	        '�� &     7   &	 Q     7   '�� m    7  '� |    &	 �    7  &	 �    �� " ��.���  � �� �#444�� " ��8   .���  � �� �#444�� " ��8   .���  � ��
 ���� ��  � �� �#FFF��  � ��$	 5,5q���  � ��
 ���� ��  � �� �� "	 ��.R��� $
 border��#��z��#��z��#��z�� . ._��� $ contentPresenter��|�.  #��z��#��z����. # z #��z�� P�  �@��IsDefaulted . . ��� $ border��# � �� � ��P�  �@J�IsMouseOver . . ��� $ border�� � �� �#AAAP�  � �� . . ��� $ border�� � �� �#AAAP�  � {� .  . ��� $ contentPresenter�� � �� �#CCC�� " ��8   �� " ��� " ��8   .���  � ��
 ���� ��  � ��
 ���� ��  � ��$ 0q���  � �� �#FFF��  � ��$ 0q���  � ��$ 2q���  � ��$ Stretch=���  � ��$ Stretch=���  � �� �� "	 ��.R��� $
 border��#��z��#��z��#��z�� . ._��� $ contentPresenter��|�.  #��z��#��z����. # z #��z�� P�  �@��IsDefaulted . . ��� $ border��# � �� � ��P�  �@J�IsMouseOver . . ��� $ border�� � ��
 ���� P�  � �� . . ��� $ border�� � ��
 ���� P�  � {� .  . ��� $ contentPresenter�� � �� �#CCC�� " ��.���  � ��$
 Left=���  � ��$ 5,0,0,0q���  � ��$ Center=���  � �� �#FFF��  � ��$
 24px(�.���� ���� " ��.���  � ��$ 0q� �� Triggers ��  �� Binding ��  �� RelativeSource ��  �� AncestorType   UniMsg.MainWindow"   �� Path$ WindowState� �� Value 	Maximized.a���  � �� �� %  System.Windows.SystemParameters"   WindowResizeBorderThickness �� Source# Z ._�� .+�� -    �Name$ loadGrid�� K� ZIndex$ 10��$��Stretch=�$��Stretch=����#222.+��� $��Center=�$��Center=�#��[ $��
Loading...��� -   $ appGrid��$ 5�� � RowDefinitions �� $
��30px ��� .+��� -   ���#444$��0,0,0,1q�$��Stretch=�$��Stretch=����#222._��  � ColumnDefinitions �� �� $
��Auto �.+��� $��UniMsg�����#FFF$��Center=�$
��10,0q�$
��14px(���  �� Orientation$ 
Horizontal=�$��Right=�$��1��.+��� -   .���� $.��(/UniMsg;component/Resources/minimize.png���� -   .���� $.��(/UniMsg;component/Resources/maximize.png���� -   .���� $+��%/UniMsg;component/Resources/close.png��� $��1�� �� $��200px ��� .+��� $��0,0,1,0q����#444._��� .+��� -   #��[ ���#25D366.��� $��Stretch=� �� $
��30px ��� �� $
��30px �.+��� $.��(/UniMsg;component/Resources/whatsapp.png�� �� BitmapScalingMode$ HighQuality=�$
��25px���� #��[ $��1��$��WhatsApp���� -   $��2��.���� $-��'/UniMsg;component/Resources/refresh.png��$ HighQuality=��� -	   #��[ .��� $��Stretch=� �� $
��30px ��� �� $
��30px �.+��� $-��'/UniMsg;component/Resources/threema.png��$ HighQuality=�$
��25px���� #��[ $��1��$��Threema���� -
   $��2��.���� $-��'/UniMsg;component/Resources/refresh.png��$ HighQuality=��� -   #��[ ���#20A0E1.��� $��Stretch=� �� $
��30px ��� �� $
��30px �.+��� $.��(/UniMsg;component/Resources/telegram.png��$ HighQuality=�$
��25px���� #��[ $��1��$��Telegram���� -   $��2��.���� $-��'/UniMsg;component/Resources/refresh.png��$ HighQuality=��� -   #��[ ���#4A154B.��� $��Stretch=� �� $
��30px ��� �� $
��30px �.+��� $+��%/UniMsg;component/Resources/slack.png��$ HighQuality=�$
��25px���� #��[ $��1��$��Slack���� -   $��2��.���� $-��'/UniMsg;component/Resources/refresh.png��$ HighQuality=��� -   #��[ ���#4C53BB.��� $��Stretch=� �� $
��30px ��� �� $
��30px �.+��� $-��'/UniMsg;component/Resources/msteams.png��$ HighQuality=�$
��24px���� #��[ $��1��$��Teams���� -   $��2��.���� $-��'/UniMsg;component/Resources/refresh.png��$ HighQuality=�� $��1��.+�%  CefSharp.Wpf.ChromiumWebBrowser  -     Name$ browser_whatsapp��  -   $ browser_threema��  -   $ browser_telegram��  -   $ browser_slack��  -   $ browser_msteams��