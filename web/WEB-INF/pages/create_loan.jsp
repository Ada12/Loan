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

<div class="col-md-8" style="height: 750px;padding: 0px;margin: 0px">
    <div class="col-md-12" style="padding: 0px;margin: 0px">
        <img src="/img/logo2.png" style="height: 70px">
    </div>
    <div class="col-md-12" style="margin-top: 30px">
        <p style="font-size: 20px">Create Loan</p>
        <hr style="border:0;background-color:#d3d3d3;height:1px">
    </div>

    <div class="col-md-12">
        <div class="panel panel-default" style="height: 450px">
            <div class="panel-heading"><b style="font-size: 17px">Loan Information</b></div>
            <div class="panel-body">

                <div class="col-md-12">
                    <div class="form-group col-md-5">
                        <label>Loan Type</label>
                        <select class="form-control">
                            <option>Building Property Mortgage</option>
                            <option>Car Property Mortgage</option>
                            <option>Unsecured</option>
                        </select>
                    </div>
                </div>

                <div class="col-md-12">
                    <div class="form-group col-md-5">
                        <label>Loan Amount</label>
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Loan Amount">
                            <div class="input-group-addon" style="background-color: #f6f6f6">Yuan</div>
                        </div>
                    </div>
                    <div class="form-group col-md-5 col-md-offset-1">
                        <label>Loan Period</label>
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Loan Period">
                            <div class="input-group-addon" style="background-color: #f6f6f6">Month</div>
                        </div>
                    </div>
                </div>

                <div class="col-md-12">
                    <div class="form-group col-md-5">
                        <label>Start Date</label>
                        <div class="input-group date form_date col-md-12" data-date="" data-date-format="yyyy-mm-dd" data-link-field="dtp_input2">
                            <input class="form-control" size="16" type="text" value="" readonly>
                            <span class="input-group-addon" style="background-color: #f6f6f6"><span class="glyphicon glyphicon-calendar"></span></span>
                        </div>
                        <input style="display: none" type="hidden" id="dtp_input2" value="" />
                    </div>
                    <div class="form-group col-md-5 col-md-offset-1">
                        <label>Expiration Date</label>
                        <div class="input-group date form_date col-md-12" data-date="" data-date-format="yyyy-mm-dd" data-link-field="dtp_input3">
                            <input class="form-control" size="16" type="text" value="" readonly>
                            <span class="input-group-addon" style="background-color: #f6f6f6"><span class="glyphicon glyphicon-calendar"></span></span>
                        </div>
                        <input style="display: none" type="hidden" id="dtp_input3" value="" />
                    </div>
                </div>

                <div class="col-md-12">
                    <div class="form-group col-md-5">
                        <label>Interest Rate</label>
                        <div class="input-group">
                            <input type="text" class="form-control" value="0">
                            <div class="input-group-addon" style="background-color: #f6f6f6">% / Month</div>
                        </div>
                    </div>
                    <div class="form-group col-md-5 col-md-offset-1">
                        <label>Management Fee</label>
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Management Fee">
                            <div class="input-group-addon" style="background-color: #f6f6f6">Yuan</div>
                        </div>
                    </div>
                </div>

                <div class="col-md-12">
                    <div class="form-group col-md-5">
                        <label>Performance Bond</label>
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Performance Bond">
                            <div class="input-group-addon" style="background-color: #f6f6f6">Yuan</div>
                        </div>
                    </div>
                    <div class="form-group col-md-5 col-md-offset-1">
                        <label>Service Charge</label>
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Service Charge">
                            <div class="input-group-addon" style="background-color: #f6f6f6">Yuan</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <hr style="border:0;background-color:#d3d3d3;height:1px">
    </div>
    <div class="col-md-12" style="text-align: right">
        <a href="/EasyLoan/create/2" class="btn btn-primary btn-flat">Next</a>
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

<script type="text/javascript">
    $('.form_date').datetimepicker({
        language: 'zh-CN',
        weekStart: 1,
        todayBtn:  1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        minView: 2,
        pickerPosition: 'bottom-left'
    });
</script>


</body>
</html>