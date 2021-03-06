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


    <!--验证信息-->
    <script src="/js/jqBootstrapValidation.js"></script>


    <style type="text/css">
        *{
            font-family: Arial;
        }
        body{
            padding-top: 70px;
        }
        li span{
            font-size: 17px;
            color: #2e2e2e;
        }
        #sidebar hr{
            border:0;
            background-color:#d3d3d3;
            height:1px
        }
        #sidebar li{
            padding: 0px;
            margin: 0px;
        }
        #sidebar{
            border: 1px solid #d3d3d3;
        }
        #sidebar_child{
            padding: 0px;
            margin: 0px;
            -webkit-border-radius: 0;
            -moz-border-radius: 0;
            border-radius: 0;
            box-shadow: 2px 2px 3px #9c9c9c;
        }
        #myfooter li{
            padding-top: 10px;
        }
        .panel{
            -webkit-border-radius: 0;
            -moz-border-radius: 0;
            border-radius: 0;
        }/*去圆角*/
    </style>

    <script>
        function createConfirm() {
            if (confirm("Confirm to create loan")) {
                window.location.href = "/create_loan4_final.html";
            }
        }
    </script>



</head>
<body>

<nav class="navbar navbar-default navbar-fixed-top topnav" role="navigation">
    <div class="container topnav">
        <div class="navbar-header">
            <a class="navbar-brand topnav" href="#"><b style="font-size: 25px">EL</b>&nbsp;Easy Loan</a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="#">About</a>
                </li>
                <li>
                    <a href="#">Help</a>
                </li>
                <li>
                    <a href="#">Logout</a>
                </li>
            </ul>
        </div>
    </div>
</nav>


<div class="col-md-3">
    <div class="col-md-12">
        <img src="/img/logo.png" style="width: 270px;margin-bottom: 20px">
    </div>
    <div class="col-md-10 col-md-offset-2">
        <ul id="sidebar" class="nav nav-pills nav-stacked" style="text-align: left">
            <li role="presentation"><a href="/EasyLoan/home"><span>Account Overview</span></a></li>
            <hr style="padding: 0px;margin: 0px">
            <li class="active" role="presentation"><a href="/EasyLoan/create/1"><span style="color: #ffffff">Create Loan</span></a></li>
            <hr style="padding: 0px;margin: 0px">
            <li role="presentation">
                <a role="presentation" data-toggle="dropdown" data-target="#" href="#">
                    <span>Loan Management</span>&nbsp;<span class="fa fa-angle-down fa-lg"></span>
                </a>
                <ul id="sidebar_child" class="dropdown-menu multi-level" role="presentation" aria-labelledby="dropdownMenu" style="margin-left: 120px">
                    <li><a href="/EasyLoan/pending" style="line-height: 30px"><span>&nbsp;&nbsp;&nbsp;Pending</span></a></li>
                    <li><a href="/EasyLoan/received" style="line-height: 30px"><span>&nbsp;&nbsp;&nbsp;Received</span></a></li>
                </ul>
            </li>
            <hr style="padding: 0px;margin: 0px">
            <li role="presentation"><a href="/EasyLoan/inspection"><span>Project Inspection</span></a></li>
            <hr style="padding: 0px;margin: 0px">
            <li role="presentation"><a href="/EasyLoan/management"><span>User Management</span></a></li>
        </ul>
    </div>
</div>

<div class="col-md-8" style="height: 700px;padding: 0px;margin: 0px">
    <div class="col-md-12" style="padding: 0px;margin: 0px">
        <img src="/img/logo2.png" style="height: 70px">
    </div>
    <div class="col-md-12" style="margin-top: 30px">
        <p style="font-size: 20px">Create Loan</p>
        <hr style="border:0;background-color:#d3d3d3;height:1px">
    </div>

    <div class="col-md-12">
        <div class="panel panel-default" style="height: 150px">
            <div class="panel-heading"><b style="font-size: 17px">Borrower Information</b></div>
            <div class="panel-body">

                <div class="col-md-12">
                    <div class="form-group col-md-4">
                        <label>Name</label>
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Name">
                        </div>
                    </div>
                    <div class="form-group col-md-4">
                        <label>Identity Card</label>
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Identity Card">
                        </div>
                    </div>
                    <div class="form-group col-md-4">
                        <label>Choose from customers</label>
                        <div class="input-group" style="width: 80%">
                            <select class="form-control">
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-md-12">
        <div class="panel panel-default" style="height: 230px">
            <div class="panel-heading">
                <b style="font-size: 17px">Collateral Information</b>
            </div>
            <div class="panel-body">
                ??????
            </div>
        </div>
        <hr style="border:0;background-color:#d3d3d3;height:1px">
    </div>




    <div class="col-md-6" style="text-align: left">
        <a href="/EasyLoan/create/2" class="btn btn-primary btn-flat">Back</a>
    </div>
    <div class="col-md-6" style="text-align: right">
        <a onclick="createConfirm()" class="btn btn-primary btn-flat">Create</a>
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