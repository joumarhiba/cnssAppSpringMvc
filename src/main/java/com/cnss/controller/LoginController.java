package com.cnss.controller;

import com.cnss.model.Agent;
import com.cnss.model.Dossier;
import com.cnss.model.Patient;
import com.cnss.service.AgentService;
import com.cnss.service.LoginService;
import com.cnss.spring.EncryptPassword;
import com.cnss.spring.HibernateDatabaseConnection;
import jakarta.persistence.Query;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
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
    public String handleLogin(HttpServletRequest req, @RequestParam("email") String email, @RequestParam("password") String password,@RequestParam("role") String role, ModelAndView model) throws NoSuchAlgorithmException {

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
                   Patient patient = (Patient) loginService.validateUser(email, hashedPassword, role);
                   Session session = null;
                   session = HibernateDatabaseConnection.getSessionFactory().openSession();
                   List<Dossier> q = session.createQuery("FROM Dossier where patient=:patient").setParameter("patient", patient).getResultList();
                   req.setAttribute("dossiers", q);
                   System.out.println(q.get(4));
                   return "Patient/dashboard";
           }
       } else {
           System.out.println(password);
           return "errorPage";
       }
      return "login";
   }

   @PostMapping("folders")
public void getPatientFolders(HttpServletRequest req, HttpServletResponse res, @RequestParam("id") int id) throws IOException {

         Session session = null;
         session = HibernateDatabaseConnection.getSessionFactory().openSession();
        List<Dossier> q = session.createQuery("FROM Dossier where patient=:patient").setParameter("patient", id).getResultList();
       req.setAttribute("dossiers", q);
        System.out.println(q.get(4));
        res.sendRedirect("/login");

}

}
