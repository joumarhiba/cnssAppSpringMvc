package com.cnss.controller;

import com.cnss.model.Document;
import com.cnss.model.Dossier;
import com.cnss.model.Ordonnance;
import com.cnss.spring.HibernateDatabaseConnection;
import jakarta.servlet.http.HttpServletRequest;
import org.eclipse.tags.shaded.org.apache.xpath.operations.Or;
import org.hibernate.Session;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.print.Doc;
import java.io.IOException;
import java.util.List;


@Controller
@RequestMapping

public class PatientController {

    @GetMapping("/folders")
    @ResponseBody
    public List<Dossier> getPatientFolders() throws IOException {

        Session session = null;
        session = HibernateDatabaseConnection.getSessionFactory().openSession();
        List<Dossier> q = (List<Dossier>) session.createQuery("FROM Dossier").getResultList().get(3);
       // req.setAttribute("dossiers", q);
        System.out.println(q.get(4));
        return q;

    }

    @GetMapping("/remboursement")
    public Double remboursement(){
        Session session = null;
        session = HibernateDatabaseConnection.getSessionFactory().openSession();
        Ordonnance ordonnance =(Ordonnance) session.createQuery("FROM Ordonnance o where o.dossier = '1'").getSingleResult();
        Document document =(Document) session.createQuery("FROM Ordonnance o where o.dossier = '1'").getSingleResult();
        System.out.println("ordonnance : "+ordonnance.getRemboursement());
        System.out.println("document : "+document.getRemboursement());
        double rbOrdonnance = Integer.parseInt(ordonnance.getRemboursement());
        double rbDocument = document.getPrix() * (Integer.parseInt(document.getRemboursement()));
        double montantRb = rbOrdonnance + rbDocument;
        System.out.println("montant : "+montantRb);
        return montantRb ;
    }

}
