<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Data Entry App</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

<script type="text/javascript">
	function dataValidation() {
		//Here Basic Validation will be performed for each entry. Length, Size, Format validation.
	}
</script>
</head>

<body>
	<div class="container-fluid w-75 m-5">

		<div class="form-row">
			<div class="form-row col-md-6">
				<h1>
					DATA ENTRY APP <span class="badge badge-secondary">IM</span>
				</h1>
			</div>
			<div class="form-row col-md-6">
				<h1>
					Welcome !
					<%
					request.getAttribute("UserName");
				%>
				</h1>
			</div>

		</div>
		<hr style="background-color: aqua;">
		<form method="post" action="dataEntry"
			onsubmit="return dataValidation();">
			<div class="form-row p-1">
				<div class="form-group col-md-4">
					<label for="sku">SKU</label> <input type="text"
						class="form-control" id="sku" name="sku" placeholder="SKU">
				</div>
				<div class="form-group col-md-4">
					<label for="productName">Product Name</label> <input type="text"
						class="form-control" id="productName" name="productName"
						placeholder="Product Name">
				</div>
				<div class="form-group col-md-4">
					<label for="productIdType">Product ID Type</label> <select
						id="productIdType" name="productIdType" class="form-control">
						<option selected>Choose...</option>
						<option value="UPC">UPC</option>
						<option value="GTIN">GTIN</option>
						<option value="ISBN">ISBN</option>
						<option value="EAN">EAN</option>
					</select>
				</div>
			</div>
			<div class="form-row p-1">
				<div class="form-group col-md-4">
					<label for="productId">Product ID</label> <input type="text"
						class="form-control" id="productId" name="productId"
						placeholder="Product ID">
				</div>
				<div class="input-group col-md-8">
					<div class="input-group-prepend">
						<span class="input-group-text">Description</span>
					</div>
					<textarea class="form-control" aria-label="With textarea"
						name="shortDescription" id="shortDescription"
						placeholder="Short Description"></textarea>
				</div>
			</div>
			<div class="form-row p-1">
				<div class="form-group col-md-4">
					<label for="productId">Key Features</label> <input type="text"
						class="form-control" name="keyFeatures" id="keyFeatures"
						placeholder="Key Features">
				</div>
				<div class="form-group col-md-4">
					<label for="sku">Package Count</label> <input type="number"
						class="form-control" name="unitsPerConsumerUnit"
						id="unitsPerConsumerUnit" placeholder="Package Count">
				</div>
				<div class="form-group col-md-4">
					<label for="brand">Brand</label> <input type="text"
						class="form-control" name="brand" id="brand" placeholder="Brand">
				</div>

			</div>
			<div class="form-row p-1">
				<div class="form-group col-md-4">
					<label for="manufacturer">Manufacturer</label> <input type="text"
						class="form-control" name="manufacturer" id="manufacturer"
						placeholder="Manufacturer">
				</div>
				<div class="form-group col-md-4">
					<label for="manufacturerPartNumber">Manufacturer Part
						Number</label> <input type="text" class="form-control"
						name="manufacturerPartNumber" id="manufacturerPartNumber"
						placeholder="Manufacturer Part Number">
				</div>
				<div class="form-group col-md-4">
					<label for="modelNumber">Model Number</label> <input type="text"
						class="form-control" name="modelNumber" id="modelNumber"
						placeholder="Model Number">
				</div>
			</div>

			<hr style="background-color: blue;">
			<div class="form-row p-1">
				<div class="form-group col-md-6"">
					<label for="msrp">MSRP</label> <input type="text"
						class="form-control" name="msrp" id="msrp" placeholder="MSRP">
				</div>
			</div>
			<hr style="background-color: blue;">
			<div class="form-row p-1">
				<div class="form-group col-md-3">
					<label for="flavor">Flavor</label> <input type="text"
						class="form-control" name="flavor" id="flavor"
						placeholder="Flavor">
				</div>
				<div class="form-group col-md-3">
					<label for="isReadyToEat">Is Ready-to-Eat</label> <select
						name="isReadyToEat" id="isReadyToEat" class="form-control">
						<option selected>Choose...</option>
						<option value="Yes">Yes</option>
						<option value="No">No</option>
					</select>
				</div>
				<div class="form-group col-md-3">
					<label for="count">Count</label> <input type="number"
						class="form-control" name="count" id="count" placeholder="Count">
				</div>
				<div class="form-group col-md-3">
					<label for="size">Size</label> <input type="number"
						class="form-control" name="size" id="size" placeholder="Size">
				</div>
			</div>
			<hr style="background-color: blue;">
			<button type="submit" class="btn btn-primary">Save & Submit</button>
		</form>
	</div>
</body>
</html>