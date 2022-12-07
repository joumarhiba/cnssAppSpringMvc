package com.cnss.model;


import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor

public class Dossier {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String owner;
    private String status;
    private Date dateVisite;

    @ManyToOne
    @JoinColumn(name = "patient_id")
    private Patient patient;

    @ManyToOne
    @JoinColumn(name = "agent_id")
    private Agent agent;


    public Dossier(int id,String owner ){
        this.id = id;
    this.owner = owner;
}
}

