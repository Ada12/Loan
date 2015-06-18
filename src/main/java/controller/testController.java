package controller;

import entity.UserInfoEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import service.UserService;

/**
 * Created by yangchen on 2015/6/17.
 */
@Controller
public class testController {
    @RequestMapping(value = "/t", method = RequestMethod.GET)
    public String Test(){
        return "test";
    }

    @RequestMapping(value = "/t", method = RequestMethod.POST)
    public String TestPost(@RequestParam("name1")String name, Model model) {
        String n = name + "jjjjjjj";
        model.addAttribute("n", n);
        return "output";
    }

    @RequestMapping(value = "/EasyLoan/lean", method = RequestMethod.GET)
    public String lean(){
        return "testLeanCloud";
    }

    @RequestMapping(value = "/EasyLoan/testLeanCloud", method = RequestMethod.POST)
    public String TestLeanCloud(@RequestParam("email")String email, @RequestParam("username")String username, @RequestParam("password") String password, @RequestParam("url")String url, Model model){
        UserService service = new UserService();
        UserInfoEntity user = new UserInfoEntity();
        user.setEmail(email);
        user.setUsername(username);
        user.setPassword(password);
        String returnMsg = service.postMethod(user, url);
        model.addAttribute("return_msg", returnMsg);
        return "output";
    }


}
