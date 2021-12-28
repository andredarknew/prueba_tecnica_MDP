<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Orders</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css" type="text/css"/>
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" type="text/css"/>
</head>
<body>
	<div class="container">
		<nav>
			<ul>
				<li><a>Orders</a></li>
				<li><a>Products</a></li>
			</ul>
		</nav>
	 	<h1 align="center">
	 		Orders
	 	</h1>
		<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modalProgramador">
		  	Create Product
		</button>
		<div class="mt-5">
			<table id="table" class="table table-striped table-bordered" style="width:100%">
		        <thead>
		            <tr>
		                <th>Nº</th>
		                <th>Consumer</th>
		                <th>Status</th>
		                <th>Date</th>
		                <th>Total</th>
		                <th>Actions</th>
		            </tr>
		        </thead>
		        <tbody>
		        </tbody>
	    	</table>		
		</div>
	</div>
	
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
	<script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
	
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.5.3/js/bootstrapValidator.min.js"></script>

	<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
	
	
<script>
	$(".btn-primary").click(function(){
		$.get("listaConsulta/"+$("#idStok1").val()+"/"+$("#idStok2").val(),function(data){
			console.log(data);
			//limpiar idTipo
			$("#idTable tbody").empty();
			$.each(data,function(index,item){
				$("#idTable").append("<tr><td>"+item.ID+"</td><td>"+
												item.Nombre+"</td><td>"+
												item.categoria.nombre+"</td><td>"+
												item.Precio+"</td><td>"+
												item.Estado+"</td><td>"+
												"<a>Edit</a>"+"</td>");
			})
		})
	})
</script>	
</body>
</html>