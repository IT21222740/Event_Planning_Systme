<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
 
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Login</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link href="circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="fontawesome-all.css">
    <style>
    html,
    body {
        height: 100%;
    }

    body {
        display: -ms-flexbox;
        display: flex;
        -ms-flex-align: center;
        align-items: center;
        padding-top: 40px;
        padding-bottom: 40px;
    }
    </style>
</head>

<body>
    <!-- ============================================================== -->
    <!-- login page  -->
    <!-- ============================================================== -->
    <div class="splash-container">
        <div class="card ">
            <div class="card-header text-center"><h1>Planizer</h1><span class="splash-description">Please enter planner's userID </span></div>
            <div class="card-body">
                <form action="search" method="post">
                    <div class="form-group">
                        <input name = "id" class="form-control form-control-lg" id="username" type="text" placeholder="planner's id" autocomplete="off">
                    </div>
                    
                    <input type="hidden" id="custId" name="function" value="update">
                    <button style = "background-color:#212529" value = "SEARCH" type="submit" class="btn btn-primary btn-lg btn-block">Search</button>
                </form>
            </div>
       </div>     
    </div>
  
    <!-- ============================================================== -->
    <!-- end login page  -->
    <!-- ============================================================== -->
    <!-- Optional JavaScript -->
    <script src="jquery/jquery-3.3.1.min.js"></script>
    <script src="bootstrap/js/bootstrap.bundle.js"></script>
</body>
 
</html>