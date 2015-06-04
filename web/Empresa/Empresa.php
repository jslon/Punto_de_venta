<?php
if ($_POST['insertar'])
{
$conec = pg_connect("host=localhost  dbname=Punto_Venta user=postgres password=ECCIpsql2015 ") or die("problemas de coneccion " . pg_last_error());

$query = "INSERT INTO empresa(nombre,cedula_juridica,logo) 
Values ('$_POST[empresa_nombre]' ,'$_POST[empresa_cedula_juridica]' ,'$_POST[empresa_logo]')";
pg_query($conec,$query) or die('La consulta fallo: ' . pg_last_error());

echo "Empresa Agregada";
header('Location: http://localhost/Punto_de_Venta/Empresa/Empresa.html');
}
if ($_POST['modificar'])
{
	
	$conec = pg_connect("host=localhost  dbname=Punto_Venta user=postgres password=ECCIpsql2015 ") or die("problemas de coneccion " . pg_last_error());

$query = $query = "UPDATE empresa SET nombre = '$_POST[empresa_nombre]' , logo = '$_POST[empresa_logo]'
WHERE cedula_juridica = '$_POST[empresa_cedula_juridica]'";
pg_query($conec,$query) or die('La consulta fallo: ' . pg_last_error());

echo "Empresa Modificada";
header('Location: http://localhost/Punto_de_Venta/Empresa/Empresa.html');
}



?>