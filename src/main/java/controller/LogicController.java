package controller;

import dao.UserDao;
import entity.LoanInfoEntity;
import entity.UserInfoEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import service.LoanService;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Created by yangchen on 2015/6/18.
 */
@Controller
public class LogicController {
    @Autowired
    private LoanService loanService;
    @RequestMapping(value = "/EasyLoan/testLoan", method = RequestMethod.POST)
    public String testLoanSave(@RequestParam("cash_deposit")String cash_deposit,@RequestParam("length") String length, @RequestParam("dateEnd")String dateEnd,
                               @RequestParam("interestRate")String interestRate, @RequestParam("loanCategory")String loanCategory, @RequestParam("methodValidiationNumber")String methodValidiationNumber,
                               @RequestParam("servicePayment")String servicePayment, @RequestParam("amount")String amount, @RequestParam("pledgeMethod")String pledgeMethod,
                               @RequestParam("dateStart")String dateStart, @RequestParam("loanTo")String loanTo, @RequestParam("loanFrom")String loanFrom, Model model){
        try {
            LoanInfoEntity loanInfo = new LoanInfoEntity();

            loanInfo.setCashDeposit(Double.parseDouble(cash_deposit));
            loanInfo.setLength(Integer.parseInt(length));
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            Date end = sdf.parse(dateEnd);
            java.sql.Date endSql = new java.sql.Date(end.getTime());
            Date start = sdf.parse(dateStart);
            java.sql.Date startSql = new java.sql.Date(start.getTime());
            loanInfo.setDateEnd(endSql);
            loanInfo.setDateStart(startSql);
            loanInfo.setInterestRate(Double.parseDouble(interestRate));
            loanInfo.setLoanCategory(loanCategory);
            loanInfo.setMethodValidiationNumber(methodValidiationNumber);
            loanInfo.setServicePayment(Double.parseDouble(servicePayment));
            loanInfo.setAmount(Double.parseDouble(amount));
            loanInfo.setPledgeMethod(pledgeMethod);
            loanInfo.setLoanTo(loanTo);
            loanInfo.setLoanFrom(loanFrom);

            loanService.createLoan(loanInfo);

            model.addAttribute("returnMsg", "create loan successfully");
            return "output";
        } catch (ParseException ex) {
            Logger.getLogger(MainController.class.getName()).log(Level.SEVERE, null, ex);
            model.addAttribute("returnMsg", "Error");
            return "output";
        }
    }

    @RequestMapping(value = "/EasyLoan/login", method = RequestMethod.POST)
    public String login(@RequestParam("username")String username, @RequestParam("password")String password, Model model, HttpRequest request, HttpSession session){
        UserInfoEntity user = new UserInfoEntity();
        user.setUsername(username);
        user.setPassword(password);
        UserDao userDao = new UserDao();
        String url = "https://api.leancloud.cn/1.1/login?username=%s&password=%s";
        userDao.setGET_URL(url);
        String returnMsg = userDao.getMethod(user);
        if(returnMsg.equals(null)){
            String errorMsg = "Username and password does not match";
            model.addAttribute("error_msg", errorMsg);
            return "login";
        }else{
            //model.addAttribute("username",username);
            session.setAttribute("username", session);
            return "account_overview";
        }
    }

    @RequestMapping(value = "/EasyLoan/register", method = RequestMethod.POST)
    public String register(@RequestParam("username")String username, @RequestParam("email")String email, @RequestParam("password")String password){
        return "account_overview";
    }
}
