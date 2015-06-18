<%--
  Created by IntelliJ IDEA.
  User: yangchen
  Date: 2015/6/18
  Time: 10:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<form action="/EasyLoan/testLoan" method="post">
  cash_deposit:<input type="text" name="cash_deposit">
  <br/>
  length:<input type="text" name="length">
  <br/>
  dateEnd:<input type="text" name="dateEnd">
  <br/>
  interestRate:<input type="text" name="interestRate">
  <br/>
  loanCategory:<input type="text" name="loanCategory">
  <br/>
  methodValidiationNumber:<input type="text" name="methodValidiationNumber">
  <br/>
  servicePayment:<input type="text" name="servicePayment">
  <br/>
  amount:<input type="text" name="amount">
  <br/>
  pledgeMethod:<input type="text" name="pledgeMethod">
  <br/>
  dateStart:<input type="text" name="dateStart">
  <br/>
  loanTo:<input type="text" name="loanTo">
  <br/>
  loanFrom:<input type="text" name="loanFrom">
  <br/>
  <input type="submit" value="save">
</form>
</body>
</html>
