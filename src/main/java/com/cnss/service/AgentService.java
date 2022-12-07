package com.cnss.service;

import com.cnss.model.Agent;
import com.cnss.spring.HibernateDatabaseConnection;
import org.hibernate.Session;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AgentService {

    public List getAgents(){
        Session session = null;
        session = HibernateDatabaseConnection.getSessionFactory().openSession();
        @SuppressWarnings("unchecked")
        List<Agent> agents = session.createQuery("FROM Agent").getResultList();
        return  agents;
    }
}
