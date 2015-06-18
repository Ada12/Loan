<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8">
    <title>SOA</title>
    <script language="JavaScript" src="/js/jquery.min.js"></script>
    <script language="JavaScript" src="/js/jquery-1.11.0.min.js"></script>
    <script language="JavaScript" src="/js/bootstrap.js"></script>
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">

    <!--<script language="JavaScript" src="/js/AdminLTE-bootstrap.min.js"></script>-->
    <link href="/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />


    <script language="JavaScript" src="/js/bootstrap-datetimepicker.min.js"></script>
    <script language="JavaScript" src="/js/bootstrap-datetimepicker.zh-CN.js"></script>
    <link href="/css/bootstrap-datetimepicker.min.css" rel="stylesheet" type="text/css" />


    <style type="text/css">
        *{
            font-family: Arial;
        }
        #myfooter li{
            padding-top: 10px;
        }
        #background{
            background-image: url(/img/background.jpeg);
            background-size: 100%;
        }
    </style>



</head>
<body>

<div id="background" class="col-md-12" style="height: 800px;color: #ffffff">
    <div class="col-md-4 col-md-offset-4 bg-info" style="background-color: rgba(0, 0, 0, 0.78);margin-top: 100px">
        <div class="col-md-12" style="padding: 30px">
            <span style="font-size: 30px">Register</span>
            <form style="margin-top: 25px">
                <div class="form-group">
                    <label for="exampleInputUsername">Username</label>
                    <input type="text" class="form-control" id="exampleInputUsername" placeholder="Username">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail">Email</label>
                    <input type="email" class="form-control" id="exampleInputEmail" placeholder="Email">
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword">Password</label>
                    <input type="password" class="form-control" id="exampleInputPassword" placeholder="Password">
                </div>
                <div class="form-group">
                    <label for="exampleInputConfirmPassword">Confirm Password</label>
                    <input type="password" class="form-control" id="exampleInputConfirmPassword" placeholder="Confirm Password">
                </div>
                <button type="submit" class="btn btn-success btn-flat" style="width: 100%;margin-top: 20px;margin-bottom: 15px">Register Now!</button>
                <span style="font-size: 15px"><a href="/EasyLoan/login" style="margin-left: 292px;color: #34c3fa">Login</a></span>
            </form>
        </div>
    </div>
</div>


<div id="myfooter" class="col-md-12" style="background-color: #1e1e20;height: 200px;color: #ffffff;padding-top: 20px">
    <div class="col-md-3" style="padding-left: 70px">
        <p><b style="font-size: 25px">EL</b>&nbsp;Easy Loan</p>
    </div>
    <div class="col-md-3" style="padding-left: 50px">
        <p><b>About EL</b></p>
        <ul class="list-unstyled" style="color: darkgray">
            <li>Team Management</li>
            <li>Team Display</li>
            <li>Contact Us</li>
            <li>Partners</li>
        </ul>
    </div>
    <div class="col-md-3" style="padding-left: 50px">
        <p><b>Join Us</b></p>
        <ul class="list-unstyled" style="color: darkgray">
            <li>Recruitment</li>
            <li>Contact</li>
        </ul>
    </div>
    <div class="col-md-3" style="padding-left: 50px">
        <p><b>Customer Service</b></p>
        <ul class="list-unstyled" style="color: darkgray">
            <li>Online Service</li>
            <li>Complaints</li>
        </ul>
    </div>
</div>

</body>
</html>