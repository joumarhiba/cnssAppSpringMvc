package com.cnss.service;

import com.cnss.controller.LoginController;
import com.cnss.model.Admin;
import com.cnss.model.Agent;
import com.cnss.model.Patient;
import com.cnss.spring.HibernateDatabaseConnection;
import org.hibernate.Session;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;


@Service
public class LoginService {

    public Object validateUser(String email, String password, @RequestParam("role") String role) {
        Session session = null;
        session = HibernateDatabaseConnection.getSessionFactory().openSession();
        Admin admin = (Admin) session.createQuery("FROM Admin a WHERE a.email = :email and a.password =:password")
                .setParameter("email", email)
                .setParameter("password",password).uniqueResult();

        Agent agent = (Agent)session.createQuery("FROM Agent a WHERE a.email = :email and a.password =:password")
                .setParameter("email", email)
                .setParameter("password",password)
                .uniqueResult();

        Patient patient = (Patient)session.createQuery("FROM Patient p WHERE p.email = :email and p.password =:password")
                .setParameter("email", email)
                .setParameter("password",password)
                .uniqueResult();
        switch (role) {
            case "admin":
            if (admin != null && admin.getPassword().equals(password) && admin.getEmail().equalsIgnoreCase(email)) {
                System.out.println("you're logged as Admin");
                return admin;
            }

            case "agent":
            if (agent != null && agent.getPassword().equals(password) && agent.getEmail().equalsIgnoreCase(email)) {
                System.out.println("you're logged as Agent ");
                return agent;
            }
            case "patient":
                if (patient != null && patient.getPassword().equals(password) && patient.getEmail().equalsIgnoreCase(email)) {
                    System.out.println("you're logged as patient");
                    return patient;
                }
        }
    return null;
    }
}
