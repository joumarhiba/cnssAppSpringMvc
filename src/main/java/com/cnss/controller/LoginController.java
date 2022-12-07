package com.cnss.controller;

import com.cnss.model.Agent;
import com.cnss.service.AgentService;
import com.cnss.service.LoginService;
import com.cnss.spring.EncryptPassword;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.security.NoSuchAlgorithmException;
import java.util.List;

@Controller
@RequestMapping
public class LoginController {

    @Autowired
    LoginService loginService;
    @Autowired
    AgentService agentService;

     @GetMapping("/")
    public String login(){
        return "login";
    }


   @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String handleLogin(@RequestParam("email") String email, @RequestParam("password") String password,@RequestParam("role") String role, ModelAndView model) throws NoSuchAlgorithmException {

       EncryptPassword encryptPassword = new EncryptPassword();
       String hashedPassword = encryptPassword.encryptPassword(password);

       if (loginService.validateUser(email, hashedPassword, role) != null) {
           switch (role) {
               case "admin":
                  /* List agents = agentService.getAgents();
                   System.out.println(agents);
                   model.addObject("agents",agents);
                   */
                   return "Admin/dashboard";

               case "agent":

                   return "Agent/dashboard";
               case "patient":
                   return "Patient/dashboard";
           }
       } else {
           System.out.println(password);
           return "errorPage";
       }
      return "login";
   }


}
