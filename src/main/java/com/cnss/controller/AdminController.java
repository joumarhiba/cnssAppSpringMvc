package com.cnss.controller;

import com.cnss.model.Agent;
import com.cnss.spring.EncryptPassword;
import com.cnss.spring.HibernateDatabaseConnection;
import jakarta.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;

@Controller
public class AdminController {
    @RequestMapping(value = "/addAgent", method = RequestMethod.GET)
    public String agentFormPage(){
        return "Admin/AddAgent";
    }


    @RequestMapping(value= "insertAgent", method = RequestMethod.POST)
    public void addAgent(HttpServletResponse res, @ModelAttribute("agent") Agent agent) throws IOException, NoSuchAlgorithmException {
        EncryptPassword encryptPassword = new EncryptPassword();

        Session session = null;
        session = HibernateDatabaseConnection.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        String pwd = agent.getPassword();
        String hashedPwd = encryptPassword.encryptPassword(pwd);
        agent.setPassword(hashedPwd);
        session.persist(agent);
        transaction.commit();
        res.sendRedirect("/login");
    }


}
