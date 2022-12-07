package com.cnss.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor


public class Document{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private double prix;
    private String title;
    private String remboursement;
    private String type;

    @ManyToOne(cascade=CascadeType.PERSIST)
    @JoinColumn(name = "dossier_id")
    private Dossier dossier;


}

