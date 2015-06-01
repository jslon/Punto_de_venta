<?php
include ("Factura.php");
	if (isset($_POST["BtnCodBarra"])) {	
		echo 'a';
    }
    elseif (isset($_POST["BtnImprimir"])) {
        $conec = pg_connect("host=localhost  dbname=Punto_Venta user=postgres password=abc.123 ") or die("problemas de coneccion " . pg_last_error());
		$query = "INSERT INTO factura_venta(sub_total, total, fecha, descuento, empresa)
				VALUES ($sub_total, $total, $fecha, 0, 1);";
		$resultado = pg_query($conec,$query) or die('La consulta fallo: ' . pg_last_error());

	echo"Exito";
	}
	else
	{
	echo"error";
	}

?>
