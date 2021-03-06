<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
	if ((session.getAttribute("username") == null) || (session.getAttribute("username") == "")) {
		response.sendRedirect("loginPage.html");
	}
%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <!--meta http-equiv="X-UA-Compatible" content="IE=edge"-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../favicon.ico">

    <title>Welcome to Team Two's Page</title>

    <!-- Bootstrap core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../css/jumbotron.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../js/ie10-viewport-bug-workaround.js"></script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

  </head>

  <body>
    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          	<div>
			<a href="#">
			<img src="../images/TTlogoSquare.png" alt="TT Logo"  style="margin-top:4%; float:left" height="40px" width="40px">
			<a style="padding-left:10px; margin-left: 10px;"  class="navbar-brand" href="#" style="float:right;">Team Two</a>
		</div>
	</div>
	<!-- Collect the links and login form -->
        <div class="navbar-collapse collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav navbar-right">
          <li><a href = "">user@gmail.com </a></li>
          <li><a href = "">
		<script type="text/javascript">
			<!--
			var currentTime = new Date()
			var hours = currentTime.getHours()
			var minutes = currentTime.getMinutes()

			var dd = currentTime.getDate()
			var mm = currentTime.getMonth()+1
			var yyyy = currentTime.getFullYear()

			if(dd<10) {
			dd='0'+dd
			}        

			if(mm<10) {
			mm='0'+mm
			} 

			today = mm+'/'+dd+'/'+yyyy+" "
			document.write(today)

			if (minutes < 10){
			minutes = "0" + minutes
			}
			document.write(hours + ":" + minutes + " ")
			if(hours > 11){
			document.write("PM")
			} else {
			document.write("AM")
			}
			//-->
		</script></a></li>
  	  <li><a href="logout.jsp">Log Out</a></li>
	  </ul>
        </div><!--/.navbar-collapse -->
      </div>
    </div>
<!-- side bar -->
	<div class="sidebar-nav">
	  <div class="well" style="width: 15%; height: 100%; position: fixed; padding: 8px 0;">
		<ul class="nav nav-list"> 
		  <li><a href="dashboard_jsp.jsp"><i class="glyphicon glyphicon-tasks"></i> Dashboard</a></li>
          	  <li><a href="#"><i class="glyphicon glyphicon-envelope"></i> Messages <span class="badge badge-info">4</span></a></li>
          	  <li><a href="errordetail.jsp"><i class="glyphicon glyphicon-warning-sign"></i> Your Errors <span class="badge badge-info">10</span></a></li>
		  <li class="active"><a href="members.jsp"><i class="glyphicon glyphicon-user"></i> Members</a></li>
		  <li style="position: fixed; bottom: 10px;"><a href="#"><i class="glyphicon glyphicon-cog"></i> Settings</a></li>
		</ul>
	  </div>
	</div>

	<!-- contents -->
	<div style="margin-left:17%">
		<h1> Members of your project </h1> 
		<i class="glyphicon glyphicon-plus"></i>
		<a data-toggle="modal" href="#addModal" style="font-size:150%">Add a user</a><br>
	<!-- Add User Modal -->
        <div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="addModalLabel" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Add a user</h4>
              </div>
              <div class="modal-body">
                <div class="input-group">
  		<span class="input-group-addon">@</span>
  		<input type="text" class="form-control" placeholder="email address">
		</div>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" data-dismiss="modal">Send Invitation</button>
              </div>
            </div><!-- /.modal-content -->
          </div><!-- /.modal-dialog -->
        </div><!-- /. Add user modal -->
	</div>

	<div class="row" style="margin-left:15%; margin-right:2%">
		<div class="col-md-4">
	  	  <div class="container" style="width:100%">
    		    <div class="thumbnail" style="padding-left:20px">
		      <img src="../images/user_male.png">
        	      <h3>John Doe</h3>
        	      <p>Owner</p>
        	      <p><a href="#msgModal" data-toggle="modal" class="btn btn-primary" role="button">Send a message</a> <a href="#" class="btn btn-default" role="button">Remove from group</a></p>
    	 	    </div>
		  </div>
		</div>

		<div class="col-md-4">
		  <div class="container" style="width:100%">
    		    <div class="thumbnail" style="padding-left:20px">
		      <img src="../images/user_female.png">
        	      <h3>Anna Brown</h3>
        	      <p>Contributor</p>
        	      <p><a href="#msgModal" data-toggle="modal" class="btn btn-primary" role="button">Send a message</a> <a href="#" class="btn btn-default" role="button">Remove from group</a></p>
    	 	    </div>
		  </div>
		</div>

		<div class="col-md-4">
		  <div class="container" style="width:100%">
    		    <div class="thumbnail" style="padding-left:20px">
		      <img src="../images/user_male.png">
        	      <h3>Justin Lee</h3>
        	      <p>Contributor</p>
        	      <p><a href="#msgModal" data-toggle="modal" class="btn btn-primary" role="button">Send a message</a> <a href="#" class="btn btn-default" role="button">Remove from group</a></p>
    	 	    </div>
		  </div>
		</div>

	<!-- Send Message Modal -->
        <div class="modal fade" id="msgModal" tabindex="-1" role="dialog" aria-labelledby="msgModalLabel" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Send a message</h4>
              </div>
              <div class="modal-body">
                <div class="input-group">
  		<span class="input-group-addon">Your Message</span>
  		<input type="text" class="form-control">
		</div>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" data-dismiss="modal">Send</button>
              </div>
            </div><!-- /.modal-content -->
          </div><!-- /.modal-dialog -->
        </div><!-- /. Send Message modal -->
	</div>
 <!-- /container -->

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>

  </body>
</html>
