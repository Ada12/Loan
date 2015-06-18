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

    <!--iCheck-->
    <link href="/plugins/iCheck/all.css" rel="stylesheet" type="text/css" />
    <!--dateTimePicker-->
    <script language="JavaScript" src="/js/bootstrap-datetimepicker.min.js"></script>
    <script language="JavaScript" src="/js/bootstrap-datetimepicker.zh-CN.js"></script>
    <link href="/css/bootstrap-datetimepicker.min.css" rel="stylesheet" type="text/css" />
    <!--dataTable-->
    <script language="JavaScript" src="/js/dataTable/jquery-1.11.1.min.js"></script>
    <script language="JavaScript" src="/js/dataTable/jquery.dataTables.min.js"></script>
    <script language="JavaScript" src="/js/dataTable/dataTables.bootstrap.js"></script>
    <link href="/css/dataTable/dataTables.bootstrap.css" rel="stylesheet">


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
        .panel, .selectbutton{
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
            <li role="presentation"><a href="/EasyLoan/create/1"><span>Create Loan</span></a></li>
            <hr style="padding: 0px;margin: 0px">
            <li class="active" role="presentation">
                <a role="presentation" data-toggle="dropdown" data-target="#" href="#">
                    <span style="color: #ffffff">Loan Management</span>&nbsp;<span class="fa fa-angle-down fa-lg"></span>
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

<div class="col-md-8" style="padding: 0px;margin: 0px">
    <div class="col-md-12" style="padding: 0px;margin: 0px">
        <img src="/img/logo2.png" style="height: 70px">
    </div>
    <div class="col-md-12" style="margin-top: 30px">
        <p style="font-size: 20px">Received Project</p>
        <hr style="border:0;background-color:#d3d3d3;height:1px">
    </div>

    <div class="col-md-12" style="margin-bottom: 10px">
        <div class="btn-group" role="group" aria-label="...">
            <a href="/EasyLoan/pending" type="button" class="btn btn-default selectbutton" style="width: 80px">Pending</a>
            <a href="/EasyLoan/received" type="button" class="btn btn-default active selectbutton" style="width: 80px">Received</a>
        </div>
    </div>


    <div class="col-md-12">
        <div class="panel panel-default" style="height: 150px">
            <div class="panel-heading"><b style="font-size: 17px">Filter Conditions</b></div>
            <div class="panel-body">

                <div class="col-md-12">
                    <div class="col-md-3">
                        <span>Repayment Date</span>
                    </div>
                    <div class="form-group">
                        <label>
                            <input type="radio" name="r1" class="square-blue" checked/>All
                        </label>
                        <label>
                            <input type="radio" name="r1" class="square-blue"/>All
                        </label>
                        <label>
                            <input type="radio" name="r1" class="square-blue"/>All
                        </label>
                    </div>
                </div>

                <div class="col-md-12" style="margin-top: 12px">
                    <div class="col-md-3">
                        <span>Loan Type</span>
                    </div>
                    <div class="form-group">
                        <label>
                            <input type="radio" name="r2" class="square-blue" checked/>All
                        </label>
                        <label>
                            <input type="radio" name="r2" class="square-blue"/>Building Property Mortgage
                        </label>
                        <label>
                            <input type="radio" name="r2" class="square-blue"/>Car Property Mortgage
                        </label>
                        <label>
                            <input type="radio" name="r2" class="square-blue"/>Unsecured
                        </label>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="col-md-12" style="margin-bottom: 60px">
        <table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
            <thead>
            <tr>
                <th>ID</th>
                <th>Loan Amount</th>
                <th>Repayment Type</th>
                <th>Now/All Period</th>
                <th>Expiration Date</th>
                <th>Repayment Amount</th>
                <th>Rest Date</th>
                <th>Operation</th>
            </tr>
            </thead>
            <tbody id="table_content">
            <tr>
                <td>Tiger Nixon</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td>2011/04/25</td>
                <td>$320,800</td>
                <td>$320,800</td>
                <td>$320,800</td>
            </tr>
            <tr>
                <td>Tiger Nixon</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td>2011/04/25</td>
                <td>$320,800</td>
                <td>$320,800</td>
                <td>$320,800</td>
            </tr>
            <tr>
                <td>Tiger Nixon</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td>2011/04/25</td>
                <td>$320,800</td>
                <td>$320,800</td>
                <td>$320,800</td>
            </tr>
            <tr>
                <td>Tiger Nixon</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td>2011/04/25</td>
                <td>$320,800</td>
                <td>$320,800</td>
                <td>$320,800</td>
            </tr>
            <tr>
                <td>Tiger Nixon</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td>2011/04/25</td>
                <td>$320,800</td>
                <td>$320,800</td>
                <td>$320,800</td>
            </tr>
            <tr>
                <td>Tiger Nixon</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td>2011/04/25</td>
                <td>$320,800</td>
                <td>$320,800</td>
                <td>$320,800</td>
            </tr>
            <tr>
                <td>Tiger Nixon</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td>2011/04/25</td>
                <td>$320,800</td>
                <td>$320,800</td>
                <td>$320,800</td>
            </tr>
            <tr>
                <td>Tiger Nixon</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td>2011/04/25</td>
                <td>$320,800</td>
                <td>$320,800</td>
                <td>$320,800</td>
            </tr>
            <tr>
                <td>Tiger Nixon</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td>2011/04/25</td>
                <td>$320,800</td>
                <td>$320,800</td>
                <td>$320,800</td>
            </tr>
            <tr>
                <td>Tiger Nixon</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td>2011/04/25</td>
                <td>$320,800</td>
                <td>$320,800</td>
                <td>$320,800</td>
            </tr>
            <tr>
                <td>Tiger Nixon</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td>2011/04/25</td>
                <td>$320,800</td>
                <td>$320,800</td>
                <td>$320,800</td>
            </tr>
            <tr>
                <td>Tiger Nixon</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td>2011/04/25</td>
                <td>$320,800</td>
                <td>$320,800</td>
                <td>$320,800</td>
            </tr>
            <tr>
                <td>Tiger Nixon</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td>2011/04/25</td>
                <td>$320,800</td>
                <td>$320,800</td>
                <td>$320,800</td>
            </tr>
            <tr>
                <td>Tiger Nixon</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td>2011/04/25</td>
                <td>$320,800</td>
                <td>$320,800</td>
                <td>$320,800</td>
            </tr>
            <tr>
                <td>Tiger Nixon</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td>2011/04/25</td>
                <td>$320,800</td>
                <td>$320,800</td>
                <td>$320,800</td>
            </tr>
            <tr>
                <td>Tiger Nixon</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td>2011/04/25</td>
                <td>$320,800</td>
                <td>$320,800</td>
                <td>$320,800</td>
            </tr>
            <tr>
                <td>Tiger Nixon</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td>2011/04/25</td>
                <td>$320,800</td>
                <td>$320,800</td>
                <td>$320,800</td>
            </tr>

            </tbody>
        </table>
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


<script src="/plugins/iCheck/icheck.min.js" type="text/javascript"></script>
<script>
    $('input[type="checkbox"].square-blue, input[type="radio"].square-blue').iCheck({
        checkboxClass: 'icheckbox_square-blue',
        radioClass: 'iradio_square-blue'
    });
</script>

</html>


<script>
    $(document).ready(function() {
        $('#example').DataTable({
            "bSort": false,
            "bAutoWidth": true,
            "bLengthChange": false
        });
    });

</script>