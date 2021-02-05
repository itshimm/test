<!DOCTYPE html>
<html lang="RU-ru">
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script type="text/javascript" src="/js/jquery-3.5.1.min.js"></script>
    <script type="text/javascript">
    	$(function() {
    		$('button').click(function() {
    			var hidef = $(this).parent();
    			$(hidef).parent().fadeOut(200);
    		});
		});
    </script>
<style>
	table{
		border: 3px solid black;
	}
	th{
		background-color: lightgray;
		border: 2px solid black;
	}
	td{
		border: 1px solid black;
	}
</style>
</head>
<body>
<table >
 <tr>
  <th>PRODUCT_ID</th>
  <th>PRODUCT_NAME</th>
  <th>PRODUCT_PRICE</th>
  <th>PRODUCT_ARTICLE</th>
  <th>PRODUCT_QUANTITY</th>
  <th>DATE_CREATE</th>
  <th>СКРЫТЬ</th>
 </tr>
<?php
		$link = mysqli_connect ('localhost','admin','admin','test_project');
		$result = mysqli_query ($link, "SELECT * FROM products ORDER BY DATE_CREATE desc LIMIT 5;");
		$var = mysqli_fetch_assoc ($result);
		$res = array ();
			for ($i = 0; $var != false; $i++) {
				$res[$i] = $var;
				$var = mysqli_fetch_assoc ($result);
			}
			mysqli_close ($link);
			$varnum = mysqli_num_rows ($result);
			for ($i = 0; $i < $varnum; $i++) {
				echo "<tr><td>".$res[$i][PRODUCT_ID].
			      "</td><td>".$res[$i][PRODUCT_NAME].
			      "</td><td>".$res[$i][PRODUCT_PRICE]." рублей".
			      "</td><td>".$res[$i][PRODUCT_ARTICLE].
			      "</td><td>".$res[$i][PRODUCT_QUANTITY].
			      "</td><td>".$res[$i][DATE_CREATE].
			      "</td><td><button>Скрыть</button></td></tr>";
			}

?>
</table>
</body>
</html>