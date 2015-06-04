<?php
if ($_POST['insertar'])
{
$conec = pg_connect("host=localhost  dbname=Punto_Venta user=postgres password=ECCIpsql2015 ") or die("problemas de coneccion " . pg_last_error());

$query = "INSERT INTO proveedor(nombre,cedula_juridica,nombre_contacto,telefono_contacto,empresa) 
Values ('$_POST[nombre]' ,'$_POST[cedula juridica]' ,'$_POST[nombre contacto]' ,'$_POST[telefono contacto]' ,'1')";
pg_query($conec,$query) or die('La consulta fallo: ' . pg_last_error());

echo "Proveedor Agregado";
header('Location: http://localhost/Punto_de_Venta/Producto/Distribuidor.html');
}
if ($_POST['modificar'])
{
	
	$conec = pg_connect("host=localhost  dbname=Punto_Venta user=postgres password=ECCIpsql2015 ") or die("problemas de coneccion " . pg_last_error());

$query = $query = "UPDATE proveedor SET nombre = '$_POST[nombre]' , nombre_contacto = '$_POST[nombre contacto]' , telefono_contacto = '$_POST[telefono contacto]' 
WHERE cedula_juridica = '$_POST[cedula juridica]'";
pg_query($conec,$query) or die('La consulta fallo: ' . pg_last_error());

echo "Proveedor Modificado";
header('Location: http://localhost/Punto_de_Venta/Producto/Distribuidor.html');
}

if ($_POST['buscar'])
{
	
	$conec = pg_connect("host=localhost  dbname=Punto_Venta user=postgres password=ECCIpsql2015 ") or die("problemas de coneccion " . pg_last_error());

$query = $query = "SELECT nombre, cedula_juridica, nombre_contacto, telefono_contacto
					FROM proveedor
					WHERE cedula_juridica = '$_POST[cedula juridica]'";
$result = pg_query($conec,$query) or die('La consulta fallo: ' . pg_last_error());

	while ($row = pg_fetch_row($result))
	{
		echo "<html>";
			echo "	<body>";

			echo '<form action = "Distribuidor.php" method = "post" name = "form">';
			echo 'Cedula Juridica:   <input type = "text" name = "cedula juridica" value = '.$row[1].'>';
			echo '<input type = "submit" name = "buscar" value = "Buscar Proveedor"></br>';
			echo 'Nombre:   <input type = "text" name = "nombre" value = '.$row[0].'>';
			echo 'Nombre Contacto:   <input type = "text" name = "nombre contacto" value = '.$row[2].'>';
			echo 'Telefono Contacto:   <input type = "text" name = "telefono contacto" value = '.$row[3].'>';
			echo '<input type = "submit" name = "insertar" value = "Insertar Proveedor">';
			echo '<input type = "submit" name = "modificar" value = "Modificar Proveedor">';
			echo '</form>';
		echo '</body>';
		echo '</html>';
	}
}



?>