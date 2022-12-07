package com.cnss.model;



import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor

public class Agent {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String email;
    private String password;
    private long chekingCode;
    @Column(columnDefinition = "varchar(10) default 'agent'")
    private String role;

    @OneToMany(mappedBy = "agent")
    @Column(nullable = true)
    private List<Dossier> dossiers;

    public Agent(String email, String password, Long checkingCode){
        this.chekingCode = checkingCode;
        this.email = email;
        this.password = password;
    }




}

