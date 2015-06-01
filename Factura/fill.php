<html>

<body>

		<select name = "cbtest">
<?php
	$conec = pg_connect("host=localhost  dbname=Punto_Venta user=postgres password=ECCIpsql2015 ") or die("problemas de coneccion " . pg_last_error());
	$query = $query = "SELECT id_rol, nombre
					FROM rol";
	
	$result = pg_query($conec,$query) or die('La consulta fallo: ' . pg_last_error());
	while ($row = pg_fetch_row($result))
	{
	?>
		<option value="<?php echo $row[0]; ?>"><?php echo $row[1]; ?></option>
	<?php
	}
	?>
	</select>
</body>
</html>
