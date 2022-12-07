package com.cnss.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@AllArgsConstructor
@NoArgsConstructor
@Data
public class Ordonnance {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private double price;
    private String title;
    private String remboursement;
    @ManyToOne
    private Medicament medicament;

    @ManyToOne
    @JoinColumn(name = "dossier_id")
    private Dossier dossier;

}

