<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">


<title>Note Taker : Home page</title>
<%@include file="tags/all_js_css.jsp"%>
</head>
<body>

	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		
		
		<div class="card py-5">
		<img alt="" class="img-fluid mx-auto" style="max-width: 400px;" src="img/note.png">
		<h1 class="text-primary text-uppercase text-center mt-3">Start Taking Your Notes</h1>
		
		<div class="container text-center">
		<button class="btn btn-outline-primary text-center" id="startBtn" >Start here</button>
		</div>
		</div>
	</div>


<script type="text/javascript">
const exampleBtn = document.getElementById('startBtn');

exampleBtn.addEventListener('click', () => {
  window.open('add_note.jsp');
});



</script>






</body>
</html>