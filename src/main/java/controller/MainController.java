package controller;

import entity.LoanInfoEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.ui.Model;
import service.LoanService;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Created by yangchen on 2015/6/18.
 */
@Controller
public class MainController {

    @RequestMapping(value = "/EasyLoan/login", method = RequestMethod.GET)
    public String login(){
        return "login";
    }

    @RequestMapping(value = "/EasyLoan/register", method = RequestMethod.GET)
    public String register(){
        return "register";
    }

    @RequestMapping(value = "/EasyLoan/home", method = RequestMethod.GET)
    public String home(){
        return "account_overview";
    }

    @RequestMapping(value = "/EasyLoan/create/1", method = RequestMethod.GET)
    public String createStep1(){ return "create_loan"; }

    @RequestMapping(value = "/EasyLoan/create/2", method = RequestMethod.GET)
    public String createStep2(){ return "create_loan2"; }

    @RequestMapping(value = "/EasyLoan/create/3", method = RequestMethod.GET)
    public String createStep3(){ return "create_loan3"; }

    @RequestMapping(value = "/EasyLoan/create/4", method = RequestMethod.GET)
    public String createStep4(){ return "create_loan4_final"; }

    @RequestMapping(value = "/EasyLoan/pending", method = RequestMethod.GET)
    public String pending(){ return "pending_project"; }

    @RequestMapping(value = "/EasyLoan/received", method = RequestMethod.GET)
    public String receive(){ return "received_project"; }

    @RequestMapping(value = "/EasyLoan/inspection", method = RequestMethod.GET)
    public String inspection(){ return "project_inspection"; }

    @RequestMapping(value = "/EasyLoan/management", method = RequestMethod.GET)
    public String management(){ return "user_management"; }

    @RequestMapping(value = "/EasyLoan/testLoan", method = RequestMethod.GET)
    public String testLoan(){ return "test_loan"; }
}
