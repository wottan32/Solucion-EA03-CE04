   M S B A M L   `   `   `  ����F  BEmpresasWPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:EmpresasWPFEmpresasWPF  5   	       EmpresasWPF.CRUDEmpresas   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:EmpresasWPF     5   	     � Title$  Mantenedor de Empresas��5   	   $��313.808��6(   $��512.134��69    � WindowStartupLocation$ CenterOwner=�6I   .��5	      � .+�5
   
   �� $��Rut :��6   $
��Left=�6    $��	10,10,0,0q�6;   $	��Top=�6N   �� 5   
   -   5         ��Name$ txtRut��5      $
��Left=�6"   $��23��6=   $��
104,10,0,0q�6I    �� TextWrapping$
 Wrap=�6]   $	��Top=�6q   $��67��6�   �� 5   
   $��Razón Social :��6   $
��Left=�6)   $��	10,41,0,0q�6D   $	��Top=�6W   �� 5   
   -   5        $ txtDv��5      $
��Left=�6!   $��23��6<   $��
176,10,0,0q�6H   $
 Wrap=�6\   $	��Top=�6p   $��23��6�   �� 5   
   -   5        $ txtRazonSocial��5      $
��Left=�6*   $��23��6E   $��
104,41,0,0q�6Q   $
 Wrap=�6e   $	��Top=�6y   $	��120��6�   �� 5   
   -   5         ��Name$ 
btnAgregar��5      $��Agregar��6%   $
��Left=�67   $	��Top=�6R   $��75��6j   $��	10,72,0,0q�6u   6�   �� 5   
   -   5        $ btnConsultar��5      $��	Consultar��6'   $
��Left=�6;   $	��Top=�6V   $��75��6n   $��	90,72,0,0q�6y   6�   �� 5   
   -   5        $ btnActualizar��5      $��
Actualizar��6(   $
��Left=�6=   $	��Top=�6X   $��75��6p   $��
170,72,0,0q�6{   6�   �� 5   
   -   5        $ btnEliminar��5      $��Eliminar��6&   $
��Left=�69   $	��Top=�6T   $��75��6l   $��
250,72,0,0q�6w   6�   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ 
gdEmpresas��5      $
��Left=�6'   $	��150��6B   $	��Top=�6O   $	��484��6g   $��
10,123,0,0q�6s   �� 5   
   $��Empresas��6   $
��Left=�6#   $��7,98,0,0q�6>   $	��Top=�6P   $
��Bold"�6h   �� 5   
   $
��Left=�6   $	��100��6+   $	��Top=�68   $	��100��6P   $��
394,10,0,0q�6\   $��Images/Empresas.png��6p   5      5      