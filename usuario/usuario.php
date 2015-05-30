<?php
	include("conexion.php");
	
	$id_empresa = '1';
	
	if ($_POST['agregar'])
	{
	
	if(isset($_POST['nombre']) && !empty($_POST['nombre']) && isset($_POST['pw']) && !empty($_POST['pw']) && isset($_POST['apellido1']) && !empty($_POST['apellido1']) &&
			($_POST['identificacion']) && !empty($_POST['identificacion']) && ($_POST['usuario']) && !empty($_POST['usuario']) && ($_POST['pw2']) && !empty($_POST['pw2'])){
			
			if( $_POST['pw'] == $_POST['pw2']){
				$con = pg_connect("host=localhost  dbname=Punto_Venta user=postgres password=aguilarsql ") or die("problemas de coneccion " . pg_last_error()); 
				$dat = "INSERT INTO usuario(  id_usuario,nombre,apellido1, apellido2,password, usuario , rol, empresa )
						VALUES ( '$_POST[identificacion]' , '$_POST[nombre]' , '$_POST[apellido1]', '$_POST[apellido2]', '$_POST[pw]', '$_POST[usuario]', '$_POST[rol]', $id_empresa);";;//falta el INSERT
				$result = pg_query($con,$dat) or die('La consulta fallo: ' . pg_last_error());
				echo "Usuario Agregado";
			
			}
			else{
				echo "Las contrase&ntilde;a no coinsiden";
			}
		}
		else{
			echo "problemas al insertar datos"; 
		}
		header('Location:./usuario.html');
	}
	if ($_POST['modificar'])
	{
		
		$con = pg_connect("host=localhost  dbname=Punto_Venta user=postgres password=aguilarsql ") or die("problemas de coneccion " . pg_last_error()); 

		$query = $query = "UPDATE usuario SET nombre = '$_POST[nombre]' , id_usuario = '$_POST[identificacion]', apellido1 = '$_POST[apellido1]', apellido2 = '$_POST[apellido2]', password = '$_POST[pw]', usuario = '$_POST[usuario]' , rol = $_POST[rol]
		WHERE id_usuario = '$_POST[identificacion]' AND empresa = '".$id_empresa."'";
		pg_query($con,$query) or die('La consulta fallo: ' . pg_last_error());

		echo "Producto Modificado";
		header('Location:./usuario.html');
	}

	
?>




