<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration form</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>

<section style="background-color: #9A616D;height: 100%">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col col-xl-10">
        <div class="card" style="border-radius: 1rem;">
          <div class="row g-0">
            <div class="col-md-6 col-lg-5 d-none d-md-block">
              <img src="login.jsp"
                alt="Registration form" class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
            </div>
            <div class="col-md-6 col-lg-7 d-flex align-items-center">
              <div class="card-body p-4 p-lg-5 text-black">

                <form action="insert2" method="post" >

                  <div class="d-flex align-items-center mb-3 pb-1">
                    <i class="fas fa-cubes fa-2x me-3" style="color: #ff6219;"></i>
                    <span class="h1 fw-bold mb-0">Event Planning</span>
                  </div>

                  <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Registration form</h5>

                 <div class="form-outline mb-4">
                    <input type="text" name="fname" id="form2Example27" placeholder="firstname" class="form-control form-control-lg" />
                    <label class="form-label" for="form2Example27">First-Name</label>
                  </div>
                  
                     <div class="form-outline mb-4">
                    <input type="text" name="lname" id="form2Example17" placeholder="lastname" class="form-control form-control-lg" />
                    <label class="form-label" for="form2Example17">Last-Name</label>
                  </div>
                  
                     <div class="form-outline mb-4">
                    <input type="text" name="Saddress" id="form2Example17" placeholder="StreetAddress" class="form-control form-control-lg" />
                    <label class="form-label" for="form2Example17">Street-Address</label>
                  </div>
                  
                     <div class="form-outline mb-4">
                    <input type="text" name="district" id="form2Example17" placeholder="District" class="form-control form-control-lg" />
                    <label class="form-label" for="form2Example17">District</label>
                  </div>
                  
                     <div class="form-outline mb-4">
                    <input type="text" name="city" id="form2Example17" placeholder="city" class="form-control form-control-lg" />
                    <label class="form-label" for="form2Example17">City</label>
                  </div>
                  
                     <div class="form-outline mb-4">
                    <input type="text" name="pcode" id="form2Example17" placeholder="PostalCode" class="form-control form-control-lg" />
                    <label class="form-label" for="form2Example17">PostalCode</label>
                  </div>
                  
                     <div class="form-outline mb-4">
                    <input type="text" name="Pphone" id="form2Example17" placeholder="Phone(Personal)" class="form-control form-control-lg" />
                    <label class="form-label" for="form2Example17">PersonalPhone</label>
                  </div>
                  
                     <div class="form-outline mb-4">
                    <input type="text" name="Wphone" id="form2Example17" placeholder="Phone(Work)" class="form-control form-control-lg" />
                    <label class="form-label" for="form2Example17">WorkPhone</label>
                  </div>
                  
                     <div class="form-outline mb-4">
                    <input type="email" name="email" id="form2Example17" placeholder="Email" class="form-control form-control-lg" />
                    <label class="form-label" for="form2Example17">Email</label>
                  </div>
                  
                     <div class="form-outline mb-4">
                    <input type="text" name="hau" id="form2Example17" placeholder="HeardAboutUs" class="form-control form-control-lg" />
                    <label class="form-label" for="form2Example17">Heard About Us</label>
                  </div>

                   <div class="form-outline mb-4">
                    <input type="text" name="uname" id="form2Example17" placeholder="User Name" class="form-control form-control-lg" />
                    <label class="form-label" for="form2Example17">User-Name</label>
                  </div>
                  
                   <div class="form-outline mb-4">
                    <input type="password" name="pass" id="form2Example17" placeholder="password" class="form-control form-control-lg" />
                    <label class="form-label" for="form2Example17">Password</label>
                  </div>
                  
                  
                  <div class="pt-1 mb-4">
                    <button class="btn btn-dark btn-lg btn-block" type="Submit">Submit</button>
                  </div>


                </form>

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>


</body>
</html>