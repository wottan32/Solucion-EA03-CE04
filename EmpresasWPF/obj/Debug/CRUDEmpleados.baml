   M S B A M L   `   `   `  ����F  BEmpresasWPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:EmpresasWPFEmpresasWPF  5   	       EmpresasWPF.CRUDEmpleados   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:EmpresasWPF     5   	     � Title$  Mantenedor de Empleados��5   	   $��386.171��6)   $��514.644��6:    � WindowStartupLocation$ CenterOwner=�6J   .��5	      � .+�5
   
   �� $��Rut :��6   $
��Left=�6    $��	10,10,0,0q�6;   $	��Top=�6N   �� 5   
   $��	Nombres :��6   $
��Left=�6$   $��	10,36,0,0q�6?   $	��Top=�6R   �� 5   
   $��Apellidos :��6   $
��Left=�6&   $��	10,62,0,0q�6A   $	��Top=�6T   �� 5   
   $��	Empresa :��6   $
��Left=�6$   $��	10,88,0,0q�6?   $	��Top=�6R   �� 5   
   -   5         ��Name$ txtRut��5      $
��Left=�6"   $��23��6=   $��	80,10,0,0q�6I    �� TextWrapping$
 Wrap=�6\   $	��Top=�6p   $��72��6�   �� 5   
   -   5        $ txtDv��5      $
��Left=�6!   $��23��6<   $��
157,10,0,0q�6H   $
 Wrap=�6\   $	��Top=�6p   $��32��6�   �� 5   
   -   5        $ 
txtNombres��5      $
��Left=�6&   $��23��6A   $��	80,38,0,0q�6M   $
 Wrap=�6`   $	��Top=�6t   $	��202��6�   �� 5   
   -   5        $ txtApellidos��5      $
��Left=�6(   $��23��6C   $��	80,65,0,0q�6O   $
 Wrap=�6b   $	��Top=�6v   $	��202��6�   �� 5   
   -   5         ��Name$ 
cboEmpresa��5      $
��Left=�6'   $��	80,93,0,0q�6B   $	��Top=�6U   $	��202��6m   �� 5   
   -   5         ��Name$ 
btnAgregar��5      $��Agregar��6%   $
��Left=�67   $��
18,130,0,0q�6R   $	��Top=�6f   $��75��6~   6�   �� 5   
   -   5        $ btnConsultar��5      $��	Consultar��6'   $
��Left=�6;   $��
98,130,0,0q�6V   $	��Top=�6j   $��75��6�   6�   �� 5   
   -   5        $ btnActualizar��5      $��
Actualizar��6(   $
��Left=�6=   $��178,130,0,0q�6X   $	��Top=�6m   $��75��6�   6�   �� 5   
   -	   5        $ btnEliminar��5      $��Eliminar��6&   $
��Left=�69   $��258,130,0,0q�6T   $	��Top=�6i   $��75��6�   6�   �� 5   
   $��	Empleados��6   $
��Left=�6$   $��
18,155,0,0q�6?   $	��Top=�6S   $
��Bold"�6k   &   System.Windows.Controls.DataGrid  5   
   -
   5          Name$ gdEmpleados��5      $
��Left=�6(   $	��164��6C   $��
18,181,0,0q�6P   $	��Top=�6d   $	��479��6|   �� 5   
   $
��Left=�6   $	��100��6+   $��
397,10,0,0q�68   $	��Top=�6L   $	��100��6d   $��Images/Empleados.png��6p   5      5      