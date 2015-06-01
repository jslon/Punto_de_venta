<?php        
echo "<html>\n"; 
echo "  <head>\n"; 
echo "    <title>Factura</title>\n"; 
echo "\n"; 
echo "  </head>\n"; 
echo "  <body>\n"; 
echo "	<form action = \"Pago.php\" method = \"post\" name = \"form\">\n"; 
echo "		<input type=\"checkbox\" name=\"ChkCodigoBarras\" value=\"Codigo\" checked = \"true\"> Codigo de Barras &nbsp;\n"; 
echo "		<input type=\"textbox\" name=\"TxtCodigoBarra\">\n"; 
echo "		<button type=\"submit\" name =\"BtnCodBarra\" value = \"BtnCodBarra\">Agregar a Factura</button>\n"; 
echo "		<br>\n"; 
echo "		<br>\n"; 
echo "		<textarea name=\"TxtAreaProductos\">\n"; 

			$conec = pg_connect("host=localhost  dbname=Punto_Venta user=postgres password=abc.123") or die("problemas de coneccion " . pg_last_error());
		$query = $query = "SELECT id_producto, cantidad, nombre, marca, empresa, unidad, minimo, precio 
								FROM producto
								WHERE id_producto = '$_POST[TxtCodigoBarra]';";
		$result = pg_query($conec,$query) or die('La consulta fallo: ' . pg_last_error());

			while ($row = pg_fetch_row($result))
			{ 
				echo $row[0]; 
				echo $row[1]; 
				echo $row[2]; 
				echo $row[3]; 
				echo $row[4];
				echo $row[5];
				echo $row[6];
				echo $row[7];
				$subtotal = $row[7];
		}
echo "		</textarea>\n"; 
echo "		<br>\n"; 
echo "		<br>\n"; 
echo "		\n"; 
echo "		<label>SubTotal: </label>\n"; 
echo "		<input type=\"textbox\" name=\"TxtSubTotal\" value = $subtotal> \n"; 
echo "		<br>\n"; 
echo "		\n"; 
echo "		<label>IVA: </label>\n"; 
echo "		<input type=\"textbox\" name=\"TxtInpuesto\" value = \"13%\" enabled = \"false\">\n"; 
echo "		<br>\n"; 
echo "		\n"; 
echo "		<label>Descuento: </label>\n"; 
echo "		<input type=\"textbox\" name=\"TxtDescuento\">\n"; 
echo "		<br>\n"; 
echo "		\n"; 
echo "		<label>Total: </label>\n"; 
$total = (($subtotal * (13/100)) + $subtotal);
echo "		<input type=\"textbox\" name=\"TxtTotal\" value = $total>\n"; 
echo "		<br>\n"; 
echo "		\n"; 
echo "		<label>Fecha: </label>\n"; 
$fecha = date("Y-m-d");
echo "		<input type=\"textbox\" name=\"TxtFecha\" value = $fecha >\n"; 
echo "		<br>\n"; 
echo "		\n"; 
echo "		<button type=\"submit\" name =\"BtnImprimir\" value = \"BtnImprimir\">Efectuar Pago</button> \n"; 
echo "		\n"; 
echo "    </div>\n"; 
echo "  </body>\n"; 
echo "</html>\n";


	if (isset($_POST["BtnCodBarra"])) {	
		echo 'a';
    }
    elseif (isset($_POST["BtnImprimir"])) {
        echo 'b';
    }

?>
