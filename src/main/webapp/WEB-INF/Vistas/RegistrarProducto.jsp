<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registra Producto</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css" type="text/css"/>
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" type="text/css"/>
</head>
<body>

	<div class="container">
	<!--  <c:if test="${MENSAJE !=null}">
	<div class="alert alert-warning alert-dismissible fade show" role="alert" id="success-alert">
	  <strong>Sistema:</strong> ${MENSAJE}
	  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
	    <span aria-hidden="true">&times;</span>
	  </button>
	</div>
	</c:if>
	<c:remove var="MENSAJE"/>-->
	
		<nav>
			<ul>
				<li>Orders</li>
				<li>Products</li>
			</ul>
		</nav>
		
	 	<h1 align="center">Products</h1>
	 	
	 	<!-- Button trigger modal -->
		<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modalProgramador">
		  Create Product
		</button>
		<div class="mt-5">
			<table id="table" class="table table-striped table-bordered" style="width:100%">
		        <thead>
		            <tr>
		                <th>Nº</th>
		                <th>Name</th>
		                <th>Category</th>
		                <th>Price</th>
		                <th>Status</th>
		                <th>Actions</th>
		            </tr>
		        </thead>
		        <tbody>
				<!--  <c:forEach items="${requestScope.dataDocentes}" var="row">
		            <tr>
		                <td>${row.ID}</td>
		                <td>${row.Nombre}</td>
		                <td>${row.Categoria}</td>
		                <td>${row.Precio}</td>
		                <td>${row.Estado}</td>
		                <td><a>Edit</a></td>
		            </tr>
				</c:forEach>-->
		        </tbody>
	    	</table>		
		</div>
	
		
		<!-- Modal -->
		<div class="modal fade" id="modalProgramador" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" data-backdrop="static" data-keyboard="false">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="idTitulo">REGISTER PRODUCTS</h5>
		      </div>
		      <div class="modal-body">
		        <form id="frmProgramador" action="saveDocente" method="post" data-toggle="validator" role="form">
				  <div class="form-group">
				    <label for="exampleInputEmail1">Name</label>
				    <input type="text" class="form-control" name="Name" id="descripcion">
				  </div>
				  <div class="form-group">
				    <label for="exampleInputEmail1">Price</label>
				    <input type="text" class="form-control" name="Price" id="Sueldo">
				  </div>
				  <div class="form-group">
				    <label for="exampleInputEmail1">Category</label>
				    <select class="form-control" id="sexo" name="Category" required>
						<option value="">[Seleccione]</option>
						<c:forEach items="${requestScope.dataCategorias}" var="row">
							<option value="${row.idcategoria}">${row.nomCategoria}</option>
						</c:forEach>
					</select>
				    
				  </div>
				  <div class="modal-footer">
			        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
			        <button type="submit" class="btn btn-primary">Guardar</button>
			      </div>	
				</form>
		      </div>
		    </div>
		  </div>
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
<script type="text/javascript">    
    $(document).ready(function(){     
        $('#frmProgramador').bootstrapValidator({      
        	 fields:{
        		 Name:{
        			 	validators:{
        			 		notEmpty:{
        			 			message:'El campo del nombre es obligatorio'	
        			 		},
        			 		regexp:{
        			 			regexp:/^[a-zA-Z\s\ñ\Ñ\á\é]{2,255}$/,
        			 			message:'Campo nombre solo letras min 2 hasta max 255 letras'
        			 		}
        			 	}
        		 },           		  
        		 Price:{
     			 	validators:{
     			 		notEmpty:{
     			 			message:'El campo del precio es obligatorio'	
     			 		},
     			 		regexp:{
    			 			regexp:/^\d{3,}$/,
    			 			message:'Campo sueldo min 3 cifras'
    			 		}
     			 	}
     		 	 }  
        	 }
        });   
    });    
</script>
</body>
</html>