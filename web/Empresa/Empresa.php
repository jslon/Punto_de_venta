<?php


if ($_POST['Agregar'])
{
$conec = pg_connect("host=localhost  dbname=postgres user=postgres password=zattarra ") or die("problemas de coneccion " . pg_last_error());

$query = "INSERT INTO empresa(nombre,cedula_juridica,logo) 
Values ('$_POST[empresa_nombre]' ,'$_POST[empresa_cedula_juridica]' ,'$_POST[empresa_logo]')";
pg_query($conec,$query) or die('La consulta fallo: ' . pg_last_error());

echo "Empresa Agregada";
header('Location:./empresa.html');
}
if ($_POST['Modificar'])
{
	
	$conec = pg_connect("host=localhost  dbname=Punto_Venta user=postgres password=ECCIpsql2015 ") or die("problemas de coneccion " . pg_last_error());

$query = $query = "UPDATE empresa SET nombre = '$_POST[empresa_nombre]' , logo = '$_POST[empresa_logo]'
WHERE cedula_juridica = '$_POST[empresa_cedula_juridica]'";
pg_query($conec,$query) or die('La consulta fallo: ' . pg_last_error());

echo "Empresa Modificada";
header('Location:./empresa.html');
}

if ($_POST['Eliminar'])
{
}


?>