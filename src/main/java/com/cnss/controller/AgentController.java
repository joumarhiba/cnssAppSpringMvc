package com.cnss.controller;

import com.cnss.model.Agent;
import com.cnss.model.Document;
import com.cnss.model.Dossier;
import com.cnss.model.Ordonnance;
import com.cnss.spring.HibernateDatabaseConnection;
import jakarta.persistence.Query;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.print.Doc;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.text.*;
import java.util.Date;
import java.util.List;
import java.util.Queue;

@Controller
@RequestMapping
public class AgentController {

    @Autowired
    LoginController loginController;

    Session session = null;

    @GetMapping("dashboardAgent")
    public String dashboardAgentPage() {
        return "Agent/dashboard";
    }

    @GetMapping("/addDocument")
    public String addDocumentPage() {
        return "Agent/addDocument";
    }

    @GetMapping("addFolder")
    public String addFolderPage() {
        return "Agent/addFolder";
    }

    @GetMapping("addOrdonnance")
    public String addOrdonnancePage() {
        return "Agent/addOrdonnance";
    }

    @RequestMapping(value = "insertDossier", method = RequestMethod.POST)
    public void addDossier(HttpServletResponse res, @ModelAttribute("dossier") Dossier dossier) throws IOException, NoSuchAlgorithmException {

        Session session = null;
        session = HibernateDatabaseConnection.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.persist(dossier);
        System.out.println(dossier);
        transaction.commit();
        res.sendRedirect("/addOrdonnance");
    }

    @PostMapping("insertOrdonnance")
    public void addOrdonnance(HttpServletResponse res, @ModelAttribute("ordonnance") Ordonnance ordonnance) throws IOException {
        session = HibernateDatabaseConnection.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        if (ordonnance.getTitle().equals("generaliste")) {
            ordonnance.setRemboursement("90");
        } else if (ordonnance.getTitle().equals("specialiste")) {
            ordonnance.setRemboursement("120");
        }
        Dossier dossier = new Dossier(2, "Assurant");
        ordonnance.setDossier(dossier);
        session.merge(ordonnance);
        System.out.println(ordonnance);
        transaction.commit();
        res.sendRedirect("/addOrdonnance");
    }

    @PostMapping("insertDocument")
    public void addDocument(HttpServletResponse res, @ModelAttribute("document") Document document) throws IOException {
        session = HibernateDatabaseConnection.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        if (document.getTitle().equals("generaliste")) {
            document.setRemboursement("90");
        } else if (document.getTitle().equals("specialiste")) {
            document.setRemboursement("120");
        }
        Dossier dossier = new Dossier(1, "Assurant");
        document.setDossier(dossier);
        session.merge(document);
        System.out.println(document);
        transaction.commit();
        res.sendRedirect("addDocument");
    }


    @PostMapping("checkFolder")
    public void checkFolder(@RequestParam("id") int id, HttpServletResponse res,@ModelAttribute("Dossier") Dossier dossier ) throws IOException {
        session = HibernateDatabaseConnection.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        @SuppressWarnings("unchecked")
        int row = session.createQuery("update Dossier d SET d.status=:status WHERE d.id=:id").setParameter("status", "valide").setParameter("id", id).executeUpdate();
        if(row > 0){
            System.out.println("il est validé");
        }else {
            System.out.println("it's wrong");
        }
        transaction.commit();
        res.sendRedirect("dashboardAgent");
    }


    @PostMapping("refusFolder")
    public void refusFolder(@RequestParam("id") int id, HttpServletResponse res,@ModelAttribute("Dossier") Dossier dossier ) throws IOException {
        session = HibernateDatabaseConnection.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        @SuppressWarnings("unchecked")
        int row = session.createQuery("update Dossier d SET d.status=:status WHERE d.id=:id").setParameter("status", "refus").setParameter("id", id).executeUpdate();
        if(row > 0){
            System.out.println("il est refusé");
        }else {
            System.out.println("it's wrong...");
        }
        transaction.commit();
        res.sendRedirect("dashboardAgent");
    }


}